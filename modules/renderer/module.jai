#load "renderer.jai";

inputs_this_frame:[..] u32;


rend:fwdpp_r;

winfo_t :: struct {
    whnd:Window_Type;
    x,y:int;
    name:string;
    quitting:bool = false;
}

#placeholder loop;
#placeholder Start;

window_create :: (info:*winfo_t) {
    win := create_window(info.x,info.y,info.name);
    info.whnd = win;
    Start();
    while !info.quitting {
        loop();
    }
}

build_loop :: (w:Workspace) {
    message(w);
    add_build_string(LoopFunc,w);
}
#scope_module

LoopFunc :: #string END
    loop :: () #expand {
        update_window_events();
        for events_this_frame {    
            if it.type == .QUIT then `info.quitting = true;

            if it.type == .KEYBOARD {
                array_add(*`inputs_this_frame,xx it.key_code);
            }
        }
        //draw(*rend);
        Update();
        array_reset(*`inputs_this_frame);
    }
#import "Input";
END

u_funcs: [..] string;
s_funcs: [..] string;

message :: (w:Workspace) #expand {
        while true {
                message := compiler_wait_for_message();
                if !message break;
                if message.kind =={
                case .TYPECHECKED;
                typechecked := cast(*Message_Typechecked) message;
                for decl: typechecked.declarations {
                        if decl.expression.name == "main" {
                                continue;
                        }
                for note: decl.expression.notes {
                        if note.text == "UPDATE" {
                                array_add(*u_funcs, copy_string(decl.expression.name));
                        }
                        else if note.text == "START" {
                                array_add(*s_funcs, copy_string(decl.expression.name));
                        }
                   }
                }
                case .PHASE;
                phase := cast(*Message_Phase) message;
                if phase.phase == .TYPECHECKED_ALL_WE_CAN {
                        code := generate_code();
                        add_build_string(code, w);
                        break;
                }
                case .COMPLETE;
                        break;
                }
        }
}

generate_code :: () -> string #expand {
                Builder:String_Builder;
                append(*Builder,"Update :: () #expand {\n");
                for fname: u_funcs {
                        append(*Builder,sprint("%();\n",fname));
                }
                append(*Builder,"}\n");
                append(*Builder,"Start :: () #expand {\n");
                for fname: s_funcs {
                        append(*Builder,sprint("%();\n",fname));
                }
                append(*Builder,"}\n");
                return builder_to_string(*Builder);
}

DEBUG :: true;

#import "Compiler";
#import "Window_Creation";
#import "Input";
#import "Basic";