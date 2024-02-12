// Workspace: jCAD debug
Update :: () {
get_frame_time();
}
Start :: () {
Init();
}

    loop :: () #expand {
        update_window_events();
        for events_this_frame {    
            if it.type == .QUIT then `info.quitting = true;

            if it.type == .KEYBOARD {
                array_add(*`inputs_this_frame,it.key_code);
            }
            array_reset(*`inputs_this_frame);
        }
        //draw(*rend);
        Update();
    }
#import "Input";
