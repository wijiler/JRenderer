
load_3mf :: (filename:string) {
    verts: [] u64;

    file:l3mf.Lib3MF_Reader; 
    model:l3mf.Lib3MF_Model;
    file = l3mf.lib3mf_model_queryreader(*model,"3mf".data,*file);

    l3mf.lib3mf_reader_readfromfile(*file,filename);


    mObjIt:l3mf.Lib3MF_MeshObjectIterator;
    l3mf.lib3mf_model_getmeshobjects(model,*mObjIt);

    if mObjIt.count != 1 {
        // POSIX COMPLIANCE
        exit(1);
    }
    next:bool = true;
    l3mf.lib3mf_objectIterator_movenext(*mObjIt,*next);

    mesh:l3mf.Lib3MF_MeshObject;

    l3mf.lib3mf_meshobjectiterator_getcurrentmeshobject(mObjIt,*mesh);

    vertcount:u32;
    l3mf.lib3mf_meshobject_getvertexcount(*mesh,vertcount);

    verts = NewArray(vertcount,u64);

    for 0..vertcount - 1 {
        position:sLib3MFPosition;
        l3mf.lib3mf_meshobject_getvertex(mesh,it,*position);
        verts[it] = position.m_Coordinates[0];
        verts[it+1] = position.m_Coordinates[0];
        verts[it+3] = position.m_Coordinates[0];
    }

}

#import "Basic";
l3mf :: #import "lib3mf";