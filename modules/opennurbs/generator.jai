#run build();

zlib_h_loc :: "source/opennurbs/zlib/zlib.h";
lib_h_loc :: "source/opennurbs/opennurbs.h";
freetype_h_loc :: "source/opennurbs/freetype263/include/ft2build.h";

build :: () {
    set_build_options_dc(.{do_output=false});

    options := get_build_options();
    build_cpp_dynamic_lib("opennurbs","source/opennurbs/opennurbs_dll.cpp");
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
	    "-Wno-overloaded-virtual",
	    "-Wno-switch",
	    "-Wno-unknown-pragmas",
	    "-Wno-unused-private-field",
        "-D_GNU_SOURCE",
        "-std=c++17",
        "-x",
        "c++");
        array_add(*strip_prefixes,"ON_");
        array_add(*strip_prefixes,"on_");
        array_add(*libpaths,".");
        array_add(*libnames,"opennurbs");
        array_add(*include_paths,"source/opennurbs/");
        array_add(*include_paths,"source/opennurbs/zlib/");
        array_add(*include_paths,"source/opennurbs/freetype263/include/freetype/");
        array_add(*source_files,lib_h_loc);
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