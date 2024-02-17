#run build();

build :: () {
    set_build_options_dc(.{do_output=false});

    options := get_build_options();
    if !generator() {
        compiler_set_workspace_status(.FAILED);
        return;
    }
}

generator :: () -> bool {
    output_filename:string;
    opts:Generate_Bindings_Options;

    {
        using opts;

        output_filename = "module.jai";
        array_add(*system_include_paths, GENERATOR_DEFAULT_SYSTEM_INCLUDE_PATH);
        array_add(*extra_clang_arguments,
        "-Wall",
        "-Wextra",
        "-std=c++17",
        "-x",
        "c++");

        array_add(*libpaths,".");
        array_add(*libnames,"lib3mf");
        array_add(*libnames,"zlib");
        
        array_add(*source_files,"source/CppDynamic/lib3mf_dynamic.h");
        array_add(*source_files,"source/CppDynamic/lib3mf_dynamic.hpp");
        array_add(*source_files,"source/CppDynamic/lib3mf_abi.hpp");
        array_add(*source_files,"source/CppDynamic/lib3mf_types.hpp");



        //array_add(*source_files,zlib_h_loc);
        //array_add(*source_files,freetype_h_loc);



        generate_library_declarations = false;
        omit_global_declarations = false;

    }

    return generate_bindings(opts, output_filename);

}

#import "Basic";
#import "Compiler";
#import "BuildCpp";
#import "Check";
#import "Bindings_Generator";
#import "File";