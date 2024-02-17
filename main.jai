winf:winfo_t;


Init :: () {
    rend = init_renderer(winf);
} @START
I:int = 0;
framerate:int;
get_frame_time :: () {
    draw_frame(*rend,Vector4.{1.0,0.12,1.0,1.0});
    // I += 1;
    // framerate = cast(int) (I/seconds_since_init());
    //print("framerate:%\n",framerate);
} @UPDATE

handle_input :: () {
    for input: inputs_this_frame {
        if input == xx Key_Code.ESCAPE {
            winf.quitting = true;
        }
    }
} @UPDATE


main :: () {
    winf = winfo_t.{x=640,y=480,name="JrendTestProgram"};
    window_create(*winf);
    deviceWait(rend);
    cleanup(rend);
}


#import "renderer";
#import "Basic";
#import "Math";
#if OS == .MACOS {
    print("Mac user lmfao screw you (I feel your struggle but moltenvk is such a shitty api)\n");
    exit(1);
}
#import "Random";
#import "Input";