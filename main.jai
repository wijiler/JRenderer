winf:winfo_t;
rend:fwdpp_r;

indices :: u32.[
        //Top
        2, 6, 7,
        2, 3, 7,

        //Bottom
        0, 4, 5,
        0, 1, 5,

        //Left
        0, 2, 6,
        0, 4, 6,

        //Right
        1, 3, 7,
        1, 5, 7,

        //Front
        0, 2, 3,
        0, 1, 3,

        //Back
        4, 6, 7,
        4, 5, 7
];

vertices :: Vector3.[
        .{-1, -1,  0.5}, //0
        .{1, -1,  0.5}, //1
        .{-1,  1,  0.5}, //2
        .{1,  1,  0.5}, //3
        .{-1, -1, -0.5}, //4
        .{1, -1, -0.5}, //5
        .{-1,  1, -0.5}, //6
        .{1,  1, -0.5},  //7
]; 

Init :: () {
    //model := parse_3mf("assets/box.3mf");
    rend = init_renderer(winf);
    load_mesh(*rend,vertices,indices);
    print("%\n",rend);
} @START
I:int = 0;
framerate:int;
get_frame_time :: () {
    draw_frame(*rend,winf);
    
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
    print("Mac user lmfao screw you\n");
    exit(1);
}
#import "Random";
#import "Input";
#import "mffp";
