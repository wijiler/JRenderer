// Workspace: jCAD debug

Update :: () #expand {
handle_input();
get_frame_time();
}
Start :: () #expand {
Init();
}
Submit :: () #expand {
}

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
