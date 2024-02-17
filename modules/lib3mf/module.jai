//
// This file was auto-generated using the following command:
//
// jai generate.jai
//

lib3mf :: #library "lib3mf";

LIB3MF_VERSION_MAJOR :: 2;
LIB3MF_VERSION_MINOR :: 2;
LIB3MF_VERSION_MICRO :: 0;
LIB3MF_VERSION_PRERELEASEINFO :: "";
LIB3MF_VERSION_BUILDINFO :: "";

LIB3MF_SUCCESS :: 0;
LIB3MF_ERROR_NOTIMPLEMENTED :: 1;
LIB3MF_ERROR_INVALIDPARAM :: 2;
LIB3MF_ERROR_INVALIDCAST :: 3;
LIB3MF_ERROR_BUFFERTOOSMALL :: 4;
LIB3MF_ERROR_GENERICEXCEPTION :: 5;
LIB3MF_ERROR_COULDNOTLOADLIBRARY :: 6;
LIB3MF_ERROR_COULDNOTFINDLIBRARYEXPORT :: 7;
LIB3MF_ERROR_INCOMPATIBLEBINARYVERSION :: 8;
LIB3MF_ERROR_CALCULATIONABORTED :: 10;
LIB3MF_ERROR_SHOULDNOTBECALLED :: 11;
LIB3MF_ERROR_READERCLASSUNKNOWN :: 100;
LIB3MF_ERROR_WRITERCLASSUNKNOWN :: 101;
LIB3MF_ERROR_ITERATORINVALIDINDEX :: 102;
LIB3MF_ERROR_INVALIDMODELRESOURCE :: 103;
LIB3MF_ERROR_RESOURCENOTFOUND :: 104;
LIB3MF_ERROR_INVALIDMODEL :: 105;
LIB3MF_ERROR_INVALIDOBJECT :: 106;
LIB3MF_ERROR_INVALIDMESHOBJECT :: 107;
LIB3MF_ERROR_INVALIDCOMPONENTSOBJECT :: 108;
LIB3MF_ERROR_INVALIDCOMPONENT :: 109;
LIB3MF_ERROR_INVALIDBUILDITEM :: 110;
LIB3MF_ERROR_INVALIDBASEMATERIALGROUP :: 111;
LIB3MF_ERROR_INVALIDSLICESTACKRESOURCE :: 112;
LIB3MF_ERROR_INVALIDTEXTURERESOURCE :: 113;
LIB3MF_ERROR_INVALIDCOLORGROUP :: 114;
LIB3MF_ERROR_INVALIDTEXTURE2DGROUP :: 115;
LIB3MF_ERROR_INVALIDCOMPOSITEMATERIALS :: 116;
LIB3MF_ERROR_INVALIDMULTIPROPERTYGROUP :: 117;
LIB3MF_ERROR_INVALIDRESOURCEINDEX :: 120;
LIB3MF_ERROR_ATTACHMENTNOTFOUND :: 121;
LIB3MF_ERROR_FORBIDDENCYCLICREFERENCE :: 130;
LIB3MF_ERROR_INVALIDATTACHMENTSTREAM :: 131;
LIB3MF_ERROR_INVALIDPROPERTYCOUNT :: 132;
LIB3MF_ERROR_UNKOWNPROGRESSIDENTIFIER :: 140;
LIB3MF_ERROR_ELEMENTCOUNTEXCEEDSLIMIT :: 141;
LIB3MF_ERROR_BEAMLATTICE_INVALID_OBJECTTYPE :: 2000;
LIB3MF_ERROR_INVALIDKEYSTORE :: 3000;
LIB3MF_ERROR_INVALIDKEYSTORECONSUMER :: 3001;
LIB3MF_ERROR_KEYSTORECONSUMERNOTFOUND :: 3002;
LIB3MF_ERROR_KEYSTORERESOURCEDATANOTFOUND :: 3003;
LIB3MF_ERROR_SECURECONTEXTNOTREGISTERED :: 3004;

Lib3MF_uint8 :: u8;
Lib3MF_uint16 :: u16;
Lib3MF_uint32 :: u32;
Lib3MF_uint64 :: u64;
Lib3MF_int8 :: s8;
Lib3MF_int16 :: s16;
Lib3MF_int32 :: s32;
Lib3MF_int64 :: s64;

Lib3MF_single :: float;
Lib3MF_double :: float64;

/*************************************************************************************************************************
General type definitions
**************************************************************************************************************************/
Lib3MFResult :: Lib3MF_int32;
Lib3MFHandle :: *void;
Lib3MF_pvoid :: *void;

/*************************************************************************************************************************
Declaration of handle classes
**************************************************************************************************************************/
Lib3MF_Base :: Lib3MFHandle;
Lib3MF_Writer :: Lib3MFHandle;
Lib3MF_Reader :: Lib3MFHandle;
Lib3MF_PackagePart :: Lib3MFHandle;
Lib3MF_Resource :: Lib3MFHandle;
Lib3MF_ResourceIterator :: Lib3MFHandle;
Lib3MF_SliceStackIterator :: Lib3MFHandle;
Lib3MF_ObjectIterator :: Lib3MFHandle;
Lib3MF_MeshObjectIterator :: Lib3MFHandle;
Lib3MF_ComponentsObjectIterator :: Lib3MFHandle;
Lib3MF_Texture2DIterator :: Lib3MFHandle;
Lib3MF_BaseMaterialGroupIterator :: Lib3MFHandle;
Lib3MF_ColorGroupIterator :: Lib3MFHandle;
Lib3MF_Texture2DGroupIterator :: Lib3MFHandle;
Lib3MF_CompositeMaterialsIterator :: Lib3MFHandle;
Lib3MF_MultiPropertyGroupIterator :: Lib3MFHandle;
Lib3MF_MetaData :: Lib3MFHandle;
Lib3MF_MetaDataGroup :: Lib3MFHandle;
Lib3MF_Object :: Lib3MFHandle;
Lib3MF_MeshObject :: Lib3MFHandle;
Lib3MF_BeamLattice :: Lib3MFHandle;
Lib3MF_Component :: Lib3MFHandle;
Lib3MF_ComponentsObject :: Lib3MFHandle;
Lib3MF_BeamSet :: Lib3MFHandle;
Lib3MF_BaseMaterialGroup :: Lib3MFHandle;
Lib3MF_ColorGroup :: Lib3MFHandle;
Lib3MF_Texture2DGroup :: Lib3MFHandle;
Lib3MF_CompositeMaterials :: Lib3MFHandle;
Lib3MF_MultiPropertyGroup :: Lib3MFHandle;
Lib3MF_Attachment :: Lib3MFHandle;
Lib3MF_Texture2D :: Lib3MFHandle;
Lib3MF_BuildItem :: Lib3MFHandle;
Lib3MF_BuildItemIterator :: Lib3MFHandle;
Lib3MF_Slice :: Lib3MFHandle;
Lib3MF_SliceStack :: Lib3MFHandle;
Lib3MF_Consumer :: Lib3MFHandle;
Lib3MF_AccessRight :: Lib3MFHandle;
Lib3MF_ContentEncryptionParams :: Lib3MFHandle;
Lib3MF_ResourceData :: Lib3MFHandle;
Lib3MF_ResourceDataGroup :: Lib3MFHandle;
Lib3MF_KeyStore :: Lib3MFHandle;
Lib3MF_Model :: Lib3MFHandle;

Lib3MF :: struct {
    /*************************************************************************************************************************
    Declaration of enums
    **************************************************************************************************************************/
    ePropertyType :: enum Lib3MF_int32 {
        NoPropertyType :: 0;
        BaseMaterial   :: 1;
        TexCoord       :: 2;
        Colors         :: 3;
        Composite      :: 4;
        Multi          :: 5;
    }

    eSlicesMeshResolution :: enum Lib3MF_int32 {
        Fullres :: 0;
        Lowres  :: 1;
    }

    eModelUnit :: enum Lib3MF_int32 {
        MicroMeter :: 0;
        MilliMeter :: 1;
        CentiMeter :: 2;
        Inch       :: 3;
        Foot       :: 4;
        Meter      :: 5;
    }

    eObjectType :: enum Lib3MF_int32 {
        Other        :: 0;
        Model        :: 1;
        Support      :: 2;
        SolidSupport :: 3;
    }

    eTextureType :: enum Lib3MF_int32 {
        Unknown :: 0;
        PNG     :: 1;
        JPEG    :: 2;
    }

    eTextureTileStyle :: enum Lib3MF_int32 {
        Wrap        :: 0;
        Mirror      :: 1;
        Clamp       :: 2;
        NoTileStyle :: 3;
    }

    eTextureFilter :: enum Lib3MF_int32 {
        Auto    :: 0;
        Linear  :: 1;
        Nearest :: 2;
    }

    eBeamLatticeCapMode :: enum Lib3MF_int32 {
        Sphere     :: 0;
        HemiSphere :: 1;
        Butt       :: 2;
    }

    eBeamLatticeClipMode :: enum Lib3MF_int32 {
        NoClipMode :: 0;
        Inside     :: 1;
        Outside    :: 2;
    }

    eBeamLatticeBallMode :: enum Lib3MF_int32 {
        None  :: 0;
        Mixed :: 1;
        All   :: 2;
    }

    eProgressIdentifier :: enum Lib3MF_int32 {
        QUERYCANCELED        :: 0;
        DONE                 :: 1;
        CLEANUP              :: 2;
        READSTREAM           :: 3;
        EXTRACTOPCPACKAGE    :: 4;
        READNONROOTMODELS    :: 5;
        READROOTMODEL        :: 6;
        READRESOURCES        :: 7;
        READMESH             :: 8;
        READSLICES           :: 9;
        READBUILD            :: 10;
        READCUSTOMATTACHMENT :: 11;
        READTEXTURETACHMENTS :: 12;
        CREATEOPCPACKAGE     :: 13;
        WRITEMODELSTOSTREAM  :: 14;
        WRITEROOTMODEL       :: 15;
        WRITENONROOTMODELS   :: 16;
        WRITEATTACHMENTS     :: 17;
        WRITECONTENTTYPES    :: 18;
        WRITENOBJECTS        :: 19;
        WRITENODES           :: 20;
        WRITETRIANGLES       :: 21;
        WRITESLICES          :: 22;
        WRITEKEYSTORE        :: 23;
    }

    eBlendMethod :: enum Lib3MF_int32 {
        NoBlendMethod :: 0;
        Mix           :: 1;
        Multiply      :: 2;
    }

    eEncryptionAlgorithm :: enum Lib3MF_int32 {
        AES256_GCM :: 1;
    }

    eWrappingAlgorithm :: enum Lib3MF_int32 {
        RSA_OAEP :: 0;
    }

    eMgfAlgorithm :: enum Lib3MF_int32 {
        SHA1   :: 160;
        SHA224 :: 224;
        SHA256 :: 256;
        SHA384 :: 384;
        SHA512 :: 512;

        MGF1_SHA1   :: SHA1;
        MGF1_SHA224 :: SHA224;
        MGF1_SHA256 :: SHA256;
        MGF1_SHA384 :: SHA384;
        MGF1_SHA512 :: SHA512;
    }

    eDigestMethod :: enum Lib3MF_int32 {
        _1   :: 160;
        _256 :: 256;

        SHA1   :: _1;
        SHA256 :: _256;
    }

    eCompression :: enum Lib3MF_int32 {
        NoCompression :: 0;
        Deflate       :: 1;
    }

    sTriangle :: struct {
        m_Indices: [3] Lib3MF_uint32;
    }

    sTriangleProperties :: struct {
        m_ResourceID:  Lib3MF_uint32;
        m_PropertyIDs: [3] Lib3MF_uint32;
    }

    sPosition :: struct {
        m_Coordinates: [3] Lib3MF_single;
    }

    sPosition2D :: struct {
        m_Coordinates: [2] Lib3MF_single;
    }

    sCompositeConstituent :: struct {
        m_PropertyID:  Lib3MF_uint32;
        m_MixingRatio: Lib3MF_double #align 4;
    }

    sMultiPropertyLayer :: struct {
        m_ResourceID:     Lib3MF_uint32;
        m_TheBlendMethod: eBlendMethod;
    }

    sTex2Coord :: struct {
        m_U: Lib3MF_double;
        m_V: Lib3MF_double;
    }

    sTransform :: struct {
        m_Fields: [4] [3] Lib3MF_single;
    }

    sBox :: struct {
        m_MinCoordinate: [3] Lib3MF_single;
        m_MaxCoordinate: [3] Lib3MF_single;
    }

    sColor :: struct {
        m_Red:   Lib3MF_uint8;
        m_Green: Lib3MF_uint8;
        m_Blue:  Lib3MF_uint8;
        m_Alpha: Lib3MF_uint8;
    }

    sBeam :: struct {
        m_Indices:  [2] Lib3MF_uint32;
        m_Radii:    [2] Lib3MF_double;
        m_CapModes: [2] eBeamLatticeCapMode;
    }

    sBall :: struct {
        m_Index:  Lib3MF_uint32;
        m_Radius: Lib3MF_double #align 4;
    }

    /**
    * ProgressCallback - A callback function
    *
    * @param[out] pAbort - Returns whether the calculation should be aborted
    * @param[in] dProgressValue - The value of the progress function: values in the interval [0,1] are progress; < mean no progress update
    * @param[in] eProgressIdentifier - An identifier of progress
    * @param[in] pUserData - Userdata that is passed to the callback function
    */
    ProgressCallback :: #type (unknown0: *bool, unknown1: Lib3MF_double, unknown2: eProgressIdentifier, unknown3: Lib3MF_pvoid) -> void #c_call;

    /**
    * WriteCallback - Callback to call for writing a data chunk
    *
    * @param[in] nByteData - Pointer to the data to be written
    * @param[in] nNumBytes - Number of bytes to write
    * @param[in] pUserData - Userdata that is passed to the callback function
    */
    WriteCallback :: #type (unknown0: Lib3MF_uint64, unknown1: Lib3MF_uint64, unknown2: Lib3MF_pvoid) -> void #c_call;

    /**
    * ReadCallback - Callback to call for reading a data chunk
    *
    * @param[in] nByteData - Pointer to a buffer to read data into
    * @param[in] nNumBytes - Number of bytes to read
    * @param[in] pUserData - Userdata that is passed to the callback function
    */
    ReadCallback :: #type (unknown0: Lib3MF_uint64, unknown1: Lib3MF_uint64, unknown2: Lib3MF_pvoid) -> void #c_call;

    /**
    * SeekCallback - Callback to call for seeking in the stream
    *
    * @param[in] nPosition - Position in the stream to move to
    * @param[in] pUserData - Userdata that is passed to the callback function
    */
    SeekCallback :: #type (unknown0: Lib3MF_uint64, unknown1: Lib3MF_pvoid) -> void #c_call;

    /**
    * RandomNumberCallback - Callback to generate random numbers
    *
    * @param[in] nByteData - Pointer to a buffer to read data into
    * @param[in] nNumBytes - Size of available bytes in the buffer
    * @param[in] pUserData - Userdata that is passed to the callback function
    * @param[out] pBytesWritten - Number of bytes generated when succeed. 0 or less if failed.
    */
    RandomNumberCallback :: #type (unknown0: Lib3MF_uint64, unknown1: Lib3MF_uint64, unknown2: Lib3MF_pvoid, unknown3: *Lib3MF_uint64) -> void #c_call;

    /**
    * KeyWrappingCallback - A callback used to wrap (encrypt) the content key available in keystore resource group
    *
    * @param[in] pKEKParams - The information about the parameters used used to wrap the key to the contents
    * @param[in] nInBufferBufferSize - Number of elements in buffer
    * @param[in] pInBufferBuffer - uint8 buffer of Buffer to the input value. When encrypting, this should be the plain key. When decrypting, this should be the key cipher.
    * @param[in] nOutBufferBufferSize - Number of elements in buffer
    * @param[out] pOutBufferNeededCount - will be filled with the count of the written elements, or needed buffer size.
    * @param[out] pOutBufferBuffer - uint8  buffer of Buffer where the data will be placed. When encrypting, this will be the key cipher. When decrypting, this will be the plain key. When buffer is null, neededBytes contains the required bytes to run.
    * @param[in] pUserData - Userdata that is passed to the callback function
    * @param[out] pStatus - The needed/encrypted/decrypted bytes when succeed or zero when error.
    */
    KeyWrappingCallback :: #type (unknown0: Lib3MF_AccessRight, unknown1: Lib3MF_uint64, unknown2: *Lib3MF_uint8, unknown3: Lib3MF_uint64, unknown4: *Lib3MF_uint64, unknown5: *Lib3MF_uint8, unknown6: Lib3MF_pvoid, unknown7: *Lib3MF_uint64) -> void #c_call;

    /**
    * ContentEncryptionCallback - A callback to encrypt/decrypt content called on each resource encrypted. This might be called several times depending on content size. If Input is not available(either null or size is 0), clients must return the result of authenticated tag generation/validation.
    *
    * @param[in] pCEKParams - The params of the encryption process. Client must set/check AuthenticationTag when closing the encryption/decryption process.
    * @param[in] nInputBufferSize - Number of elements in buffer
    * @param[in] pInputBuffer - uint8 buffer of Buffer to the original data. In encrypting, this will be the plain data. If decrypting, this will be the cipher data
    * @param[in] nOutputBufferSize - Number of elements in buffer
    * @param[out] pOutputNeededCount - will be filled with the count of the written elements, or needed buffer size.
    * @param[out] pOutputBuffer - uint8  buffer of Buffer to hold the transformed data. When encrypting, this will be the cipher data. When decrypting, this shall be the plain data. If buffer is null, neededBytes return the necessary amount of bytes.
    * @param[in] pUserData - Userdata that is passed to the callback function
    * @param[out] pStatus - The needed/encrypted/decrypted/verified bytes when succeed or zero when error.
    */
    ContentEncryptionCallback :: #type (unknown0: Lib3MF_ContentEncryptionParams, unknown1: Lib3MF_uint64, unknown2: *Lib3MF_uint8, unknown3: Lib3MF_uint64, unknown4: *Lib3MF_uint64, unknown5: *Lib3MF_uint8, unknown6: Lib3MF_pvoid, unknown7: *Lib3MF_uint64) -> void #c_call;

    /*************************************************************************************************************************
    Declaration of deprecated class types
    **************************************************************************************************************************/
    CLib3MFWrapper :: CWrapper;
    CLib3MFBase :: CBase;
    CLib3MFWriter :: CWriter;
    CLib3MFReader :: CReader;
    CLib3MFPackagePart :: CPackagePart;
    CLib3MFResource :: CResource;
    CLib3MFResourceIterator :: CResourceIterator;
    CLib3MFSliceStackIterator :: CSliceStackIterator;
    CLib3MFObjectIterator :: CObjectIterator;
    CLib3MFMeshObjectIterator :: CMeshObjectIterator;
    CLib3MFComponentsObjectIterator :: CComponentsObjectIterator;
    CLib3MFTexture2DIterator :: CTexture2DIterator;
    CLib3MFBaseMaterialGroupIterator :: CBaseMaterialGroupIterator;
    CLib3MFColorGroupIterator :: CColorGroupIterator;
    CLib3MFTexture2DGroupIterator :: CTexture2DGroupIterator;
    CLib3MFCompositeMaterialsIterator :: CCompositeMaterialsIterator;
    CLib3MFMultiPropertyGroupIterator :: CMultiPropertyGroupIterator;
    CLib3MFMetaData :: CMetaData;
    CLib3MFMetaDataGroup :: CMetaDataGroup;
    CLib3MFObject :: CObject;
    CLib3MFMeshObject :: CMeshObject;
    CLib3MFBeamLattice :: CBeamLattice;
    CLib3MFComponent :: CComponent;
    CLib3MFComponentsObject :: CComponentsObject;
    CLib3MFBeamSet :: CBeamSet;
    CLib3MFBaseMaterialGroup :: CBaseMaterialGroup;
    CLib3MFColorGroup :: CColorGroup;
    CLib3MFTexture2DGroup :: CTexture2DGroup;
    CLib3MFCompositeMaterials :: CCompositeMaterials;
    CLib3MFMultiPropertyGroup :: CMultiPropertyGroup;
    CLib3MFAttachment :: CAttachment;
    CLib3MFTexture2D :: CTexture2D;
    CLib3MFBuildItem :: CBuildItem;
    CLib3MFBuildItemIterator :: CBuildItemIterator;
    CLib3MFSlice :: CSlice;
    CLib3MFSliceStack :: CSliceStack;
    CLib3MFConsumer :: CConsumer;
    CLib3MFAccessRight :: CAccessRight;
    CLib3MFContentEncryptionParams :: CContentEncryptionParams;
    CLib3MFResourceData :: CResourceData;
    CLib3MFResourceDataGroup :: CResourceDataGroup;
    CLib3MFKeyStore :: CKeyStore;
    CLib3MFModel :: CModel;

    /*************************************************************************************************************************
    Declaration of shared pointer types
    **************************************************************************************************************************/
    PWrapper :: *CWrapper;
    PBase :: *CBase;
    PWriter :: *CWriter;
    PReader :: *CReader;
    PPackagePart :: *CPackagePart;
    PResource :: *CResource;
    PResourceIterator :: *CResourceIterator;
    PSliceStackIterator :: *CSliceStackIterator;
    PObjectIterator :: *CObjectIterator;
    PMeshObjectIterator :: *CMeshObjectIterator;
    PComponentsObjectIterator :: *CComponentsObjectIterator;
    PTexture2DIterator :: *CTexture2DIterator;
    PBaseMaterialGroupIterator :: *CBaseMaterialGroupIterator;
    PColorGroupIterator :: *CColorGroupIterator;
    PTexture2DGroupIterator :: *CTexture2DGroupIterator;
    PCompositeMaterialsIterator :: *CCompositeMaterialsIterator;
    PMultiPropertyGroupIterator :: *CMultiPropertyGroupIterator;
    PMetaData :: *CMetaData;
    PMetaDataGroup :: *CMetaDataGroup;
    PObject :: *CObject;
    PMeshObject :: *CMeshObject;
    PBeamLattice :: *CBeamLattice;
    PComponent :: *CComponent;
    PComponentsObject :: *CComponentsObject;
    PBeamSet :: *CBeamSet;
    PBaseMaterialGroup :: *CBaseMaterialGroup;
    PColorGroup :: *CColorGroup;
    PTexture2DGroup :: *CTexture2DGroup;
    PCompositeMaterials :: *CCompositeMaterials;
    PMultiPropertyGroup :: *CMultiPropertyGroup;
    PAttachment :: *CAttachment;
    PTexture2D :: *CTexture2D;
    PBuildItem :: *CBuildItem;
    PBuildItemIterator :: *CBuildItemIterator;
    PSlice :: *CSlice;
    PSliceStack :: *CSliceStack;
    PConsumer :: *CConsumer;
    PAccessRight :: *CAccessRight;
    PContentEncryptionParams :: *CContentEncryptionParams;
    PResourceData :: *CResourceData;
    PResourceDataGroup :: *CResourceDataGroup;
    PKeyStore :: *CKeyStore;
    PModel :: *CModel;

    /*************************************************************************************************************************
    Declaration of deprecated shared pointer types
    **************************************************************************************************************************/
    PLib3MFWrapper :: PWrapper;
    PLib3MFBase :: PBase;
    PLib3MFWriter :: PWriter;
    PLib3MFReader :: PReader;
    PLib3MFPackagePart :: PPackagePart;
    PLib3MFResource :: PResource;
    PLib3MFResourceIterator :: PResourceIterator;
    PLib3MFSliceStackIterator :: PSliceStackIterator;
    PLib3MFObjectIterator :: PObjectIterator;
    PLib3MFMeshObjectIterator :: PMeshObjectIterator;
    PLib3MFComponentsObjectIterator :: PComponentsObjectIterator;
    PLib3MFTexture2DIterator :: PTexture2DIterator;
    PLib3MFBaseMaterialGroupIterator :: PBaseMaterialGroupIterator;
    PLib3MFColorGroupIterator :: PColorGroupIterator;
    PLib3MFTexture2DGroupIterator :: PTexture2DGroupIterator;
    PLib3MFCompositeMaterialsIterator :: PCompositeMaterialsIterator;
    PLib3MFMultiPropertyGroupIterator :: PMultiPropertyGroupIterator;
    PLib3MFMetaData :: PMetaData;
    PLib3MFMetaDataGroup :: PMetaDataGroup;
    PLib3MFObject :: PObject;
    PLib3MFMeshObject :: PMeshObject;
    PLib3MFBeamLattice :: PBeamLattice;
    PLib3MFComponent :: PComponent;
    PLib3MFComponentsObject :: PComponentsObject;
    PLib3MFBeamSet :: PBeamSet;
    PLib3MFBaseMaterialGroup :: PBaseMaterialGroup;
    PLib3MFColorGroup :: PColorGroup;
    PLib3MFTexture2DGroup :: PTexture2DGroup;
    PLib3MFCompositeMaterials :: PCompositeMaterials;
    PLib3MFMultiPropertyGroup :: PMultiPropertyGroup;
    PLib3MFAttachment :: PAttachment;
    PLib3MFTexture2D :: PTexture2D;
    PLib3MFBuildItem :: PBuildItem;
    PLib3MFBuildItemIterator :: PBuildItemIterator;
    PLib3MFSlice :: PSlice;
    PLib3MFSliceStack :: PSliceStack;
    PLib3MFConsumer :: PConsumer;
    PLib3MFAccessRight :: PAccessRight;
    PLib3MFContentEncryptionParams :: PContentEncryptionParams;
    PLib3MFResourceData :: PResourceData;
    PLib3MFResourceDataGroup :: PResourceDataGroup;
    PLib3MFKeyStore :: PKeyStore;
    PLib3MFModel :: PModel;

    /*************************************************************************************************************************
    Class ELib3MFException
    **************************************************************************************************************************/
    ELib3MFException :: struct {        /**
        * Error code for the Exception.
        */
        m_errorCode:    Lib3MFResult;

        /**
        * Error message for the Exception.
        */
        m_errorMessage: string;
    }

    /*************************************************************************************************************************
    Class CInputVector
    **************************************************************************************************************************/
    CInputVector :: struct(T: Type) {
        m_data: *T;
        m_size: u64;
    }

    /*************************************************************************************************************************
    Forward Declaration of all classes
    **************************************************************************************************************************/
    CWrapper :: struct {
        m_WrapperTable: sLib3MFDynamicWrapperTable;
    }

    /*************************************************************************************************************************
    Class CBase
    **************************************************************************************************************************/
    CBase :: struct {
        vtable: *CBase_VTable;
        /* Wrapper Object that created the class. */
        m_pWrapper: *CWrapper;

        /* Handle to Instance in library*/
        m_pHandle:  Lib3MFHandle;
    }
    #import "Windows";
    CBase_VTable :: struct #type_info_none {
        Destructor: (this: *CBase, flags: Msvc_Destructor_Flags = .NONE) -> void #cpp_method;
    }
    CBase_Destructor :: inline (this: *CBase, flags: Msvc_Destructor_Flags = .NONE) { this.vtable.Destructor(this, flags); }

    vtable :: (obj: *CBase) -> *CBase_VTable { return obj.vtable; }


    /*************************************************************************************************************************
    Class CWriter
    **************************************************************************************************************************/
    CWriter :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CReader
    **************************************************************************************************************************/
    CReader :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CPackagePart
    **************************************************************************************************************************/
    CPackagePart :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CResource
    **************************************************************************************************************************/
    CResource :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CResourceIterator
    **************************************************************************************************************************/
    CResourceIterator :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CSliceStackIterator
    **************************************************************************************************************************/
    CSliceStackIterator :: struct {
        #as using cresourceiterator: CResourceIterator;
    }

    /*************************************************************************************************************************
    Class CObjectIterator
    **************************************************************************************************************************/
    CObjectIterator :: struct {
        #as using cresourceiterator: CResourceIterator;
    }

    /*************************************************************************************************************************
    Class CMeshObjectIterator
    **************************************************************************************************************************/
    CMeshObjectIterator :: struct {
        #as using cresourceiterator: CResourceIterator;
    }

    /*************************************************************************************************************************
    Class CComponentsObjectIterator
    **************************************************************************************************************************/
    CComponentsObjectIterator :: struct {
        #as using cresourceiterator: CResourceIterator;
    }

    /*************************************************************************************************************************
    Class CTexture2DIterator
    **************************************************************************************************************************/
    CTexture2DIterator :: struct {
        #as using cresourceiterator: CResourceIterator;
    }

    /*************************************************************************************************************************
    Class CBaseMaterialGroupIterator
    **************************************************************************************************************************/
    CBaseMaterialGroupIterator :: struct {
        #as using cresourceiterator: CResourceIterator;
    }

    /*************************************************************************************************************************
    Class CColorGroupIterator
    **************************************************************************************************************************/
    CColorGroupIterator :: struct {
        #as using cresourceiterator: CResourceIterator;
    }

    /*************************************************************************************************************************
    Class CTexture2DGroupIterator
    **************************************************************************************************************************/
    CTexture2DGroupIterator :: struct {
        #as using cresourceiterator: CResourceIterator;
    }

    /*************************************************************************************************************************
    Class CCompositeMaterialsIterator
    **************************************************************************************************************************/
    CCompositeMaterialsIterator :: struct {
        #as using cresourceiterator: CResourceIterator;
    }

    /*************************************************************************************************************************
    Class CMultiPropertyGroupIterator
    **************************************************************************************************************************/
    CMultiPropertyGroupIterator :: struct {
        #as using cresourceiterator: CResourceIterator;
    }

    /*************************************************************************************************************************
    Class CMetaData
    **************************************************************************************************************************/
    CMetaData :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CMetaDataGroup
    **************************************************************************************************************************/
    CMetaDataGroup :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CObject
    **************************************************************************************************************************/
    CObject :: struct {
        #as using cresource: CResource;
    }

    /*************************************************************************************************************************
    Class CMeshObject
    **************************************************************************************************************************/
    CMeshObject :: struct {
        #as using cobject: CObject;
    }

    /*************************************************************************************************************************
    Class CBeamLattice
    **************************************************************************************************************************/
    CBeamLattice :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CComponent
    **************************************************************************************************************************/
    CComponent :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CComponentsObject
    **************************************************************************************************************************/
    CComponentsObject :: struct {
        #as using cobject: CObject;
    }

    /*************************************************************************************************************************
    Class CBeamSet
    **************************************************************************************************************************/
    CBeamSet :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CBaseMaterialGroup
    **************************************************************************************************************************/
    CBaseMaterialGroup :: struct {
        #as using cresource: CResource;
    }

    /*************************************************************************************************************************
    Class CColorGroup
    **************************************************************************************************************************/
    CColorGroup :: struct {
        #as using cresource: CResource;
    }

    /*************************************************************************************************************************
    Class CTexture2DGroup
    **************************************************************************************************************************/
    CTexture2DGroup :: struct {
        #as using cresource: CResource;
    }

    /*************************************************************************************************************************
    Class CCompositeMaterials
    **************************************************************************************************************************/
    CCompositeMaterials :: struct {
        #as using cresource: CResource;
    }

    /*************************************************************************************************************************
    Class CMultiPropertyGroup
    **************************************************************************************************************************/
    CMultiPropertyGroup :: struct {
        #as using cresource: CResource;
    }

    /*************************************************************************************************************************
    Class CAttachment
    **************************************************************************************************************************/
    CAttachment :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CTexture2D
    **************************************************************************************************************************/
    CTexture2D :: struct {
        #as using cresource: CResource;
    }

    /*************************************************************************************************************************
    Class CBuildItem
    **************************************************************************************************************************/
    CBuildItem :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CBuildItemIterator
    **************************************************************************************************************************/
    CBuildItemIterator :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CSlice
    **************************************************************************************************************************/
    CSlice :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CSliceStack
    **************************************************************************************************************************/
    CSliceStack :: struct {
        #as using cresource: CResource;
    }

    /*************************************************************************************************************************
    Class CConsumer
    **************************************************************************************************************************/
    CConsumer :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CAccessRight
    **************************************************************************************************************************/
    CAccessRight :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CContentEncryptionParams
    **************************************************************************************************************************/
    CContentEncryptionParams :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CResourceData
    **************************************************************************************************************************/
    CResourceData :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CResourceDataGroup
    **************************************************************************************************************************/
    CResourceDataGroup :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CKeyStore
    **************************************************************************************************************************/
    CKeyStore :: struct {
        #as using cbase: CBase;
    }

    /*************************************************************************************************************************
    Class CModel
    **************************************************************************************************************************/
    CModel :: struct {
        #as using cbase: CBase;
    }
}

// define legacy C-names for enums, structs and function types
eLib3MFPropertyType :: Lib3MF.ePropertyType;
eLib3MFSlicesMeshResolution :: Lib3MF.eSlicesMeshResolution;
eLib3MFModelUnit :: Lib3MF.eModelUnit;
eLib3MFObjectType :: Lib3MF.eObjectType;
eLib3MFTextureType :: Lib3MF.eTextureType;
eLib3MFTextureTileStyle :: Lib3MF.eTextureTileStyle;
eLib3MFTextureFilter :: Lib3MF.eTextureFilter;
eLib3MFBeamLatticeCapMode :: Lib3MF.eBeamLatticeCapMode;
eLib3MFBeamLatticeClipMode :: Lib3MF.eBeamLatticeClipMode;
eLib3MFBeamLatticeBallMode :: Lib3MF.eBeamLatticeBallMode;
eLib3MFProgressIdentifier :: Lib3MF.eProgressIdentifier;
eLib3MFBlendMethod :: Lib3MF.eBlendMethod;
eLib3MFEncryptionAlgorithm :: Lib3MF.eEncryptionAlgorithm;
eLib3MFWrappingAlgorithm :: Lib3MF.eWrappingAlgorithm;
eLib3MFMgfAlgorithm :: Lib3MF.eMgfAlgorithm;
eLib3MFDigestMethod :: Lib3MF.eDigestMethod;
eLib3MFCompression :: Lib3MF.eCompression;
sLib3MFTriangle :: Lib3MF.sTriangle;
sLib3MFTriangleProperties :: Lib3MF.sTriangleProperties;
sLib3MFPosition :: Lib3MF.sPosition;
sLib3MFPosition2D :: Lib3MF.sPosition2D;
sLib3MFCompositeConstituent :: Lib3MF.sCompositeConstituent;
sLib3MFMultiPropertyLayer :: Lib3MF.sMultiPropertyLayer;
sLib3MFTex2Coord :: Lib3MF.sTex2Coord;
sLib3MFTransform :: Lib3MF.sTransform;
sLib3MFBox :: Lib3MF.sBox;
sLib3MFColor :: Lib3MF.sColor;
sLib3MFBeam :: Lib3MF.sBeam;
sLib3MFBall :: Lib3MF.sBall;
Lib3MFProgressCallback :: Lib3MF.ProgressCallback;
Lib3MFWriteCallback :: Lib3MF.WriteCallback;
Lib3MFReadCallback :: Lib3MF.ReadCallback;
Lib3MFSeekCallback :: Lib3MF.SeekCallback;
Lib3MFRandomNumberCallback :: Lib3MF.RandomNumberCallback;
Lib3MFKeyWrappingCallback :: Lib3MF.KeyWrappingCallback;
Lib3MFContentEncryptionCallback :: Lib3MF.ContentEncryptionCallback;

/**
* Writes out the model as file. The file type is specified by the Model Writer class.
*
* @param[in] pWriter - Writer instance.
* @param[in] pFilename - Filename to write into
* @return error code or 0 (success)
*/
PLib3MFWriter_WriteToFilePtr :: #type (pWriter: Lib3MF_Writer, pFilename: *u8) -> Lib3MFResult #c_call;

/**
* Retrieves the size of the full 3MF file stream.
*
* @param[in] pWriter - Writer instance.
* @param[out] pStreamSize - the stream size
* @return error code or 0 (success)
*/
PLib3MFWriter_GetStreamSizePtr :: #type (pWriter: Lib3MF_Writer, pStreamSize: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Writes out the 3MF file into a memory buffer
*
* @param[in] pWriter - Writer instance.
* @param[in] nBufferBufferSize - Number of elements in buffer
* @param[out] pBufferNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pBufferBuffer - uint8  buffer of buffer to write into
* @return error code or 0 (success)
*/
PLib3MFWriter_WriteToBufferPtr :: #type (pWriter: Lib3MF_Writer, nBufferBufferSize: Lib3MF_uint64, pBufferNeededCount: *Lib3MF_uint64, pBufferBuffer: *Lib3MF_uint8) -> Lib3MFResult #c_call;

/**
* Writes out the model and passes the data to a provided callback function. The file type is specified by the Model Writer class.
*
* @param[in] pWriter - Writer instance.
* @param[in] pTheWriteCallback - Callback to call for writing a data chunk
* @param[in] pTheSeekCallback - Callback to call for seeking in the stream
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
PLib3MFWriter_WriteToCallbackPtr :: #type (pWriter: Lib3MF_Writer, pTheWriteCallback: Lib3MF.WriteCallback, pTheSeekCallback: Lib3MF.SeekCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #c_call;

/**
* Set the progress callback for calls to this writer
*
* @param[in] pWriter - Writer instance.
* @param[in] pProgressCallback - pointer to the callback function.
* @param[in] pUserData - pointer to arbitrary user data that is passed without modification to the callback.
* @return error code or 0 (success)
*/
PLib3MFWriter_SetProgressCallbackPtr :: #type (pWriter: Lib3MF_Writer, pProgressCallback: Lib3MF.ProgressCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #c_call;

/**
* Returns the number of digits after the decimal point to be written in each vertex coordinate-value.
*
* @param[in] pWriter - Writer instance.
* @param[out] pDecimalPrecision - The number of digits to be written in each vertex coordinate-value after the decimal point.
* @return error code or 0 (success)
*/
PLib3MFWriter_GetDecimalPrecisionPtr :: #type (pWriter: Lib3MF_Writer, pDecimalPrecision: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Sets the number of digits after the decimal point to be written in each vertex coordinate-value.
*
* @param[in] pWriter - Writer instance.
* @param[in] nDecimalPrecision - The number of digits to be written in each vertex coordinate-value after the decimal point.
* @return error code or 0 (success)
*/
PLib3MFWriter_SetDecimalPrecisionPtr :: #type (pWriter: Lib3MF_Writer, nDecimalPrecision: Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Activates (deactivates) the strict mode of the reader.
*
* @param[in] pWriter - Writer instance.
* @param[in] bStrictModeActive - flag whether strict mode is active or not.
* @return error code or 0 (success)
*/
PLib3MFWriter_SetStrictModeActivePtr :: #type (pWriter: Lib3MF_Writer, bStrictModeActive: bool) -> Lib3MFResult #c_call;

/**
* Queries whether the strict mode of the reader is active or not
*
* @param[in] pWriter - Writer instance.
* @param[out] pStrictModeActive - returns flag whether strict mode is active or not.
* @return error code or 0 (success)
*/
PLib3MFWriter_GetStrictModeActivePtr :: #type (pWriter: Lib3MF_Writer, pStrictModeActive: *bool) -> Lib3MFResult #c_call;

/**
* Returns Warning and Error Information of the read process
*
* @param[in] pWriter - Writer instance.
* @param[in] nIndex - Index of the Warning. Valid values are 0 to WarningCount - 1
* @param[out] pErrorCode - filled with the error code of the warning
* @param[in] nWarningBufferSize - size of the buffer (including trailing 0)
* @param[out] pWarningNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pWarningBuffer -  buffer of the message of the warning, may be NULL
* @return error code or 0 (success)
*/
PLib3MFWriter_GetWarningPtr :: #type (pWriter: Lib3MF_Writer, nIndex: Lib3MF_uint32, pErrorCode: *Lib3MF_uint32, nWarningBufferSize: Lib3MF_uint32, pWarningNeededChars: *Lib3MF_uint32, pWarningBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Returns Warning and Error Count of the read process
*
* @param[in] pWriter - Writer instance.
* @param[out] pCount - filled with the count of the occurred warnings.
* @return error code or 0 (success)
*/
PLib3MFWriter_GetWarningCountPtr :: #type (pWriter: Lib3MF_Writer, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Registers a callback to deal with data key encryption/decryption from keystore
*
* @param[in] pWriter - Writer instance.
* @param[in] pConsumerID - The ConsumerID to register for
* @param[in] pTheCallback - The callback to be callede for wrapping and encryption key
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
PLib3MFWriter_AddKeyWrappingCallbackPtr :: #type (pWriter: Lib3MF_Writer, pConsumerID: *u8, pTheCallback: Lib3MF.KeyWrappingCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #c_call;

/**
* Registers a callback to deal with encryption of content
*
* @param[in] pWriter - Writer instance.
* @param[in] pTheCallback - The callback used to encrypt content
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
PLib3MFWriter_SetContentEncryptionCallbackPtr :: #type (pWriter: Lib3MF_Writer, pTheCallback: Lib3MF.ContentEncryptionCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #c_call;

/**
* Reads a model from a file. The file type is specified by the Model Reader class
*
* @param[in] pReader - Reader instance.
* @param[in] pFilename - Filename to read from
* @return error code or 0 (success)
*/
PLib3MFReader_ReadFromFilePtr :: #type (pReader: Lib3MF_Reader, pFilename: *u8) -> Lib3MFResult #c_call;

/**
* Reads a model from a memory buffer.
*
* @param[in] pReader - Reader instance.
* @param[in] nBufferBufferSize - Number of elements in buffer
* @param[in] pBufferBuffer - uint8 buffer of Buffer to read from
* @return error code or 0 (success)
*/
PLib3MFReader_ReadFromBufferPtr :: #type (pReader: Lib3MF_Reader, nBufferBufferSize: Lib3MF_uint64, pBufferBuffer: *Lib3MF_uint8) -> Lib3MFResult #c_call;

/**
* Reads a model and from the data provided by a callback function
*
* @param[in] pReader - Reader instance.
* @param[in] pTheReadCallback - Callback to call for reading a data chunk
* @param[in] nStreamSize - number of bytes the callback returns
* @param[in] pTheSeekCallback - Callback to call for seeking in the stream.
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
PLib3MFReader_ReadFromCallbackPtr :: #type (pReader: Lib3MF_Reader, pTheReadCallback: Lib3MF.ReadCallback, nStreamSize: Lib3MF_uint64, pTheSeekCallback: Lib3MF.SeekCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #c_call;

/**
* Set the progress callback for calls to this writer
*
* @param[in] pReader - Reader instance.
* @param[in] pProgressCallback - pointer to the callback function.
* @param[in] pUserData - pointer to arbitrary user data that is passed without modification to the callback.
* @return error code or 0 (success)
*/
PLib3MFReader_SetProgressCallbackPtr :: #type (pReader: Lib3MF_Reader, pProgressCallback: Lib3MF.ProgressCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #c_call;

/**
* Adds a relationship type which shall be read as attachment in memory while loading
*
* @param[in] pReader - Reader instance.
* @param[in] pRelationShipType - String of the relationship type
* @return error code or 0 (success)
*/
PLib3MFReader_AddRelationToReadPtr :: #type (pReader: Lib3MF_Reader, pRelationShipType: *u8) -> Lib3MFResult #c_call;

/**
* Removes a relationship type which shall be read as attachment in memory while loading
*
* @param[in] pReader - Reader instance.
* @param[in] pRelationShipType - String of the relationship type
* @return error code or 0 (success)
*/
PLib3MFReader_RemoveRelationToReadPtr :: #type (pReader: Lib3MF_Reader, pRelationShipType: *u8) -> Lib3MFResult #c_call;

/**
* Activates (deactivates) the strict mode of the reader.
*
* @param[in] pReader - Reader instance.
* @param[in] bStrictModeActive - flag whether strict mode is active or not.
* @return error code or 0 (success)
*/
PLib3MFReader_SetStrictModeActivePtr :: #type (pReader: Lib3MF_Reader, bStrictModeActive: bool) -> Lib3MFResult #c_call;

/**
* Queries whether the strict mode of the reader is active or not
*
* @param[in] pReader - Reader instance.
* @param[out] pStrictModeActive - returns flag whether strict mode is active or not.
* @return error code or 0 (success)
*/
PLib3MFReader_GetStrictModeActivePtr :: #type (pReader: Lib3MF_Reader, pStrictModeActive: *bool) -> Lib3MFResult #c_call;

/**
* Returns Warning and Error Information of the read process
*
* @param[in] pReader - Reader instance.
* @param[in] nIndex - Index of the Warning. Valid values are 0 to WarningCount - 1
* @param[out] pErrorCode - filled with the error code of the warning
* @param[in] nWarningBufferSize - size of the buffer (including trailing 0)
* @param[out] pWarningNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pWarningBuffer -  buffer of the message of the warning, may be NULL
* @return error code or 0 (success)
*/
PLib3MFReader_GetWarningPtr :: #type (pReader: Lib3MF_Reader, nIndex: Lib3MF_uint32, pErrorCode: *Lib3MF_uint32, nWarningBufferSize: Lib3MF_uint32, pWarningNeededChars: *Lib3MF_uint32, pWarningBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Returns Warning and Error Count of the read process
*
* @param[in] pReader - Reader instance.
* @param[out] pCount - filled with the count of the occurred warnings.
* @return error code or 0 (success)
*/
PLib3MFReader_GetWarningCountPtr :: #type (pReader: Lib3MF_Reader, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Registers a callback to deal with key wrapping mechanism from keystore
*
* @param[in] pReader - Reader instance.
* @param[in] pConsumerID - The ConsumerID to register for
* @param[in] pTheCallback - The callback used to decrypt data key
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
PLib3MFReader_AddKeyWrappingCallbackPtr :: #type (pReader: Lib3MF_Reader, pConsumerID: *u8, pTheCallback: Lib3MF.KeyWrappingCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #c_call;

/**
* Registers a callback to deal with encryption of content
*
* @param[in] pReader - Reader instance.
* @param[in] pTheCallback - The callback used to encrypt content
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
PLib3MFReader_SetContentEncryptionCallbackPtr :: #type (pReader: Lib3MF_Reader, pTheCallback: Lib3MF.ContentEncryptionCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #c_call;

/**
* Returns the absolute path of this PackagePart.
*
* @param[in] pPackagePart - PackagePart instance.
* @param[in] nPathBufferSize - size of the buffer (including trailing 0)
* @param[out] pPathNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPathBuffer -  buffer of Returns the absolute path of this PackagePart, may be NULL
* @return error code or 0 (success)
*/
PLib3MFPackagePart_GetPathPtr :: #type (pPackagePart: Lib3MF_PackagePart, nPathBufferSize: Lib3MF_uint32, pPathNeededChars: *Lib3MF_uint32, pPathBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Sets the absolute path of this PackagePart.
*
* @param[in] pPackagePart - PackagePart instance.
* @param[in] pPath - Sets the absolute path of this PackagePart.
* @return error code or 0 (success)
*/
PLib3MFPackagePart_SetPathPtr :: #type (pPackagePart: Lib3MF_PackagePart, pPath: *u8) -> Lib3MFResult #c_call;

/**
* Retrieves the unique id of this resource within a package. This function will be removed in a later release in favor of GetUniqueResourceID
*
* @param[in] pResource - Resource instance.
* @param[out] pUniqueResourceID - Retrieves the unique id of this resource within a package.
* @return error code or 0 (success)
*/
PLib3MFResource_GetResourceIDPtr :: #type (pResource: Lib3MF_Resource, pUniqueResourceID: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Retrieves the unique id of this resource within a package.
*
* @param[in] pResource - Resource instance.
* @param[out] pUniqueResourceID - Retrieves the unique id of this resource within a package.
* @return error code or 0 (success)
*/
PLib3MFResource_GetUniqueResourceIDPtr :: #type (pResource: Lib3MF_Resource, pUniqueResourceID: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Returns the PackagePart within which this resource resides
*
* @param[in] pResource - Resource instance.
* @param[out] pPackagePart - the PackagePart within which this resource resides.
* @return error code or 0 (success)
*/
PLib3MFResource_PackagePartPtr :: #type (pResource: Lib3MF_Resource, pPackagePart: *Lib3MF_PackagePart) -> Lib3MFResult #c_call;

/**
* Sets the new PackagePart within which this resource resides
*
* @param[in] pResource - Resource instance.
* @param[in] pPackagePart - the new PackagePart within which this resource resides.
* @return error code or 0 (success)
*/
PLib3MFResource_SetPackagePartPtr :: #type (pResource: Lib3MF_Resource, pPackagePart: Lib3MF_PackagePart) -> Lib3MFResult #c_call;

/**
* Retrieves the id of this resource within a model.
*
* @param[in] pResource - Resource instance.
* @param[out] pModelResourceId - Retrieves the id of this resource within a model.
* @return error code or 0 (success)
*/
PLib3MFResource_GetModelResourceIDPtr :: #type (pResource: Lib3MF_Resource, pModelResourceId: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Iterates to the next resource in the list.
*
* @param[in] pResourceIterator - ResourceIterator instance.
* @param[out] pHasNext - Iterates to the next resource in the list.
* @return error code or 0 (success)
*/
PLib3MFResourceIterator_MoveNextPtr :: #type (pResourceIterator: Lib3MF_ResourceIterator, pHasNext: *bool) -> Lib3MFResult #c_call;

/**
* Iterates to the previous resource in the list.
*
* @param[in] pResourceIterator - ResourceIterator instance.
* @param[out] pHasPrevious - Iterates to the previous resource in the list.
* @return error code or 0 (success)
*/
PLib3MFResourceIterator_MovePreviousPtr :: #type (pResourceIterator: Lib3MF_ResourceIterator, pHasPrevious: *bool) -> Lib3MFResult #c_call;

/**
* Returns the resource the iterator points at.
*
* @param[in] pResourceIterator - ResourceIterator instance.
* @param[out] pResource - returns the resource instance.
* @return error code or 0 (success)
*/
PLib3MFResourceIterator_GetCurrentPtr :: #type (pResourceIterator: Lib3MF_ResourceIterator, pResource: *Lib3MF_Resource) -> Lib3MFResult #c_call;

/**
* Creates a new resource iterator with the same resource list.
*
* @param[in] pResourceIterator - ResourceIterator instance.
* @param[out] pOutResourceIterator - returns the cloned Iterator instance
* @return error code or 0 (success)
*/
PLib3MFResourceIterator_ClonePtr :: #type (pResourceIterator: Lib3MF_ResourceIterator, pOutResourceIterator: *Lib3MF_ResourceIterator) -> Lib3MFResult #c_call;

/**
* Returns the number of resoucres the iterator captures.
*
* @param[in] pResourceIterator - ResourceIterator instance.
* @param[out] pCount - returns the number of resoucres the iterator captures.
* @return error code or 0 (success)
*/
PLib3MFResourceIterator_CountPtr :: #type (pResourceIterator: Lib3MF_ResourceIterator, pCount: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Returns the SliceStack the iterator points at.
*
* @param[in] pSliceStackIterator - SliceStackIterator instance.
* @param[out] pResource - returns the SliceStack instance.
* @return error code or 0 (success)
*/
PLib3MFSliceStackIterator_GetCurrentSliceStackPtr :: #type (pSliceStackIterator: Lib3MF_SliceStackIterator, pResource: *Lib3MF_SliceStack) -> Lib3MFResult #c_call;

/**
* Returns the Object the iterator points at.
*
* @param[in] pObjectIterator - ObjectIterator instance.
* @param[out] pResource - returns the Object instance.
* @return error code or 0 (success)
*/
PLib3MFObjectIterator_GetCurrentObjectPtr :: #type (pObjectIterator: Lib3MF_ObjectIterator, pResource: *Lib3MF_Object) -> Lib3MFResult #c_call;

/**
* Returns the MeshObject the iterator points at.
*
* @param[in] pMeshObjectIterator - MeshObjectIterator instance.
* @param[out] pResource - returns the MeshObject instance.
* @return error code or 0 (success)
*/
PLib3MFMeshObjectIterator_GetCurrentMeshObjectPtr :: #type (pMeshObjectIterator: Lib3MF_MeshObjectIterator, pResource: *Lib3MF_MeshObject) -> Lib3MFResult #c_call;

/**
* Returns the ComponentsObject the iterator points at.
*
* @param[in] pComponentsObjectIterator - ComponentsObjectIterator instance.
* @param[out] pResource - returns the ComponentsObject instance.
* @return error code or 0 (success)
*/
PLib3MFComponentsObjectIterator_GetCurrentComponentsObjectPtr :: #type (pComponentsObjectIterator: Lib3MF_ComponentsObjectIterator, pResource: *Lib3MF_ComponentsObject) -> Lib3MFResult #c_call;

/**
* Returns the Texture2D the iterator points at.
*
* @param[in] pTexture2DIterator - Texture2DIterator instance.
* @param[out] pResource - returns the Texture2D instance.
* @return error code or 0 (success)
*/
PLib3MFTexture2DIterator_GetCurrentTexture2DPtr :: #type (pTexture2DIterator: Lib3MF_Texture2DIterator, pResource: *Lib3MF_Texture2D) -> Lib3MFResult #c_call;

/**
* Returns the MaterialGroup the iterator points at.
*
* @param[in] pBaseMaterialGroupIterator - BaseMaterialGroupIterator instance.
* @param[out] pResource - returns the BaseMaterialGroup instance.
* @return error code or 0 (success)
*/
PLib3MFBaseMaterialGroupIterator_GetCurrentBaseMaterialGroupPtr :: #type (pBaseMaterialGroupIterator: Lib3MF_BaseMaterialGroupIterator, pResource: *Lib3MF_BaseMaterialGroup) -> Lib3MFResult #c_call;

/**
* Returns the ColorGroup the iterator points at.
*
* @param[in] pColorGroupIterator - ColorGroupIterator instance.
* @param[out] pResource - returns the ColorGroup instance.
* @return error code or 0 (success)
*/
PLib3MFColorGroupIterator_GetCurrentColorGroupPtr :: #type (pColorGroupIterator: Lib3MF_ColorGroupIterator, pResource: *Lib3MF_ColorGroup) -> Lib3MFResult #c_call;

/**
* Returns the Texture2DGroup the iterator points at.
*
* @param[in] pTexture2DGroupIterator - Texture2DGroupIterator instance.
* @param[out] pResource - returns the Texture2DGroup instance.
* @return error code or 0 (success)
*/
PLib3MFTexture2DGroupIterator_GetCurrentTexture2DGroupPtr :: #type (pTexture2DGroupIterator: Lib3MF_Texture2DGroupIterator, pResource: *Lib3MF_Texture2DGroup) -> Lib3MFResult #c_call;

/**
* Returns the CompositeMaterials the iterator points at.
*
* @param[in] pCompositeMaterialsIterator - CompositeMaterialsIterator instance.
* @param[out] pResource - returns the CompositeMaterials instance.
* @return error code or 0 (success)
*/
PLib3MFCompositeMaterialsIterator_GetCurrentCompositeMaterialsPtr :: #type (pCompositeMaterialsIterator: Lib3MF_CompositeMaterialsIterator, pResource: *Lib3MF_CompositeMaterials) -> Lib3MFResult #c_call;

/**
* Returns the MultiPropertyGroup the iterator points at.
*
* @param[in] pMultiPropertyGroupIterator - MultiPropertyGroupIterator instance.
* @param[out] pResource - returns the MultiPropertyGroup instance.
* @return error code or 0 (success)
*/
PLib3MFMultiPropertyGroupIterator_GetCurrentMultiPropertyGroupPtr :: #type (pMultiPropertyGroupIterator: Lib3MF_MultiPropertyGroupIterator, pResource: *Lib3MF_MultiPropertyGroup) -> Lib3MFResult #c_call;

/**
* returns the namespace URL of the metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] nNameSpaceBufferSize - size of the buffer (including trailing 0)
* @param[out] pNameSpaceNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pNameSpaceBuffer -  buffer of the namespace URL of the metadata, may be NULL
* @return error code or 0 (success)
*/
PLib3MFMetaData_GetNameSpacePtr :: #type (pMetaData: Lib3MF_MetaData, nNameSpaceBufferSize: Lib3MF_uint32, pNameSpaceNeededChars: *Lib3MF_uint32, pNameSpaceBuffer: *u8) -> Lib3MFResult #c_call;

/**
* sets a new namespace URL of the metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] pNameSpace - the new namespace URL of the metadata
* @return error code or 0 (success)
*/
PLib3MFMetaData_SetNameSpacePtr :: #type (pMetaData: Lib3MF_MetaData, pNameSpace: *u8) -> Lib3MFResult #c_call;

/**
* returns the name of a metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] nNameBufferSize - size of the buffer (including trailing 0)
* @param[out] pNameNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pNameBuffer -  buffer of the name of the metadata, may be NULL
* @return error code or 0 (success)
*/
PLib3MFMetaData_GetNamePtr :: #type (pMetaData: Lib3MF_MetaData, nNameBufferSize: Lib3MF_uint32, pNameNeededChars: *Lib3MF_uint32, pNameBuffer: *u8) -> Lib3MFResult #c_call;

/**
* sets a new name of a metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] pName - the new name of the metadata
* @return error code or 0 (success)
*/
PLib3MFMetaData_SetNamePtr :: #type (pMetaData: Lib3MF_MetaData, pName: *u8) -> Lib3MFResult #c_call;

/**
* returns the (namespace+name) of a metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] nKeyBufferSize - size of the buffer (including trailing 0)
* @param[out] pKeyNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pKeyBuffer -  buffer of the key (namespace+name) of the metadata, may be NULL
* @return error code or 0 (success)
*/
PLib3MFMetaData_GetKeyPtr :: #type (pMetaData: Lib3MF_MetaData, nKeyBufferSize: Lib3MF_uint32, pKeyNeededChars: *Lib3MF_uint32, pKeyBuffer: *u8) -> Lib3MFResult #c_call;

/**
* returns, whether a metadata must be preserved
*
* @param[in] pMetaData - MetaData instance.
* @param[out] pMustPreserve - returns, whether a metadata must be preserved
* @return error code or 0 (success)
*/
PLib3MFMetaData_GetMustPreservePtr :: #type (pMetaData: Lib3MF_MetaData, pMustPreserve: *bool) -> Lib3MFResult #c_call;

/**
* sets whether a metadata must be preserved
*
* @param[in] pMetaData - MetaData instance.
* @param[in] bMustPreserve - a new value whether a metadata must be preserved
* @return error code or 0 (success)
*/
PLib3MFMetaData_SetMustPreservePtr :: #type (pMetaData: Lib3MF_MetaData, bMustPreserve: bool) -> Lib3MFResult #c_call;

/**
* returns the type of a metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] nTypeBufferSize - size of the buffer (including trailing 0)
* @param[out] pTypeNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pTypeBuffer -  buffer of the type of the metadata, may be NULL
* @return error code or 0 (success)
*/
PLib3MFMetaData_GetTypePtr :: #type (pMetaData: Lib3MF_MetaData, nTypeBufferSize: Lib3MF_uint32, pTypeNeededChars: *Lib3MF_uint32, pTypeBuffer: *u8) -> Lib3MFResult #c_call;

/**
* sets a new type of a metadata. This must be a simple XML type
*
* @param[in] pMetaData - MetaData instance.
* @param[in] pType - a new type of the metadata
* @return error code or 0 (success)
*/
PLib3MFMetaData_SetTypePtr :: #type (pMetaData: Lib3MF_MetaData, pType: *u8) -> Lib3MFResult #c_call;

/**
* returns the value of the metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] nValueBufferSize - size of the buffer (including trailing 0)
* @param[out] pValueNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pValueBuffer -  buffer of the value of the metadata, may be NULL
* @return error code or 0 (success)
*/
PLib3MFMetaData_GetValuePtr :: #type (pMetaData: Lib3MF_MetaData, nValueBufferSize: Lib3MF_uint32, pValueNeededChars: *Lib3MF_uint32, pValueBuffer: *u8) -> Lib3MFResult #c_call;

/**
* sets a new value of the metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] pValue - a new value of the metadata
* @return error code or 0 (success)
*/
PLib3MFMetaData_SetValuePtr :: #type (pMetaData: Lib3MF_MetaData, pValue: *u8) -> Lib3MFResult #c_call;

/**
* returns the number of metadata in this metadatagroup
*
* @param[in] pMetaDataGroup - MetaDataGroup instance.
* @param[out] pCount - returns the number metadata
* @return error code or 0 (success)
*/
PLib3MFMetaDataGroup_GetMetaDataCountPtr :: #type (pMetaDataGroup: Lib3MF_MetaDataGroup, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* returns a metadata value within this metadatagroup
*
* @param[in] pMetaDataGroup - MetaDataGroup instance.
* @param[in] nIndex - Index of the Metadata.
* @param[out] pMetaData - an instance of the metadata
* @return error code or 0 (success)
*/
PLib3MFMetaDataGroup_GetMetaDataPtr :: #type (pMetaDataGroup: Lib3MF_MetaDataGroup, nIndex: Lib3MF_uint32, pMetaData: *Lib3MF_MetaData) -> Lib3MFResult #c_call;

/**
* returns a metadata value within this metadatagroup
*
* @param[in] pMetaDataGroup - MetaDataGroup instance.
* @param[in] pNameSpace - the namespace of the metadata
* @param[in] pName - the name of the Metadata
* @param[out] pMetaData - an instance of the metadata
* @return error code or 0 (success)
*/
PLib3MFMetaDataGroup_GetMetaDataByKeyPtr :: #type (pMetaDataGroup: Lib3MF_MetaDataGroup, pNameSpace: *u8, pName: *u8, pMetaData: *Lib3MF_MetaData) -> Lib3MFResult #c_call;

/**
* removes metadata by index from the model.
*
* @param[in] pMetaDataGroup - MetaDataGroup instance.
* @param[in] nIndex -  Index of the metadata to remove
* @return error code or 0 (success)
*/
PLib3MFMetaDataGroup_RemoveMetaDataByIndexPtr :: #type (pMetaDataGroup: Lib3MF_MetaDataGroup, nIndex: Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* removes metadata from the model.
*
* @param[in] pMetaDataGroup - MetaDataGroup instance.
* @param[in] pTheMetaData - The metadata to remove
* @return error code or 0 (success)
*/
PLib3MFMetaDataGroup_RemoveMetaDataPtr :: #type (pMetaDataGroup: Lib3MF_MetaDataGroup, pTheMetaData: Lib3MF_MetaData) -> Lib3MFResult #c_call;

/**
* adds a new metadata to this metadatagroup
*
* @param[in] pMetaDataGroup - MetaDataGroup instance.
* @param[in] pNameSpace - the namespace of the metadata
* @param[in] pName - the name of the metadata
* @param[in] pValue - the value of the metadata
* @param[in] pType - the type of the metadata
* @param[in] bMustPreserve - shuold the metadata be preserved
* @param[out] pMetaData - a new instance of the metadata
* @return error code or 0 (success)
*/
PLib3MFMetaDataGroup_AddMetaDataPtr :: #type (pMetaDataGroup: Lib3MF_MetaDataGroup, pNameSpace: *u8, pName: *u8, pValue: *u8, pType: *u8, bMustPreserve: bool, pMetaData: *Lib3MF_MetaData) -> Lib3MFResult #c_call;

/**
* Retrieves an object's type
*
* @param[in] pObject - Object instance.
* @param[out] pObjectType - returns object type enum.
* @return error code or 0 (success)
*/
PLib3MFObject_GetTypePtr :: #type (pObject: Lib3MF_Object, pObjectType: *Lib3MF.eObjectType) -> Lib3MFResult #c_call;

/**
* Sets an object's type
*
* @param[in] pObject - Object instance.
* @param[in] eObjectType - object type enum.
* @return error code or 0 (success)
*/
PLib3MFObject_SetTypePtr :: #type (pObject: Lib3MF_Object, eObjectType_: Lib3MF.eObjectType) -> Lib3MFResult #c_call;

/**
* Retrieves an object's name
*
* @param[in] pObject - Object instance.
* @param[in] nNameBufferSize - size of the buffer (including trailing 0)
* @param[out] pNameNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pNameBuffer -  buffer of returns object name., may be NULL
* @return error code or 0 (success)
*/
PLib3MFObject_GetNamePtr :: #type (pObject: Lib3MF_Object, nNameBufferSize: Lib3MF_uint32, pNameNeededChars: *Lib3MF_uint32, pNameBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Sets an object's name string
*
* @param[in] pObject - Object instance.
* @param[in] pName - new object name.
* @return error code or 0 (success)
*/
PLib3MFObject_SetNamePtr :: #type (pObject: Lib3MF_Object, pName: *u8) -> Lib3MFResult #c_call;

/**
* Retrieves an object's part number
*
* @param[in] pObject - Object instance.
* @param[in] nPartNumberBufferSize - size of the buffer (including trailing 0)
* @param[out] pPartNumberNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPartNumberBuffer -  buffer of returns object part number., may be NULL
* @return error code or 0 (success)
*/
PLib3MFObject_GetPartNumberPtr :: #type (pObject: Lib3MF_Object, nPartNumberBufferSize: Lib3MF_uint32, pPartNumberNeededChars: *Lib3MF_uint32, pPartNumberBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Sets an objects partnumber string
*
* @param[in] pObject - Object instance.
* @param[in] pPartNumber - new object part number.
* @return error code or 0 (success)
*/
PLib3MFObject_SetPartNumberPtr :: #type (pObject: Lib3MF_Object, pPartNumber: *u8) -> Lib3MFResult #c_call;

/**
* Retrieves, if an object is a mesh object
*
* @param[in] pObject - Object instance.
* @param[out] pIsMeshObject - returns, whether the object is a mesh object
* @return error code or 0 (success)
*/
PLib3MFObject_IsMeshObjectPtr :: #type (pObject: Lib3MF_Object, pIsMeshObject: *bool) -> Lib3MFResult #c_call;

/**
* Retrieves, if an object is a components object
*
* @param[in] pObject - Object instance.
* @param[out] pIsComponentsObject - returns, whether the object is a components object
* @return error code or 0 (success)
*/
PLib3MFObject_IsComponentsObjectPtr :: #type (pObject: Lib3MF_Object, pIsComponentsObject: *bool) -> Lib3MFResult #c_call;

/**
* Retrieves, if the object is valid according to the core spec. For mesh objects, we distinguish between the type attribute of the object:In case of object type other, this always means false.In case of object type model or solidsupport, this means, if the mesh suffices all requirements of the core spec chapter 4.1.In case of object type support or surface, this always means true.A component objects is valid if and only if it contains at least one component and all child components are valid objects.
*
* @param[in] pObject - Object instance.
* @param[out] pIsValid - returns whether the object is a valid object description
* @return error code or 0 (success)
*/
PLib3MFObject_IsValidPtr :: #type (pObject: Lib3MF_Object, pIsValid: *bool) -> Lib3MFResult #c_call;

/**
* Use an existing attachment as thumbnail for this object
*
* @param[in] pObject - Object instance.
* @param[in] pAttachment - Instance of a new or the existing thumbnailattachment object.
* @return error code or 0 (success)
*/
PLib3MFObject_SetAttachmentAsThumbnailPtr :: #type (pObject: Lib3MF_Object, pAttachment: Lib3MF_Attachment) -> Lib3MFResult #c_call;

/**
* Get the attachment containing the object thumbnail.
*
* @param[in] pObject - Object instance.
* @param[out] pAttachment - Instance of the thumbnailattachment object or NULL.
* @return error code or 0 (success)
*/
PLib3MFObject_GetThumbnailAttachmentPtr :: #type (pObject: Lib3MF_Object, pAttachment: *Lib3MF_Attachment) -> Lib3MFResult #c_call;

/**
* Clears the attachment. The attachment instance is not removed from the package.
*
* @param[in] pObject - Object instance.
* @return error code or 0 (success)
*/
PLib3MFObject_ClearThumbnailAttachmentPtr :: #type (pObject: Lib3MF_Object) -> Lib3MFResult #c_call;

/**
* Returns the outbox of a build item
*
* @param[in] pObject - Object instance.
* @param[out] pOutbox - Outbox of this build item
* @return error code or 0 (success)
*/
PLib3MFObject_GetOutboxPtr :: #type (pObject: Lib3MF_Object, pOutbox: *Lib3MF.sBox) -> Lib3MFResult #c_call;

/**
* Retrieves an object's uuid string (see production extension specification)
*
* @param[in] pObject - Object instance.
* @param[out] pHasUUID - flag whether the build item has a UUID
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of returns object uuid., may be NULL
* @return error code or 0 (success)
*/
PLib3MFObject_GetUUIDPtr :: #type (pObject: Lib3MF_Object, pHasUUID: *bool, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Sets a build object's uuid string (see production extension specification)
*
* @param[in] pObject - Object instance.
* @param[in] pUUID - new object uuid string.
* @return error code or 0 (success)
*/
PLib3MFObject_SetUUIDPtr :: #type (pObject: Lib3MF_Object, pUUID: *u8) -> Lib3MFResult #c_call;

/**
* Returns the metadatagroup of this object
*
* @param[in] pObject - Object instance.
* @param[out] pMetaDataGroup - returns an Instance of the metadatagroup of this object
* @return error code or 0 (success)
*/
PLib3MFObject_GetMetaDataGroupPtr :: #type (pObject: Lib3MF_Object, pMetaDataGroup: *Lib3MF_MetaDataGroup) -> Lib3MFResult #c_call;

/**
* set the meshresolution of the mesh object
*
* @param[in] pObject - Object instance.
* @param[in] eMeshResolution - meshresolution of this object
* @return error code or 0 (success)
*/
PLib3MFObject_SetSlicesMeshResolutionPtr :: #type (pObject: Lib3MF_Object, eMeshResolution: Lib3MF.eSlicesMeshResolution) -> Lib3MFResult #c_call;

/**
* get the meshresolution of the mesh object
*
* @param[in] pObject - Object instance.
* @param[out] pMeshResolution - meshresolution of this object
* @return error code or 0 (success)
*/
PLib3MFObject_GetSlicesMeshResolutionPtr :: #type (pObject: Lib3MF_Object, pMeshResolution: *Lib3MF.eSlicesMeshResolution) -> Lib3MFResult #c_call;

/**
* returns whether the Object has a slice stack. If Recursive is true, also checks whether any references object has a slice stack
*
* @param[in] pObject - Object instance.
* @param[in] bRecursive - check also all referenced objects?
* @param[out] pHasSlices - does the object have a slice stack?
* @return error code or 0 (success)
*/
PLib3MFObject_HasSlicesPtr :: #type (pObject: Lib3MF_Object, bRecursive: bool, pHasSlices: *bool) -> Lib3MFResult #c_call;

/**
* unlinks the attached slicestack from this object. If no slice stack is attached, do noting.
*
* @param[in] pObject - Object instance.
* @return error code or 0 (success)
*/
PLib3MFObject_ClearSliceStackPtr :: #type (pObject: Lib3MF_Object) -> Lib3MFResult #c_call;

/**
* get the Slicestack attached to the object
*
* @param[in] pObject - Object instance.
* @param[out] pSliceStackInstance - returns the slicestack instance
* @return error code or 0 (success)
*/
PLib3MFObject_GetSliceStackPtr :: #type (pObject: Lib3MF_Object, pSliceStackInstance: *Lib3MF_SliceStack) -> Lib3MFResult #c_call;

/**
* assigns a slicestack to the object
*
* @param[in] pObject - Object instance.
* @param[in] pSliceStackInstance - the new slice stack of this Object
* @return error code or 0 (success)
*/
PLib3MFObject_AssignSliceStackPtr :: #type (pObject: Lib3MF_Object, pSliceStackInstance: Lib3MF_SliceStack) -> Lib3MFResult #c_call;

/**
* Returns the vertex count of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[out] pVertexCount - filled with the vertex count.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_GetVertexCountPtr :: #type (pMeshObject: Lib3MF_MeshObject, pVertexCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Returns the triangle count of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[out] pVertexCount - filled with the triangle count.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_GetTriangleCountPtr :: #type (pMeshObject: Lib3MF_MeshObject, pVertexCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Returns the vertex count of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndex - Index of the vertex (0 to vertexcount - 1)
* @param[out] pCoordinates - filled with the vertex coordinates.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_GetVertexPtr :: #type (pMeshObject: Lib3MF_MeshObject, nIndex: Lib3MF_uint32, pCoordinates: *Lib3MF.sPosition) -> Lib3MFResult #c_call;

/**
* Sets the coordinates of a single vertex of a mesh object
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndex - Index of the vertex (0 to vertexcount - 1)
* @param[in] pCoordinates - contains the vertex coordinates.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_SetVertexPtr :: #type (pMeshObject: Lib3MF_MeshObject, nIndex: Lib3MF_uint32, pCoordinates: *Lib3MF.sPosition) -> Lib3MFResult #c_call;

/**
* Adds a single vertex to a mesh object
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] pCoordinates - contains the vertex coordinates.
* @param[out] pNewIndex - Index of the new vertex
* @return error code or 0 (success)
*/
PLib3MFMeshObject_AddVertexPtr :: #type (pMeshObject: Lib3MF_MeshObject, pCoordinates: *Lib3MF.sPosition, pNewIndex: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Obtains all vertex positions of a mesh object
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nVerticesBufferSize - Number of elements in buffer
* @param[out] pVerticesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pVerticesBuffer - Position  buffer of contains the vertex coordinates.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_GetVerticesPtr :: #type (pMeshObject: Lib3MF_MeshObject, nVerticesBufferSize: Lib3MF_uint64, pVerticesNeededCount: *Lib3MF_uint64, pVerticesBuffer: *Lib3MF.sPosition) -> Lib3MFResult #c_call;

/**
* Returns indices of a single triangle of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndex - Index of the triangle (0 to trianglecount - 1)
* @param[out] pIndices - filled with the triangle indices.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_GetTrianglePtr :: #type (pMeshObject: Lib3MF_MeshObject, nIndex: Lib3MF_uint32, pIndices: *Lib3MF.sTriangle) -> Lib3MFResult #c_call;

/**
* Sets the indices of a single triangle of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndex - Index of the triangle (0 to trianglecount - 1)
* @param[in] pIndices - contains the triangle indices.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_SetTrianglePtr :: #type (pMeshObject: Lib3MF_MeshObject, nIndex: Lib3MF_uint32, pIndices: *Lib3MF.sTriangle) -> Lib3MFResult #c_call;

/**
* Adds a single triangle to a mesh object
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] pIndices - contains the triangle indices.
* @param[out] pNewIndex - Index of the new triangle
* @return error code or 0 (success)
*/
PLib3MFMeshObject_AddTrianglePtr :: #type (pMeshObject: Lib3MF_MeshObject, pIndices: *Lib3MF.sTriangle, pNewIndex: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Get all triangles of a mesh object
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndicesBufferSize - Number of elements in buffer
* @param[out] pIndicesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pIndicesBuffer - Triangle  buffer of contains the triangle indices.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_GetTriangleIndicesPtr :: #type (pMeshObject: Lib3MF_MeshObject, nIndicesBufferSize: Lib3MF_uint64, pIndicesNeededCount: *Lib3MF_uint64, pIndicesBuffer: *Lib3MF.sTriangle) -> Lib3MFResult #c_call;

/**
* Sets the property at the object-level of the mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nUniqueResourceID - the object-level Property UniqueResourceID.
* @param[in] nPropertyID - the object-level PropertyID.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_SetObjectLevelPropertyPtr :: #type (pMeshObject: Lib3MF_MeshObject, nUniqueResourceID: Lib3MF_uint32, nPropertyID: Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Gets the property at the object-level of the mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[out] pUniqueResourceID - the object-level Property UniqueResourceID.
* @param[out] pPropertyID - the object-level PropertyID.
* @param[out] pHasObjectLevelProperty - Has an object-level property been specified?
* @return error code or 0 (success)
*/
PLib3MFMeshObject_GetObjectLevelPropertyPtr :: #type (pMeshObject: Lib3MF_MeshObject, pUniqueResourceID: *Lib3MF_uint32, pPropertyID: *Lib3MF_uint32, pHasObjectLevelProperty: *bool) -> Lib3MFResult #c_call;

/**
* Sets the properties of a single triangle of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndex - Index of the triangle (0 to trianglecount - 1)
* @param[in] pProperties - contains the triangle properties.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_SetTrianglePropertiesPtr :: #type (pMeshObject: Lib3MF_MeshObject, nIndex: Lib3MF_uint32, pProperties: *Lib3MF.sTriangleProperties) -> Lib3MFResult #c_call;

/**
* Gets the properties of a single triangle of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndex - Index of the triangle (0 to trianglecount - 1)
* @param[out] pProperty - returns the triangle properties.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_GetTrianglePropertiesPtr :: #type (pMeshObject: Lib3MF_MeshObject, nIndex: Lib3MF_uint32, pProperty: *Lib3MF.sTriangleProperties) -> Lib3MFResult #c_call;

/**
* Sets the properties of all triangles of a mesh object. Sets the object level property to the first entry of the passed triangle properties, if not yet specified.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nPropertiesArrayBufferSize - Number of elements in buffer
* @param[in] pPropertiesArrayBuffer - TriangleProperties buffer of contains the triangle properties array. Must have trianglecount elements.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_SetAllTrianglePropertiesPtr :: #type (pMeshObject: Lib3MF_MeshObject, nPropertiesArrayBufferSize: Lib3MF_uint64, pPropertiesArrayBuffer: *Lib3MF.sTriangleProperties) -> Lib3MFResult #c_call;

/**
* Gets the properties of all triangles of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nPropertiesArrayBufferSize - Number of elements in buffer
* @param[out] pPropertiesArrayNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertiesArrayBuffer - TriangleProperties  buffer of returns the triangle properties array. Must have trianglecount elements.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_GetAllTrianglePropertiesPtr :: #type (pMeshObject: Lib3MF_MeshObject, nPropertiesArrayBufferSize: Lib3MF_uint64, pPropertiesArrayNeededCount: *Lib3MF_uint64, pPropertiesArrayBuffer: *Lib3MF.sTriangleProperties) -> Lib3MFResult #c_call;

/**
* Clears all properties of this mesh object (triangle and object-level).
*
* @param[in] pMeshObject - MeshObject instance.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_ClearAllPropertiesPtr :: #type (pMeshObject: Lib3MF_MeshObject) -> Lib3MFResult #c_call;

/**
* Set all triangles of a mesh object
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nVerticesBufferSize - Number of elements in buffer
* @param[in] pVerticesBuffer - Position buffer of contains the positions.
* @param[in] nIndicesBufferSize - Number of elements in buffer
* @param[in] pIndicesBuffer - Triangle buffer of contains the triangle indices.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_SetGeometryPtr :: #type (pMeshObject: Lib3MF_MeshObject, nVerticesBufferSize: Lib3MF_uint64, pVerticesBuffer: *Lib3MF.sPosition, nIndicesBufferSize: Lib3MF_uint64, pIndicesBuffer: *Lib3MF.sTriangle) -> Lib3MFResult #c_call;

/**
* Retrieves, if an object describes a topologically oriented and manifold mesh, according to the core spec.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[out] pIsManifoldAndOriented - returns, if the object is oriented and manifold.
* @return error code or 0 (success)
*/
PLib3MFMeshObject_IsManifoldAndOrientedPtr :: #type (pMeshObject: Lib3MF_MeshObject, pIsManifoldAndOriented: *bool) -> Lib3MFResult #c_call;

/**
* Retrieves the BeamLattice within this MeshObject.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[out] pTheBeamLattice - the BeamLattice within this MeshObject
* @return error code or 0 (success)
*/
PLib3MFMeshObject_BeamLatticePtr :: #type (pMeshObject: Lib3MF_MeshObject, pTheBeamLattice: *Lib3MF_BeamLattice) -> Lib3MFResult #c_call;

/**
* Returns the minimal length of beams for the beamlattice.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pMinLength - minimal length of beams for the beamlattice
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_GetMinLengthPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, pMinLength: *Lib3MF_double) -> Lib3MFResult #c_call;

/**
* Sets the minimal length of beams for the beamlattice.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] dMinLength - minimal length of beams for the beamlattice
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_SetMinLengthPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, dMinLength: Lib3MF_double) -> Lib3MFResult #c_call;

/**
* Returns the clipping mode and the clipping-mesh for the beamlattice of this mesh.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pClipMode - contains the clip mode of this mesh
* @param[out] pUniqueResourceID - filled with the UniqueResourceID of the clipping mesh-object or an undefined value if pClipMode is MODELBEAMLATTICECLIPMODE_NONE
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_GetClippingPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, pClipMode: *Lib3MF.eBeamLatticeClipMode, pUniqueResourceID: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Sets the clipping mode and the clipping-mesh for the beamlattice of this mesh.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] eClipMode - contains the clip mode of this mesh
* @param[in] nUniqueResourceID - the UniqueResourceID of the clipping mesh-object. This mesh-object has to be defined before setting the Clipping.
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_SetClippingPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, eClipMode: Lib3MF.eBeamLatticeClipMode, nUniqueResourceID: Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Returns the representation-mesh for the beamlattice of this mesh.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pHasRepresentation - flag whether the beamlattice has a representation mesh.
* @param[out] pUniqueResourceID - filled with the UniqueResourceID of the clipping mesh-object.
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_GetRepresentationPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, pHasRepresentation: *bool, pUniqueResourceID: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Sets the representation-mesh for the beamlattice of this mesh.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nUniqueResourceID - the UniqueResourceID of the representation mesh-object. This mesh-object has to be defined before setting the representation.
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_SetRepresentationPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, nUniqueResourceID: Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Returns the ball mode and the default ball radius for the beamlattice of this mesh.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pBallMode - contains the ball mode of this mesh
* @param[out] pBallRadius - default ball radius of balls for the beamlattice
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_GetBallOptionsPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, pBallMode: *Lib3MF.eBeamLatticeBallMode, pBallRadius: *Lib3MF_double) -> Lib3MFResult #c_call;

/**
* Sets the ball mode and thedefault ball radius for the beamlattice.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] eBallMode - contains the ball mode of this mesh
* @param[in] dBallRadius - default ball radius of balls for the beamlattice
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_SetBallOptionsPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, eBallMode: Lib3MF.eBeamLatticeBallMode, dBallRadius: Lib3MF_double) -> Lib3MFResult #c_call;

/**
* Returns the beam count of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pCount - filled with the beam count.
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_GetBeamCountPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Returns indices, radii and capmodes of a single beam of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nIndex - Index of the beam (0 to beamcount - 1).
* @param[out] pBeamInfo - filled with the beam indices, radii and capmodes.
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_GetBeamPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, nIndex: Lib3MF_uint32, pBeamInfo: *Lib3MF.sBeam) -> Lib3MFResult #c_call;

/**
* Adds a single beam to a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] pBeamInfo - contains the node indices, radii and capmodes.
* @param[out] pIndex - filled with the new Index of the beam.
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_AddBeamPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, pBeamInfo: *Lib3MF.sBeam, pIndex: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Sets the indices, radii and capmodes of a single beam of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nIndex - Index of the beam (0 to beamcount - 1).
* @param[in] pBeamInfo - filled with the beam indices, radii and capmodes.
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_SetBeamPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, nIndex: Lib3MF_uint32, pBeamInfo: *Lib3MF.sBeam) -> Lib3MFResult #c_call;

/**
* Sets all beam indices, radii and capmodes of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nBeamInfoBufferSize - Number of elements in buffer
* @param[in] pBeamInfoBuffer - Beam buffer of contains information of a number of  beams
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_SetBeamsPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, nBeamInfoBufferSize: Lib3MF_uint64, pBeamInfoBuffer: *Lib3MF.sBeam) -> Lib3MFResult #c_call;

/**
* obtains all beam indices, radii and capmodes of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nBeamInfoBufferSize - Number of elements in buffer
* @param[out] pBeamInfoNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pBeamInfoBuffer - Beam  buffer of contains information of all beams
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_GetBeamsPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, nBeamInfoBufferSize: Lib3MF_uint64, pBeamInfoNeededCount: *Lib3MF_uint64, pBeamInfoBuffer: *Lib3MF.sBeam) -> Lib3MFResult #c_call;

/**
* Returns the ball count of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pCount - filled with the ball count.
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_GetBallCountPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Returns index and radius of a single ball of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nIndex - Index of the ball (0 to ballcount - 1).
* @param[out] pBallInfo - filled with the ball node index and radius.
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_GetBallPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, nIndex: Lib3MF_uint32, pBallInfo: *Lib3MF.sBall) -> Lib3MFResult #c_call;

/**
* Adds a single ball to a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] pBallInfo - contains the node index and radius.
* @param[out] pIndex - filled with the new Index of the ball.
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_AddBallPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, pBallInfo: *Lib3MF.sBall, pIndex: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Sets the index and radius of a single ball of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nIndex - Index of the ball (0 to ballcount - 1).
* @param[in] pBallInfo - filled with the ball node index and radius.
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_SetBallPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, nIndex: Lib3MF_uint32, pBallInfo: *Lib3MF.sBall) -> Lib3MFResult #c_call;

/**
* Sets all ball indices and radii of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nBallInfoBufferSize - Number of elements in buffer
* @param[in] pBallInfoBuffer - Ball buffer of contains information of a number of  balls
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_SetBallsPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, nBallInfoBufferSize: Lib3MF_uint64, pBallInfoBuffer: *Lib3MF.sBall) -> Lib3MFResult #c_call;

/**
* obtains all ball indices and radii of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nBallInfoBufferSize - Number of elements in buffer
* @param[out] pBallInfoNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pBallInfoBuffer - Ball  buffer of contains information of all balls
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_GetBallsPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, nBallInfoBufferSize: Lib3MF_uint64, pBallInfoNeededCount: *Lib3MF_uint64, pBallInfoBuffer: *Lib3MF.sBall) -> Lib3MFResult #c_call;

/**
* Returns the number of beamsets of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pCount - filled with the beamset count.
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_GetBeamSetCountPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Adds an empty beamset to a mesh object
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pBeamSet - the new beamset
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_AddBeamSetPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, pBeamSet: *Lib3MF_BeamSet) -> Lib3MFResult #c_call;

/**
* Returns a beamset of a mesh object
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nIndex - index of the requested beamset (0 ... beamsetcount-1).
* @param[out] pBeamSet - the requested beamset
* @return error code or 0 (success)
*/
PLib3MFBeamLattice_GetBeamSetPtr :: #type (pBeamLattice: Lib3MF_BeamLattice, nIndex: Lib3MF_uint32, pBeamSet: *Lib3MF_BeamSet) -> Lib3MFResult #c_call;

/**
* Returns the Resource Instance of the component.
*
* @param[in] pComponent - Component instance.
* @param[out] pObjectResource - filled with the Resource Instance.
* @return error code or 0 (success)
*/
PLib3MFComponent_GetObjectResourcePtr :: #type (pComponent: Lib3MF_Component, pObjectResource: *Lib3MF_Object) -> Lib3MFResult #c_call;

/**
* Returns the UniqueResourceID of the component.
*
* @param[in] pComponent - Component instance.
* @param[out] pUniqueResourceID - returns the UniqueResourceID.
* @return error code or 0 (success)
*/
PLib3MFComponent_GetObjectResourceIDPtr :: #type (pComponent: Lib3MF_Component, pUniqueResourceID: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* returns, whether a component has a UUID and, if true, the component's UUID
*
* @param[in] pComponent - Component instance.
* @param[out] pHasUUID - flag whether the component has a UUID
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of the UUID as string of the form 'xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx', may be NULL
* @return error code or 0 (success)
*/
PLib3MFComponent_GetUUIDPtr :: #type (pComponent: Lib3MF_Component, pHasUUID: *bool, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #c_call;

/**
* sets the component's UUID
*
* @param[in] pComponent - Component instance.
* @param[in] pUUID - the UUID as string of the form 'xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx'
* @return error code or 0 (success)
*/
PLib3MFComponent_SetUUIDPtr :: #type (pComponent: Lib3MF_Component, pUUID: *u8) -> Lib3MFResult #c_call;

/**
* Returns, if the component has a different transformation than the identity matrix
*
* @param[in] pComponent - Component instance.
* @param[out] pHasTransform - if true is returned, the transformation is not equal than the identity
* @return error code or 0 (success)
*/
PLib3MFComponent_HasTransformPtr :: #type (pComponent: Lib3MF_Component, pHasTransform: *bool) -> Lib3MFResult #c_call;

/**
* Returns the transformation matrix of the component.
*
* @param[in] pComponent - Component instance.
* @param[out] pTransform - filled with the component transformation matrix
* @return error code or 0 (success)
*/
PLib3MFComponent_GetTransformPtr :: #type (pComponent: Lib3MF_Component, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #c_call;

/**
* Sets the transformation matrix of the component.
*
* @param[in] pComponent - Component instance.
* @param[in] pTransform - new transformation matrix
* @return error code or 0 (success)
*/
PLib3MFComponent_SetTransformPtr :: #type (pComponent: Lib3MF_Component, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #c_call;

/**
* Adds a new component to a components object.
*
* @param[in] pComponentsObject - ComponentsObject instance.
* @param[in] pObjectResource - object to add as component. Must not lead to circular references!
* @param[in] pTransform - optional transform matrix for the component.
* @param[out] pComponentInstance - new component instance
* @return error code or 0 (success)
*/
PLib3MFComponentsObject_AddComponentPtr :: #type (pComponentsObject: Lib3MF_ComponentsObject, pObjectResource: Lib3MF_Object, pTransform: *Lib3MF.sTransform, pComponentInstance: *Lib3MF_Component) -> Lib3MFResult #c_call;

/**
* Retrieves a component from a component object.
*
* @param[in] pComponentsObject - ComponentsObject instance.
* @param[in] nIndex - index of the component to retrieve (0 to componentcount - 1)
* @param[out] pComponentInstance - component instance
* @return error code or 0 (success)
*/
PLib3MFComponentsObject_GetComponentPtr :: #type (pComponentsObject: Lib3MF_ComponentsObject, nIndex: Lib3MF_uint32, pComponentInstance: *Lib3MF_Component) -> Lib3MFResult #c_call;

/**
* Retrieves a component count of a component object.
*
* @param[in] pComponentsObject - ComponentsObject instance.
* @param[out] pCount - returns the component count
* @return error code or 0 (success)
*/
PLib3MFComponentsObject_GetComponentCountPtr :: #type (pComponentsObject: Lib3MF_ComponentsObject, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Sets a beamset's name string
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] pName - new name of the beamset.
* @return error code or 0 (success)
*/
PLib3MFBeamSet_SetNamePtr :: #type (pBeamSet: Lib3MF_BeamSet, pName: *u8) -> Lib3MFResult #c_call;

/**
* Retrieves a beamset's name string
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] nNameBufferSize - size of the buffer (including trailing 0)
* @param[out] pNameNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pNameBuffer -  buffer of returns the name of the beamset., may be NULL
* @return error code or 0 (success)
*/
PLib3MFBeamSet_GetNamePtr :: #type (pBeamSet: Lib3MF_BeamSet, nNameBufferSize: Lib3MF_uint32, pNameNeededChars: *Lib3MF_uint32, pNameBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Sets a beamset's identifier string
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] pIdentifier - new name of the beamset.
* @return error code or 0 (success)
*/
PLib3MFBeamSet_SetIdentifierPtr :: #type (pBeamSet: Lib3MF_BeamSet, pIdentifier: *u8) -> Lib3MFResult #c_call;

/**
* Retrieves a beamset's identifier string
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] nIdentifierBufferSize - size of the buffer (including trailing 0)
* @param[out] pIdentifierNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pIdentifierBuffer -  buffer of returns the identifier of the beamset., may be NULL
* @return error code or 0 (success)
*/
PLib3MFBeamSet_GetIdentifierPtr :: #type (pBeamSet: Lib3MF_BeamSet, nIdentifierBufferSize: Lib3MF_uint32, pIdentifierNeededChars: *Lib3MF_uint32, pIdentifierBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Retrieves the reference count of a beamset
*
* @param[in] pBeamSet - BeamSet instance.
* @param[out] pCount - returns the reference count
* @return error code or 0 (success)
*/
PLib3MFBeamSet_GetReferenceCountPtr :: #type (pBeamSet: Lib3MF_BeamSet, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Sets the references of a beamset
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] nReferencesBufferSize - Number of elements in buffer
* @param[in] pReferencesBuffer - uint32 buffer of the new indices of all beams in this beamset
* @return error code or 0 (success)
*/
PLib3MFBeamSet_SetReferencesPtr :: #type (pBeamSet: Lib3MF_BeamSet, nReferencesBufferSize: Lib3MF_uint64, pReferencesBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Retrieves the references of a beamset
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] nReferencesBufferSize - Number of elements in buffer
* @param[out] pReferencesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pReferencesBuffer - uint32  buffer of retrieves the indices of all beams in this beamset
* @return error code or 0 (success)
*/
PLib3MFBeamSet_GetReferencesPtr :: #type (pBeamSet: Lib3MF_BeamSet, nReferencesBufferSize: Lib3MF_uint64, pReferencesNeededCount: *Lib3MF_uint64, pReferencesBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Retrieves the ball reference count of a beamset
*
* @param[in] pBeamSet - BeamSet instance.
* @param[out] pCount - returns the ball reference count
* @return error code or 0 (success)
*/
PLib3MFBeamSet_GetBallReferenceCountPtr :: #type (pBeamSet: Lib3MF_BeamSet, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Sets the ball references of a beamset
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] nBallReferencesBufferSize - Number of elements in buffer
* @param[in] pBallReferencesBuffer - uint32 buffer of the new indices of all balls in this beamset
* @return error code or 0 (success)
*/
PLib3MFBeamSet_SetBallReferencesPtr :: #type (pBeamSet: Lib3MF_BeamSet, nBallReferencesBufferSize: Lib3MF_uint64, pBallReferencesBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Retrieves the ball references of a beamset
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] nBallReferencesBufferSize - Number of elements in buffer
* @param[out] pBallReferencesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pBallReferencesBuffer - uint32  buffer of retrieves the indices of all balls in this beamset
* @return error code or 0 (success)
*/
PLib3MFBeamSet_GetBallReferencesPtr :: #type (pBeamSet: Lib3MF_BeamSet, nBallReferencesBufferSize: Lib3MF_uint64, pBallReferencesNeededCount: *Lib3MF_uint64, pBallReferencesBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Retrieves the count of base materials in the material group.
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[out] pCount - returns the count of base materials.
* @return error code or 0 (success)
*/
PLib3MFBaseMaterialGroup_GetCountPtr :: #type (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* returns all the PropertyIDs of all materials in this group
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[out] pPropertyIDsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertyIDsBuffer - uint32  buffer of PropertyID of the material in the material group.
* @return error code or 0 (success)
*/
PLib3MFBaseMaterialGroup_GetAllPropertyIDsPtr :: #type (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsNeededCount: *Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Adds a new material to the material group
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] pName - new name of the base material.
* @param[in] pDisplayColor - Display color of the material
* @param[out] pPropertyID - returns new PropertyID of the new material in the material group.
* @return error code or 0 (success)
*/
PLib3MFBaseMaterialGroup_AddMaterialPtr :: #type (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, pName: *u8, pDisplayColor: *Lib3MF.sColor, pPropertyID: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Removes a material from the material group.
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] nPropertyID - PropertyID of the material in the material group.
* @return error code or 0 (success)
*/
PLib3MFBaseMaterialGroup_RemoveMaterialPtr :: #type (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, nPropertyID: Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Returns the base material's name
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] nPropertyID - PropertyID of the material in the material group.
* @param[in] nNameBufferSize - size of the buffer (including trailing 0)
* @param[out] pNameNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pNameBuffer -  buffer of returns the name of the base material., may be NULL
* @return error code or 0 (success)
*/
PLib3MFBaseMaterialGroup_GetNamePtr :: #type (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, nPropertyID: Lib3MF_uint32, nNameBufferSize: Lib3MF_uint32, pNameNeededChars: *Lib3MF_uint32, pNameBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Sets a base material's name
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] nPropertyID - PropertyID of the material in the material group.
* @param[in] pName - new name of the base material.
* @return error code or 0 (success)
*/
PLib3MFBaseMaterialGroup_SetNamePtr :: #type (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, nPropertyID: Lib3MF_uint32, pName: *u8) -> Lib3MFResult #c_call;

/**
* Sets a base material's display color.
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] nPropertyID - PropertyID of the material in the material group.
* @param[in] pTheColor - The base material's display color
* @return error code or 0 (success)
*/
PLib3MFBaseMaterialGroup_SetDisplayColorPtr :: #type (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, nPropertyID: Lib3MF_uint32, pTheColor: *Lib3MF.sColor) -> Lib3MFResult #c_call;

/**
* Returns a base material's display color.
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] nPropertyID - PropertyID of the material in the material group.
* @param[out] pTheColor - The base material's display color
* @return error code or 0 (success)
*/
PLib3MFBaseMaterialGroup_GetDisplayColorPtr :: #type (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, nPropertyID: Lib3MF_uint32, pTheColor: *Lib3MF.sColor) -> Lib3MFResult #c_call;

/**
* Retrieves the count of base materials in this Color Group.
*
* @param[in] pColorGroup - ColorGroup instance.
* @param[out] pCount - returns the count of colors within this color group.
* @return error code or 0 (success)
*/
PLib3MFColorGroup_GetCountPtr :: #type (pColorGroup: Lib3MF_ColorGroup, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* returns all the PropertyIDs of all colors within this group
*
* @param[in] pColorGroup - ColorGroup instance.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[out] pPropertyIDsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertyIDsBuffer - uint32  buffer of PropertyID of the color in the color group.
* @return error code or 0 (success)
*/
PLib3MFColorGroup_GetAllPropertyIDsPtr :: #type (pColorGroup: Lib3MF_ColorGroup, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsNeededCount: *Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Adds a new value.
*
* @param[in] pColorGroup - ColorGroup instance.
* @param[in] pTheColor - The new color
* @param[out] pPropertyID - PropertyID of the new color within this color group.
* @return error code or 0 (success)
*/
PLib3MFColorGroup_AddColorPtr :: #type (pColorGroup: Lib3MF_ColorGroup, pTheColor: *Lib3MF.sColor, pPropertyID: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Removes a color from the color group.
*
* @param[in] pColorGroup - ColorGroup instance.
* @param[in] nPropertyID - PropertyID of the color to be removed from the color group.
* @return error code or 0 (success)
*/
PLib3MFColorGroup_RemoveColorPtr :: #type (pColorGroup: Lib3MF_ColorGroup, nPropertyID: Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Sets a color value.
*
* @param[in] pColorGroup - ColorGroup instance.
* @param[in] nPropertyID - PropertyID of a color within this color group.
* @param[in] pTheColor - The color
* @return error code or 0 (success)
*/
PLib3MFColorGroup_SetColorPtr :: #type (pColorGroup: Lib3MF_ColorGroup, nPropertyID: Lib3MF_uint32, pTheColor: *Lib3MF.sColor) -> Lib3MFResult #c_call;

/**
* Sets a color value.
*
* @param[in] pColorGroup - ColorGroup instance.
* @param[in] nPropertyID - PropertyID of a color within this color group.
* @param[out] pTheColor - The color
* @return error code or 0 (success)
*/
PLib3MFColorGroup_GetColorPtr :: #type (pColorGroup: Lib3MF_ColorGroup, nPropertyID: Lib3MF_uint32, pTheColor: *Lib3MF.sColor) -> Lib3MFResult #c_call;

/**
* Retrieves the count of tex2coords in the Texture2DGroup.
*
* @param[in] pTexture2DGroup - Texture2DGroup instance.
* @param[out] pCount - returns the count of tex2coords.
* @return error code or 0 (success)
*/
PLib3MFTexture2DGroup_GetCountPtr :: #type (pTexture2DGroup: Lib3MF_Texture2DGroup, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* returns all the PropertyIDs of all tex2coords in this Texture2DGroup
*
* @param[in] pTexture2DGroup - Texture2DGroup instance.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[out] pPropertyIDsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertyIDsBuffer - uint32  buffer of PropertyID of the tex2coords in the Texture2DGroup.
* @return error code or 0 (success)
*/
PLib3MFTexture2DGroup_GetAllPropertyIDsPtr :: #type (pTexture2DGroup: Lib3MF_Texture2DGroup, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsNeededCount: *Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Adds a new tex2coord to the Texture2DGroup
*
* @param[in] pTexture2DGroup - Texture2DGroup instance.
* @param[in] pUVCoordinate - The u/v-coordinate within the texture, horizontally right/vertically up from the origin in the lower left of the texture.
* @param[out] pPropertyID - returns new PropertyID of the new tex2coord in the Texture2DGroup.
* @return error code or 0 (success)
*/
PLib3MFTexture2DGroup_AddTex2CoordPtr :: #type (pTexture2DGroup: Lib3MF_Texture2DGroup, pUVCoordinate: *Lib3MF.sTex2Coord, pPropertyID: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Obtains a tex2coord to the Texture2DGroup
*
* @param[in] pTexture2DGroup - Texture2DGroup instance.
* @param[in] nPropertyID - the PropertyID of the tex2coord in the Texture2DGroup.
* @param[out] pUVCoordinate - The u/v-coordinate within the texture, horizontally right/vertically up from the origin in the lower left of the texture.
* @return error code or 0 (success)
*/
PLib3MFTexture2DGroup_GetTex2CoordPtr :: #type (pTexture2DGroup: Lib3MF_Texture2DGroup, nPropertyID: Lib3MF_uint32, pUVCoordinate: *Lib3MF.sTex2Coord) -> Lib3MFResult #c_call;

/**
* Removes a tex2coords from the Texture2DGroup.
*
* @param[in] pTexture2DGroup - Texture2DGroup instance.
* @param[in] nPropertyID - PropertyID of the tex2coords in the Texture2DGroup.
* @return error code or 0 (success)
*/
PLib3MFTexture2DGroup_RemoveTex2CoordPtr :: #type (pTexture2DGroup: Lib3MF_Texture2DGroup, nPropertyID: Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Obtains the texture2D instance of this group.
*
* @param[in] pTexture2DGroup - Texture2DGroup instance.
* @param[out] pTexture2DInstance - the texture2D instance of this group.
* @return error code or 0 (success)
*/
PLib3MFTexture2DGroup_GetTexture2DPtr :: #type (pTexture2DGroup: Lib3MF_Texture2DGroup, pTexture2DInstance: *Lib3MF_Texture2D) -> Lib3MFResult #c_call;

/**
* Retrieves the count of Composite-s in the CompositeMaterials.
*
* @param[in] pCompositeMaterials - CompositeMaterials instance.
* @param[out] pCount - returns the count of Composite-s
* @return error code or 0 (success)
*/
PLib3MFCompositeMaterials_GetCountPtr :: #type (pCompositeMaterials: Lib3MF_CompositeMaterials, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* returns all the PropertyIDs of all Composite-Mixing Values in this CompositeMaterials
*
* @param[in] pCompositeMaterials - CompositeMaterials instance.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[out] pPropertyIDsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertyIDsBuffer - uint32  buffer of PropertyID of the Composite-Mixing Values in the CompositeMaterials.
* @return error code or 0 (success)
*/
PLib3MFCompositeMaterials_GetAllPropertyIDsPtr :: #type (pCompositeMaterials: Lib3MF_CompositeMaterials, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsNeededCount: *Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Obtains the BaseMaterialGroup instance of this CompositeMaterials.
*
* @param[in] pCompositeMaterials - CompositeMaterials instance.
* @param[out] pBaseMaterialGroupInstance - returns the BaseMaterialGroup instance of this CompositeMaterials
* @return error code or 0 (success)
*/
PLib3MFCompositeMaterials_GetBaseMaterialGroupPtr :: #type (pCompositeMaterials: Lib3MF_CompositeMaterials, pBaseMaterialGroupInstance: *Lib3MF_BaseMaterialGroup) -> Lib3MFResult #c_call;

/**
* Adds a new Composite-Mixing Values to the CompositeMaterials.
*
* @param[in] pCompositeMaterials - CompositeMaterials instance.
* @param[in] nCompositeBufferSize - Number of elements in buffer
* @param[in] pCompositeBuffer - CompositeConstituent buffer of The Composite Constituents to be added as composite
* @param[out] pPropertyID - returns new PropertyID of the new Composite in the CompositeMaterials.
* @return error code or 0 (success)
*/
PLib3MFCompositeMaterials_AddCompositePtr :: #type (pCompositeMaterials: Lib3MF_CompositeMaterials, nCompositeBufferSize: Lib3MF_uint64, pCompositeBuffer: *Lib3MF.sCompositeConstituent, pPropertyID: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Removes a Composite-Maxing Ratio from the CompositeMaterials.
*
* @param[in] pCompositeMaterials - CompositeMaterials instance.
* @param[in] nPropertyID - PropertyID of the  Composite-Mixing Values in the CompositeMaterials to be removed.
* @return error code or 0 (success)
*/
PLib3MFCompositeMaterials_RemoveCompositePtr :: #type (pCompositeMaterials: Lib3MF_CompositeMaterials, nPropertyID: Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Obtains a Composite-Maxing Ratio of this CompositeMaterials.
*
* @param[in] pCompositeMaterials - CompositeMaterials instance.
* @param[in] nPropertyID - the PropertyID of the Composite-Maxing Ratio in the CompositeMaterials.
* @param[in] nCompositeBufferSize - Number of elements in buffer
* @param[out] pCompositeNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pCompositeBuffer - CompositeConstituent  buffer of The Composite-Mixing Values with the given PropertyID
* @return error code or 0 (success)
*/
PLib3MFCompositeMaterials_GetCompositePtr :: #type (pCompositeMaterials: Lib3MF_CompositeMaterials, nPropertyID: Lib3MF_uint32, nCompositeBufferSize: Lib3MF_uint64, pCompositeNeededCount: *Lib3MF_uint64, pCompositeBuffer: *Lib3MF.sCompositeConstituent) -> Lib3MFResult #c_call;

/**
* Retrieves the count of MultiProperty-s in the MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[out] pCount - returns the count of MultiProperty-s
* @return error code or 0 (success)
*/
PLib3MFMultiPropertyGroup_GetCountPtr :: #type (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* returns all the PropertyIDs of all MultiProperty-s in this MultiPropertyGroup
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[out] pPropertyIDsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertyIDsBuffer - uint32  buffer of PropertyID of the MultiProperty-s in the MultiPropertyGroup.
* @return error code or 0 (success)
*/
PLib3MFMultiPropertyGroup_GetAllPropertyIDsPtr :: #type (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsNeededCount: *Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Adds a new MultiProperty to the MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[in] pPropertyIDsBuffer - uint32 buffer of The PropertyIDs of the new MultiProperty.
* @param[out] pPropertyID - returns the PropertyID of the new MultiProperty in the MultiPropertyGroup.
* @return error code or 0 (success)
*/
PLib3MFMultiPropertyGroup_AddMultiPropertyPtr :: #type (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32, pPropertyID: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Sets the PropertyIDs of a MultiProperty.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nPropertyID - the PropertyID of the MultiProperty to be changed.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[in] pPropertyIDsBuffer - uint32 buffer of The new PropertyIDs of the MultiProperty
* @return error code or 0 (success)
*/
PLib3MFMultiPropertyGroup_SetMultiPropertyPtr :: #type (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nPropertyID: Lib3MF_uint32, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Obtains the PropertyIDs of a MultiProperty.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nPropertyID - the PropertyID of the MultiProperty to be queried.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[out] pPropertyIDsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertyIDsBuffer - uint32  buffer of The PropertyIDs of the MultiProperty
* @return error code or 0 (success)
*/
PLib3MFMultiPropertyGroup_GetMultiPropertyPtr :: #type (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nPropertyID: Lib3MF_uint32, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsNeededCount: *Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Removes a MultiProperty from this MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nPropertyID - the PropertyID of the MultiProperty to be removed.
* @return error code or 0 (success)
*/
PLib3MFMultiPropertyGroup_RemoveMultiPropertyPtr :: #type (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nPropertyID: Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Retrieves the number of layers of this MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[out] pCount - returns the number of layers
* @return error code or 0 (success)
*/
PLib3MFMultiPropertyGroup_GetLayerCountPtr :: #type (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, pCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Adds a MultiPropertyLayer to this MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] pTheLayer - The MultiPropertyLayer to add to this MultiPropertyGroup
* @param[out] pLayerIndex - returns the index of this MultiPropertyLayer
* @return error code or 0 (success)
*/
PLib3MFMultiPropertyGroup_AddLayerPtr :: #type (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, pTheLayer: *Lib3MF.sMultiPropertyLayer, pLayerIndex: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Obtains a MultiPropertyLayer of this MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nLayerIndex - The Index of the MultiPropertyLayer queried
* @param[out] pTheLayer - The MultiPropertyLayer with index LayerIndex within MultiPropertyGroup
* @return error code or 0 (success)
*/
PLib3MFMultiPropertyGroup_GetLayerPtr :: #type (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nLayerIndex: Lib3MF_uint32, pTheLayer: *Lib3MF.sMultiPropertyLayer) -> Lib3MFResult #c_call;

/**
* Removes a MultiPropertyLayer from this MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nLayerIndex - The Index of the MultiPropertyLayer to be removed
* @return error code or 0 (success)
*/
PLib3MFMultiPropertyGroup_RemoveLayerPtr :: #type (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nLayerIndex: Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Retrieves an attachment's package path. This function will be removed in a later release.
*
* @param[in] pAttachment - Attachment instance.
* @param[in] nPathBufferSize - size of the buffer (including trailing 0)
* @param[out] pPathNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPathBuffer -  buffer of returns the attachment's package path string, may be NULL
* @return error code or 0 (success)
*/
PLib3MFAttachment_GetPathPtr :: #type (pAttachment: Lib3MF_Attachment, nPathBufferSize: Lib3MF_uint32, pPathNeededChars: *Lib3MF_uint32, pPathBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Sets an attachment's package path. This function will be removed in a later release.
*
* @param[in] pAttachment - Attachment instance.
* @param[in] pPath - new path of the attachment.
* @return error code or 0 (success)
*/
PLib3MFAttachment_SetPathPtr :: #type (pAttachment: Lib3MF_Attachment, pPath: *u8) -> Lib3MFResult #c_call;

/**
* Returns the PackagePart that is this attachment.
*
* @param[in] pAttachment - Attachment instance.
* @param[out] pPackagePart - The PackagePart of this attachment.
* @return error code or 0 (success)
*/
PLib3MFAttachment_PackagePartPtr :: #type (pAttachment: Lib3MF_Attachment, pPackagePart: *Lib3MF_PackagePart) -> Lib3MFResult #c_call;

/**
* Retrieves an attachment's relationship type
*
* @param[in] pAttachment - Attachment instance.
* @param[in] nPathBufferSize - size of the buffer (including trailing 0)
* @param[out] pPathNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPathBuffer -  buffer of returns the attachment's package relationship type string, may be NULL
* @return error code or 0 (success)
*/
PLib3MFAttachment_GetRelationShipTypePtr :: #type (pAttachment: Lib3MF_Attachment, nPathBufferSize: Lib3MF_uint32, pPathNeededChars: *Lib3MF_uint32, pPathBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Sets an attachment's relationship type.
*
* @param[in] pAttachment - Attachment instance.
* @param[in] pPath - new relationship type string.
* @return error code or 0 (success)
*/
PLib3MFAttachment_SetRelationShipTypePtr :: #type (pAttachment: Lib3MF_Attachment, pPath: *u8) -> Lib3MFResult #c_call;

/**
* Writes out the attachment as file.
*
* @param[in] pAttachment - Attachment instance.
* @param[in] pFileName - file to write into.
* @return error code or 0 (success)
*/
PLib3MFAttachment_WriteToFilePtr :: #type (pAttachment: Lib3MF_Attachment, pFileName: *u8) -> Lib3MFResult #c_call;

/**
* Reads an attachment from a file. The path of this file is only read when this attachment is being written as part of the 3MF packege, or via the WriteToFile or WriteToBuffer-methods.
*
* @param[in] pAttachment - Attachment instance.
* @param[in] pFileName - file to read from.
* @return error code or 0 (success)
*/
PLib3MFAttachment_ReadFromFilePtr :: #type (pAttachment: Lib3MF_Attachment, pFileName: *u8) -> Lib3MFResult #c_call;

/**
* Reads a model and from the data provided by a callback function
*
* @param[in] pAttachment - Attachment instance.
* @param[in] pTheReadCallback - Callback to call for reading a data chunk
* @param[in] nStreamSize - number of bytes the callback returns
* @param[in] pTheSeekCallback - Callback to call for seeking in the stream.
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
PLib3MFAttachment_ReadFromCallbackPtr :: #type (pAttachment: Lib3MF_Attachment, pTheReadCallback: Lib3MF.ReadCallback, nStreamSize: Lib3MF_uint64, pTheSeekCallback: Lib3MF.SeekCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #c_call;

/**
* Retrieves the size of the attachment stream
*
* @param[in] pAttachment - Attachment instance.
* @param[out] pStreamSize - the stream size
* @return error code or 0 (success)
*/
PLib3MFAttachment_GetStreamSizePtr :: #type (pAttachment: Lib3MF_Attachment, pStreamSize: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Writes out the attachment into a buffer
*
* @param[in] pAttachment - Attachment instance.
* @param[in] nBufferBufferSize - Number of elements in buffer
* @param[out] pBufferNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pBufferBuffer - uint8  buffer of Buffer to write into
* @return error code or 0 (success)
*/
PLib3MFAttachment_WriteToBufferPtr :: #type (pAttachment: Lib3MF_Attachment, nBufferBufferSize: Lib3MF_uint64, pBufferNeededCount: *Lib3MF_uint64, pBufferBuffer: *Lib3MF_uint8) -> Lib3MFResult #c_call;

/**
* Reads an attachment from a memory buffer
*
* @param[in] pAttachment - Attachment instance.
* @param[in] nBufferBufferSize - Number of elements in buffer
* @param[in] pBufferBuffer - uint8 buffer of Buffer to read from
* @return error code or 0 (success)
*/
PLib3MFAttachment_ReadFromBufferPtr :: #type (pAttachment: Lib3MF_Attachment, nBufferBufferSize: Lib3MF_uint64, pBufferBuffer: *Lib3MF_uint8) -> Lib3MFResult #c_call;

/**
* Retrieves the attachment located at the path of the texture.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[out] pAttachment - attachment that holds the texture's image information.
* @return error code or 0 (success)
*/
PLib3MFTexture2D_GetAttachmentPtr :: #type (pTexture2D: Lib3MF_Texture2D, pAttachment: *Lib3MF_Attachment) -> Lib3MFResult #c_call;

/**
* Sets the texture's package path to the path of the attachment.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[in] pAttachment - attachment that holds the texture's image information.
* @return error code or 0 (success)
*/
PLib3MFTexture2D_SetAttachmentPtr :: #type (pTexture2D: Lib3MF_Texture2D, pAttachment: Lib3MF_Attachment) -> Lib3MFResult #c_call;

/**
* Retrieves a texture's content type.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[out] pContentType - returns content type enum.
* @return error code or 0 (success)
*/
PLib3MFTexture2D_GetContentTypePtr :: #type (pTexture2D: Lib3MF_Texture2D, pContentType: *Lib3MF.eTextureType) -> Lib3MFResult #c_call;

/**
* Retrieves a texture's content type.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[in] eContentType - new Content Type
* @return error code or 0 (success)
*/
PLib3MFTexture2D_SetContentTypePtr :: #type (pTexture2D: Lib3MF_Texture2D, eContentType: Lib3MF.eTextureType) -> Lib3MFResult #c_call;

/**
* Retrieves a texture's tilestyle type.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[out] pTileStyleU - returns tilestyle type enum.
* @param[out] pTileStyleV - returns tilestyle type enum.
* @return error code or 0 (success)
*/
PLib3MFTexture2D_GetTileStyleUVPtr :: #type (pTexture2D: Lib3MF_Texture2D, pTileStyleU: *Lib3MF.eTextureTileStyle, pTileStyleV: *Lib3MF.eTextureTileStyle) -> Lib3MFResult #c_call;

/**
* Sets a texture's tilestyle type.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[in] eTileStyleU - new tilestyle type enum.
* @param[in] eTileStyleV - new tilestyle type enum.
* @return error code or 0 (success)
*/
PLib3MFTexture2D_SetTileStyleUVPtr :: #type (pTexture2D: Lib3MF_Texture2D, eTileStyleU: Lib3MF.eTextureTileStyle, eTileStyleV: Lib3MF.eTextureTileStyle) -> Lib3MFResult #c_call;

/**
* Retrieves a texture's filter type.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[out] pFilter - returns filter type enum.
* @return error code or 0 (success)
*/
PLib3MFTexture2D_GetFilterPtr :: #type (pTexture2D: Lib3MF_Texture2D, pFilter: *Lib3MF.eTextureFilter) -> Lib3MFResult #c_call;

/**
* Sets a texture's filter type.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[in] eFilter - sets new filter type enum.
* @return error code or 0 (success)
*/
PLib3MFTexture2D_SetFilterPtr :: #type (pTexture2D: Lib3MF_Texture2D, eFilter: Lib3MF.eTextureFilter) -> Lib3MFResult #c_call;

/**
* Retrieves the object resource associated to a build item
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pObjectResource - returns the associated resource instance
* @return error code or 0 (success)
*/
PLib3MFBuildItem_GetObjectResourcePtr :: #type (pBuildItem: Lib3MF_BuildItem, pObjectResource: *Lib3MF_Object) -> Lib3MFResult #c_call;

/**
* returns, whether a build item has a UUID and, if true, the build item's UUID
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pHasUUID - flag whether the build item has a UUID
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of the UUID as string of the form 'xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx', may be NULL
* @return error code or 0 (success)
*/
PLib3MFBuildItem_GetUUIDPtr :: #type (pBuildItem: Lib3MF_BuildItem, pHasUUID: *bool, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #c_call;

/**
* sets the build item's UUID
*
* @param[in] pBuildItem - BuildItem instance.
* @param[in] pUUID - the UUID as string of the form 'xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx'
* @return error code or 0 (success)
*/
PLib3MFBuildItem_SetUUIDPtr :: #type (pBuildItem: Lib3MF_BuildItem, pUUID: *u8) -> Lib3MFResult #c_call;

/**
* Retrieves the object UniqueResourceID associated to a build item
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pUniqueResourceID - returns the UniqueResourceID of the object
* @return error code or 0 (success)
*/
PLib3MFBuildItem_GetObjectResourceIDPtr :: #type (pBuildItem: Lib3MF_BuildItem, pUniqueResourceID: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Checks, if a build item has a non-identity transformation matrix
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pHasTransform - returns true, if the transformation matrix is not the identity
* @return error code or 0 (success)
*/
PLib3MFBuildItem_HasObjectTransformPtr :: #type (pBuildItem: Lib3MF_BuildItem, pHasTransform: *bool) -> Lib3MFResult #c_call;

/**
* Retrieves a build item's transformation matrix.
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pTransform - returns the transformation matrix
* @return error code or 0 (success)
*/
PLib3MFBuildItem_GetObjectTransformPtr :: #type (pBuildItem: Lib3MF_BuildItem, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #c_call;

/**
* Sets a build item's transformation matrix.
*
* @param[in] pBuildItem - BuildItem instance.
* @param[in] pTransform - new transformation matrix
* @return error code or 0 (success)
*/
PLib3MFBuildItem_SetObjectTransformPtr :: #type (pBuildItem: Lib3MF_BuildItem, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #c_call;

/**
* Retrieves a build item's part number string
*
* @param[in] pBuildItem - BuildItem instance.
* @param[in] nPartNumberBufferSize - size of the buffer (including trailing 0)
* @param[out] pPartNumberNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPartNumberBuffer -  buffer of Returns a build item's part number string, may be NULL
* @return error code or 0 (success)
*/
PLib3MFBuildItem_GetPartNumberPtr :: #type (pBuildItem: Lib3MF_BuildItem, nPartNumberBufferSize: Lib3MF_uint32, pPartNumberNeededChars: *Lib3MF_uint32, pPartNumberBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Sets a build item's part number string
*
* @param[in] pBuildItem - BuildItem instance.
* @param[in] pSetPartnumber - new part number string for referencing parts from the outside world
* @return error code or 0 (success)
*/
PLib3MFBuildItem_SetPartNumberPtr :: #type (pBuildItem: Lib3MF_BuildItem, pSetPartnumber: *u8) -> Lib3MFResult #c_call;

/**
* Returns the metadatagroup of this build item
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pMetaDataGroup - returns an Instance of the metadatagroup of this build item
* @return error code or 0 (success)
*/
PLib3MFBuildItem_GetMetaDataGroupPtr :: #type (pBuildItem: Lib3MF_BuildItem, pMetaDataGroup: *Lib3MF_MetaDataGroup) -> Lib3MFResult #c_call;

/**
* Returns the outbox of a build item
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pOutbox - Outbox of this build item
* @return error code or 0 (success)
*/
PLib3MFBuildItem_GetOutboxPtr :: #type (pBuildItem: Lib3MF_BuildItem, pOutbox: *Lib3MF.sBox) -> Lib3MFResult #c_call;

/**
* Iterates to the next build item in the list.
*
* @param[in] pBuildItemIterator - BuildItemIterator instance.
* @param[out] pHasNext - Iterates to the next build item in the list.
* @return error code or 0 (success)
*/
PLib3MFBuildItemIterator_MoveNextPtr :: #type (pBuildItemIterator: Lib3MF_BuildItemIterator, pHasNext: *bool) -> Lib3MFResult #c_call;

/**
* Iterates to the previous build item in the list.
*
* @param[in] pBuildItemIterator - BuildItemIterator instance.
* @param[out] pHasPrevious - Iterates to the previous build item in the list.
* @return error code or 0 (success)
*/
PLib3MFBuildItemIterator_MovePreviousPtr :: #type (pBuildItemIterator: Lib3MF_BuildItemIterator, pHasPrevious: *bool) -> Lib3MFResult #c_call;

/**
* Returns the build item the iterator points at.
*
* @param[in] pBuildItemIterator - BuildItemIterator instance.
* @param[out] pBuildItem - returns the build item instance.
* @return error code or 0 (success)
*/
PLib3MFBuildItemIterator_GetCurrentPtr :: #type (pBuildItemIterator: Lib3MF_BuildItemIterator, pBuildItem: *Lib3MF_BuildItem) -> Lib3MFResult #c_call;

/**
* Creates a new build item iterator with the same build item list.
*
* @param[in] pBuildItemIterator - BuildItemIterator instance.
* @param[out] pOutBuildItemIterator - returns the cloned Iterator instance
* @return error code or 0 (success)
*/
PLib3MFBuildItemIterator_ClonePtr :: #type (pBuildItemIterator: Lib3MF_BuildItemIterator, pOutBuildItemIterator: *Lib3MF_BuildItemIterator) -> Lib3MFResult #c_call;

/**
* Returns the number of build items the iterator captures.
*
* @param[in] pBuildItemIterator - BuildItemIterator instance.
* @param[out] pCount - returns the number of build items the iterator captures.
* @return error code or 0 (success)
*/
PLib3MFBuildItemIterator_CountPtr :: #type (pBuildItemIterator: Lib3MF_BuildItemIterator, pCount: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Set all vertices of a slice. All polygons will be cleared.
*
* @param[in] pSlice - Slice instance.
* @param[in] nVerticesBufferSize - Number of elements in buffer
* @param[in] pVerticesBuffer - Position2D buffer of contains the positions.
* @return error code or 0 (success)
*/
PLib3MFSlice_SetVerticesPtr :: #type (pSlice: Lib3MF_Slice, nVerticesBufferSize: Lib3MF_uint64, pVerticesBuffer: *Lib3MF.sPosition2D) -> Lib3MFResult #c_call;

/**
* Get all vertices of a slice
*
* @param[in] pSlice - Slice instance.
* @param[in] nVerticesBufferSize - Number of elements in buffer
* @param[out] pVerticesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pVerticesBuffer - Position2D  buffer of contains the positions.
* @return error code or 0 (success)
*/
PLib3MFSlice_GetVerticesPtr :: #type (pSlice: Lib3MF_Slice, nVerticesBufferSize: Lib3MF_uint64, pVerticesNeededCount: *Lib3MF_uint64, pVerticesBuffer: *Lib3MF.sPosition2D) -> Lib3MFResult #c_call;

/**
* Get the number of vertices in a slice
*
* @param[in] pSlice - Slice instance.
* @param[out] pCount - the number of vertices in the slice
* @return error code or 0 (success)
*/
PLib3MFSlice_GetVertexCountPtr :: #type (pSlice: Lib3MF_Slice, pCount: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Add a new polygon to this slice
*
* @param[in] pSlice - Slice instance.
* @param[in] nIndicesBufferSize - Number of elements in buffer
* @param[in] pIndicesBuffer - uint32 buffer of the new indices of the new polygon
* @param[out] pIndex - the index of the new polygon
* @return error code or 0 (success)
*/
PLib3MFSlice_AddPolygonPtr :: #type (pSlice: Lib3MF_Slice, nIndicesBufferSize: Lib3MF_uint64, pIndicesBuffer: *Lib3MF_uint32, pIndex: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Get the number of polygons in the slice
*
* @param[in] pSlice - Slice instance.
* @param[out] pCount - the number of polygons in the slice
* @return error code or 0 (success)
*/
PLib3MFSlice_GetPolygonCountPtr :: #type (pSlice: Lib3MF_Slice, pCount: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Set all indices of a polygon
*
* @param[in] pSlice - Slice instance.
* @param[in] nIndex - the index of the polygon to manipulate
* @param[in] nIndicesBufferSize - Number of elements in buffer
* @param[in] pIndicesBuffer - uint32 buffer of the new indices of the index-th polygon
* @return error code or 0 (success)
*/
PLib3MFSlice_SetPolygonIndicesPtr :: #type (pSlice: Lib3MF_Slice, nIndex: Lib3MF_uint64, nIndicesBufferSize: Lib3MF_uint64, pIndicesBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Get all vertices of a slice
*
* @param[in] pSlice - Slice instance.
* @param[in] nIndex - the index of the polygon to manipulate
* @param[in] nIndicesBufferSize - Number of elements in buffer
* @param[out] pIndicesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pIndicesBuffer - uint32  buffer of the indices of the index-th polygon
* @return error code or 0 (success)
*/
PLib3MFSlice_GetPolygonIndicesPtr :: #type (pSlice: Lib3MF_Slice, nIndex: Lib3MF_uint64, nIndicesBufferSize: Lib3MF_uint64, pIndicesNeededCount: *Lib3MF_uint64, pIndicesBuffer: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Get the number of vertices in a slice
*
* @param[in] pSlice - Slice instance.
* @param[in] nIndex - the index of the polygon to manipulate
* @param[out] pCount - the number of indices of the index-th polygon
* @return error code or 0 (success)
*/
PLib3MFSlice_GetPolygonIndexCountPtr :: #type (pSlice: Lib3MF_Slice, nIndex: Lib3MF_uint64, pCount: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Get the upper Z-Coordinate of this slice.
*
* @param[in] pSlice - Slice instance.
* @param[out] pZTop - the upper Z-Coordinate of this slice
* @return error code or 0 (success)
*/
PLib3MFSlice_GetZTopPtr :: #type (pSlice: Lib3MF_Slice, pZTop: *Lib3MF_double) -> Lib3MFResult #c_call;

/**
* Get the lower Z-Coordinate of the slice stack.
*
* @param[in] pSliceStack - SliceStack instance.
* @param[out] pZBottom - the lower Z-Coordinate the slice stack
* @return error code or 0 (success)
*/
PLib3MFSliceStack_GetBottomZPtr :: #type (pSliceStack: Lib3MF_SliceStack, pZBottom: *Lib3MF_double) -> Lib3MFResult #c_call;

/**
* Returns the number of slices
*
* @param[in] pSliceStack - SliceStack instance.
* @param[out] pCount - the number of slices
* @return error code or 0 (success)
*/
PLib3MFSliceStack_GetSliceCountPtr :: #type (pSliceStack: Lib3MF_SliceStack, pCount: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Query a slice from the slice stack
*
* @param[in] pSliceStack - SliceStack instance.
* @param[in] nSliceIndex - the index of the slice
* @param[out] pTheSlice - the Slice instance
* @return error code or 0 (success)
*/
PLib3MFSliceStack_GetSlicePtr :: #type (pSliceStack: Lib3MF_SliceStack, nSliceIndex: Lib3MF_uint64, pTheSlice: *Lib3MF_Slice) -> Lib3MFResult #c_call;

/**
* Returns the number of slices
*
* @param[in] pSliceStack - SliceStack instance.
* @param[in] dZTop - upper Z coordinate of the slice
* @param[out] pTheSlice - a new Slice instance
* @return error code or 0 (success)
*/
PLib3MFSliceStack_AddSlicePtr :: #type (pSliceStack: Lib3MF_SliceStack, dZTop: Lib3MF_double, pTheSlice: *Lib3MF_Slice) -> Lib3MFResult #c_call;

/**
* Returns the number of slice refs
*
* @param[in] pSliceStack - SliceStack instance.
* @param[out] pCount - the number of slicereferences
* @return error code or 0 (success)
*/
PLib3MFSliceStack_GetSliceRefCountPtr :: #type (pSliceStack: Lib3MF_SliceStack, pCount: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Adds another existing slicestack as sliceref in this slicestack
*
* @param[in] pSliceStack - SliceStack instance.
* @param[in] pTheSliceStack - the slicestack to use as sliceref
* @return error code or 0 (success)
*/
PLib3MFSliceStack_AddSliceStackReferencePtr :: #type (pSliceStack: Lib3MF_SliceStack, pTheSliceStack: Lib3MF_SliceStack) -> Lib3MFResult #c_call;

/**
* Adds another existing slicestack as sliceref in this slicestack
*
* @param[in] pSliceStack - SliceStack instance.
* @param[in] nSliceRefIndex - the index of the slice ref
* @param[out] pTheSliceStack - the slicestack that is used as sliceref
* @return error code or 0 (success)
*/
PLib3MFSliceStack_GetSliceStackReferencePtr :: #type (pSliceStack: Lib3MF_SliceStack, nSliceRefIndex: Lib3MF_uint64, pTheSliceStack: *Lib3MF_SliceStack) -> Lib3MFResult #c_call;

/**
* Removes the indirection of slices via slice-refs, i.e. creates the slices of all slice refs of this SliceStack as actual slices of this SliceStack. All previously existing slices or slicerefs will be removed.
*
* @param[in] pSliceStack - SliceStack instance.
* @return error code or 0 (success)
*/
PLib3MFSliceStack_CollapseSliceReferencesPtr :: #type (pSliceStack: Lib3MF_SliceStack) -> Lib3MFResult #c_call;

/**
* Sets the package path where this Slice should be stored. Input an empty string to reset the path
*
* @param[in] pSliceStack - SliceStack instance.
* @param[in] pPath - the package path where this Slice should be stored
* @return error code or 0 (success)
*/
PLib3MFSliceStack_SetOwnPathPtr :: #type (pSliceStack: Lib3MF_SliceStack, pPath: *u8) -> Lib3MFResult #c_call;

/**
* Obtains the package path where this Slice should be stored. Returns an empty string if the slicestack is stored within the root model.
*
* @param[in] pSliceStack - SliceStack instance.
* @param[in] nPathBufferSize - size of the buffer (including trailing 0)
* @param[out] pPathNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPathBuffer -  buffer of the package path where this Slice will be stored, may be NULL
* @return error code or 0 (success)
*/
PLib3MFSliceStack_GetOwnPathPtr :: #type (pSliceStack: Lib3MF_SliceStack, nPathBufferSize: Lib3MF_uint32, pPathNeededChars: *Lib3MF_uint32, pPathBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Gets the consumerid
*
* @param[in] pConsumer - Consumer instance.
* @param[in] nConsumerIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pConsumerIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pConsumerIDBuffer -  buffer of A unique identifier for the consumers, may be NULL
* @return error code or 0 (success)
*/
PLib3MFConsumer_GetConsumerIDPtr :: #type (pConsumer: Lib3MF_Consumer, nConsumerIDBufferSize: Lib3MF_uint32, pConsumerIDNeededChars: *Lib3MF_uint32, pConsumerIDBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Getts the keyid
*
* @param[in] pConsumer - Consumer instance.
* @param[in] nKeyIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pKeyIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pKeyIDBuffer -  buffer of The identifier for the key of this consumer, may be NULL
* @return error code or 0 (success)
*/
PLib3MFConsumer_GetKeyIDPtr :: #type (pConsumer: Lib3MF_Consumer, nKeyIDBufferSize: Lib3MF_uint32, pKeyIDNeededChars: *Lib3MF_uint32, pKeyIDBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Gets the keyvalue associated with this consumer
*
* @param[in] pConsumer - Consumer instance.
* @param[in] nKeyValueBufferSize - size of the buffer (including trailing 0)
* @param[out] pKeyValueNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pKeyValueBuffer -  buffer of The public key, when available, of this consumer, may be NULL
* @return error code or 0 (success)
*/
PLib3MFConsumer_GetKeyValuePtr :: #type (pConsumer: Lib3MF_Consumer, nKeyValueBufferSize: Lib3MF_uint32, pKeyValueNeededChars: *Lib3MF_uint32, pKeyValueBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Gets the consumer associated with this access right
*
* @param[in] pAccessRight - AccessRight instance.
* @param[out] pConsumer - The consumer instance
* @return error code or 0 (success)
*/
PLib3MFAccessRight_GetConsumerPtr :: #type (pAccessRight: Lib3MF_AccessRight, pConsumer: *Lib3MF_Consumer) -> Lib3MFResult #c_call;

/**
* Gets the associated encryption algorithm
*
* @param[in] pAccessRight - AccessRight instance.
* @param[out] pAlgorithm - The algorithm used for the key in this accessright
* @return error code or 0 (success)
*/
PLib3MFAccessRight_GetWrappingAlgorithmPtr :: #type (pAccessRight: Lib3MF_AccessRight, pAlgorithm: *Lib3MF.eWrappingAlgorithm) -> Lib3MFResult #c_call;

/**
* Gets the associated mask generation function algorithm
*
* @param[in] pAccessRight - AccessRight instance.
* @param[out] pAlgorithm - The MFG1 algorithm
* @return error code or 0 (success)
*/
PLib3MFAccessRight_GetMgfAlgorithmPtr :: #type (pAccessRight: Lib3MF_AccessRight, pAlgorithm: *Lib3MF.eMgfAlgorithm) -> Lib3MFResult #c_call;

/**
* Gets the digest method assoicated
*
* @param[in] pAccessRight - AccessRight instance.
* @param[out] pAlgorithm - The digest method for this accessright
* @return error code or 0 (success)
*/
PLib3MFAccessRight_GetDigestMethodPtr :: #type (pAccessRight: Lib3MF_AccessRight, pAlgorithm: *Lib3MF.eDigestMethod) -> Lib3MFResult #c_call;

/**
* Returns the encryption method to be used in this encryption process
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[out] pAlgorithm -
* @return error code or 0 (success)
*/
PLib3MFContentEncryptionParams_GetEncryptionAlgorithmPtr :: #type (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, pAlgorithm: *Lib3MF.eEncryptionAlgorithm) -> Lib3MFResult #c_call;

/**
* Gets the key for the resource associated
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[in] nByteDataBufferSize - Number of elements in buffer
* @param[out] pByteDataNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pByteDataBuffer - uint8  buffer of Pointer to a buffer where to place the key.
* @return error code or 0 (success)
*/
PLib3MFContentEncryptionParams_GetKeyPtr :: #type (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, nByteDataBufferSize: Lib3MF_uint64, pByteDataNeededCount: *Lib3MF_uint64, pByteDataBuffer: *Lib3MF_uint8) -> Lib3MFResult #c_call;

/**
* Gets the IV data
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[in] nByteDataBufferSize - Number of elements in buffer
* @param[out] pByteDataNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pByteDataBuffer - uint8  buffer of Pointer to a buffer where to place the data.
* @return error code or 0 (success)
*/
PLib3MFContentEncryptionParams_GetInitializationVectorPtr :: #type (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, nByteDataBufferSize: Lib3MF_uint64, pByteDataNeededCount: *Lib3MF_uint64, pByteDataBuffer: *Lib3MF_uint8) -> Lib3MFResult #c_call;

/**
* A handler descriptor that uniquely identifies the context of the resource. Each resource will be assigned a different value
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[in] nByteDataBufferSize - Number of elements in buffer
* @param[out] pByteDataNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pByteDataBuffer - uint8  buffer of Pointer to a buffer where to place the data.
* @return error code or 0 (success)
*/
PLib3MFContentEncryptionParams_GetAuthenticationTagPtr :: #type (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, nByteDataBufferSize: Lib3MF_uint64, pByteDataNeededCount: *Lib3MF_uint64, pByteDataBuffer: *Lib3MF_uint8) -> Lib3MFResult #c_call;

/**
* Sets the authentication tag
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[in] nByteDataBufferSize - Number of elements in buffer
* @param[in] pByteDataBuffer - uint8 buffer of The authentication tag size
* @return error code or 0 (success)
*/
PLib3MFContentEncryptionParams_SetAuthenticationTagPtr :: #type (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, nByteDataBufferSize: Lib3MF_uint64, pByteDataBuffer: *Lib3MF_uint8) -> Lib3MFResult #c_call;

/**
* A handler descriptor that uniquely identifies the context of the resource. Each resource will be assigned a different value
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[in] nByteDataBufferSize - Number of elements in buffer
* @param[out] pByteDataNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pByteDataBuffer - uint8  buffer of Buffer where the data will be placed
* @return error code or 0 (success)
*/
PLib3MFContentEncryptionParams_GetAdditionalAuthenticationDataPtr :: #type (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, nByteDataBufferSize: Lib3MF_uint64, pByteDataNeededCount: *Lib3MF_uint64, pByteDataBuffer: *Lib3MF_uint8) -> Lib3MFResult #c_call;

/**
* A handler descriptor that uniquely identifies the context of the resource. Each resource will be assigned a different value
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[out] pDescriptor -
* @return error code or 0 (success)
*/
PLib3MFContentEncryptionParams_GetDescriptorPtr :: #type (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, pDescriptor: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Gets the resourcedatagroup keyuuid
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of The resourcedatagroup keyuuid that may be use to reference an external key, may be NULL
* @return error code or 0 (success)
*/
PLib3MFContentEncryptionParams_GetKeyUUIDPtr :: #type (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Gets the encrypted part path
*
* @param[in] pResourceData - ResourceData instance.
* @param[out] pPath - The part path
* @return error code or 0 (success)
*/
PLib3MFResourceData_GetPathPtr :: #type (pResourceData: Lib3MF_ResourceData, pPath: *Lib3MF_PackagePart) -> Lib3MFResult #c_call;

/**
* Gets the encryption algorithm used to encrypt this ResourceData
*
* @param[in] pResourceData - ResourceData instance.
* @param[out] pEncryptionAlgorithm - The encryption algorithm
* @return error code or 0 (success)
*/
PLib3MFResourceData_GetEncryptionAlgorithmPtr :: #type (pResourceData: Lib3MF_ResourceData, pEncryptionAlgorithm: *Lib3MF.eEncryptionAlgorithm) -> Lib3MFResult #c_call;

/**
* Tells whether this ResourceData is compressed or not
*
* @param[in] pResourceData - ResourceData instance.
* @param[out] pCompression - The compression method
* @return error code or 0 (success)
*/
PLib3MFResourceData_GetCompressionPtr :: #type (pResourceData: Lib3MF_ResourceData, pCompression: *Lib3MF.eCompression) -> Lib3MFResult #c_call;

/**
* Tells whether this ResourceData is compressed or not
*
* @param[in] pResourceData - ResourceData instance.
* @param[in] nByteDataBufferSize - Number of elements in buffer
* @param[out] pByteDataNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pByteDataBuffer - uint8  buffer of The compression method
* @return error code or 0 (success)
*/
PLib3MFResourceData_GetAdditionalAuthenticationDataPtr :: #type (pResourceData: Lib3MF_ResourceData, nByteDataBufferSize: Lib3MF_uint64, pByteDataNeededCount: *Lib3MF_uint64, pByteDataBuffer: *Lib3MF_uint8) -> Lib3MFResult #c_call;

/**
* Sets the resourcedatagroup keyuuid
*
* @param[in] pResourceDataGroup - ResourceDataGroup instance.
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of The new resourcedatagroup keyuuid., may be NULL
* @return error code or 0 (success)
*/
PLib3MFResourceDataGroup_GetKeyUUIDPtr :: #type (pResourceDataGroup: Lib3MF_ResourceDataGroup, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Add accessright to resourcedatagroup element
*
* @param[in] pResourceDataGroup - ResourceDataGroup instance.
* @param[in] pConsumer - The Consumer reference
* @param[in] eWrappingAlgorithm - The key wrapping algorithm to be used
* @param[in] eMgfAlgorithm - The mask generation function to be used
* @param[in] eDigestMethod - The digest mechanism to be used
* @param[out] pTheAccessRight - The acess right instance
* @return error code or 0 (success)
*/
PLib3MFResourceDataGroup_AddAccessRightPtr :: #type (pResourceDataGroup: Lib3MF_ResourceDataGroup, pConsumer: Lib3MF_Consumer, eWrappingAlgorithm_: Lib3MF.eWrappingAlgorithm, eMgfAlgorithm_: Lib3MF.eMgfAlgorithm, eDigestMethod_: Lib3MF.eDigestMethod, pTheAccessRight: *Lib3MF_AccessRight) -> Lib3MFResult #c_call;

/**
* Finds the AccessRight associated with a Consumer
*
* @param[in] pResourceDataGroup - ResourceDataGroup instance.
* @param[in] pConsumer - The Consumer instance
* @param[out] pTheAccessRight - The AcessRight instance
* @return error code or 0 (success)
*/
PLib3MFResourceDataGroup_FindAccessRightByConsumerPtr :: #type (pResourceDataGroup: Lib3MF_ResourceDataGroup, pConsumer: Lib3MF_Consumer, pTheAccessRight: *Lib3MF_AccessRight) -> Lib3MFResult #c_call;

/**
* Removes access from a Consumer on this resource data group
*
* @param[in] pResourceDataGroup - ResourceDataGroup instance.
* @param[in] pConsumer - The Consumer instance
* @return error code or 0 (success)
*/
PLib3MFResourceDataGroup_RemoveAccessRightPtr :: #type (pResourceDataGroup: Lib3MF_ResourceDataGroup, pConsumer: Lib3MF_Consumer) -> Lib3MFResult #c_call;

/**
* Adds a consumer to the keystore
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pConsumerID - A unique identifier for the consumer
* @param[in] pKeyID - The id of the key of the consumer
* @param[in] pKeyValue - The public key for this consumer in PEM format
* @param[out] pConsumer - The consumer instance
* @return error code or 0 (success)
*/
PLib3MFKeyStore_AddConsumerPtr :: #type (pKeyStore: Lib3MF_KeyStore, pConsumerID: *u8, pKeyID: *u8, pKeyValue: *u8, pConsumer: *Lib3MF_Consumer) -> Lib3MFResult #c_call;

/**
* Gets the number of consumers in the keystore
*
* @param[in] pKeyStore - KeyStore instance.
* @param[out] pCount - The consumer count
* @return error code or 0 (success)
*/
PLib3MFKeyStore_GetConsumerCountPtr :: #type (pKeyStore: Lib3MF_KeyStore, pCount: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Get a consumer from the keystore
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] nConsumerIndex - The index of the consumer
* @param[out] pConsumer - The consumer instance
* @return error code or 0 (success)
*/
PLib3MFKeyStore_GetConsumerPtr :: #type (pKeyStore: Lib3MF_KeyStore, nConsumerIndex: Lib3MF_uint64, pConsumer: *Lib3MF_Consumer) -> Lib3MFResult #c_call;

/**
* Removes a consumer from the keystore
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pConsumer - The consumer instance to remove
* @return error code or 0 (success)
*/
PLib3MFKeyStore_RemoveConsumerPtr :: #type (pKeyStore: Lib3MF_KeyStore, pConsumer: Lib3MF_Consumer) -> Lib3MFResult #c_call;

/**
* Finds a consumer by ID
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pConsumerID - The ID of the consumer
* @param[out] pConsumer - The consumer instance
* @return error code or 0 (success)
*/
PLib3MFKeyStore_FindConsumerPtr :: #type (pKeyStore: Lib3MF_KeyStore, pConsumerID: *u8, pConsumer: *Lib3MF_Consumer) -> Lib3MFResult #c_call;

/**
* Gets the number of resource data group in the keysore
*
* @param[in] pKeyStore - KeyStore instance.
* @param[out] pCount - The number of resource data available
* @return error code or 0 (success)
*/
PLib3MFKeyStore_GetResourceDataGroupCountPtr :: #type (pKeyStore: Lib3MF_KeyStore, pCount: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Adds a resource data group into the keystore.
*
* @param[in] pKeyStore - KeyStore instance.
* @param[out] pResourceDataGroup - The resource data group instance
* @return error code or 0 (success)
*/
PLib3MFKeyStore_AddResourceDataGroupPtr :: #type (pKeyStore: Lib3MF_KeyStore, pResourceDataGroup: *Lib3MF_ResourceDataGroup) -> Lib3MFResult #c_call;

/**
* Gets a resource data group
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] nResourceDataIndex - The index of the resource data
* @param[out] pResourceDataGroup - The resource data group instance
* @return error code or 0 (success)
*/
PLib3MFKeyStore_GetResourceDataGroupPtr :: #type (pKeyStore: Lib3MF_KeyStore, nResourceDataIndex: Lib3MF_uint64, pResourceDataGroup: *Lib3MF_ResourceDataGroup) -> Lib3MFResult #c_call;

/**
* Removes a resource data group
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pResourceDataGroup - The resource data group instance
* @return error code or 0 (success)
*/
PLib3MFKeyStore_RemoveResourceDataGroupPtr :: #type (pKeyStore: Lib3MF_KeyStore, pResourceDataGroup: Lib3MF_ResourceDataGroup) -> Lib3MFResult #c_call;

/**
* Finds a resource data group that contains a particular resourcedata
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pPartPath - The target path for the resourcedata hold by the resource data group
* @param[out] pResourceDataGroup - The data resource instance
* @return error code or 0 (success)
*/
PLib3MFKeyStore_FindResourceDataGroupPtr :: #type (pKeyStore: Lib3MF_KeyStore, pPartPath: Lib3MF_PackagePart, pResourceDataGroup: *Lib3MF_ResourceDataGroup) -> Lib3MFResult #c_call;

/**
* Add resourcedata to resourcedatagroup element
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pResourceDataGroup - The resource data group where to add this resource data
* @param[in] pPartPath - The path of the part to be encrypted
* @param[in] eAlgorithm - The encryption algorithm to be used to encrypt this resource
* @param[in] eCompression - Whether compression should be used prior to encryption
* @param[in] nAdditionalAuthenticationDataBufferSize - Number of elements in buffer
* @param[in] pAdditionalAuthenticationDataBuffer - uint8 buffer of Additional data to be encrypted along the contents for better security
* @param[out] pResourceData - The data resource instance
* @return error code or 0 (success)
*/
PLib3MFKeyStore_AddResourceDataPtr :: #type (pKeyStore: Lib3MF_KeyStore, pResourceDataGroup: Lib3MF_ResourceDataGroup, pPartPath: Lib3MF_PackagePart, eAlgorithm: Lib3MF.eEncryptionAlgorithm, eCompression_: Lib3MF.eCompression, nAdditionalAuthenticationDataBufferSize: Lib3MF_uint64, pAdditionalAuthenticationDataBuffer: *Lib3MF_uint8, pResourceData: *Lib3MF_ResourceData) -> Lib3MFResult #c_call;

/**
* Removes a resource data
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pResourceData - The resource data to be removed
* @return error code or 0 (success)
*/
PLib3MFKeyStore_RemoveResourceDataPtr :: #type (pKeyStore: Lib3MF_KeyStore, pResourceData: Lib3MF_ResourceData) -> Lib3MFResult #c_call;

/**
* Finds a resource data on this resource group
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pResourcePath - The target path for the resourcedata
* @param[out] pResourceData - The resource data instance
* @return error code or 0 (success)
*/
PLib3MFKeyStore_FindResourceDataPtr :: #type (pKeyStore: Lib3MF_KeyStore, pResourcePath: Lib3MF_PackagePart, pResourceData: *Lib3MF_ResourceData) -> Lib3MFResult #c_call;

/**
* Gets the number of resource data in the keysore
*
* @param[in] pKeyStore - KeyStore instance.
* @param[out] pCount - The number of resource data available
* @return error code or 0 (success)
*/
PLib3MFKeyStore_GetResourceDataCountPtr :: #type (pKeyStore: Lib3MF_KeyStore, pCount: *Lib3MF_uint64) -> Lib3MFResult #c_call;

/**
* Gets a resource data
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] nResourceDataIndex - The index of the resource data
* @param[out] pResourceData - The data resource instance
* @return error code or 0 (success)
*/
PLib3MFKeyStore_GetResourceDataPtr :: #type (pKeyStore: Lib3MF_KeyStore, nResourceDataIndex: Lib3MF_uint64, pResourceData: *Lib3MF_ResourceData) -> Lib3MFResult #c_call;

/**
* Gets the keystore UUID
*
* @param[in] pKeyStore - KeyStore instance.
* @param[out] pHasUUID - flag whether the keystore has a UUID
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of returns the keystore uuid., may be NULL
* @return error code or 0 (success)
*/
PLib3MFKeyStore_GetUUIDPtr :: #type (pKeyStore: Lib3MF_KeyStore, pHasUUID: *bool, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Sets the keystore UUID
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pUUID - The new keystore uuid.
* @return error code or 0 (success)
*/
PLib3MFKeyStore_SetUUIDPtr :: #type (pKeyStore: Lib3MF_KeyStore, pUUID: *u8) -> Lib3MFResult #c_call;

/**
* Returns the PackagePart within the OPC package that holds the root model.
*
* @param[in] pModel - Model instance.
* @param[out] pRootModelPart - the PackagePart within the OPC package that holds the model-file
* @return error code or 0 (success)
*/
PLib3MFModel_RootModelPartPtr :: #type (pModel: Lib3MF_Model, pRootModelPart: *Lib3MF_PackagePart) -> Lib3MFResult #c_call;

/**
* Returns a new PackagePart for use within the OPC package.
*
* @param[in] pModel - Model instance.
* @param[in] pAbsolutePath - the absolute Path (physical location) within the OPC package
* @param[out] pModelPart - the new PackagePart within the OPC package
* @return error code or 0 (success)
*/
PLib3MFModel_FindOrCreatePackagePartPtr :: #type (pModel: Lib3MF_Model, pAbsolutePath: *u8, pModelPart: *Lib3MF_PackagePart) -> Lib3MFResult #c_call;

/**
* sets the units of a model.
*
* @param[in] pModel - Model instance.
* @param[in] eUnit - Unit enum value for the model unit
* @return error code or 0 (success)
*/
PLib3MFModel_SetUnitPtr :: #type (pModel: Lib3MF_Model, eUnit: Lib3MF.eModelUnit) -> Lib3MFResult #c_call;

/**
* returns the units of a model.
*
* @param[in] pModel - Model instance.
* @param[out] pUnit - Unit enum value for the model unit
* @return error code or 0 (success)
*/
PLib3MFModel_GetUnitPtr :: #type (pModel: Lib3MF_Model, pUnit: *Lib3MF.eModelUnit) -> Lib3MFResult #c_call;

/**
* retrieves the language of a model
*
* @param[in] pModel - Model instance.
* @param[in] nLanguageBufferSize - size of the buffer (including trailing 0)
* @param[out] pLanguageNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pLanguageBuffer -  buffer of language identifier, may be NULL
* @return error code or 0 (success)
*/
PLib3MFModel_GetLanguagePtr :: #type (pModel: Lib3MF_Model, nLanguageBufferSize: Lib3MF_uint32, pLanguageNeededChars: *Lib3MF_uint32, pLanguageBuffer: *u8) -> Lib3MFResult #c_call;

/**
* sets the language of a model
*
* @param[in] pModel - Model instance.
* @param[in] pLanguage - language identifier
* @return error code or 0 (success)
*/
PLib3MFModel_SetLanguagePtr :: #type (pModel: Lib3MF_Model, pLanguage: *u8) -> Lib3MFResult #c_call;

/**
* creates a model writer instance for a specific file type
*
* @param[in] pModel - Model instance.
* @param[in] pWriterClass -  string identifier for the file type
* @param[out] pWriterInstance -  string identifier for the file type
* @return error code or 0 (success)
*/
PLib3MFModel_QueryWriterPtr :: #type (pModel: Lib3MF_Model, pWriterClass: *u8, pWriterInstance: *Lib3MF_Writer) -> Lib3MFResult #c_call;

/**
* creates a model reader instance for a specific file type
*
* @param[in] pModel - Model instance.
* @param[in] pReaderClass -  string identifier for the file type
* @param[out] pReaderInstance -  string identifier for the file type
* @return error code or 0 (success)
*/
PLib3MFModel_QueryReaderPtr :: #type (pModel: Lib3MF_Model, pReaderClass: *u8, pReaderInstance: *Lib3MF_Reader) -> Lib3MFResult #c_call;

/**
* finds a model texture by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pTextureInstance - returns the texture2d instance
* @return error code or 0 (success)
*/
PLib3MFModel_GetTexture2DByIDPtr :: #type (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pTextureInstance: *Lib3MF_Texture2D) -> Lib3MFResult #c_call;

/**
* returns a Property's type
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - Resource ID of the Property to Query
* @param[out] pThePropertyType - returns a Property's type
* @return error code or 0 (success)
*/
PLib3MFModel_GetPropertyTypeByIDPtr :: #type (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pThePropertyType: *Lib3MF.ePropertyType) -> Lib3MFResult #c_call;

/**
* finds a model base material group by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pBaseMaterialGroupInstance - returns the BaseMaterialGroup instance
* @return error code or 0 (success)
*/
PLib3MFModel_GetBaseMaterialGroupByIDPtr :: #type (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pBaseMaterialGroupInstance: *Lib3MF_BaseMaterialGroup) -> Lib3MFResult #c_call;

/**
* finds a model texture2d group by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pTexture2DGroupInstance - returns the Texture2DGroup instance
* @return error code or 0 (success)
*/
PLib3MFModel_GetTexture2DGroupByIDPtr :: #type (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pTexture2DGroupInstance: *Lib3MF_Texture2DGroup) -> Lib3MFResult #c_call;

/**
* finds a model CompositeMaterials by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pCompositeMaterialsInstance - returns the CompositeMaterials instance
* @return error code or 0 (success)
*/
PLib3MFModel_GetCompositeMaterialsByIDPtr :: #type (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pCompositeMaterialsInstance: *Lib3MF_CompositeMaterials) -> Lib3MFResult #c_call;

/**
* finds a model MultiPropertyGroup by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pMultiPropertyGroupInstance - returns the MultiPropertyGroup instance
* @return error code or 0 (success)
*/
PLib3MFModel_GetMultiPropertyGroupByIDPtr :: #type (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pMultiPropertyGroupInstance: *Lib3MF_MultiPropertyGroup) -> Lib3MFResult #c_call;

/**
* finds a mesh object by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pMeshObjectInstance - returns the mesh object instance
* @return error code or 0 (success)
*/
PLib3MFModel_GetMeshObjectByIDPtr :: #type (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pMeshObjectInstance: *Lib3MF_MeshObject) -> Lib3MFResult #c_call;

/**
* finds a components object by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pComponentsObjectInstance - returns the components object instance
* @return error code or 0 (success)
*/
PLib3MFModel_GetComponentsObjectByIDPtr :: #type (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pComponentsObjectInstance: *Lib3MF_ComponentsObject) -> Lib3MFResult #c_call;

/**
* finds a model color group by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pColorGroupInstance - returns the ColorGroup instance
* @return error code or 0 (success)
*/
PLib3MFModel_GetColorGroupByIDPtr :: #type (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pColorGroupInstance: *Lib3MF_ColorGroup) -> Lib3MFResult #c_call;

/**
* finds a model slicestack by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pSliceStacInstance - returns the slicestack instance
* @return error code or 0 (success)
*/
PLib3MFModel_GetSliceStackByIDPtr :: #type (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pSliceStacInstance: *Lib3MF_SliceStack) -> Lib3MFResult #c_call;

/**
* returns, whether a build has a UUID and, if true, the build's UUID
*
* @param[in] pModel - Model instance.
* @param[out] pHasUUID - flag whether the build has a UUID
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of the UUID as string of the form 'xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx', may be NULL
* @return error code or 0 (success)
*/
PLib3MFModel_GetBuildUUIDPtr :: #type (pModel: Lib3MF_Model, pHasUUID: *bool, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #c_call;

/**
* sets the build's UUID
*
* @param[in] pModel - Model instance.
* @param[in] pUUID - the UUID as string of the form 'xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx'
* @return error code or 0 (success)
*/
PLib3MFModel_SetBuildUUIDPtr :: #type (pModel: Lib3MF_Model, pUUID: *u8) -> Lib3MFResult #c_call;

/**
* creates a build item iterator instance with all build items.
*
* @param[in] pModel - Model instance.
* @param[out] pBuildItemIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
PLib3MFModel_GetBuildItemsPtr :: #type (pModel: Lib3MF_Model, pBuildItemIterator: *Lib3MF_BuildItemIterator) -> Lib3MFResult #c_call;

/**
* Returns the outbox of a Model
*
* @param[in] pModel - Model instance.
* @param[out] pOutbox - Outbox of this Model
* @return error code or 0 (success)
*/
PLib3MFModel_GetOutboxPtr :: #type (pModel: Lib3MF_Model, pOutbox: *Lib3MF.sBox) -> Lib3MFResult #c_call;

/**
* creates a resource iterator instance with all resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
PLib3MFModel_GetResourcesPtr :: #type (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_ResourceIterator) -> Lib3MFResult #c_call;

/**
* creates a resource iterator instance with all object resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
PLib3MFModel_GetObjectsPtr :: #type (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_ObjectIterator) -> Lib3MFResult #c_call;

/**
* creates a resource iterator instance with all mesh object resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
PLib3MFModel_GetMeshObjectsPtr :: #type (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_MeshObjectIterator) -> Lib3MFResult #c_call;

/**
* creates a resource iterator instance with all components object resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
PLib3MFModel_GetComponentsObjectsPtr :: #type (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_ComponentsObjectIterator) -> Lib3MFResult #c_call;

/**
* creates a Texture2DIterator instance with all texture2d resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
PLib3MFModel_GetTexture2DsPtr :: #type (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_Texture2DIterator) -> Lib3MFResult #c_call;

/**
* creates a BaseMaterialGroupIterator instance with all base material resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
PLib3MFModel_GetBaseMaterialGroupsPtr :: #type (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_BaseMaterialGroupIterator) -> Lib3MFResult #c_call;

/**
* creates a ColorGroupIterator instance with all ColorGroup resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
PLib3MFModel_GetColorGroupsPtr :: #type (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_ColorGroupIterator) -> Lib3MFResult #c_call;

/**
* creates a Texture2DGroupIterator instance with all base material resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
PLib3MFModel_GetTexture2DGroupsPtr :: #type (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_Texture2DGroupIterator) -> Lib3MFResult #c_call;

/**
* creates a CompositeMaterialsIterator instance with all CompositeMaterials resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
PLib3MFModel_GetCompositeMaterialsPtr :: #type (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_CompositeMaterialsIterator) -> Lib3MFResult #c_call;

/**
* creates a MultiPropertyGroupsIterator instance with all MultiPropertyGroup resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
PLib3MFModel_GetMultiPropertyGroupsPtr :: #type (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_MultiPropertyGroupIterator) -> Lib3MFResult #c_call;

/**
* creates a resource iterator instance with all slice stack resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
PLib3MFModel_GetSliceStacksPtr :: #type (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_SliceStackIterator) -> Lib3MFResult #c_call;

/**
* Merges all components and objects which are referenced by a build item into a mesh. The memory is duplicated and a new model is created.
*
* @param[in] pModel - Model instance.
* @param[out] pMergedModelInstance - returns the merged model instance
* @return error code or 0 (success)
*/
PLib3MFModel_MergeToModelPtr :: #type (pModel: Lib3MF_Model, pMergedModelInstance: *Lib3MF_Model) -> Lib3MFResult #c_call;

/**
* adds an empty mesh object to the model.
*
* @param[in] pModel - Model instance.
* @param[out] pMeshObjectInstance -  returns the mesh object instance
* @return error code or 0 (success)
*/
PLib3MFModel_AddMeshObjectPtr :: #type (pModel: Lib3MF_Model, pMeshObjectInstance: *Lib3MF_MeshObject) -> Lib3MFResult #c_call;

/**
* adds an empty component object to the model.
*
* @param[in] pModel - Model instance.
* @param[out] pComponentsObjectInstance -  returns the components object instance
* @return error code or 0 (success)
*/
PLib3MFModel_AddComponentsObjectPtr :: #type (pModel: Lib3MF_Model, pComponentsObjectInstance: *Lib3MF_ComponentsObject) -> Lib3MFResult #c_call;

/**
* creates a new model slicestack by its id
*
* @param[in] pModel - Model instance.
* @param[in] dZBottom - Bottom Z value of the slicestack
* @param[out] pSliceStackInstance - returns the new slicestack instance
* @return error code or 0 (success)
*/
PLib3MFModel_AddSliceStackPtr :: #type (pModel: Lib3MF_Model, dZBottom: Lib3MF_double, pSliceStackInstance: *Lib3MF_SliceStack) -> Lib3MFResult #c_call;

/**
* adds a texture2d resource to the model. Its path is given by that of an existing attachment.
*
* @param[in] pModel - Model instance.
* @param[in] pTextureAttachment - attachment containing the image data.
* @param[out] pTexture2DInstance - returns the new texture instance.
* @return error code or 0 (success)
*/
PLib3MFModel_AddTexture2DFromAttachmentPtr :: #type (pModel: Lib3MF_Model, pTextureAttachment: Lib3MF_Attachment, pTexture2DInstance: *Lib3MF_Texture2D) -> Lib3MFResult #c_call;

/**
* adds an empty BaseMaterialGroup resource to the model.
*
* @param[in] pModel - Model instance.
* @param[out] pBaseMaterialGroupInstance - returns the new base material instance.
* @return error code or 0 (success)
*/
PLib3MFModel_AddBaseMaterialGroupPtr :: #type (pModel: Lib3MF_Model, pBaseMaterialGroupInstance: *Lib3MF_BaseMaterialGroup) -> Lib3MFResult #c_call;

/**
* adds an empty ColorGroup resource to the model.
*
* @param[in] pModel - Model instance.
* @param[out] pColorGroupInstance - returns the new ColorGroup instance.
* @return error code or 0 (success)
*/
PLib3MFModel_AddColorGroupPtr :: #type (pModel: Lib3MF_Model, pColorGroupInstance: *Lib3MF_ColorGroup) -> Lib3MFResult #c_call;

/**
* adds an empty Texture2DGroup resource to the model.
*
* @param[in] pModel - Model instance.
* @param[in] pTexture2DInstance - The texture2D instance of the created Texture2DGroup.
* @param[out] pTexture2DGroupInstance - returns the new Texture2DGroup instance.
* @return error code or 0 (success)
*/
PLib3MFModel_AddTexture2DGroupPtr :: #type (pModel: Lib3MF_Model, pTexture2DInstance: Lib3MF_Texture2D, pTexture2DGroupInstance: *Lib3MF_Texture2DGroup) -> Lib3MFResult #c_call;

/**
* adds an empty CompositeMaterials resource to the model.
*
* @param[in] pModel - Model instance.
* @param[in] pBaseMaterialGroupInstance - The BaseMaterialGroup instance of the created CompositeMaterials.
* @param[out] pCompositeMaterialsInstance - returns the new CompositeMaterials instance.
* @return error code or 0 (success)
*/
PLib3MFModel_AddCompositeMaterialsPtr :: #type (pModel: Lib3MF_Model, pBaseMaterialGroupInstance: Lib3MF_BaseMaterialGroup, pCompositeMaterialsInstance: *Lib3MF_CompositeMaterials) -> Lib3MFResult #c_call;

/**
* adds an empty MultiPropertyGroup resource to the model.
*
* @param[in] pModel - Model instance.
* @param[out] pMultiPropertyGroupInstance - returns the new MultiPropertyGroup instance.
* @return error code or 0 (success)
*/
PLib3MFModel_AddMultiPropertyGroupPtr :: #type (pModel: Lib3MF_Model, pMultiPropertyGroupInstance: *Lib3MF_MultiPropertyGroup) -> Lib3MFResult #c_call;

/**
* adds a build item to the model.
*
* @param[in] pModel - Model instance.
* @param[in] pObject - Object instance.
* @param[in] pTransform - Transformation matrix.
* @param[out] pBuildItemInstance - returns the build item instance.
* @return error code or 0 (success)
*/
PLib3MFModel_AddBuildItemPtr :: #type (pModel: Lib3MF_Model, pObject: Lib3MF_Object, pTransform: *Lib3MF.sTransform, pBuildItemInstance: *Lib3MF_BuildItem) -> Lib3MFResult #c_call;

/**
* removes a build item from the model
*
* @param[in] pModel - Model instance.
* @param[in] pBuildItemInstance - Build item to remove.
* @return error code or 0 (success)
*/
PLib3MFModel_RemoveBuildItemPtr :: #type (pModel: Lib3MF_Model, pBuildItemInstance: Lib3MF_BuildItem) -> Lib3MFResult #c_call;

/**
* Returns the metadata of the model as MetaDataGroup
*
* @param[in] pModel - Model instance.
* @param[out] pTheMetaDataGroup - returns an Instance of the metadatagroup of the model
* @return error code or 0 (success)
*/
PLib3MFModel_GetMetaDataGroupPtr :: #type (pModel: Lib3MF_Model, pTheMetaDataGroup: *Lib3MF_MetaDataGroup) -> Lib3MFResult #c_call;

/**
* adds an attachment stream to the model. The OPC part will be related to the model stream with a certain relationship type.
*
* @param[in] pModel - Model instance.
* @param[in] pURI - Path of the attachment
* @param[in] pRelationShipType - Relationship type of the attachment
* @param[out] pAttachmentInstance - Instance of the attachment object
* @return error code or 0 (success)
*/
PLib3MFModel_AddAttachmentPtr :: #type (pModel: Lib3MF_Model, pURI: *u8, pRelationShipType: *u8, pAttachmentInstance: *Lib3MF_Attachment) -> Lib3MFResult #c_call;

/**
* Removes attachment from the model.
*
* @param[in] pModel - Model instance.
* @param[in] pAttachmentInstance - Attachment instance to remove
* @return error code or 0 (success)
*/
PLib3MFModel_RemoveAttachmentPtr :: #type (pModel: Lib3MF_Model, pAttachmentInstance: Lib3MF_Attachment) -> Lib3MFResult #c_call;

/**
* retrieves an attachment stream object from the model..
*
* @param[in] pModel - Model instance.
* @param[in] nIndex - Index of the attachment stream
* @param[out] pAttachmentInstance - Instance of the attachment object
* @return error code or 0 (success)
*/
PLib3MFModel_GetAttachmentPtr :: #type (pModel: Lib3MF_Model, nIndex: Lib3MF_uint32, pAttachmentInstance: *Lib3MF_Attachment) -> Lib3MFResult #c_call;

/**
* retrieves an attachment stream object from the model.
*
* @param[in] pModel - Model instance.
* @param[in] pURI - Path URI in the package
* @param[out] pAttachmentInstance - Instance of the attachment object
* @return error code or 0 (success)
*/
PLib3MFModel_FindAttachmentPtr :: #type (pModel: Lib3MF_Model, pURI: *u8, pAttachmentInstance: *Lib3MF_Attachment) -> Lib3MFResult #c_call;

/**
* retrieves the number of attachments of the model.
*
* @param[in] pModel - Model instance.
* @param[out] pAttachmentCount - Returns the number of attachments.
* @return error code or 0 (success)
*/
PLib3MFModel_GetAttachmentCountPtr :: #type (pModel: Lib3MF_Model, pAttachmentCount: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* Retrieve whether the OPC package contains a package thumbnail.
*
* @param[in] pModel - Model instance.
* @param[out] pHasThumbnail - returns whether the OPC package contains a package thumbnail
* @return error code or 0 (success)
*/
PLib3MFModel_HasPackageThumbnailAttachmentPtr :: #type (pModel: Lib3MF_Model, pHasThumbnail: *bool) -> Lib3MFResult #c_call;

/**
* Create a new or the existing package thumbnail for the OPC package.
*
* @param[in] pModel - Model instance.
* @param[out] pAttachment - Instance of a new or the existing thumbnailattachment object.
* @return error code or 0 (success)
*/
PLib3MFModel_CreatePackageThumbnailAttachmentPtr :: #type (pModel: Lib3MF_Model, pAttachment: *Lib3MF_Attachment) -> Lib3MFResult #c_call;

/**
* Get the attachment to the OPC package containing the package thumbnail.
*
* @param[in] pModel - Model instance.
* @param[out] pAttachment - Instance of the thumbnailattachment object or NULL.
* @return error code or 0 (success)
*/
PLib3MFModel_GetPackageThumbnailAttachmentPtr :: #type (pModel: Lib3MF_Model, pAttachment: *Lib3MF_Attachment) -> Lib3MFResult #c_call;

/**
* Remove the attachment to the OPC package containing the package thumbnail.
*
* @param[in] pModel - Model instance.
* @return error code or 0 (success)
*/
PLib3MFModel_RemovePackageThumbnailAttachmentPtr :: #type (pModel: Lib3MF_Model) -> Lib3MFResult #c_call;

/**
* Adds a new Content Type to the model.
*
* @param[in] pModel - Model instance.
* @param[in] pExtension - File Extension
* @param[in] pContentType - Content Type Identifier
* @return error code or 0 (success)
*/
PLib3MFModel_AddCustomContentTypePtr :: #type (pModel: Lib3MF_Model, pExtension: *u8, pContentType: *u8) -> Lib3MFResult #c_call;

/**
* Removes a custom Content Type from the model (UTF8 version).
*
* @param[in] pModel - Model instance.
* @param[in] pExtension - File Extension
* @return error code or 0 (success)
*/
PLib3MFModel_RemoveCustomContentTypePtr :: #type (pModel: Lib3MF_Model, pExtension: *u8) -> Lib3MFResult #c_call;

/**
* Sets the random number generator callback for use in the library
*
* @param[in] pModel - Model instance.
* @param[in] pTheCallback - The callback used to generate random numbers
* @param[in] pUserData - Userdata to be passed to the callback function
* @return error code or 0 (success)
*/
PLib3MFModel_SetRandomNumberCallbackPtr :: #type (pModel: Lib3MF_Model, pTheCallback: Lib3MF.RandomNumberCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #c_call;

/**
* Gets the keystore associated with this model
*
* @param[in] pModel - Model instance.
* @param[out] pKeyStore - The package keystore
* @return error code or 0 (success)
*/
PLib3MFModel_GetKeyStorePtr :: #type (pModel: Lib3MF_Model, pKeyStore: *Lib3MF_KeyStore) -> Lib3MFResult #c_call;

/**
* retrieves the binary version of this library.
*
* @param[out] pMajor - returns the major version of this library
* @param[out] pMinor - returns the minor version of this library
* @param[out] pMicro - returns the micro version of this library
* @return error code or 0 (success)
*/
PLib3MFGetLibraryVersionPtr :: #type (pMajor: *Lib3MF_uint32, pMinor: *Lib3MF_uint32, pMicro: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* retrieves prerelease information of this library.
*
* @param[out] pHasPrereleaseInfo - Does the library provide prerelease version?
* @param[in] nPrereleaseInfoBufferSize - size of the buffer (including trailing 0)
* @param[out] pPrereleaseInfoNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPrereleaseInfoBuffer -  buffer of retrieves prerelease information of this library., may be NULL
* @return error code or 0 (success)
*/
PLib3MFGetPrereleaseInformationPtr :: #type (pHasPrereleaseInfo: *bool, nPrereleaseInfoBufferSize: Lib3MF_uint32, pPrereleaseInfoNeededChars: *Lib3MF_uint32, pPrereleaseInfoBuffer: *u8) -> Lib3MFResult #c_call;

/**
* retrieves build information of this library.
*
* @param[out] pHasBuildInfo - Does the library provide build version?
* @param[in] nBuildInformationBufferSize - size of the buffer (including trailing 0)
* @param[out] pBuildInformationNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pBuildInformationBuffer -  buffer of retrieves build information of this library., may be NULL
* @return error code or 0 (success)
*/
PLib3MFGetBuildInformationPtr :: #type (pHasBuildInfo: *bool, nBuildInformationBufferSize: Lib3MF_uint32, pBuildInformationNeededChars: *Lib3MF_uint32, pBuildInformationBuffer: *u8) -> Lib3MFResult #c_call;

/**
* retrieves whether a specification is supported, and if so, which version.
*
* @param[in] pSpecificationURL - URL of extension to check
* @param[out] pIsSupported - returns whether this specification is supported
* @param[out] pMajor - returns the major version of the extension (if IsSupported)
* @param[out] pMinor - returns the minor version of the extension (if IsSupported)
* @param[out] pMicro - returns the micro version of the extension (if IsSupported)
* @return error code or 0 (success)
*/
PLib3MFGetSpecificationVersionPtr :: #type (pSpecificationURL: *u8, pIsSupported: *bool, pMajor: *Lib3MF_uint32, pMinor: *Lib3MF_uint32, pMicro: *Lib3MF_uint32) -> Lib3MFResult #c_call;

/**
* creates an empty model instance.
*
* @param[out] pModel - returns an empty model instance
* @return error code or 0 (success)
*/
PLib3MFCreateModelPtr :: #type (pModel: *Lib3MF_Model) -> Lib3MFResult #c_call;

/**
* releases shared ownership of an object instance
*
* @param[in] pInstance - the object instance to release
* @return error code or 0 (success)
*/
PLib3MFReleasePtr :: #type (pInstance: Lib3MF_Base) -> Lib3MFResult #c_call;

/**
* acquires shared ownership of an object instance
*
* @param[in] pInstance - the object instance to acquire
* @return error code or 0 (success)
*/
PLib3MFAcquirePtr :: #type (pInstance: Lib3MF_Base) -> Lib3MFResult #c_call;

/**
* Sets the journal file path
*
* @param[in] pJournalPath - File name of the journal file
* @return error code or 0 (success)
*/
PLib3MFSetJournalPtr :: #type (pJournalPath: *u8) -> Lib3MFResult #c_call;

/**
* Retrieves the last error string of an instance
*
* @param[in] pInstance - Object where the error occured.
* @param[in] nLastErrorStringBufferSize - size of the buffer (including trailing 0)
* @param[out] pLastErrorStringNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pLastErrorStringBuffer -  buffer of Last Error String, may be NULL
* @param[out] pHasLastError - Returns if the instance has a last error.
* @return error code or 0 (success)
*/
PLib3MFGetLastErrorPtr :: #type (pInstance: Lib3MF_Base, nLastErrorStringBufferSize: Lib3MF_uint32, pLastErrorStringNeededChars: *Lib3MF_uint32, pLastErrorStringBuffer: *u8, pHasLastError: *bool) -> Lib3MFResult #c_call;

/**
* Returns the address of the SymbolLookupMethod
*
* @param[out] pSymbolLookupMethod - Address of the SymbolAddressMethod
* @return error code or 0 (success)
*/
PLib3MFGetSymbolLookupMethodPtr :: #type (pSymbolLookupMethod: *Lib3MF_pvoid) -> Lib3MFResult #c_call;

/**
* Return an English text for a progress identifier.|Note: this is the only function you can call from your callback function.
*
* @param[in] eTheProgressIdentifier - the progress identifier that is passed to the callback function
* @param[in] nProgressMessageBufferSize - size of the buffer (including trailing 0)
* @param[out] pProgressMessageNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pProgressMessageBuffer -  buffer of English text for the progress identifier, may be NULL
* @return error code or 0 (success)
*/
PLib3MFRetrieveProgressMessagePtr :: #type (eTheProgressIdentifier: Lib3MF.eProgressIdentifier, nProgressMessageBufferSize: Lib3MF_uint32, pProgressMessageNeededChars: *Lib3MF_uint32, pProgressMessageBuffer: *u8) -> Lib3MFResult #c_call;

/**
* Creates a Color from uint8 RGBA values
*
* @param[in] nRed - Red value of color (0-255)
* @param[in] nGreen - Green value of color (0-255)
* @param[in] nBlue - Blue value of color (0-255)
* @param[in] nAlpha - Alpha value of color (0-255)
* @param[out] pTheColor - Assembled color
* @return error code or 0 (success)
*/
PLib3MFRGBAToColorPtr :: #type (nRed: Lib3MF_uint8, nGreen: Lib3MF_uint8, nBlue: Lib3MF_uint8, nAlpha: Lib3MF_uint8, pTheColor: *Lib3MF.sColor) -> Lib3MFResult #c_call;

/**
* Creates a Color from uint8 RGBA values
*
* @param[in] fRed - Red value of color (0-1)
* @param[in] fGreen - Green value of color (0-1)
* @param[in] fBlue - Blue value of color (0-1)
* @param[in] fAlpha - Alpha value of color (0-1)
* @param[out] pTheColor - Assembled color
* @return error code or 0 (success)
*/
PLib3MFFloatRGBAToColorPtr :: #type (fRed: Lib3MF_single, fGreen: Lib3MF_single, fBlue: Lib3MF_single, fAlpha: Lib3MF_single, pTheColor: *Lib3MF.sColor) -> Lib3MFResult #c_call;

/**
* Calculates uint8-RGBA-values from a Color
*
* @param[in] pTheColor - Color to handle
* @param[out] pRed - Red value of color (0-255)
* @param[out] pGreen - Green value of color (0-255)
* @param[out] pBlue - Blue value of color (0-255)
* @param[out] pAlpha - Alpha value of color (0-255)
* @return error code or 0 (success)
*/
PLib3MFColorToRGBAPtr :: #type (pTheColor: *Lib3MF.sColor, pRed: *Lib3MF_uint8, pGreen: *Lib3MF_uint8, pBlue: *Lib3MF_uint8, pAlpha: *Lib3MF_uint8) -> Lib3MFResult #c_call;

/**
* Calculates float-RGBA-values from a Color
*
* @param[in] pTheColor - Color to handle
* @param[out] pRed - Red value of color (0-1)
* @param[out] pGreen - Green value of color (0-1)
* @param[out] pBlue - Blue value of color (0-1)
* @param[out] pAlpha - Alpha value of color (0-1)
* @return error code or 0 (success)
*/
PLib3MFColorToFloatRGBAPtr :: #type (pTheColor: *Lib3MF.sColor, pRed: *Lib3MF_single, pGreen: *Lib3MF_single, pBlue: *Lib3MF_single, pAlpha: *Lib3MF_single) -> Lib3MFResult #c_call;

/**
* Creates an identity transform
*
* @param[out] pTransform - Transformation matrix.
* @return error code or 0 (success)
*/
PLib3MFGetIdentityTransformPtr :: #type (pTransform: *Lib3MF.sTransform) -> Lib3MFResult #c_call;

/**
* Creates a uniform scale transform
*
* @param[in] fFactor - Factor in X, Y and Z
* @param[out] pTransform - Transformation matrix.
* @return error code or 0 (success)
*/
PLib3MFGetUniformScaleTransformPtr :: #type (fFactor: Lib3MF_single, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #c_call;

/**
* Creates a scale transform
*
* @param[in] fFactorX - Factor in X
* @param[in] fFactorY - Factor in Y
* @param[in] fFactorZ - Factor in Z
* @param[out] pTransform - Transformation matrix.
* @return error code or 0 (success)
*/
PLib3MFGetScaleTransformPtr :: #type (fFactorX: Lib3MF_single, fFactorY: Lib3MF_single, fFactorZ: Lib3MF_single, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #c_call;

/**
* Creates an translation transform
*
* @param[in] fVectorX - Translation in X
* @param[in] fVectorY - Translation in Y
* @param[in] fVectorZ - Translation in Z
* @param[out] pTransform - Transformation matrix.
* @return error code or 0 (success)
*/
PLib3MFGetTranslationTransformPtr :: #type (fVectorX: Lib3MF_single, fVectorY: Lib3MF_single, fVectorZ: Lib3MF_single, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #c_call;

/*************************************************************************************************************************
Function Table Structure
**************************************************************************************************************************/
sLib3MFDynamicWrapperTable :: struct {
    m_LibraryHandle:                                           *void;
    m_Writer_WriteToFile:                                      PLib3MFWriter_WriteToFilePtr;
    m_Writer_GetStreamSize:                                    PLib3MFWriter_GetStreamSizePtr;
    m_Writer_WriteToBuffer:                                    PLib3MFWriter_WriteToBufferPtr;
    m_Writer_WriteToCallback:                                  PLib3MFWriter_WriteToCallbackPtr;
    m_Writer_SetProgressCallback:                              PLib3MFWriter_SetProgressCallbackPtr;
    m_Writer_GetDecimalPrecision:                              PLib3MFWriter_GetDecimalPrecisionPtr;
    m_Writer_SetDecimalPrecision:                              PLib3MFWriter_SetDecimalPrecisionPtr;
    m_Writer_SetStrictModeActive:                              PLib3MFWriter_SetStrictModeActivePtr;
    m_Writer_GetStrictModeActive:                              PLib3MFWriter_GetStrictModeActivePtr;
    m_Writer_GetWarning:                                       PLib3MFWriter_GetWarningPtr;
    m_Writer_GetWarningCount:                                  PLib3MFWriter_GetWarningCountPtr;
    m_Writer_AddKeyWrappingCallback:                           PLib3MFWriter_AddKeyWrappingCallbackPtr;
    m_Writer_SetContentEncryptionCallback:                     PLib3MFWriter_SetContentEncryptionCallbackPtr;
    m_Reader_ReadFromFile:                                     PLib3MFReader_ReadFromFilePtr;
    m_Reader_ReadFromBuffer:                                   PLib3MFReader_ReadFromBufferPtr;
    m_Reader_ReadFromCallback:                                 PLib3MFReader_ReadFromCallbackPtr;
    m_Reader_SetProgressCallback:                              PLib3MFReader_SetProgressCallbackPtr;
    m_Reader_AddRelationToRead:                                PLib3MFReader_AddRelationToReadPtr;
    m_Reader_RemoveRelationToRead:                             PLib3MFReader_RemoveRelationToReadPtr;
    m_Reader_SetStrictModeActive:                              PLib3MFReader_SetStrictModeActivePtr;
    m_Reader_GetStrictModeActive:                              PLib3MFReader_GetStrictModeActivePtr;
    m_Reader_GetWarning:                                       PLib3MFReader_GetWarningPtr;
    m_Reader_GetWarningCount:                                  PLib3MFReader_GetWarningCountPtr;
    m_Reader_AddKeyWrappingCallback:                           PLib3MFReader_AddKeyWrappingCallbackPtr;
    m_Reader_SetContentEncryptionCallback:                     PLib3MFReader_SetContentEncryptionCallbackPtr;
    m_PackagePart_GetPath:                                     PLib3MFPackagePart_GetPathPtr;
    m_PackagePart_SetPath:                                     PLib3MFPackagePart_SetPathPtr;
    m_Resource_GetResourceID:                                  PLib3MFResource_GetResourceIDPtr;
    m_Resource_GetUniqueResourceID:                            PLib3MFResource_GetUniqueResourceIDPtr;
    m_Resource_PackagePart:                                    PLib3MFResource_PackagePartPtr;
    m_Resource_SetPackagePart:                                 PLib3MFResource_SetPackagePartPtr;
    m_Resource_GetModelResourceID:                             PLib3MFResource_GetModelResourceIDPtr;
    m_ResourceIterator_MoveNext:                               PLib3MFResourceIterator_MoveNextPtr;
    m_ResourceIterator_MovePrevious:                           PLib3MFResourceIterator_MovePreviousPtr;
    m_ResourceIterator_GetCurrent:                             PLib3MFResourceIterator_GetCurrentPtr;
    m_ResourceIterator_Clone:                                  PLib3MFResourceIterator_ClonePtr;
    m_ResourceIterator_Count:                                  PLib3MFResourceIterator_CountPtr;
    m_SliceStackIterator_GetCurrentSliceStack:                 PLib3MFSliceStackIterator_GetCurrentSliceStackPtr;
    m_ObjectIterator_GetCurrentObject:                         PLib3MFObjectIterator_GetCurrentObjectPtr;
    m_MeshObjectIterator_GetCurrentMeshObject:                 PLib3MFMeshObjectIterator_GetCurrentMeshObjectPtr;
    m_ComponentsObjectIterator_GetCurrentComponentsObject:     PLib3MFComponentsObjectIterator_GetCurrentComponentsObjectPtr;
    m_Texture2DIterator_GetCurrentTexture2D:                   PLib3MFTexture2DIterator_GetCurrentTexture2DPtr;
    m_BaseMaterialGroupIterator_GetCurrentBaseMaterialGroup:   PLib3MFBaseMaterialGroupIterator_GetCurrentBaseMaterialGroupPtr;
    m_ColorGroupIterator_GetCurrentColorGroup:                 PLib3MFColorGroupIterator_GetCurrentColorGroupPtr;
    m_Texture2DGroupIterator_GetCurrentTexture2DGroup:         PLib3MFTexture2DGroupIterator_GetCurrentTexture2DGroupPtr;
    m_CompositeMaterialsIterator_GetCurrentCompositeMaterials: PLib3MFCompositeMaterialsIterator_GetCurrentCompositeMaterialsPtr;
    m_MultiPropertyGroupIterator_GetCurrentMultiPropertyGroup: PLib3MFMultiPropertyGroupIterator_GetCurrentMultiPropertyGroupPtr;
    m_MetaData_GetNameSpace:                                   PLib3MFMetaData_GetNameSpacePtr;
    m_MetaData_SetNameSpace:                                   PLib3MFMetaData_SetNameSpacePtr;
    m_MetaData_GetName:                                        PLib3MFMetaData_GetNamePtr;
    m_MetaData_SetName:                                        PLib3MFMetaData_SetNamePtr;
    m_MetaData_GetKey:                                         PLib3MFMetaData_GetKeyPtr;
    m_MetaData_GetMustPreserve:                                PLib3MFMetaData_GetMustPreservePtr;
    m_MetaData_SetMustPreserve:                                PLib3MFMetaData_SetMustPreservePtr;
    m_MetaData_GetType:                                        PLib3MFMetaData_GetTypePtr;
    m_MetaData_SetType:                                        PLib3MFMetaData_SetTypePtr;
    m_MetaData_GetValue:                                       PLib3MFMetaData_GetValuePtr;
    m_MetaData_SetValue:                                       PLib3MFMetaData_SetValuePtr;
    m_MetaDataGroup_GetMetaDataCount:                          PLib3MFMetaDataGroup_GetMetaDataCountPtr;
    m_MetaDataGroup_GetMetaData:                               PLib3MFMetaDataGroup_GetMetaDataPtr;
    m_MetaDataGroup_GetMetaDataByKey:                          PLib3MFMetaDataGroup_GetMetaDataByKeyPtr;
    m_MetaDataGroup_RemoveMetaDataByIndex:                     PLib3MFMetaDataGroup_RemoveMetaDataByIndexPtr;
    m_MetaDataGroup_RemoveMetaData:                            PLib3MFMetaDataGroup_RemoveMetaDataPtr;
    m_MetaDataGroup_AddMetaData:                               PLib3MFMetaDataGroup_AddMetaDataPtr;
    m_Object_GetType:                                          PLib3MFObject_GetTypePtr;
    m_Object_SetType:                                          PLib3MFObject_SetTypePtr;
    m_Object_GetName:                                          PLib3MFObject_GetNamePtr;
    m_Object_SetName:                                          PLib3MFObject_SetNamePtr;
    m_Object_GetPartNumber:                                    PLib3MFObject_GetPartNumberPtr;
    m_Object_SetPartNumber:                                    PLib3MFObject_SetPartNumberPtr;
    m_Object_IsMeshObject:                                     PLib3MFObject_IsMeshObjectPtr;
    m_Object_IsComponentsObject:                               PLib3MFObject_IsComponentsObjectPtr;
    m_Object_IsValid:                                          PLib3MFObject_IsValidPtr;
    m_Object_SetAttachmentAsThumbnail:                         PLib3MFObject_SetAttachmentAsThumbnailPtr;
    m_Object_GetThumbnailAttachment:                           PLib3MFObject_GetThumbnailAttachmentPtr;
    m_Object_ClearThumbnailAttachment:                         PLib3MFObject_ClearThumbnailAttachmentPtr;
    m_Object_GetOutbox:                                        PLib3MFObject_GetOutboxPtr;
    m_Object_GetUUID:                                          PLib3MFObject_GetUUIDPtr;
    m_Object_SetUUID:                                          PLib3MFObject_SetUUIDPtr;
    m_Object_GetMetaDataGroup:                                 PLib3MFObject_GetMetaDataGroupPtr;
    m_Object_SetSlicesMeshResolution:                          PLib3MFObject_SetSlicesMeshResolutionPtr;
    m_Object_GetSlicesMeshResolution:                          PLib3MFObject_GetSlicesMeshResolutionPtr;
    m_Object_HasSlices:                                        PLib3MFObject_HasSlicesPtr;
    m_Object_ClearSliceStack:                                  PLib3MFObject_ClearSliceStackPtr;
    m_Object_GetSliceStack:                                    PLib3MFObject_GetSliceStackPtr;
    m_Object_AssignSliceStack:                                 PLib3MFObject_AssignSliceStackPtr;
    m_MeshObject_GetVertexCount:                               PLib3MFMeshObject_GetVertexCountPtr;
    m_MeshObject_GetTriangleCount:                             PLib3MFMeshObject_GetTriangleCountPtr;
    m_MeshObject_GetVertex:                                    PLib3MFMeshObject_GetVertexPtr;
    m_MeshObject_SetVertex:                                    PLib3MFMeshObject_SetVertexPtr;
    m_MeshObject_AddVertex:                                    PLib3MFMeshObject_AddVertexPtr;
    m_MeshObject_GetVertices:                                  PLib3MFMeshObject_GetVerticesPtr;
    m_MeshObject_GetTriangle:                                  PLib3MFMeshObject_GetTrianglePtr;
    m_MeshObject_SetTriangle:                                  PLib3MFMeshObject_SetTrianglePtr;
    m_MeshObject_AddTriangle:                                  PLib3MFMeshObject_AddTrianglePtr;
    m_MeshObject_GetTriangleIndices:                           PLib3MFMeshObject_GetTriangleIndicesPtr;
    m_MeshObject_SetObjectLevelProperty:                       PLib3MFMeshObject_SetObjectLevelPropertyPtr;
    m_MeshObject_GetObjectLevelProperty:                       PLib3MFMeshObject_GetObjectLevelPropertyPtr;
    m_MeshObject_SetTriangleProperties:                        PLib3MFMeshObject_SetTrianglePropertiesPtr;
    m_MeshObject_GetTriangleProperties:                        PLib3MFMeshObject_GetTrianglePropertiesPtr;
    m_MeshObject_SetAllTriangleProperties:                     PLib3MFMeshObject_SetAllTrianglePropertiesPtr;
    m_MeshObject_GetAllTriangleProperties:                     PLib3MFMeshObject_GetAllTrianglePropertiesPtr;
    m_MeshObject_ClearAllProperties:                           PLib3MFMeshObject_ClearAllPropertiesPtr;
    m_MeshObject_SetGeometry:                                  PLib3MFMeshObject_SetGeometryPtr;
    m_MeshObject_IsManifoldAndOriented:                        PLib3MFMeshObject_IsManifoldAndOrientedPtr;
    m_MeshObject_BeamLattice:                                  PLib3MFMeshObject_BeamLatticePtr;
    m_BeamLattice_GetMinLength:                                PLib3MFBeamLattice_GetMinLengthPtr;
    m_BeamLattice_SetMinLength:                                PLib3MFBeamLattice_SetMinLengthPtr;
    m_BeamLattice_GetClipping:                                 PLib3MFBeamLattice_GetClippingPtr;
    m_BeamLattice_SetClipping:                                 PLib3MFBeamLattice_SetClippingPtr;
    m_BeamLattice_GetRepresentation:                           PLib3MFBeamLattice_GetRepresentationPtr;
    m_BeamLattice_SetRepresentation:                           PLib3MFBeamLattice_SetRepresentationPtr;
    m_BeamLattice_GetBallOptions:                              PLib3MFBeamLattice_GetBallOptionsPtr;
    m_BeamLattice_SetBallOptions:                              PLib3MFBeamLattice_SetBallOptionsPtr;
    m_BeamLattice_GetBeamCount:                                PLib3MFBeamLattice_GetBeamCountPtr;
    m_BeamLattice_GetBeam:                                     PLib3MFBeamLattice_GetBeamPtr;
    m_BeamLattice_AddBeam:                                     PLib3MFBeamLattice_AddBeamPtr;
    m_BeamLattice_SetBeam:                                     PLib3MFBeamLattice_SetBeamPtr;
    m_BeamLattice_SetBeams:                                    PLib3MFBeamLattice_SetBeamsPtr;
    m_BeamLattice_GetBeams:                                    PLib3MFBeamLattice_GetBeamsPtr;
    m_BeamLattice_GetBallCount:                                PLib3MFBeamLattice_GetBallCountPtr;
    m_BeamLattice_GetBall:                                     PLib3MFBeamLattice_GetBallPtr;
    m_BeamLattice_AddBall:                                     PLib3MFBeamLattice_AddBallPtr;
    m_BeamLattice_SetBall:                                     PLib3MFBeamLattice_SetBallPtr;
    m_BeamLattice_SetBalls:                                    PLib3MFBeamLattice_SetBallsPtr;
    m_BeamLattice_GetBalls:                                    PLib3MFBeamLattice_GetBallsPtr;
    m_BeamLattice_GetBeamSetCount:                             PLib3MFBeamLattice_GetBeamSetCountPtr;
    m_BeamLattice_AddBeamSet:                                  PLib3MFBeamLattice_AddBeamSetPtr;
    m_BeamLattice_GetBeamSet:                                  PLib3MFBeamLattice_GetBeamSetPtr;
    m_Component_GetObjectResource:                             PLib3MFComponent_GetObjectResourcePtr;
    m_Component_GetObjectResourceID:                           PLib3MFComponent_GetObjectResourceIDPtr;
    m_Component_GetUUID:                                       PLib3MFComponent_GetUUIDPtr;
    m_Component_SetUUID:                                       PLib3MFComponent_SetUUIDPtr;
    m_Component_HasTransform:                                  PLib3MFComponent_HasTransformPtr;
    m_Component_GetTransform:                                  PLib3MFComponent_GetTransformPtr;
    m_Component_SetTransform:                                  PLib3MFComponent_SetTransformPtr;
    m_ComponentsObject_AddComponent:                           PLib3MFComponentsObject_AddComponentPtr;
    m_ComponentsObject_GetComponent:                           PLib3MFComponentsObject_GetComponentPtr;
    m_ComponentsObject_GetComponentCount:                      PLib3MFComponentsObject_GetComponentCountPtr;
    m_BeamSet_SetName:                                         PLib3MFBeamSet_SetNamePtr;
    m_BeamSet_GetName:                                         PLib3MFBeamSet_GetNamePtr;
    m_BeamSet_SetIdentifier:                                   PLib3MFBeamSet_SetIdentifierPtr;
    m_BeamSet_GetIdentifier:                                   PLib3MFBeamSet_GetIdentifierPtr;
    m_BeamSet_GetReferenceCount:                               PLib3MFBeamSet_GetReferenceCountPtr;
    m_BeamSet_SetReferences:                                   PLib3MFBeamSet_SetReferencesPtr;
    m_BeamSet_GetReferences:                                   PLib3MFBeamSet_GetReferencesPtr;
    m_BeamSet_GetBallReferenceCount:                           PLib3MFBeamSet_GetBallReferenceCountPtr;
    m_BeamSet_SetBallReferences:                               PLib3MFBeamSet_SetBallReferencesPtr;
    m_BeamSet_GetBallReferences:                               PLib3MFBeamSet_GetBallReferencesPtr;
    m_BaseMaterialGroup_GetCount:                              PLib3MFBaseMaterialGroup_GetCountPtr;
    m_BaseMaterialGroup_GetAllPropertyIDs:                     PLib3MFBaseMaterialGroup_GetAllPropertyIDsPtr;
    m_BaseMaterialGroup_AddMaterial:                           PLib3MFBaseMaterialGroup_AddMaterialPtr;
    m_BaseMaterialGroup_RemoveMaterial:                        PLib3MFBaseMaterialGroup_RemoveMaterialPtr;
    m_BaseMaterialGroup_GetName:                               PLib3MFBaseMaterialGroup_GetNamePtr;
    m_BaseMaterialGroup_SetName:                               PLib3MFBaseMaterialGroup_SetNamePtr;
    m_BaseMaterialGroup_SetDisplayColor:                       PLib3MFBaseMaterialGroup_SetDisplayColorPtr;
    m_BaseMaterialGroup_GetDisplayColor:                       PLib3MFBaseMaterialGroup_GetDisplayColorPtr;
    m_ColorGroup_GetCount:                                     PLib3MFColorGroup_GetCountPtr;
    m_ColorGroup_GetAllPropertyIDs:                            PLib3MFColorGroup_GetAllPropertyIDsPtr;
    m_ColorGroup_AddColor:                                     PLib3MFColorGroup_AddColorPtr;
    m_ColorGroup_RemoveColor:                                  PLib3MFColorGroup_RemoveColorPtr;
    m_ColorGroup_SetColor:                                     PLib3MFColorGroup_SetColorPtr;
    m_ColorGroup_GetColor:                                     PLib3MFColorGroup_GetColorPtr;
    m_Texture2DGroup_GetCount:                                 PLib3MFTexture2DGroup_GetCountPtr;
    m_Texture2DGroup_GetAllPropertyIDs:                        PLib3MFTexture2DGroup_GetAllPropertyIDsPtr;
    m_Texture2DGroup_AddTex2Coord:                             PLib3MFTexture2DGroup_AddTex2CoordPtr;
    m_Texture2DGroup_GetTex2Coord:                             PLib3MFTexture2DGroup_GetTex2CoordPtr;
    m_Texture2DGroup_RemoveTex2Coord:                          PLib3MFTexture2DGroup_RemoveTex2CoordPtr;
    m_Texture2DGroup_GetTexture2D:                             PLib3MFTexture2DGroup_GetTexture2DPtr;
    m_CompositeMaterials_GetCount:                             PLib3MFCompositeMaterials_GetCountPtr;
    m_CompositeMaterials_GetAllPropertyIDs:                    PLib3MFCompositeMaterials_GetAllPropertyIDsPtr;
    m_CompositeMaterials_GetBaseMaterialGroup:                 PLib3MFCompositeMaterials_GetBaseMaterialGroupPtr;
    m_CompositeMaterials_AddComposite:                         PLib3MFCompositeMaterials_AddCompositePtr;
    m_CompositeMaterials_RemoveComposite:                      PLib3MFCompositeMaterials_RemoveCompositePtr;
    m_CompositeMaterials_GetComposite:                         PLib3MFCompositeMaterials_GetCompositePtr;
    m_MultiPropertyGroup_GetCount:                             PLib3MFMultiPropertyGroup_GetCountPtr;
    m_MultiPropertyGroup_GetAllPropertyIDs:                    PLib3MFMultiPropertyGroup_GetAllPropertyIDsPtr;
    m_MultiPropertyGroup_AddMultiProperty:                     PLib3MFMultiPropertyGroup_AddMultiPropertyPtr;
    m_MultiPropertyGroup_SetMultiProperty:                     PLib3MFMultiPropertyGroup_SetMultiPropertyPtr;
    m_MultiPropertyGroup_GetMultiProperty:                     PLib3MFMultiPropertyGroup_GetMultiPropertyPtr;
    m_MultiPropertyGroup_RemoveMultiProperty:                  PLib3MFMultiPropertyGroup_RemoveMultiPropertyPtr;
    m_MultiPropertyGroup_GetLayerCount:                        PLib3MFMultiPropertyGroup_GetLayerCountPtr;
    m_MultiPropertyGroup_AddLayer:                             PLib3MFMultiPropertyGroup_AddLayerPtr;
    m_MultiPropertyGroup_GetLayer:                             PLib3MFMultiPropertyGroup_GetLayerPtr;
    m_MultiPropertyGroup_RemoveLayer:                          PLib3MFMultiPropertyGroup_RemoveLayerPtr;
    m_Attachment_GetPath:                                      PLib3MFAttachment_GetPathPtr;
    m_Attachment_SetPath:                                      PLib3MFAttachment_SetPathPtr;
    m_Attachment_PackagePart:                                  PLib3MFAttachment_PackagePartPtr;
    m_Attachment_GetRelationShipType:                          PLib3MFAttachment_GetRelationShipTypePtr;
    m_Attachment_SetRelationShipType:                          PLib3MFAttachment_SetRelationShipTypePtr;
    m_Attachment_WriteToFile:                                  PLib3MFAttachment_WriteToFilePtr;
    m_Attachment_ReadFromFile:                                 PLib3MFAttachment_ReadFromFilePtr;
    m_Attachment_ReadFromCallback:                             PLib3MFAttachment_ReadFromCallbackPtr;
    m_Attachment_GetStreamSize:                                PLib3MFAttachment_GetStreamSizePtr;
    m_Attachment_WriteToBuffer:                                PLib3MFAttachment_WriteToBufferPtr;
    m_Attachment_ReadFromBuffer:                               PLib3MFAttachment_ReadFromBufferPtr;
    m_Texture2D_GetAttachment:                                 PLib3MFTexture2D_GetAttachmentPtr;
    m_Texture2D_SetAttachment:                                 PLib3MFTexture2D_SetAttachmentPtr;
    m_Texture2D_GetContentType:                                PLib3MFTexture2D_GetContentTypePtr;
    m_Texture2D_SetContentType:                                PLib3MFTexture2D_SetContentTypePtr;
    m_Texture2D_GetTileStyleUV:                                PLib3MFTexture2D_GetTileStyleUVPtr;
    m_Texture2D_SetTileStyleUV:                                PLib3MFTexture2D_SetTileStyleUVPtr;
    m_Texture2D_GetFilter:                                     PLib3MFTexture2D_GetFilterPtr;
    m_Texture2D_SetFilter:                                     PLib3MFTexture2D_SetFilterPtr;
    m_BuildItem_GetObjectResource:                             PLib3MFBuildItem_GetObjectResourcePtr;
    m_BuildItem_GetUUID:                                       PLib3MFBuildItem_GetUUIDPtr;
    m_BuildItem_SetUUID:                                       PLib3MFBuildItem_SetUUIDPtr;
    m_BuildItem_GetObjectResourceID:                           PLib3MFBuildItem_GetObjectResourceIDPtr;
    m_BuildItem_HasObjectTransform:                            PLib3MFBuildItem_HasObjectTransformPtr;
    m_BuildItem_GetObjectTransform:                            PLib3MFBuildItem_GetObjectTransformPtr;
    m_BuildItem_SetObjectTransform:                            PLib3MFBuildItem_SetObjectTransformPtr;
    m_BuildItem_GetPartNumber:                                 PLib3MFBuildItem_GetPartNumberPtr;
    m_BuildItem_SetPartNumber:                                 PLib3MFBuildItem_SetPartNumberPtr;
    m_BuildItem_GetMetaDataGroup:                              PLib3MFBuildItem_GetMetaDataGroupPtr;
    m_BuildItem_GetOutbox:                                     PLib3MFBuildItem_GetOutboxPtr;
    m_BuildItemIterator_MoveNext:                              PLib3MFBuildItemIterator_MoveNextPtr;
    m_BuildItemIterator_MovePrevious:                          PLib3MFBuildItemIterator_MovePreviousPtr;
    m_BuildItemIterator_GetCurrent:                            PLib3MFBuildItemIterator_GetCurrentPtr;
    m_BuildItemIterator_Clone:                                 PLib3MFBuildItemIterator_ClonePtr;
    m_BuildItemIterator_Count:                                 PLib3MFBuildItemIterator_CountPtr;
    m_Slice_SetVertices:                                       PLib3MFSlice_SetVerticesPtr;
    m_Slice_GetVertices:                                       PLib3MFSlice_GetVerticesPtr;
    m_Slice_GetVertexCount:                                    PLib3MFSlice_GetVertexCountPtr;
    m_Slice_AddPolygon:                                        PLib3MFSlice_AddPolygonPtr;
    m_Slice_GetPolygonCount:                                   PLib3MFSlice_GetPolygonCountPtr;
    m_Slice_SetPolygonIndices:                                 PLib3MFSlice_SetPolygonIndicesPtr;
    m_Slice_GetPolygonIndices:                                 PLib3MFSlice_GetPolygonIndicesPtr;
    m_Slice_GetPolygonIndexCount:                              PLib3MFSlice_GetPolygonIndexCountPtr;
    m_Slice_GetZTop:                                           PLib3MFSlice_GetZTopPtr;
    m_SliceStack_GetBottomZ:                                   PLib3MFSliceStack_GetBottomZPtr;
    m_SliceStack_GetSliceCount:                                PLib3MFSliceStack_GetSliceCountPtr;
    m_SliceStack_GetSlice:                                     PLib3MFSliceStack_GetSlicePtr;
    m_SliceStack_AddSlice:                                     PLib3MFSliceStack_AddSlicePtr;
    m_SliceStack_GetSliceRefCount:                             PLib3MFSliceStack_GetSliceRefCountPtr;
    m_SliceStack_AddSliceStackReference:                       PLib3MFSliceStack_AddSliceStackReferencePtr;
    m_SliceStack_GetSliceStackReference:                       PLib3MFSliceStack_GetSliceStackReferencePtr;
    m_SliceStack_CollapseSliceReferences:                      PLib3MFSliceStack_CollapseSliceReferencesPtr;
    m_SliceStack_SetOwnPath:                                   PLib3MFSliceStack_SetOwnPathPtr;
    m_SliceStack_GetOwnPath:                                   PLib3MFSliceStack_GetOwnPathPtr;
    m_Consumer_GetConsumerID:                                  PLib3MFConsumer_GetConsumerIDPtr;
    m_Consumer_GetKeyID:                                       PLib3MFConsumer_GetKeyIDPtr;
    m_Consumer_GetKeyValue:                                    PLib3MFConsumer_GetKeyValuePtr;
    m_AccessRight_GetConsumer:                                 PLib3MFAccessRight_GetConsumerPtr;
    m_AccessRight_GetWrappingAlgorithm:                        PLib3MFAccessRight_GetWrappingAlgorithmPtr;
    m_AccessRight_GetMgfAlgorithm:                             PLib3MFAccessRight_GetMgfAlgorithmPtr;
    m_AccessRight_GetDigestMethod:                             PLib3MFAccessRight_GetDigestMethodPtr;
    m_ContentEncryptionParams_GetEncryptionAlgorithm:          PLib3MFContentEncryptionParams_GetEncryptionAlgorithmPtr;
    m_ContentEncryptionParams_GetKey:                          PLib3MFContentEncryptionParams_GetKeyPtr;
    m_ContentEncryptionParams_GetInitializationVector:         PLib3MFContentEncryptionParams_GetInitializationVectorPtr;
    m_ContentEncryptionParams_GetAuthenticationTag:            PLib3MFContentEncryptionParams_GetAuthenticationTagPtr;
    m_ContentEncryptionParams_SetAuthenticationTag:            PLib3MFContentEncryptionParams_SetAuthenticationTagPtr;
    m_ContentEncryptionParams_GetAdditionalAuthenticationData: PLib3MFContentEncryptionParams_GetAdditionalAuthenticationDataPtr;
    m_ContentEncryptionParams_GetDescriptor:                   PLib3MFContentEncryptionParams_GetDescriptorPtr;
    m_ContentEncryptionParams_GetKeyUUID:                      PLib3MFContentEncryptionParams_GetKeyUUIDPtr;
    m_ResourceData_GetPath:                                    PLib3MFResourceData_GetPathPtr;
    m_ResourceData_GetEncryptionAlgorithm:                     PLib3MFResourceData_GetEncryptionAlgorithmPtr;
    m_ResourceData_GetCompression:                             PLib3MFResourceData_GetCompressionPtr;
    m_ResourceData_GetAdditionalAuthenticationData:            PLib3MFResourceData_GetAdditionalAuthenticationDataPtr;
    m_ResourceDataGroup_GetKeyUUID:                            PLib3MFResourceDataGroup_GetKeyUUIDPtr;
    m_ResourceDataGroup_AddAccessRight:                        PLib3MFResourceDataGroup_AddAccessRightPtr;
    m_ResourceDataGroup_FindAccessRightByConsumer:             PLib3MFResourceDataGroup_FindAccessRightByConsumerPtr;
    m_ResourceDataGroup_RemoveAccessRight:                     PLib3MFResourceDataGroup_RemoveAccessRightPtr;
    m_KeyStore_AddConsumer:                                    PLib3MFKeyStore_AddConsumerPtr;
    m_KeyStore_GetConsumerCount:                               PLib3MFKeyStore_GetConsumerCountPtr;
    m_KeyStore_GetConsumer:                                    PLib3MFKeyStore_GetConsumerPtr;
    m_KeyStore_RemoveConsumer:                                 PLib3MFKeyStore_RemoveConsumerPtr;
    m_KeyStore_FindConsumer:                                   PLib3MFKeyStore_FindConsumerPtr;
    m_KeyStore_GetResourceDataGroupCount:                      PLib3MFKeyStore_GetResourceDataGroupCountPtr;
    m_KeyStore_AddResourceDataGroup:                           PLib3MFKeyStore_AddResourceDataGroupPtr;
    m_KeyStore_GetResourceDataGroup:                           PLib3MFKeyStore_GetResourceDataGroupPtr;
    m_KeyStore_RemoveResourceDataGroup:                        PLib3MFKeyStore_RemoveResourceDataGroupPtr;
    m_KeyStore_FindResourceDataGroup:                          PLib3MFKeyStore_FindResourceDataGroupPtr;
    m_KeyStore_AddResourceData:                                PLib3MFKeyStore_AddResourceDataPtr;
    m_KeyStore_RemoveResourceData:                             PLib3MFKeyStore_RemoveResourceDataPtr;
    m_KeyStore_FindResourceData:                               PLib3MFKeyStore_FindResourceDataPtr;
    m_KeyStore_GetResourceDataCount:                           PLib3MFKeyStore_GetResourceDataCountPtr;
    m_KeyStore_GetResourceData:                                PLib3MFKeyStore_GetResourceDataPtr;
    m_KeyStore_GetUUID:                                        PLib3MFKeyStore_GetUUIDPtr;
    m_KeyStore_SetUUID:                                        PLib3MFKeyStore_SetUUIDPtr;
    m_Model_RootModelPart:                                     PLib3MFModel_RootModelPartPtr;
    m_Model_FindOrCreatePackagePart:                           PLib3MFModel_FindOrCreatePackagePartPtr;
    m_Model_SetUnit:                                           PLib3MFModel_SetUnitPtr;
    m_Model_GetUnit:                                           PLib3MFModel_GetUnitPtr;
    m_Model_GetLanguage:                                       PLib3MFModel_GetLanguagePtr;
    m_Model_SetLanguage:                                       PLib3MFModel_SetLanguagePtr;
    m_Model_QueryWriter:                                       PLib3MFModel_QueryWriterPtr;
    m_Model_QueryReader:                                       PLib3MFModel_QueryReaderPtr;
    m_Model_GetTexture2DByID:                                  PLib3MFModel_GetTexture2DByIDPtr;
    m_Model_GetPropertyTypeByID:                               PLib3MFModel_GetPropertyTypeByIDPtr;
    m_Model_GetBaseMaterialGroupByID:                          PLib3MFModel_GetBaseMaterialGroupByIDPtr;
    m_Model_GetTexture2DGroupByID:                             PLib3MFModel_GetTexture2DGroupByIDPtr;
    m_Model_GetCompositeMaterialsByID:                         PLib3MFModel_GetCompositeMaterialsByIDPtr;
    m_Model_GetMultiPropertyGroupByID:                         PLib3MFModel_GetMultiPropertyGroupByIDPtr;
    m_Model_GetMeshObjectByID:                                 PLib3MFModel_GetMeshObjectByIDPtr;
    m_Model_GetComponentsObjectByID:                           PLib3MFModel_GetComponentsObjectByIDPtr;
    m_Model_GetColorGroupByID:                                 PLib3MFModel_GetColorGroupByIDPtr;
    m_Model_GetSliceStackByID:                                 PLib3MFModel_GetSliceStackByIDPtr;
    m_Model_GetBuildUUID:                                      PLib3MFModel_GetBuildUUIDPtr;
    m_Model_SetBuildUUID:                                      PLib3MFModel_SetBuildUUIDPtr;
    m_Model_GetBuildItems:                                     PLib3MFModel_GetBuildItemsPtr;
    m_Model_GetOutbox:                                         PLib3MFModel_GetOutboxPtr;
    m_Model_GetResources:                                      PLib3MFModel_GetResourcesPtr;
    m_Model_GetObjects:                                        PLib3MFModel_GetObjectsPtr;
    m_Model_GetMeshObjects:                                    PLib3MFModel_GetMeshObjectsPtr;
    m_Model_GetComponentsObjects:                              PLib3MFModel_GetComponentsObjectsPtr;
    m_Model_GetTexture2Ds:                                     PLib3MFModel_GetTexture2DsPtr;
    m_Model_GetBaseMaterialGroups:                             PLib3MFModel_GetBaseMaterialGroupsPtr;
    m_Model_GetColorGroups:                                    PLib3MFModel_GetColorGroupsPtr;
    m_Model_GetTexture2DGroups:                                PLib3MFModel_GetTexture2DGroupsPtr;
    m_Model_GetCompositeMaterials:                             PLib3MFModel_GetCompositeMaterialsPtr;
    m_Model_GetMultiPropertyGroups:                            PLib3MFModel_GetMultiPropertyGroupsPtr;
    m_Model_GetSliceStacks:                                    PLib3MFModel_GetSliceStacksPtr;
    m_Model_MergeToModel:                                      PLib3MFModel_MergeToModelPtr;
    m_Model_AddMeshObject:                                     PLib3MFModel_AddMeshObjectPtr;
    m_Model_AddComponentsObject:                               PLib3MFModel_AddComponentsObjectPtr;
    m_Model_AddSliceStack:                                     PLib3MFModel_AddSliceStackPtr;
    m_Model_AddTexture2DFromAttachment:                        PLib3MFModel_AddTexture2DFromAttachmentPtr;
    m_Model_AddBaseMaterialGroup:                              PLib3MFModel_AddBaseMaterialGroupPtr;
    m_Model_AddColorGroup:                                     PLib3MFModel_AddColorGroupPtr;
    m_Model_AddTexture2DGroup:                                 PLib3MFModel_AddTexture2DGroupPtr;
    m_Model_AddCompositeMaterials:                             PLib3MFModel_AddCompositeMaterialsPtr;
    m_Model_AddMultiPropertyGroup:                             PLib3MFModel_AddMultiPropertyGroupPtr;
    m_Model_AddBuildItem:                                      PLib3MFModel_AddBuildItemPtr;
    m_Model_RemoveBuildItem:                                   PLib3MFModel_RemoveBuildItemPtr;
    m_Model_GetMetaDataGroup:                                  PLib3MFModel_GetMetaDataGroupPtr;
    m_Model_AddAttachment:                                     PLib3MFModel_AddAttachmentPtr;
    m_Model_RemoveAttachment:                                  PLib3MFModel_RemoveAttachmentPtr;
    m_Model_GetAttachment:                                     PLib3MFModel_GetAttachmentPtr;
    m_Model_FindAttachment:                                    PLib3MFModel_FindAttachmentPtr;
    m_Model_GetAttachmentCount:                                PLib3MFModel_GetAttachmentCountPtr;
    m_Model_HasPackageThumbnailAttachment:                     PLib3MFModel_HasPackageThumbnailAttachmentPtr;
    m_Model_CreatePackageThumbnailAttachment:                  PLib3MFModel_CreatePackageThumbnailAttachmentPtr;
    m_Model_GetPackageThumbnailAttachment:                     PLib3MFModel_GetPackageThumbnailAttachmentPtr;
    m_Model_RemovePackageThumbnailAttachment:                  PLib3MFModel_RemovePackageThumbnailAttachmentPtr;
    m_Model_AddCustomContentType:                              PLib3MFModel_AddCustomContentTypePtr;
    m_Model_RemoveCustomContentType:                           PLib3MFModel_RemoveCustomContentTypePtr;
    m_Model_SetRandomNumberCallback:                           PLib3MFModel_SetRandomNumberCallbackPtr;
    m_Model_GetKeyStore:                                       PLib3MFModel_GetKeyStorePtr;
    m_GetLibraryVersion:                                       PLib3MFGetLibraryVersionPtr;
    m_GetPrereleaseInformation:                                PLib3MFGetPrereleaseInformationPtr;
    m_GetBuildInformation:                                     PLib3MFGetBuildInformationPtr;
    m_GetSpecificationVersion:                                 PLib3MFGetSpecificationVersionPtr;
    m_CreateModel:                                             PLib3MFCreateModelPtr;
    m_Release:                                                 PLib3MFReleasePtr;
    m_Acquire:                                                 PLib3MFAcquirePtr;
    m_SetJournal:                                              PLib3MFSetJournalPtr;
    m_GetLastError:                                            PLib3MFGetLastErrorPtr;
    m_GetSymbolLookupMethod:                                   PLib3MFGetSymbolLookupMethodPtr;
    m_RetrieveProgressMessage:                                 PLib3MFRetrieveProgressMessagePtr;
    m_RGBAToColor:                                             PLib3MFRGBAToColorPtr;
    m_FloatRGBAToColor:                                        PLib3MFFloatRGBAToColorPtr;
    m_ColorToRGBA:                                             PLib3MFColorToRGBAPtr;
    m_ColorToFloatRGBA:                                        PLib3MFColorToFloatRGBAPtr;
    m_GetIdentityTransform:                                    PLib3MFGetIdentityTransformPtr;
    m_GetUniformScaleTransform:                                PLib3MFGetUniformScaleTransformPtr;
    m_GetScaleTransform:                                       PLib3MFGetScaleTransformPtr;
    m_GetTranslationTransform:                                 PLib3MFGetTranslationTransformPtr;
}

/**
* Writes out the model as file. The file type is specified by the Model Writer class.
*
* @param[in] pWriter - Writer instance.
* @param[in] pFilename - Filename to write into
* @return error code or 0 (success)
*/
lib3mf_writer_writetofile :: (pWriter: Lib3MF_Writer, pFilename: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the size of the full 3MF file stream.
*
* @param[in] pWriter - Writer instance.
* @param[out] pStreamSize - the stream size
* @return error code or 0 (success)
*/
lib3mf_writer_getstreamsize :: (pWriter: Lib3MF_Writer, pStreamSize: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Writes out the 3MF file into a memory buffer
*
* @param[in] pWriter - Writer instance.
* @param[in] nBufferBufferSize - Number of elements in buffer
* @param[out] pBufferNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pBufferBuffer - uint8  buffer of buffer to write into
* @return error code or 0 (success)
*/
lib3mf_writer_writetobuffer :: (pWriter: Lib3MF_Writer, nBufferBufferSize: Lib3MF_uint64, pBufferNeededCount: *Lib3MF_uint64, pBufferBuffer: *Lib3MF_uint8) -> Lib3MFResult #foreign lib3mf;

/**
* Writes out the model and passes the data to a provided callback function. The file type is specified by the Model Writer class.
*
* @param[in] pWriter - Writer instance.
* @param[in] pTheWriteCallback - Callback to call for writing a data chunk
* @param[in] pTheSeekCallback - Callback to call for seeking in the stream
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
lib3mf_writer_writetocallback :: (pWriter: Lib3MF_Writer, pTheWriteCallback: Lib3MF.WriteCallback, pTheSeekCallback: Lib3MF.SeekCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #foreign lib3mf;

/**
* Set the progress callback for calls to this writer
*
* @param[in] pWriter - Writer instance.
* @param[in] pProgressCallback - pointer to the callback function.
* @param[in] pUserData - pointer to arbitrary user data that is passed without modification to the callback.
* @return error code or 0 (success)
*/
lib3mf_writer_setprogresscallback :: (pWriter: Lib3MF_Writer, pProgressCallback: Lib3MF.ProgressCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the number of digits after the decimal point to be written in each vertex coordinate-value.
*
* @param[in] pWriter - Writer instance.
* @param[out] pDecimalPrecision - The number of digits to be written in each vertex coordinate-value after the decimal point.
* @return error code or 0 (success)
*/
lib3mf_writer_getdecimalprecision :: (pWriter: Lib3MF_Writer, pDecimalPrecision: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the number of digits after the decimal point to be written in each vertex coordinate-value.
*
* @param[in] pWriter - Writer instance.
* @param[in] nDecimalPrecision - The number of digits to be written in each vertex coordinate-value after the decimal point.
* @return error code or 0 (success)
*/
lib3mf_writer_setdecimalprecision :: (pWriter: Lib3MF_Writer, nDecimalPrecision: Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Activates (deactivates) the strict mode of the reader.
*
* @param[in] pWriter - Writer instance.
* @param[in] bStrictModeActive - flag whether strict mode is active or not.
* @return error code or 0 (success)
*/
lib3mf_writer_setstrictmodeactive :: (pWriter: Lib3MF_Writer, bStrictModeActive: bool) -> Lib3MFResult #foreign lib3mf;

/**
* Queries whether the strict mode of the reader is active or not
*
* @param[in] pWriter - Writer instance.
* @param[out] pStrictModeActive - returns flag whether strict mode is active or not.
* @return error code or 0 (success)
*/
lib3mf_writer_getstrictmodeactive :: (pWriter: Lib3MF_Writer, pStrictModeActive: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Returns Warning and Error Information of the read process
*
* @param[in] pWriter - Writer instance.
* @param[in] nIndex - Index of the Warning. Valid values are 0 to WarningCount - 1
* @param[out] pErrorCode - filled with the error code of the warning
* @param[in] nWarningBufferSize - size of the buffer (including trailing 0)
* @param[out] pWarningNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pWarningBuffer -  buffer of the message of the warning, may be NULL
* @return error code or 0 (success)
*/
lib3mf_writer_getwarning :: (pWriter: Lib3MF_Writer, nIndex: Lib3MF_uint32, pErrorCode: *Lib3MF_uint32, nWarningBufferSize: Lib3MF_uint32, pWarningNeededChars: *Lib3MF_uint32, pWarningBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Returns Warning and Error Count of the read process
*
* @param[in] pWriter - Writer instance.
* @param[out] pCount - filled with the count of the occurred warnings.
* @return error code or 0 (success)
*/
lib3mf_writer_getwarningcount :: (pWriter: Lib3MF_Writer, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Registers a callback to deal with data key encryption/decryption from keystore
*
* @param[in] pWriter - Writer instance.
* @param[in] pConsumerID - The ConsumerID to register for
* @param[in] pTheCallback - The callback to be callede for wrapping and encryption key
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
lib3mf_writer_addkeywrappingcallback :: (pWriter: Lib3MF_Writer, pConsumerID: *u8, pTheCallback: Lib3MF.KeyWrappingCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #foreign lib3mf;

/**
* Registers a callback to deal with encryption of content
*
* @param[in] pWriter - Writer instance.
* @param[in] pTheCallback - The callback used to encrypt content
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
lib3mf_writer_setcontentencryptioncallback :: (pWriter: Lib3MF_Writer, pTheCallback: Lib3MF.ContentEncryptionCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #foreign lib3mf;

/**
* Reads a model from a file. The file type is specified by the Model Reader class
*
* @param[in] pReader - Reader instance.
* @param[in] pFilename - Filename to read from
* @return error code or 0 (success)
*/
lib3mf_reader_readfromfile :: (pReader: Lib3MF_Reader, pFilename: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Reads a model from a memory buffer.
*
* @param[in] pReader - Reader instance.
* @param[in] nBufferBufferSize - Number of elements in buffer
* @param[in] pBufferBuffer - uint8 buffer of Buffer to read from
* @return error code or 0 (success)
*/
lib3mf_reader_readfrombuffer :: (pReader: Lib3MF_Reader, nBufferBufferSize: Lib3MF_uint64, pBufferBuffer: *Lib3MF_uint8) -> Lib3MFResult #foreign lib3mf;

/**
* Reads a model and from the data provided by a callback function
*
* @param[in] pReader - Reader instance.
* @param[in] pTheReadCallback - Callback to call for reading a data chunk
* @param[in] nStreamSize - number of bytes the callback returns
* @param[in] pTheSeekCallback - Callback to call for seeking in the stream.
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
lib3mf_reader_readfromcallback :: (pReader: Lib3MF_Reader, pTheReadCallback: Lib3MF.ReadCallback, nStreamSize: Lib3MF_uint64, pTheSeekCallback: Lib3MF.SeekCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #foreign lib3mf;

/**
* Set the progress callback for calls to this writer
*
* @param[in] pReader - Reader instance.
* @param[in] pProgressCallback - pointer to the callback function.
* @param[in] pUserData - pointer to arbitrary user data that is passed without modification to the callback.
* @return error code or 0 (success)
*/
lib3mf_reader_setprogresscallback :: (pReader: Lib3MF_Reader, pProgressCallback: Lib3MF.ProgressCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a relationship type which shall be read as attachment in memory while loading
*
* @param[in] pReader - Reader instance.
* @param[in] pRelationShipType - String of the relationship type
* @return error code or 0 (success)
*/
lib3mf_reader_addrelationtoread :: (pReader: Lib3MF_Reader, pRelationShipType: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Removes a relationship type which shall be read as attachment in memory while loading
*
* @param[in] pReader - Reader instance.
* @param[in] pRelationShipType - String of the relationship type
* @return error code or 0 (success)
*/
lib3mf_reader_removerelationtoread :: (pReader: Lib3MF_Reader, pRelationShipType: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Activates (deactivates) the strict mode of the reader.
*
* @param[in] pReader - Reader instance.
* @param[in] bStrictModeActive - flag whether strict mode is active or not.
* @return error code or 0 (success)
*/
lib3mf_reader_setstrictmodeactive :: (pReader: Lib3MF_Reader, bStrictModeActive: bool) -> Lib3MFResult #foreign lib3mf;

/**
* Queries whether the strict mode of the reader is active or not
*
* @param[in] pReader - Reader instance.
* @param[out] pStrictModeActive - returns flag whether strict mode is active or not.
* @return error code or 0 (success)
*/
lib3mf_reader_getstrictmodeactive :: (pReader: Lib3MF_Reader, pStrictModeActive: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Returns Warning and Error Information of the read process
*
* @param[in] pReader - Reader instance.
* @param[in] nIndex - Index of the Warning. Valid values are 0 to WarningCount - 1
* @param[out] pErrorCode - filled with the error code of the warning
* @param[in] nWarningBufferSize - size of the buffer (including trailing 0)
* @param[out] pWarningNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pWarningBuffer -  buffer of the message of the warning, may be NULL
* @return error code or 0 (success)
*/
lib3mf_reader_getwarning :: (pReader: Lib3MF_Reader, nIndex: Lib3MF_uint32, pErrorCode: *Lib3MF_uint32, nWarningBufferSize: Lib3MF_uint32, pWarningNeededChars: *Lib3MF_uint32, pWarningBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Returns Warning and Error Count of the read process
*
* @param[in] pReader - Reader instance.
* @param[out] pCount - filled with the count of the occurred warnings.
* @return error code or 0 (success)
*/
lib3mf_reader_getwarningcount :: (pReader: Lib3MF_Reader, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Registers a callback to deal with key wrapping mechanism from keystore
*
* @param[in] pReader - Reader instance.
* @param[in] pConsumerID - The ConsumerID to register for
* @param[in] pTheCallback - The callback used to decrypt data key
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
lib3mf_reader_addkeywrappingcallback :: (pReader: Lib3MF_Reader, pConsumerID: *u8, pTheCallback: Lib3MF.KeyWrappingCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #foreign lib3mf;

/**
* Registers a callback to deal with encryption of content
*
* @param[in] pReader - Reader instance.
* @param[in] pTheCallback - The callback used to encrypt content
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
lib3mf_reader_setcontentencryptioncallback :: (pReader: Lib3MF_Reader, pTheCallback: Lib3MF.ContentEncryptionCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the absolute path of this PackagePart.
*
* @param[in] pPackagePart - PackagePart instance.
* @param[in] nPathBufferSize - size of the buffer (including trailing 0)
* @param[out] pPathNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPathBuffer -  buffer of Returns the absolute path of this PackagePart, may be NULL
* @return error code or 0 (success)
*/
lib3mf_packagepart_getpath :: (pPackagePart: Lib3MF_PackagePart, nPathBufferSize: Lib3MF_uint32, pPathNeededChars: *Lib3MF_uint32, pPathBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the absolute path of this PackagePart.
*
* @param[in] pPackagePart - PackagePart instance.
* @param[in] pPath - Sets the absolute path of this PackagePart.
* @return error code or 0 (success)
*/
lib3mf_packagepart_setpath :: (pPackagePart: Lib3MF_PackagePart, pPath: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the unique id of this resource within a package. This function will be removed in a later release in favor of GetUniqueResourceID
*
* @param[in] pResource - Resource instance.
* @param[out] pUniqueResourceID - Retrieves the unique id of this resource within a package.
* @return error code or 0 (success)
*/
lib3mf_resource_getresourceid :: (pResource: Lib3MF_Resource, pUniqueResourceID: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the unique id of this resource within a package.
*
* @param[in] pResource - Resource instance.
* @param[out] pUniqueResourceID - Retrieves the unique id of this resource within a package.
* @return error code or 0 (success)
*/
lib3mf_resource_getuniqueresourceid :: (pResource: Lib3MF_Resource, pUniqueResourceID: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the PackagePart within which this resource resides
*
* @param[in] pResource - Resource instance.
* @param[out] pPackagePart - the PackagePart within which this resource resides.
* @return error code or 0 (success)
*/
lib3mf_resource_packagepart :: (pResource: Lib3MF_Resource, pPackagePart: *Lib3MF_PackagePart) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the new PackagePart within which this resource resides
*
* @param[in] pResource - Resource instance.
* @param[in] pPackagePart - the new PackagePart within which this resource resides.
* @return error code or 0 (success)
*/
lib3mf_resource_setpackagepart :: (pResource: Lib3MF_Resource, pPackagePart: Lib3MF_PackagePart) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the id of this resource within a model.
*
* @param[in] pResource - Resource instance.
* @param[out] pModelResourceId - Retrieves the id of this resource within a model.
* @return error code or 0 (success)
*/
lib3mf_resource_getmodelresourceid :: (pResource: Lib3MF_Resource, pModelResourceId: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Iterates to the next resource in the list.
*
* @param[in] pResourceIterator - ResourceIterator instance.
* @param[out] pHasNext - Iterates to the next resource in the list.
* @return error code or 0 (success)
*/
lib3mf_resourceiterator_movenext :: (pResourceIterator: Lib3MF_ResourceIterator, pHasNext: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Iterates to the previous resource in the list.
*
* @param[in] pResourceIterator - ResourceIterator instance.
* @param[out] pHasPrevious - Iterates to the previous resource in the list.
* @return error code or 0 (success)
*/
lib3mf_resourceiterator_moveprevious :: (pResourceIterator: Lib3MF_ResourceIterator, pHasPrevious: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the resource the iterator points at.
*
* @param[in] pResourceIterator - ResourceIterator instance.
* @param[out] pResource - returns the resource instance.
* @return error code or 0 (success)
*/
lib3mf_resourceiterator_getcurrent :: (pResourceIterator: Lib3MF_ResourceIterator, pResource: *Lib3MF_Resource) -> Lib3MFResult #foreign lib3mf;

/**
* Creates a new resource iterator with the same resource list.
*
* @param[in] pResourceIterator - ResourceIterator instance.
* @param[out] pOutResourceIterator - returns the cloned Iterator instance
* @return error code or 0 (success)
*/
lib3mf_resourceiterator_clone :: (pResourceIterator: Lib3MF_ResourceIterator, pOutResourceIterator: *Lib3MF_ResourceIterator) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the number of resoucres the iterator captures.
*
* @param[in] pResourceIterator - ResourceIterator instance.
* @param[out] pCount - returns the number of resoucres the iterator captures.
* @return error code or 0 (success)
*/
lib3mf_resourceiterator_count :: (pResourceIterator: Lib3MF_ResourceIterator, pCount: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the SliceStack the iterator points at.
*
* @param[in] pSliceStackIterator - SliceStackIterator instance.
* @param[out] pResource - returns the SliceStack instance.
* @return error code or 0 (success)
*/
lib3mf_slicestackiterator_getcurrentslicestack :: (pSliceStackIterator: Lib3MF_SliceStackIterator, pResource: *Lib3MF_SliceStack) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the Object the iterator points at.
*
* @param[in] pObjectIterator - ObjectIterator instance.
* @param[out] pResource - returns the Object instance.
* @return error code or 0 (success)
*/
lib3mf_objectiterator_getcurrentobject :: (pObjectIterator: Lib3MF_ObjectIterator, pResource: *Lib3MF_Object) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the MeshObject the iterator points at.
*
* @param[in] pMeshObjectIterator - MeshObjectIterator instance.
* @param[out] pResource - returns the MeshObject instance.
* @return error code or 0 (success)
*/
lib3mf_meshobjectiterator_getcurrentmeshobject :: (pMeshObjectIterator: Lib3MF_MeshObjectIterator, pResource: *Lib3MF_MeshObject) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the ComponentsObject the iterator points at.
*
* @param[in] pComponentsObjectIterator - ComponentsObjectIterator instance.
* @param[out] pResource - returns the ComponentsObject instance.
* @return error code or 0 (success)
*/
lib3mf_componentsobjectiterator_getcurrentcomponentsobject :: (pComponentsObjectIterator: Lib3MF_ComponentsObjectIterator, pResource: *Lib3MF_ComponentsObject) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the Texture2D the iterator points at.
*
* @param[in] pTexture2DIterator - Texture2DIterator instance.
* @param[out] pResource - returns the Texture2D instance.
* @return error code or 0 (success)
*/
lib3mf_texture2diterator_getcurrenttexture2d :: (pTexture2DIterator: Lib3MF_Texture2DIterator, pResource: *Lib3MF_Texture2D) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the MaterialGroup the iterator points at.
*
* @param[in] pBaseMaterialGroupIterator - BaseMaterialGroupIterator instance.
* @param[out] pResource - returns the BaseMaterialGroup instance.
* @return error code or 0 (success)
*/
lib3mf_basematerialgroupiterator_getcurrentbasematerialgroup :: (pBaseMaterialGroupIterator: Lib3MF_BaseMaterialGroupIterator, pResource: *Lib3MF_BaseMaterialGroup) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the ColorGroup the iterator points at.
*
* @param[in] pColorGroupIterator - ColorGroupIterator instance.
* @param[out] pResource - returns the ColorGroup instance.
* @return error code or 0 (success)
*/
lib3mf_colorgroupiterator_getcurrentcolorgroup :: (pColorGroupIterator: Lib3MF_ColorGroupIterator, pResource: *Lib3MF_ColorGroup) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the Texture2DGroup the iterator points at.
*
* @param[in] pTexture2DGroupIterator - Texture2DGroupIterator instance.
* @param[out] pResource - returns the Texture2DGroup instance.
* @return error code or 0 (success)
*/
lib3mf_texture2dgroupiterator_getcurrenttexture2dgroup :: (pTexture2DGroupIterator: Lib3MF_Texture2DGroupIterator, pResource: *Lib3MF_Texture2DGroup) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the CompositeMaterials the iterator points at.
*
* @param[in] pCompositeMaterialsIterator - CompositeMaterialsIterator instance.
* @param[out] pResource - returns the CompositeMaterials instance.
* @return error code or 0 (success)
*/
lib3mf_compositematerialsiterator_getcurrentcompositematerials :: (pCompositeMaterialsIterator: Lib3MF_CompositeMaterialsIterator, pResource: *Lib3MF_CompositeMaterials) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the MultiPropertyGroup the iterator points at.
*
* @param[in] pMultiPropertyGroupIterator - MultiPropertyGroupIterator instance.
* @param[out] pResource - returns the MultiPropertyGroup instance.
* @return error code or 0 (success)
*/
lib3mf_multipropertygroupiterator_getcurrentmultipropertygroup :: (pMultiPropertyGroupIterator: Lib3MF_MultiPropertyGroupIterator, pResource: *Lib3MF_MultiPropertyGroup) -> Lib3MFResult #foreign lib3mf;

/**
* returns the namespace URL of the metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] nNameSpaceBufferSize - size of the buffer (including trailing 0)
* @param[out] pNameSpaceNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pNameSpaceBuffer -  buffer of the namespace URL of the metadata, may be NULL
* @return error code or 0 (success)
*/
lib3mf_metadata_getnamespace :: (pMetaData: Lib3MF_MetaData, nNameSpaceBufferSize: Lib3MF_uint32, pNameSpaceNeededChars: *Lib3MF_uint32, pNameSpaceBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* sets a new namespace URL of the metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] pNameSpace - the new namespace URL of the metadata
* @return error code or 0 (success)
*/
lib3mf_metadata_setnamespace :: (pMetaData: Lib3MF_MetaData, pNameSpace: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* returns the name of a metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] nNameBufferSize - size of the buffer (including trailing 0)
* @param[out] pNameNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pNameBuffer -  buffer of the name of the metadata, may be NULL
* @return error code or 0 (success)
*/
lib3mf_metadata_getname :: (pMetaData: Lib3MF_MetaData, nNameBufferSize: Lib3MF_uint32, pNameNeededChars: *Lib3MF_uint32, pNameBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* sets a new name of a metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] pName - the new name of the metadata
* @return error code or 0 (success)
*/
lib3mf_metadata_setname :: (pMetaData: Lib3MF_MetaData, pName: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* returns the (namespace+name) of a metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] nKeyBufferSize - size of the buffer (including trailing 0)
* @param[out] pKeyNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pKeyBuffer -  buffer of the key (namespace+name) of the metadata, may be NULL
* @return error code or 0 (success)
*/
lib3mf_metadata_getkey :: (pMetaData: Lib3MF_MetaData, nKeyBufferSize: Lib3MF_uint32, pKeyNeededChars: *Lib3MF_uint32, pKeyBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* returns, whether a metadata must be preserved
*
* @param[in] pMetaData - MetaData instance.
* @param[out] pMustPreserve - returns, whether a metadata must be preserved
* @return error code or 0 (success)
*/
lib3mf_metadata_getmustpreserve :: (pMetaData: Lib3MF_MetaData, pMustPreserve: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* sets whether a metadata must be preserved
*
* @param[in] pMetaData - MetaData instance.
* @param[in] bMustPreserve - a new value whether a metadata must be preserved
* @return error code or 0 (success)
*/
lib3mf_metadata_setmustpreserve :: (pMetaData: Lib3MF_MetaData, bMustPreserve: bool) -> Lib3MFResult #foreign lib3mf;

/**
* returns the type of a metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] nTypeBufferSize - size of the buffer (including trailing 0)
* @param[out] pTypeNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pTypeBuffer -  buffer of the type of the metadata, may be NULL
* @return error code or 0 (success)
*/
lib3mf_metadata_gettype :: (pMetaData: Lib3MF_MetaData, nTypeBufferSize: Lib3MF_uint32, pTypeNeededChars: *Lib3MF_uint32, pTypeBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* sets a new type of a metadata. This must be a simple XML type
*
* @param[in] pMetaData - MetaData instance.
* @param[in] pType - a new type of the metadata
* @return error code or 0 (success)
*/
lib3mf_metadata_settype :: (pMetaData: Lib3MF_MetaData, pType: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* returns the value of the metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] nValueBufferSize - size of the buffer (including trailing 0)
* @param[out] pValueNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pValueBuffer -  buffer of the value of the metadata, may be NULL
* @return error code or 0 (success)
*/
lib3mf_metadata_getvalue :: (pMetaData: Lib3MF_MetaData, nValueBufferSize: Lib3MF_uint32, pValueNeededChars: *Lib3MF_uint32, pValueBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* sets a new value of the metadata
*
* @param[in] pMetaData - MetaData instance.
* @param[in] pValue - a new value of the metadata
* @return error code or 0 (success)
*/
lib3mf_metadata_setvalue :: (pMetaData: Lib3MF_MetaData, pValue: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* returns the number of metadata in this metadatagroup
*
* @param[in] pMetaDataGroup - MetaDataGroup instance.
* @param[out] pCount - returns the number metadata
* @return error code or 0 (success)
*/
lib3mf_metadatagroup_getmetadatacount :: (pMetaDataGroup: Lib3MF_MetaDataGroup, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* returns a metadata value within this metadatagroup
*
* @param[in] pMetaDataGroup - MetaDataGroup instance.
* @param[in] nIndex - Index of the Metadata.
* @param[out] pMetaData - an instance of the metadata
* @return error code or 0 (success)
*/
lib3mf_metadatagroup_getmetadata :: (pMetaDataGroup: Lib3MF_MetaDataGroup, nIndex: Lib3MF_uint32, pMetaData: *Lib3MF_MetaData) -> Lib3MFResult #foreign lib3mf;

/**
* returns a metadata value within this metadatagroup
*
* @param[in] pMetaDataGroup - MetaDataGroup instance.
* @param[in] pNameSpace - the namespace of the metadata
* @param[in] pName - the name of the Metadata
* @param[out] pMetaData - an instance of the metadata
* @return error code or 0 (success)
*/
lib3mf_metadatagroup_getmetadatabykey :: (pMetaDataGroup: Lib3MF_MetaDataGroup, pNameSpace: *u8, pName: *u8, pMetaData: *Lib3MF_MetaData) -> Lib3MFResult #foreign lib3mf;

/**
* removes metadata by index from the model.
*
* @param[in] pMetaDataGroup - MetaDataGroup instance.
* @param[in] nIndex -  Index of the metadata to remove
* @return error code or 0 (success)
*/
lib3mf_metadatagroup_removemetadatabyindex :: (pMetaDataGroup: Lib3MF_MetaDataGroup, nIndex: Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* removes metadata from the model.
*
* @param[in] pMetaDataGroup - MetaDataGroup instance.
* @param[in] pTheMetaData - The metadata to remove
* @return error code or 0 (success)
*/
lib3mf_metadatagroup_removemetadata :: (pMetaDataGroup: Lib3MF_MetaDataGroup, pTheMetaData: Lib3MF_MetaData) -> Lib3MFResult #foreign lib3mf;

/**
* adds a new metadata to this metadatagroup
*
* @param[in] pMetaDataGroup - MetaDataGroup instance.
* @param[in] pNameSpace - the namespace of the metadata
* @param[in] pName - the name of the metadata
* @param[in] pValue - the value of the metadata
* @param[in] pType - the type of the metadata
* @param[in] bMustPreserve - shuold the metadata be preserved
* @param[out] pMetaData - a new instance of the metadata
* @return error code or 0 (success)
*/
lib3mf_metadatagroup_addmetadata :: (pMetaDataGroup: Lib3MF_MetaDataGroup, pNameSpace: *u8, pName: *u8, pValue: *u8, pType: *u8, bMustPreserve: bool, pMetaData: *Lib3MF_MetaData) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves an object's type
*
* @param[in] pObject - Object instance.
* @param[out] pObjectType - returns object type enum.
* @return error code or 0 (success)
*/
lib3mf_object_gettype :: (pObject: Lib3MF_Object, pObjectType: *Lib3MF.eObjectType) -> Lib3MFResult #foreign lib3mf;

/**
* Sets an object's type
*
* @param[in] pObject - Object instance.
* @param[in] eObjectType - object type enum.
* @return error code or 0 (success)
*/
lib3mf_object_settype :: (pObject: Lib3MF_Object, eObjectType_: Lib3MF.eObjectType) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves an object's name
*
* @param[in] pObject - Object instance.
* @param[in] nNameBufferSize - size of the buffer (including trailing 0)
* @param[out] pNameNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pNameBuffer -  buffer of returns object name., may be NULL
* @return error code or 0 (success)
*/
lib3mf_object_getname :: (pObject: Lib3MF_Object, nNameBufferSize: Lib3MF_uint32, pNameNeededChars: *Lib3MF_uint32, pNameBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets an object's name string
*
* @param[in] pObject - Object instance.
* @param[in] pName - new object name.
* @return error code or 0 (success)
*/
lib3mf_object_setname :: (pObject: Lib3MF_Object, pName: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves an object's part number
*
* @param[in] pObject - Object instance.
* @param[in] nPartNumberBufferSize - size of the buffer (including trailing 0)
* @param[out] pPartNumberNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPartNumberBuffer -  buffer of returns object part number., may be NULL
* @return error code or 0 (success)
*/
lib3mf_object_getpartnumber :: (pObject: Lib3MF_Object, nPartNumberBufferSize: Lib3MF_uint32, pPartNumberNeededChars: *Lib3MF_uint32, pPartNumberBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets an objects partnumber string
*
* @param[in] pObject - Object instance.
* @param[in] pPartNumber - new object part number.
* @return error code or 0 (success)
*/
lib3mf_object_setpartnumber :: (pObject: Lib3MF_Object, pPartNumber: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves, if an object is a mesh object
*
* @param[in] pObject - Object instance.
* @param[out] pIsMeshObject - returns, whether the object is a mesh object
* @return error code or 0 (success)
*/
lib3mf_object_ismeshobject :: (pObject: Lib3MF_Object, pIsMeshObject: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves, if an object is a components object
*
* @param[in] pObject - Object instance.
* @param[out] pIsComponentsObject - returns, whether the object is a components object
* @return error code or 0 (success)
*/
lib3mf_object_iscomponentsobject :: (pObject: Lib3MF_Object, pIsComponentsObject: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves, if the object is valid according to the core spec. For mesh objects, we distinguish between the type attribute of the object:In case of object type other, this always means false.In case of object type model or solidsupport, this means, if the mesh suffices all requirements of the core spec chapter 4.1.In case of object type support or surface, this always means true.A component objects is valid if and only if it contains at least one component and all child components are valid objects.
*
* @param[in] pObject - Object instance.
* @param[out] pIsValid - returns whether the object is a valid object description
* @return error code or 0 (success)
*/
lib3mf_object_isvalid :: (pObject: Lib3MF_Object, pIsValid: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Use an existing attachment as thumbnail for this object
*
* @param[in] pObject - Object instance.
* @param[in] pAttachment - Instance of a new or the existing thumbnailattachment object.
* @return error code or 0 (success)
*/
lib3mf_object_setattachmentasthumbnail :: (pObject: Lib3MF_Object, pAttachment: Lib3MF_Attachment) -> Lib3MFResult #foreign lib3mf;

/**
* Get the attachment containing the object thumbnail.
*
* @param[in] pObject - Object instance.
* @param[out] pAttachment - Instance of the thumbnailattachment object or NULL.
* @return error code or 0 (success)
*/
lib3mf_object_getthumbnailattachment :: (pObject: Lib3MF_Object, pAttachment: *Lib3MF_Attachment) -> Lib3MFResult #foreign lib3mf;

/**
* Clears the attachment. The attachment instance is not removed from the package.
*
* @param[in] pObject - Object instance.
* @return error code or 0 (success)
*/
lib3mf_object_clearthumbnailattachment :: (pObject: Lib3MF_Object) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the outbox of a build item
*
* @param[in] pObject - Object instance.
* @param[out] pOutbox - Outbox of this build item
* @return error code or 0 (success)
*/
lib3mf_object_getoutbox :: (pObject: Lib3MF_Object, pOutbox: *Lib3MF.sBox) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves an object's uuid string (see production extension specification)
*
* @param[in] pObject - Object instance.
* @param[out] pHasUUID - flag whether the build item has a UUID
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of returns object uuid., may be NULL
* @return error code or 0 (success)
*/
lib3mf_object_getuuid :: (pObject: Lib3MF_Object, pHasUUID: *bool, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets a build object's uuid string (see production extension specification)
*
* @param[in] pObject - Object instance.
* @param[in] pUUID - new object uuid string.
* @return error code or 0 (success)
*/
lib3mf_object_setuuid :: (pObject: Lib3MF_Object, pUUID: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the metadatagroup of this object
*
* @param[in] pObject - Object instance.
* @param[out] pMetaDataGroup - returns an Instance of the metadatagroup of this object
* @return error code or 0 (success)
*/
lib3mf_object_getmetadatagroup :: (pObject: Lib3MF_Object, pMetaDataGroup: *Lib3MF_MetaDataGroup) -> Lib3MFResult #foreign lib3mf;

/**
* set the meshresolution of the mesh object
*
* @param[in] pObject - Object instance.
* @param[in] eMeshResolution - meshresolution of this object
* @return error code or 0 (success)
*/
lib3mf_object_setslicesmeshresolution :: (pObject: Lib3MF_Object, eMeshResolution: Lib3MF.eSlicesMeshResolution) -> Lib3MFResult #foreign lib3mf;

/**
* get the meshresolution of the mesh object
*
* @param[in] pObject - Object instance.
* @param[out] pMeshResolution - meshresolution of this object
* @return error code or 0 (success)
*/
lib3mf_object_getslicesmeshresolution :: (pObject: Lib3MF_Object, pMeshResolution: *Lib3MF.eSlicesMeshResolution) -> Lib3MFResult #foreign lib3mf;

/**
* returns whether the Object has a slice stack. If Recursive is true, also checks whether any references object has a slice stack
*
* @param[in] pObject - Object instance.
* @param[in] bRecursive - check also all referenced objects?
* @param[out] pHasSlices - does the object have a slice stack?
* @return error code or 0 (success)
*/
lib3mf_object_hasslices :: (pObject: Lib3MF_Object, bRecursive: bool, pHasSlices: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* unlinks the attached slicestack from this object. If no slice stack is attached, do noting.
*
* @param[in] pObject - Object instance.
* @return error code or 0 (success)
*/
lib3mf_object_clearslicestack :: (pObject: Lib3MF_Object) -> Lib3MFResult #foreign lib3mf;

/**
* get the Slicestack attached to the object
*
* @param[in] pObject - Object instance.
* @param[out] pSliceStackInstance - returns the slicestack instance
* @return error code or 0 (success)
*/
lib3mf_object_getslicestack :: (pObject: Lib3MF_Object, pSliceStackInstance: *Lib3MF_SliceStack) -> Lib3MFResult #foreign lib3mf;

/**
* assigns a slicestack to the object
*
* @param[in] pObject - Object instance.
* @param[in] pSliceStackInstance - the new slice stack of this Object
* @return error code or 0 (success)
*/
lib3mf_object_assignslicestack :: (pObject: Lib3MF_Object, pSliceStackInstance: Lib3MF_SliceStack) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the vertex count of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[out] pVertexCount - filled with the vertex count.
* @return error code or 0 (success)
*/
lib3mf_meshobject_getvertexcount :: (pMeshObject: Lib3MF_MeshObject, pVertexCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the triangle count of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[out] pVertexCount - filled with the triangle count.
* @return error code or 0 (success)
*/
lib3mf_meshobject_gettrianglecount :: (pMeshObject: Lib3MF_MeshObject, pVertexCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the vertex count of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndex - Index of the vertex (0 to vertexcount - 1)
* @param[out] pCoordinates - filled with the vertex coordinates.
* @return error code or 0 (success)
*/
lib3mf_meshobject_getvertex :: (pMeshObject: Lib3MF_MeshObject, nIndex: Lib3MF_uint32, pCoordinates: *Lib3MF.sPosition) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the coordinates of a single vertex of a mesh object
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndex - Index of the vertex (0 to vertexcount - 1)
* @param[in] pCoordinates - contains the vertex coordinates.
* @return error code or 0 (success)
*/
lib3mf_meshobject_setvertex :: (pMeshObject: Lib3MF_MeshObject, nIndex: Lib3MF_uint32, pCoordinates: *Lib3MF.sPosition) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a single vertex to a mesh object
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] pCoordinates - contains the vertex coordinates.
* @param[out] pNewIndex - Index of the new vertex
* @return error code or 0 (success)
*/
lib3mf_meshobject_addvertex :: (pMeshObject: Lib3MF_MeshObject, pCoordinates: *Lib3MF.sPosition, pNewIndex: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Obtains all vertex positions of a mesh object
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nVerticesBufferSize - Number of elements in buffer
* @param[out] pVerticesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pVerticesBuffer - Position  buffer of contains the vertex coordinates.
* @return error code or 0 (success)
*/
lib3mf_meshobject_getvertices :: (pMeshObject: Lib3MF_MeshObject, nVerticesBufferSize: Lib3MF_uint64, pVerticesNeededCount: *Lib3MF_uint64, pVerticesBuffer: *Lib3MF.sPosition) -> Lib3MFResult #foreign lib3mf;

/**
* Returns indices of a single triangle of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndex - Index of the triangle (0 to trianglecount - 1)
* @param[out] pIndices - filled with the triangle indices.
* @return error code or 0 (success)
*/
lib3mf_meshobject_gettriangle :: (pMeshObject: Lib3MF_MeshObject, nIndex: Lib3MF_uint32, pIndices: *Lib3MF.sTriangle) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the indices of a single triangle of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndex - Index of the triangle (0 to trianglecount - 1)
* @param[in] pIndices - contains the triangle indices.
* @return error code or 0 (success)
*/
lib3mf_meshobject_settriangle :: (pMeshObject: Lib3MF_MeshObject, nIndex: Lib3MF_uint32, pIndices: *Lib3MF.sTriangle) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a single triangle to a mesh object
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] pIndices - contains the triangle indices.
* @param[out] pNewIndex - Index of the new triangle
* @return error code or 0 (success)
*/
lib3mf_meshobject_addtriangle :: (pMeshObject: Lib3MF_MeshObject, pIndices: *Lib3MF.sTriangle, pNewIndex: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Get all triangles of a mesh object
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndicesBufferSize - Number of elements in buffer
* @param[out] pIndicesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pIndicesBuffer - Triangle  buffer of contains the triangle indices.
* @return error code or 0 (success)
*/
lib3mf_meshobject_gettriangleindices :: (pMeshObject: Lib3MF_MeshObject, nIndicesBufferSize: Lib3MF_uint64, pIndicesNeededCount: *Lib3MF_uint64, pIndicesBuffer: *Lib3MF.sTriangle) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the property at the object-level of the mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nUniqueResourceID - the object-level Property UniqueResourceID.
* @param[in] nPropertyID - the object-level PropertyID.
* @return error code or 0 (success)
*/
lib3mf_meshobject_setobjectlevelproperty :: (pMeshObject: Lib3MF_MeshObject, nUniqueResourceID: Lib3MF_uint32, nPropertyID: Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the property at the object-level of the mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[out] pUniqueResourceID - the object-level Property UniqueResourceID.
* @param[out] pPropertyID - the object-level PropertyID.
* @param[out] pHasObjectLevelProperty - Has an object-level property been specified?
* @return error code or 0 (success)
*/
lib3mf_meshobject_getobjectlevelproperty :: (pMeshObject: Lib3MF_MeshObject, pUniqueResourceID: *Lib3MF_uint32, pPropertyID: *Lib3MF_uint32, pHasObjectLevelProperty: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the properties of a single triangle of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndex - Index of the triangle (0 to trianglecount - 1)
* @param[in] pProperties - contains the triangle properties.
* @return error code or 0 (success)
*/
lib3mf_meshobject_settriangleproperties :: (pMeshObject: Lib3MF_MeshObject, nIndex: Lib3MF_uint32, pProperties: *Lib3MF.sTriangleProperties) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the properties of a single triangle of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nIndex - Index of the triangle (0 to trianglecount - 1)
* @param[out] pProperty - returns the triangle properties.
* @return error code or 0 (success)
*/
lib3mf_meshobject_gettriangleproperties :: (pMeshObject: Lib3MF_MeshObject, nIndex: Lib3MF_uint32, pProperty: *Lib3MF.sTriangleProperties) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the properties of all triangles of a mesh object. Sets the object level property to the first entry of the passed triangle properties, if not yet specified.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nPropertiesArrayBufferSize - Number of elements in buffer
* @param[in] pPropertiesArrayBuffer - TriangleProperties buffer of contains the triangle properties array. Must have trianglecount elements.
* @return error code or 0 (success)
*/
lib3mf_meshobject_setalltriangleproperties :: (pMeshObject: Lib3MF_MeshObject, nPropertiesArrayBufferSize: Lib3MF_uint64, pPropertiesArrayBuffer: *Lib3MF.sTriangleProperties) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the properties of all triangles of a mesh object.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nPropertiesArrayBufferSize - Number of elements in buffer
* @param[out] pPropertiesArrayNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertiesArrayBuffer - TriangleProperties  buffer of returns the triangle properties array. Must have trianglecount elements.
* @return error code or 0 (success)
*/
lib3mf_meshobject_getalltriangleproperties :: (pMeshObject: Lib3MF_MeshObject, nPropertiesArrayBufferSize: Lib3MF_uint64, pPropertiesArrayNeededCount: *Lib3MF_uint64, pPropertiesArrayBuffer: *Lib3MF.sTriangleProperties) -> Lib3MFResult #foreign lib3mf;

/**
* Clears all properties of this mesh object (triangle and object-level).
*
* @param[in] pMeshObject - MeshObject instance.
* @return error code or 0 (success)
*/
lib3mf_meshobject_clearallproperties :: (pMeshObject: Lib3MF_MeshObject) -> Lib3MFResult #foreign lib3mf;

/**
* Set all triangles of a mesh object
*
* @param[in] pMeshObject - MeshObject instance.
* @param[in] nVerticesBufferSize - Number of elements in buffer
* @param[in] pVerticesBuffer - Position buffer of contains the positions.
* @param[in] nIndicesBufferSize - Number of elements in buffer
* @param[in] pIndicesBuffer - Triangle buffer of contains the triangle indices.
* @return error code or 0 (success)
*/
lib3mf_meshobject_setgeometry :: (pMeshObject: Lib3MF_MeshObject, nVerticesBufferSize: Lib3MF_uint64, pVerticesBuffer: *Lib3MF.sPosition, nIndicesBufferSize: Lib3MF_uint64, pIndicesBuffer: *Lib3MF.sTriangle) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves, if an object describes a topologically oriented and manifold mesh, according to the core spec.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[out] pIsManifoldAndOriented - returns, if the object is oriented and manifold.
* @return error code or 0 (success)
*/
lib3mf_meshobject_ismanifoldandoriented :: (pMeshObject: Lib3MF_MeshObject, pIsManifoldAndOriented: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the BeamLattice within this MeshObject.
*
* @param[in] pMeshObject - MeshObject instance.
* @param[out] pTheBeamLattice - the BeamLattice within this MeshObject
* @return error code or 0 (success)
*/
lib3mf_meshobject_beamlattice :: (pMeshObject: Lib3MF_MeshObject, pTheBeamLattice: *Lib3MF_BeamLattice) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the minimal length of beams for the beamlattice.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pMinLength - minimal length of beams for the beamlattice
* @return error code or 0 (success)
*/
lib3mf_beamlattice_getminlength :: (pBeamLattice: Lib3MF_BeamLattice, pMinLength: *Lib3MF_double) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the minimal length of beams for the beamlattice.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] dMinLength - minimal length of beams for the beamlattice
* @return error code or 0 (success)
*/
lib3mf_beamlattice_setminlength :: (pBeamLattice: Lib3MF_BeamLattice, dMinLength: Lib3MF_double) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the clipping mode and the clipping-mesh for the beamlattice of this mesh.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pClipMode - contains the clip mode of this mesh
* @param[out] pUniqueResourceID - filled with the UniqueResourceID of the clipping mesh-object or an undefined value if pClipMode is MODELBEAMLATTICECLIPMODE_NONE
* @return error code or 0 (success)
*/
lib3mf_beamlattice_getclipping :: (pBeamLattice: Lib3MF_BeamLattice, pClipMode: *Lib3MF.eBeamLatticeClipMode, pUniqueResourceID: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the clipping mode and the clipping-mesh for the beamlattice of this mesh.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] eClipMode - contains the clip mode of this mesh
* @param[in] nUniqueResourceID - the UniqueResourceID of the clipping mesh-object. This mesh-object has to be defined before setting the Clipping.
* @return error code or 0 (success)
*/
lib3mf_beamlattice_setclipping :: (pBeamLattice: Lib3MF_BeamLattice, eClipMode: Lib3MF.eBeamLatticeClipMode, nUniqueResourceID: Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the representation-mesh for the beamlattice of this mesh.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pHasRepresentation - flag whether the beamlattice has a representation mesh.
* @param[out] pUniqueResourceID - filled with the UniqueResourceID of the clipping mesh-object.
* @return error code or 0 (success)
*/
lib3mf_beamlattice_getrepresentation :: (pBeamLattice: Lib3MF_BeamLattice, pHasRepresentation: *bool, pUniqueResourceID: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the representation-mesh for the beamlattice of this mesh.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nUniqueResourceID - the UniqueResourceID of the representation mesh-object. This mesh-object has to be defined before setting the representation.
* @return error code or 0 (success)
*/
lib3mf_beamlattice_setrepresentation :: (pBeamLattice: Lib3MF_BeamLattice, nUniqueResourceID: Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the ball mode and the default ball radius for the beamlattice of this mesh.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pBallMode - contains the ball mode of this mesh
* @param[out] pBallRadius - default ball radius of balls for the beamlattice
* @return error code or 0 (success)
*/
lib3mf_beamlattice_getballoptions :: (pBeamLattice: Lib3MF_BeamLattice, pBallMode: *Lib3MF.eBeamLatticeBallMode, pBallRadius: *Lib3MF_double) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the ball mode and thedefault ball radius for the beamlattice.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] eBallMode - contains the ball mode of this mesh
* @param[in] dBallRadius - default ball radius of balls for the beamlattice
* @return error code or 0 (success)
*/
lib3mf_beamlattice_setballoptions :: (pBeamLattice: Lib3MF_BeamLattice, eBallMode: Lib3MF.eBeamLatticeBallMode, dBallRadius: Lib3MF_double) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the beam count of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pCount - filled with the beam count.
* @return error code or 0 (success)
*/
lib3mf_beamlattice_getbeamcount :: (pBeamLattice: Lib3MF_BeamLattice, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Returns indices, radii and capmodes of a single beam of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nIndex - Index of the beam (0 to beamcount - 1).
* @param[out] pBeamInfo - filled with the beam indices, radii and capmodes.
* @return error code or 0 (success)
*/
lib3mf_beamlattice_getbeam :: (pBeamLattice: Lib3MF_BeamLattice, nIndex: Lib3MF_uint32, pBeamInfo: *Lib3MF.sBeam) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a single beam to a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] pBeamInfo - contains the node indices, radii and capmodes.
* @param[out] pIndex - filled with the new Index of the beam.
* @return error code or 0 (success)
*/
lib3mf_beamlattice_addbeam :: (pBeamLattice: Lib3MF_BeamLattice, pBeamInfo: *Lib3MF.sBeam, pIndex: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the indices, radii and capmodes of a single beam of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nIndex - Index of the beam (0 to beamcount - 1).
* @param[in] pBeamInfo - filled with the beam indices, radii and capmodes.
* @return error code or 0 (success)
*/
lib3mf_beamlattice_setbeam :: (pBeamLattice: Lib3MF_BeamLattice, nIndex: Lib3MF_uint32, pBeamInfo: *Lib3MF.sBeam) -> Lib3MFResult #foreign lib3mf;

/**
* Sets all beam indices, radii and capmodes of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nBeamInfoBufferSize - Number of elements in buffer
* @param[in] pBeamInfoBuffer - Beam buffer of contains information of a number of  beams
* @return error code or 0 (success)
*/
lib3mf_beamlattice_setbeams :: (pBeamLattice: Lib3MF_BeamLattice, nBeamInfoBufferSize: Lib3MF_uint64, pBeamInfoBuffer: *Lib3MF.sBeam) -> Lib3MFResult #foreign lib3mf;

/**
* obtains all beam indices, radii and capmodes of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nBeamInfoBufferSize - Number of elements in buffer
* @param[out] pBeamInfoNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pBeamInfoBuffer - Beam  buffer of contains information of all beams
* @return error code or 0 (success)
*/
lib3mf_beamlattice_getbeams :: (pBeamLattice: Lib3MF_BeamLattice, nBeamInfoBufferSize: Lib3MF_uint64, pBeamInfoNeededCount: *Lib3MF_uint64, pBeamInfoBuffer: *Lib3MF.sBeam) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the ball count of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pCount - filled with the ball count.
* @return error code or 0 (success)
*/
lib3mf_beamlattice_getballcount :: (pBeamLattice: Lib3MF_BeamLattice, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Returns index and radius of a single ball of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nIndex - Index of the ball (0 to ballcount - 1).
* @param[out] pBallInfo - filled with the ball node index and radius.
* @return error code or 0 (success)
*/
lib3mf_beamlattice_getball :: (pBeamLattice: Lib3MF_BeamLattice, nIndex: Lib3MF_uint32, pBallInfo: *Lib3MF.sBall) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a single ball to a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] pBallInfo - contains the node index and radius.
* @param[out] pIndex - filled with the new Index of the ball.
* @return error code or 0 (success)
*/
lib3mf_beamlattice_addball :: (pBeamLattice: Lib3MF_BeamLattice, pBallInfo: *Lib3MF.sBall, pIndex: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the index and radius of a single ball of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nIndex - Index of the ball (0 to ballcount - 1).
* @param[in] pBallInfo - filled with the ball node index and radius.
* @return error code or 0 (success)
*/
lib3mf_beamlattice_setball :: (pBeamLattice: Lib3MF_BeamLattice, nIndex: Lib3MF_uint32, pBallInfo: *Lib3MF.sBall) -> Lib3MFResult #foreign lib3mf;

/**
* Sets all ball indices and radii of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nBallInfoBufferSize - Number of elements in buffer
* @param[in] pBallInfoBuffer - Ball buffer of contains information of a number of  balls
* @return error code or 0 (success)
*/
lib3mf_beamlattice_setballs :: (pBeamLattice: Lib3MF_BeamLattice, nBallInfoBufferSize: Lib3MF_uint64, pBallInfoBuffer: *Lib3MF.sBall) -> Lib3MFResult #foreign lib3mf;

/**
* obtains all ball indices and radii of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nBallInfoBufferSize - Number of elements in buffer
* @param[out] pBallInfoNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pBallInfoBuffer - Ball  buffer of contains information of all balls
* @return error code or 0 (success)
*/
lib3mf_beamlattice_getballs :: (pBeamLattice: Lib3MF_BeamLattice, nBallInfoBufferSize: Lib3MF_uint64, pBallInfoNeededCount: *Lib3MF_uint64, pBallInfoBuffer: *Lib3MF.sBall) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the number of beamsets of a mesh object.
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pCount - filled with the beamset count.
* @return error code or 0 (success)
*/
lib3mf_beamlattice_getbeamsetcount :: (pBeamLattice: Lib3MF_BeamLattice, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Adds an empty beamset to a mesh object
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[out] pBeamSet - the new beamset
* @return error code or 0 (success)
*/
lib3mf_beamlattice_addbeamset :: (pBeamLattice: Lib3MF_BeamLattice, pBeamSet: *Lib3MF_BeamSet) -> Lib3MFResult #foreign lib3mf;

/**
* Returns a beamset of a mesh object
*
* @param[in] pBeamLattice - BeamLattice instance.
* @param[in] nIndex - index of the requested beamset (0 ... beamsetcount-1).
* @param[out] pBeamSet - the requested beamset
* @return error code or 0 (success)
*/
lib3mf_beamlattice_getbeamset :: (pBeamLattice: Lib3MF_BeamLattice, nIndex: Lib3MF_uint32, pBeamSet: *Lib3MF_BeamSet) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the Resource Instance of the component.
*
* @param[in] pComponent - Component instance.
* @param[out] pObjectResource - filled with the Resource Instance.
* @return error code or 0 (success)
*/
lib3mf_component_getobjectresource :: (pComponent: Lib3MF_Component, pObjectResource: *Lib3MF_Object) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the UniqueResourceID of the component.
*
* @param[in] pComponent - Component instance.
* @param[out] pUniqueResourceID - returns the UniqueResourceID.
* @return error code or 0 (success)
*/
lib3mf_component_getobjectresourceid :: (pComponent: Lib3MF_Component, pUniqueResourceID: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* returns, whether a component has a UUID and, if true, the component's UUID
*
* @param[in] pComponent - Component instance.
* @param[out] pHasUUID - flag whether the component has a UUID
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of the UUID as string of the form 'xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx', may be NULL
* @return error code or 0 (success)
*/
lib3mf_component_getuuid :: (pComponent: Lib3MF_Component, pHasUUID: *bool, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* sets the component's UUID
*
* @param[in] pComponent - Component instance.
* @param[in] pUUID - the UUID as string of the form 'xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx'
* @return error code or 0 (success)
*/
lib3mf_component_setuuid :: (pComponent: Lib3MF_Component, pUUID: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Returns, if the component has a different transformation than the identity matrix
*
* @param[in] pComponent - Component instance.
* @param[out] pHasTransform - if true is returned, the transformation is not equal than the identity
* @return error code or 0 (success)
*/
lib3mf_component_hastransform :: (pComponent: Lib3MF_Component, pHasTransform: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the transformation matrix of the component.
*
* @param[in] pComponent - Component instance.
* @param[out] pTransform - filled with the component transformation matrix
* @return error code or 0 (success)
*/
lib3mf_component_gettransform :: (pComponent: Lib3MF_Component, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the transformation matrix of the component.
*
* @param[in] pComponent - Component instance.
* @param[in] pTransform - new transformation matrix
* @return error code or 0 (success)
*/
lib3mf_component_settransform :: (pComponent: Lib3MF_Component, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a new component to a components object.
*
* @param[in] pComponentsObject - ComponentsObject instance.
* @param[in] pObjectResource - object to add as component. Must not lead to circular references!
* @param[in] pTransform - optional transform matrix for the component.
* @param[out] pComponentInstance - new component instance
* @return error code or 0 (success)
*/
lib3mf_componentsobject_addcomponent :: (pComponentsObject: Lib3MF_ComponentsObject, pObjectResource: Lib3MF_Object, pTransform: *Lib3MF.sTransform, pComponentInstance: *Lib3MF_Component) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves a component from a component object.
*
* @param[in] pComponentsObject - ComponentsObject instance.
* @param[in] nIndex - index of the component to retrieve (0 to componentcount - 1)
* @param[out] pComponentInstance - component instance
* @return error code or 0 (success)
*/
lib3mf_componentsobject_getcomponent :: (pComponentsObject: Lib3MF_ComponentsObject, nIndex: Lib3MF_uint32, pComponentInstance: *Lib3MF_Component) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves a component count of a component object.
*
* @param[in] pComponentsObject - ComponentsObject instance.
* @param[out] pCount - returns the component count
* @return error code or 0 (success)
*/
lib3mf_componentsobject_getcomponentcount :: (pComponentsObject: Lib3MF_ComponentsObject, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Sets a beamset's name string
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] pName - new name of the beamset.
* @return error code or 0 (success)
*/
lib3mf_beamset_setname :: (pBeamSet: Lib3MF_BeamSet, pName: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves a beamset's name string
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] nNameBufferSize - size of the buffer (including trailing 0)
* @param[out] pNameNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pNameBuffer -  buffer of returns the name of the beamset., may be NULL
* @return error code or 0 (success)
*/
lib3mf_beamset_getname :: (pBeamSet: Lib3MF_BeamSet, nNameBufferSize: Lib3MF_uint32, pNameNeededChars: *Lib3MF_uint32, pNameBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets a beamset's identifier string
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] pIdentifier - new name of the beamset.
* @return error code or 0 (success)
*/
lib3mf_beamset_setidentifier :: (pBeamSet: Lib3MF_BeamSet, pIdentifier: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves a beamset's identifier string
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] nIdentifierBufferSize - size of the buffer (including trailing 0)
* @param[out] pIdentifierNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pIdentifierBuffer -  buffer of returns the identifier of the beamset., may be NULL
* @return error code or 0 (success)
*/
lib3mf_beamset_getidentifier :: (pBeamSet: Lib3MF_BeamSet, nIdentifierBufferSize: Lib3MF_uint32, pIdentifierNeededChars: *Lib3MF_uint32, pIdentifierBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the reference count of a beamset
*
* @param[in] pBeamSet - BeamSet instance.
* @param[out] pCount - returns the reference count
* @return error code or 0 (success)
*/
lib3mf_beamset_getreferencecount :: (pBeamSet: Lib3MF_BeamSet, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the references of a beamset
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] nReferencesBufferSize - Number of elements in buffer
* @param[in] pReferencesBuffer - uint32 buffer of the new indices of all beams in this beamset
* @return error code or 0 (success)
*/
lib3mf_beamset_setreferences :: (pBeamSet: Lib3MF_BeamSet, nReferencesBufferSize: Lib3MF_uint64, pReferencesBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the references of a beamset
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] nReferencesBufferSize - Number of elements in buffer
* @param[out] pReferencesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pReferencesBuffer - uint32  buffer of retrieves the indices of all beams in this beamset
* @return error code or 0 (success)
*/
lib3mf_beamset_getreferences :: (pBeamSet: Lib3MF_BeamSet, nReferencesBufferSize: Lib3MF_uint64, pReferencesNeededCount: *Lib3MF_uint64, pReferencesBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the ball reference count of a beamset
*
* @param[in] pBeamSet - BeamSet instance.
* @param[out] pCount - returns the ball reference count
* @return error code or 0 (success)
*/
lib3mf_beamset_getballreferencecount :: (pBeamSet: Lib3MF_BeamSet, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the ball references of a beamset
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] nBallReferencesBufferSize - Number of elements in buffer
* @param[in] pBallReferencesBuffer - uint32 buffer of the new indices of all balls in this beamset
* @return error code or 0 (success)
*/
lib3mf_beamset_setballreferences :: (pBeamSet: Lib3MF_BeamSet, nBallReferencesBufferSize: Lib3MF_uint64, pBallReferencesBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the ball references of a beamset
*
* @param[in] pBeamSet - BeamSet instance.
* @param[in] nBallReferencesBufferSize - Number of elements in buffer
* @param[out] pBallReferencesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pBallReferencesBuffer - uint32  buffer of retrieves the indices of all balls in this beamset
* @return error code or 0 (success)
*/
lib3mf_beamset_getballreferences :: (pBeamSet: Lib3MF_BeamSet, nBallReferencesBufferSize: Lib3MF_uint64, pBallReferencesNeededCount: *Lib3MF_uint64, pBallReferencesBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the count of base materials in the material group.
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[out] pCount - returns the count of base materials.
* @return error code or 0 (success)
*/
lib3mf_basematerialgroup_getcount :: (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* returns all the PropertyIDs of all materials in this group
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[out] pPropertyIDsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertyIDsBuffer - uint32  buffer of PropertyID of the material in the material group.
* @return error code or 0 (success)
*/
lib3mf_basematerialgroup_getallpropertyids :: (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsNeededCount: *Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a new material to the material group
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] pName - new name of the base material.
* @param[in] pDisplayColor - Display color of the material
* @param[out] pPropertyID - returns new PropertyID of the new material in the material group.
* @return error code or 0 (success)
*/
lib3mf_basematerialgroup_addmaterial :: (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, pName: *u8, pDisplayColor: *Lib3MF.sColor, pPropertyID: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Removes a material from the material group.
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] nPropertyID - PropertyID of the material in the material group.
* @return error code or 0 (success)
*/
lib3mf_basematerialgroup_removematerial :: (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, nPropertyID: Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the base material's name
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] nPropertyID - PropertyID of the material in the material group.
* @param[in] nNameBufferSize - size of the buffer (including trailing 0)
* @param[out] pNameNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pNameBuffer -  buffer of returns the name of the base material., may be NULL
* @return error code or 0 (success)
*/
lib3mf_basematerialgroup_getname :: (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, nPropertyID: Lib3MF_uint32, nNameBufferSize: Lib3MF_uint32, pNameNeededChars: *Lib3MF_uint32, pNameBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets a base material's name
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] nPropertyID - PropertyID of the material in the material group.
* @param[in] pName - new name of the base material.
* @return error code or 0 (success)
*/
lib3mf_basematerialgroup_setname :: (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, nPropertyID: Lib3MF_uint32, pName: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets a base material's display color.
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] nPropertyID - PropertyID of the material in the material group.
* @param[in] pTheColor - The base material's display color
* @return error code or 0 (success)
*/
lib3mf_basematerialgroup_setdisplaycolor :: (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, nPropertyID: Lib3MF_uint32, pTheColor: *Lib3MF.sColor) -> Lib3MFResult #foreign lib3mf;

/**
* Returns a base material's display color.
*
* @param[in] pBaseMaterialGroup - BaseMaterialGroup instance.
* @param[in] nPropertyID - PropertyID of the material in the material group.
* @param[out] pTheColor - The base material's display color
* @return error code or 0 (success)
*/
lib3mf_basematerialgroup_getdisplaycolor :: (pBaseMaterialGroup: Lib3MF_BaseMaterialGroup, nPropertyID: Lib3MF_uint32, pTheColor: *Lib3MF.sColor) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the count of base materials in this Color Group.
*
* @param[in] pColorGroup - ColorGroup instance.
* @param[out] pCount - returns the count of colors within this color group.
* @return error code or 0 (success)
*/
lib3mf_colorgroup_getcount :: (pColorGroup: Lib3MF_ColorGroup, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* returns all the PropertyIDs of all colors within this group
*
* @param[in] pColorGroup - ColorGroup instance.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[out] pPropertyIDsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertyIDsBuffer - uint32  buffer of PropertyID of the color in the color group.
* @return error code or 0 (success)
*/
lib3mf_colorgroup_getallpropertyids :: (pColorGroup: Lib3MF_ColorGroup, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsNeededCount: *Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a new value.
*
* @param[in] pColorGroup - ColorGroup instance.
* @param[in] pTheColor - The new color
* @param[out] pPropertyID - PropertyID of the new color within this color group.
* @return error code or 0 (success)
*/
lib3mf_colorgroup_addcolor :: (pColorGroup: Lib3MF_ColorGroup, pTheColor: *Lib3MF.sColor, pPropertyID: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Removes a color from the color group.
*
* @param[in] pColorGroup - ColorGroup instance.
* @param[in] nPropertyID - PropertyID of the color to be removed from the color group.
* @return error code or 0 (success)
*/
lib3mf_colorgroup_removecolor :: (pColorGroup: Lib3MF_ColorGroup, nPropertyID: Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Sets a color value.
*
* @param[in] pColorGroup - ColorGroup instance.
* @param[in] nPropertyID - PropertyID of a color within this color group.
* @param[in] pTheColor - The color
* @return error code or 0 (success)
*/
lib3mf_colorgroup_setcolor :: (pColorGroup: Lib3MF_ColorGroup, nPropertyID: Lib3MF_uint32, pTheColor: *Lib3MF.sColor) -> Lib3MFResult #foreign lib3mf;

/**
* Sets a color value.
*
* @param[in] pColorGroup - ColorGroup instance.
* @param[in] nPropertyID - PropertyID of a color within this color group.
* @param[out] pTheColor - The color
* @return error code or 0 (success)
*/
lib3mf_colorgroup_getcolor :: (pColorGroup: Lib3MF_ColorGroup, nPropertyID: Lib3MF_uint32, pTheColor: *Lib3MF.sColor) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the count of tex2coords in the Texture2DGroup.
*
* @param[in] pTexture2DGroup - Texture2DGroup instance.
* @param[out] pCount - returns the count of tex2coords.
* @return error code or 0 (success)
*/
lib3mf_texture2dgroup_getcount :: (pTexture2DGroup: Lib3MF_Texture2DGroup, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* returns all the PropertyIDs of all tex2coords in this Texture2DGroup
*
* @param[in] pTexture2DGroup - Texture2DGroup instance.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[out] pPropertyIDsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertyIDsBuffer - uint32  buffer of PropertyID of the tex2coords in the Texture2DGroup.
* @return error code or 0 (success)
*/
lib3mf_texture2dgroup_getallpropertyids :: (pTexture2DGroup: Lib3MF_Texture2DGroup, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsNeededCount: *Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a new tex2coord to the Texture2DGroup
*
* @param[in] pTexture2DGroup - Texture2DGroup instance.
* @param[in] pUVCoordinate - The u/v-coordinate within the texture, horizontally right/vertically up from the origin in the lower left of the texture.
* @param[out] pPropertyID - returns new PropertyID of the new tex2coord in the Texture2DGroup.
* @return error code or 0 (success)
*/
lib3mf_texture2dgroup_addtex2coord :: (pTexture2DGroup: Lib3MF_Texture2DGroup, pUVCoordinate: *Lib3MF.sTex2Coord, pPropertyID: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Obtains a tex2coord to the Texture2DGroup
*
* @param[in] pTexture2DGroup - Texture2DGroup instance.
* @param[in] nPropertyID - the PropertyID of the tex2coord in the Texture2DGroup.
* @param[out] pUVCoordinate - The u/v-coordinate within the texture, horizontally right/vertically up from the origin in the lower left of the texture.
* @return error code or 0 (success)
*/
lib3mf_texture2dgroup_gettex2coord :: (pTexture2DGroup: Lib3MF_Texture2DGroup, nPropertyID: Lib3MF_uint32, pUVCoordinate: *Lib3MF.sTex2Coord) -> Lib3MFResult #foreign lib3mf;

/**
* Removes a tex2coords from the Texture2DGroup.
*
* @param[in] pTexture2DGroup - Texture2DGroup instance.
* @param[in] nPropertyID - PropertyID of the tex2coords in the Texture2DGroup.
* @return error code or 0 (success)
*/
lib3mf_texture2dgroup_removetex2coord :: (pTexture2DGroup: Lib3MF_Texture2DGroup, nPropertyID: Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Obtains the texture2D instance of this group.
*
* @param[in] pTexture2DGroup - Texture2DGroup instance.
* @param[out] pTexture2DInstance - the texture2D instance of this group.
* @return error code or 0 (success)
*/
lib3mf_texture2dgroup_gettexture2d :: (pTexture2DGroup: Lib3MF_Texture2DGroup, pTexture2DInstance: *Lib3MF_Texture2D) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the count of Composite-s in the CompositeMaterials.
*
* @param[in] pCompositeMaterials - CompositeMaterials instance.
* @param[out] pCount - returns the count of Composite-s
* @return error code or 0 (success)
*/
lib3mf_compositematerials_getcount :: (pCompositeMaterials: Lib3MF_CompositeMaterials, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* returns all the PropertyIDs of all Composite-Mixing Values in this CompositeMaterials
*
* @param[in] pCompositeMaterials - CompositeMaterials instance.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[out] pPropertyIDsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertyIDsBuffer - uint32  buffer of PropertyID of the Composite-Mixing Values in the CompositeMaterials.
* @return error code or 0 (success)
*/
lib3mf_compositematerials_getallpropertyids :: (pCompositeMaterials: Lib3MF_CompositeMaterials, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsNeededCount: *Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Obtains the BaseMaterialGroup instance of this CompositeMaterials.
*
* @param[in] pCompositeMaterials - CompositeMaterials instance.
* @param[out] pBaseMaterialGroupInstance - returns the BaseMaterialGroup instance of this CompositeMaterials
* @return error code or 0 (success)
*/
lib3mf_compositematerials_getbasematerialgroup :: (pCompositeMaterials: Lib3MF_CompositeMaterials, pBaseMaterialGroupInstance: *Lib3MF_BaseMaterialGroup) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a new Composite-Mixing Values to the CompositeMaterials.
*
* @param[in] pCompositeMaterials - CompositeMaterials instance.
* @param[in] nCompositeBufferSize - Number of elements in buffer
* @param[in] pCompositeBuffer - CompositeConstituent buffer of The Composite Constituents to be added as composite
* @param[out] pPropertyID - returns new PropertyID of the new Composite in the CompositeMaterials.
* @return error code or 0 (success)
*/
lib3mf_compositematerials_addcomposite :: (pCompositeMaterials: Lib3MF_CompositeMaterials, nCompositeBufferSize: Lib3MF_uint64, pCompositeBuffer: *Lib3MF.sCompositeConstituent, pPropertyID: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Removes a Composite-Maxing Ratio from the CompositeMaterials.
*
* @param[in] pCompositeMaterials - CompositeMaterials instance.
* @param[in] nPropertyID - PropertyID of the  Composite-Mixing Values in the CompositeMaterials to be removed.
* @return error code or 0 (success)
*/
lib3mf_compositematerials_removecomposite :: (pCompositeMaterials: Lib3MF_CompositeMaterials, nPropertyID: Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Obtains a Composite-Maxing Ratio of this CompositeMaterials.
*
* @param[in] pCompositeMaterials - CompositeMaterials instance.
* @param[in] nPropertyID - the PropertyID of the Composite-Maxing Ratio in the CompositeMaterials.
* @param[in] nCompositeBufferSize - Number of elements in buffer
* @param[out] pCompositeNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pCompositeBuffer - CompositeConstituent  buffer of The Composite-Mixing Values with the given PropertyID
* @return error code or 0 (success)
*/
lib3mf_compositematerials_getcomposite :: (pCompositeMaterials: Lib3MF_CompositeMaterials, nPropertyID: Lib3MF_uint32, nCompositeBufferSize: Lib3MF_uint64, pCompositeNeededCount: *Lib3MF_uint64, pCompositeBuffer: *Lib3MF.sCompositeConstituent) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the count of MultiProperty-s in the MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[out] pCount - returns the count of MultiProperty-s
* @return error code or 0 (success)
*/
lib3mf_multipropertygroup_getcount :: (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* returns all the PropertyIDs of all MultiProperty-s in this MultiPropertyGroup
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[out] pPropertyIDsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertyIDsBuffer - uint32  buffer of PropertyID of the MultiProperty-s in the MultiPropertyGroup.
* @return error code or 0 (success)
*/
lib3mf_multipropertygroup_getallpropertyids :: (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsNeededCount: *Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a new MultiProperty to the MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[in] pPropertyIDsBuffer - uint32 buffer of The PropertyIDs of the new MultiProperty.
* @param[out] pPropertyID - returns the PropertyID of the new MultiProperty in the MultiPropertyGroup.
* @return error code or 0 (success)
*/
lib3mf_multipropertygroup_addmultiproperty :: (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32, pPropertyID: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the PropertyIDs of a MultiProperty.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nPropertyID - the PropertyID of the MultiProperty to be changed.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[in] pPropertyIDsBuffer - uint32 buffer of The new PropertyIDs of the MultiProperty
* @return error code or 0 (success)
*/
lib3mf_multipropertygroup_setmultiproperty :: (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nPropertyID: Lib3MF_uint32, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Obtains the PropertyIDs of a MultiProperty.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nPropertyID - the PropertyID of the MultiProperty to be queried.
* @param[in] nPropertyIDsBufferSize - Number of elements in buffer
* @param[out] pPropertyIDsNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pPropertyIDsBuffer - uint32  buffer of The PropertyIDs of the MultiProperty
* @return error code or 0 (success)
*/
lib3mf_multipropertygroup_getmultiproperty :: (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nPropertyID: Lib3MF_uint32, nPropertyIDsBufferSize: Lib3MF_uint64, pPropertyIDsNeededCount: *Lib3MF_uint64, pPropertyIDsBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Removes a MultiProperty from this MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nPropertyID - the PropertyID of the MultiProperty to be removed.
* @return error code or 0 (success)
*/
lib3mf_multipropertygroup_removemultiproperty :: (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nPropertyID: Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the number of layers of this MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[out] pCount - returns the number of layers
* @return error code or 0 (success)
*/
lib3mf_multipropertygroup_getlayercount :: (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, pCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a MultiPropertyLayer to this MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] pTheLayer - The MultiPropertyLayer to add to this MultiPropertyGroup
* @param[out] pLayerIndex - returns the index of this MultiPropertyLayer
* @return error code or 0 (success)
*/
lib3mf_multipropertygroup_addlayer :: (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, pTheLayer: *Lib3MF.sMultiPropertyLayer, pLayerIndex: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Obtains a MultiPropertyLayer of this MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nLayerIndex - The Index of the MultiPropertyLayer queried
* @param[out] pTheLayer - The MultiPropertyLayer with index LayerIndex within MultiPropertyGroup
* @return error code or 0 (success)
*/
lib3mf_multipropertygroup_getlayer :: (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nLayerIndex: Lib3MF_uint32, pTheLayer: *Lib3MF.sMultiPropertyLayer) -> Lib3MFResult #foreign lib3mf;

/**
* Removes a MultiPropertyLayer from this MultiPropertyGroup.
*
* @param[in] pMultiPropertyGroup - MultiPropertyGroup instance.
* @param[in] nLayerIndex - The Index of the MultiPropertyLayer to be removed
* @return error code or 0 (success)
*/
lib3mf_multipropertygroup_removelayer :: (pMultiPropertyGroup: Lib3MF_MultiPropertyGroup, nLayerIndex: Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves an attachment's package path. This function will be removed in a later release.
*
* @param[in] pAttachment - Attachment instance.
* @param[in] nPathBufferSize - size of the buffer (including trailing 0)
* @param[out] pPathNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPathBuffer -  buffer of returns the attachment's package path string, may be NULL
* @return error code or 0 (success)
*/
lib3mf_attachment_getpath :: (pAttachment: Lib3MF_Attachment, nPathBufferSize: Lib3MF_uint32, pPathNeededChars: *Lib3MF_uint32, pPathBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets an attachment's package path. This function will be removed in a later release.
*
* @param[in] pAttachment - Attachment instance.
* @param[in] pPath - new path of the attachment.
* @return error code or 0 (success)
*/
lib3mf_attachment_setpath :: (pAttachment: Lib3MF_Attachment, pPath: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the PackagePart that is this attachment.
*
* @param[in] pAttachment - Attachment instance.
* @param[out] pPackagePart - The PackagePart of this attachment.
* @return error code or 0 (success)
*/
lib3mf_attachment_packagepart :: (pAttachment: Lib3MF_Attachment, pPackagePart: *Lib3MF_PackagePart) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves an attachment's relationship type
*
* @param[in] pAttachment - Attachment instance.
* @param[in] nPathBufferSize - size of the buffer (including trailing 0)
* @param[out] pPathNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPathBuffer -  buffer of returns the attachment's package relationship type string, may be NULL
* @return error code or 0 (success)
*/
lib3mf_attachment_getrelationshiptype :: (pAttachment: Lib3MF_Attachment, nPathBufferSize: Lib3MF_uint32, pPathNeededChars: *Lib3MF_uint32, pPathBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets an attachment's relationship type.
*
* @param[in] pAttachment - Attachment instance.
* @param[in] pPath - new relationship type string.
* @return error code or 0 (success)
*/
lib3mf_attachment_setrelationshiptype :: (pAttachment: Lib3MF_Attachment, pPath: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Writes out the attachment as file.
*
* @param[in] pAttachment - Attachment instance.
* @param[in] pFileName - file to write into.
* @return error code or 0 (success)
*/
lib3mf_attachment_writetofile :: (pAttachment: Lib3MF_Attachment, pFileName: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Reads an attachment from a file. The path of this file is only read when this attachment is being written as part of the 3MF packege, or via the WriteToFile or WriteToBuffer-methods.
*
* @param[in] pAttachment - Attachment instance.
* @param[in] pFileName - file to read from.
* @return error code or 0 (success)
*/
lib3mf_attachment_readfromfile :: (pAttachment: Lib3MF_Attachment, pFileName: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Reads a model and from the data provided by a callback function
*
* @param[in] pAttachment - Attachment instance.
* @param[in] pTheReadCallback - Callback to call for reading a data chunk
* @param[in] nStreamSize - number of bytes the callback returns
* @param[in] pTheSeekCallback - Callback to call for seeking in the stream.
* @param[in] pUserData - Userdata that is passed to the callback function
* @return error code or 0 (success)
*/
lib3mf_attachment_readfromcallback :: (pAttachment: Lib3MF_Attachment, pTheReadCallback: Lib3MF.ReadCallback, nStreamSize: Lib3MF_uint64, pTheSeekCallback: Lib3MF.SeekCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the size of the attachment stream
*
* @param[in] pAttachment - Attachment instance.
* @param[out] pStreamSize - the stream size
* @return error code or 0 (success)
*/
lib3mf_attachment_getstreamsize :: (pAttachment: Lib3MF_Attachment, pStreamSize: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Writes out the attachment into a buffer
*
* @param[in] pAttachment - Attachment instance.
* @param[in] nBufferBufferSize - Number of elements in buffer
* @param[out] pBufferNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pBufferBuffer - uint8  buffer of Buffer to write into
* @return error code or 0 (success)
*/
lib3mf_attachment_writetobuffer :: (pAttachment: Lib3MF_Attachment, nBufferBufferSize: Lib3MF_uint64, pBufferNeededCount: *Lib3MF_uint64, pBufferBuffer: *Lib3MF_uint8) -> Lib3MFResult #foreign lib3mf;

/**
* Reads an attachment from a memory buffer
*
* @param[in] pAttachment - Attachment instance.
* @param[in] nBufferBufferSize - Number of elements in buffer
* @param[in] pBufferBuffer - uint8 buffer of Buffer to read from
* @return error code or 0 (success)
*/
lib3mf_attachment_readfrombuffer :: (pAttachment: Lib3MF_Attachment, nBufferBufferSize: Lib3MF_uint64, pBufferBuffer: *Lib3MF_uint8) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the attachment located at the path of the texture.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[out] pAttachment - attachment that holds the texture's image information.
* @return error code or 0 (success)
*/
lib3mf_texture2d_getattachment :: (pTexture2D: Lib3MF_Texture2D, pAttachment: *Lib3MF_Attachment) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the texture's package path to the path of the attachment.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[in] pAttachment - attachment that holds the texture's image information.
* @return error code or 0 (success)
*/
lib3mf_texture2d_setattachment :: (pTexture2D: Lib3MF_Texture2D, pAttachment: Lib3MF_Attachment) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves a texture's content type.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[out] pContentType - returns content type enum.
* @return error code or 0 (success)
*/
lib3mf_texture2d_getcontenttype :: (pTexture2D: Lib3MF_Texture2D, pContentType: *Lib3MF.eTextureType) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves a texture's content type.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[in] eContentType - new Content Type
* @return error code or 0 (success)
*/
lib3mf_texture2d_setcontenttype :: (pTexture2D: Lib3MF_Texture2D, eContentType: Lib3MF.eTextureType) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves a texture's tilestyle type.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[out] pTileStyleU - returns tilestyle type enum.
* @param[out] pTileStyleV - returns tilestyle type enum.
* @return error code or 0 (success)
*/
lib3mf_texture2d_gettilestyleuv :: (pTexture2D: Lib3MF_Texture2D, pTileStyleU: *Lib3MF.eTextureTileStyle, pTileStyleV: *Lib3MF.eTextureTileStyle) -> Lib3MFResult #foreign lib3mf;

/**
* Sets a texture's tilestyle type.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[in] eTileStyleU - new tilestyle type enum.
* @param[in] eTileStyleV - new tilestyle type enum.
* @return error code or 0 (success)
*/
lib3mf_texture2d_settilestyleuv :: (pTexture2D: Lib3MF_Texture2D, eTileStyleU: Lib3MF.eTextureTileStyle, eTileStyleV: Lib3MF.eTextureTileStyle) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves a texture's filter type.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[out] pFilter - returns filter type enum.
* @return error code or 0 (success)
*/
lib3mf_texture2d_getfilter :: (pTexture2D: Lib3MF_Texture2D, pFilter: *Lib3MF.eTextureFilter) -> Lib3MFResult #foreign lib3mf;

/**
* Sets a texture's filter type.
*
* @param[in] pTexture2D - Texture2D instance.
* @param[in] eFilter - sets new filter type enum.
* @return error code or 0 (success)
*/
lib3mf_texture2d_setfilter :: (pTexture2D: Lib3MF_Texture2D, eFilter: Lib3MF.eTextureFilter) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the object resource associated to a build item
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pObjectResource - returns the associated resource instance
* @return error code or 0 (success)
*/
lib3mf_builditem_getobjectresource :: (pBuildItem: Lib3MF_BuildItem, pObjectResource: *Lib3MF_Object) -> Lib3MFResult #foreign lib3mf;

/**
* returns, whether a build item has a UUID and, if true, the build item's UUID
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pHasUUID - flag whether the build item has a UUID
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of the UUID as string of the form 'xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx', may be NULL
* @return error code or 0 (success)
*/
lib3mf_builditem_getuuid :: (pBuildItem: Lib3MF_BuildItem, pHasUUID: *bool, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* sets the build item's UUID
*
* @param[in] pBuildItem - BuildItem instance.
* @param[in] pUUID - the UUID as string of the form 'xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx'
* @return error code or 0 (success)
*/
lib3mf_builditem_setuuid :: (pBuildItem: Lib3MF_BuildItem, pUUID: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the object UniqueResourceID associated to a build item
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pUniqueResourceID - returns the UniqueResourceID of the object
* @return error code or 0 (success)
*/
lib3mf_builditem_getobjectresourceid :: (pBuildItem: Lib3MF_BuildItem, pUniqueResourceID: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Checks, if a build item has a non-identity transformation matrix
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pHasTransform - returns true, if the transformation matrix is not the identity
* @return error code or 0 (success)
*/
lib3mf_builditem_hasobjecttransform :: (pBuildItem: Lib3MF_BuildItem, pHasTransform: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves a build item's transformation matrix.
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pTransform - returns the transformation matrix
* @return error code or 0 (success)
*/
lib3mf_builditem_getobjecttransform :: (pBuildItem: Lib3MF_BuildItem, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #foreign lib3mf;

/**
* Sets a build item's transformation matrix.
*
* @param[in] pBuildItem - BuildItem instance.
* @param[in] pTransform - new transformation matrix
* @return error code or 0 (success)
*/
lib3mf_builditem_setobjecttransform :: (pBuildItem: Lib3MF_BuildItem, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves a build item's part number string
*
* @param[in] pBuildItem - BuildItem instance.
* @param[in] nPartNumberBufferSize - size of the buffer (including trailing 0)
* @param[out] pPartNumberNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPartNumberBuffer -  buffer of Returns a build item's part number string, may be NULL
* @return error code or 0 (success)
*/
lib3mf_builditem_getpartnumber :: (pBuildItem: Lib3MF_BuildItem, nPartNumberBufferSize: Lib3MF_uint32, pPartNumberNeededChars: *Lib3MF_uint32, pPartNumberBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets a build item's part number string
*
* @param[in] pBuildItem - BuildItem instance.
* @param[in] pSetPartnumber - new part number string for referencing parts from the outside world
* @return error code or 0 (success)
*/
lib3mf_builditem_setpartnumber :: (pBuildItem: Lib3MF_BuildItem, pSetPartnumber: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the metadatagroup of this build item
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pMetaDataGroup - returns an Instance of the metadatagroup of this build item
* @return error code or 0 (success)
*/
lib3mf_builditem_getmetadatagroup :: (pBuildItem: Lib3MF_BuildItem, pMetaDataGroup: *Lib3MF_MetaDataGroup) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the outbox of a build item
*
* @param[in] pBuildItem - BuildItem instance.
* @param[out] pOutbox - Outbox of this build item
* @return error code or 0 (success)
*/
lib3mf_builditem_getoutbox :: (pBuildItem: Lib3MF_BuildItem, pOutbox: *Lib3MF.sBox) -> Lib3MFResult #foreign lib3mf;

/**
* Iterates to the next build item in the list.
*
* @param[in] pBuildItemIterator - BuildItemIterator instance.
* @param[out] pHasNext - Iterates to the next build item in the list.
* @return error code or 0 (success)
*/
lib3mf_builditemiterator_movenext :: (pBuildItemIterator: Lib3MF_BuildItemIterator, pHasNext: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Iterates to the previous build item in the list.
*
* @param[in] pBuildItemIterator - BuildItemIterator instance.
* @param[out] pHasPrevious - Iterates to the previous build item in the list.
* @return error code or 0 (success)
*/
lib3mf_builditemiterator_moveprevious :: (pBuildItemIterator: Lib3MF_BuildItemIterator, pHasPrevious: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the build item the iterator points at.
*
* @param[in] pBuildItemIterator - BuildItemIterator instance.
* @param[out] pBuildItem - returns the build item instance.
* @return error code or 0 (success)
*/
lib3mf_builditemiterator_getcurrent :: (pBuildItemIterator: Lib3MF_BuildItemIterator, pBuildItem: *Lib3MF_BuildItem) -> Lib3MFResult #foreign lib3mf;

/**
* Creates a new build item iterator with the same build item list.
*
* @param[in] pBuildItemIterator - BuildItemIterator instance.
* @param[out] pOutBuildItemIterator - returns the cloned Iterator instance
* @return error code or 0 (success)
*/
lib3mf_builditemiterator_clone :: (pBuildItemIterator: Lib3MF_BuildItemIterator, pOutBuildItemIterator: *Lib3MF_BuildItemIterator) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the number of build items the iterator captures.
*
* @param[in] pBuildItemIterator - BuildItemIterator instance.
* @param[out] pCount - returns the number of build items the iterator captures.
* @return error code or 0 (success)
*/
lib3mf_builditemiterator_count :: (pBuildItemIterator: Lib3MF_BuildItemIterator, pCount: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Set all vertices of a slice. All polygons will be cleared.
*
* @param[in] pSlice - Slice instance.
* @param[in] nVerticesBufferSize - Number of elements in buffer
* @param[in] pVerticesBuffer - Position2D buffer of contains the positions.
* @return error code or 0 (success)
*/
lib3mf_slice_setvertices :: (pSlice: Lib3MF_Slice, nVerticesBufferSize: Lib3MF_uint64, pVerticesBuffer: *Lib3MF.sPosition2D) -> Lib3MFResult #foreign lib3mf;

/**
* Get all vertices of a slice
*
* @param[in] pSlice - Slice instance.
* @param[in] nVerticesBufferSize - Number of elements in buffer
* @param[out] pVerticesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pVerticesBuffer - Position2D  buffer of contains the positions.
* @return error code or 0 (success)
*/
lib3mf_slice_getvertices :: (pSlice: Lib3MF_Slice, nVerticesBufferSize: Lib3MF_uint64, pVerticesNeededCount: *Lib3MF_uint64, pVerticesBuffer: *Lib3MF.sPosition2D) -> Lib3MFResult #foreign lib3mf;

/**
* Get the number of vertices in a slice
*
* @param[in] pSlice - Slice instance.
* @param[out] pCount - the number of vertices in the slice
* @return error code or 0 (success)
*/
lib3mf_slice_getvertexcount :: (pSlice: Lib3MF_Slice, pCount: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Add a new polygon to this slice
*
* @param[in] pSlice - Slice instance.
* @param[in] nIndicesBufferSize - Number of elements in buffer
* @param[in] pIndicesBuffer - uint32 buffer of the new indices of the new polygon
* @param[out] pIndex - the index of the new polygon
* @return error code or 0 (success)
*/
lib3mf_slice_addpolygon :: (pSlice: Lib3MF_Slice, nIndicesBufferSize: Lib3MF_uint64, pIndicesBuffer: *Lib3MF_uint32, pIndex: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Get the number of polygons in the slice
*
* @param[in] pSlice - Slice instance.
* @param[out] pCount - the number of polygons in the slice
* @return error code or 0 (success)
*/
lib3mf_slice_getpolygoncount :: (pSlice: Lib3MF_Slice, pCount: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Set all indices of a polygon
*
* @param[in] pSlice - Slice instance.
* @param[in] nIndex - the index of the polygon to manipulate
* @param[in] nIndicesBufferSize - Number of elements in buffer
* @param[in] pIndicesBuffer - uint32 buffer of the new indices of the index-th polygon
* @return error code or 0 (success)
*/
lib3mf_slice_setpolygonindices :: (pSlice: Lib3MF_Slice, nIndex: Lib3MF_uint64, nIndicesBufferSize: Lib3MF_uint64, pIndicesBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Get all vertices of a slice
*
* @param[in] pSlice - Slice instance.
* @param[in] nIndex - the index of the polygon to manipulate
* @param[in] nIndicesBufferSize - Number of elements in buffer
* @param[out] pIndicesNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pIndicesBuffer - uint32  buffer of the indices of the index-th polygon
* @return error code or 0 (success)
*/
lib3mf_slice_getpolygonindices :: (pSlice: Lib3MF_Slice, nIndex: Lib3MF_uint64, nIndicesBufferSize: Lib3MF_uint64, pIndicesNeededCount: *Lib3MF_uint64, pIndicesBuffer: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Get the number of vertices in a slice
*
* @param[in] pSlice - Slice instance.
* @param[in] nIndex - the index of the polygon to manipulate
* @param[out] pCount - the number of indices of the index-th polygon
* @return error code or 0 (success)
*/
lib3mf_slice_getpolygonindexcount :: (pSlice: Lib3MF_Slice, nIndex: Lib3MF_uint64, pCount: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Get the upper Z-Coordinate of this slice.
*
* @param[in] pSlice - Slice instance.
* @param[out] pZTop - the upper Z-Coordinate of this slice
* @return error code or 0 (success)
*/
lib3mf_slice_getztop :: (pSlice: Lib3MF_Slice, pZTop: *Lib3MF_double) -> Lib3MFResult #foreign lib3mf;

/**
* Get the lower Z-Coordinate of the slice stack.
*
* @param[in] pSliceStack - SliceStack instance.
* @param[out] pZBottom - the lower Z-Coordinate the slice stack
* @return error code or 0 (success)
*/
lib3mf_slicestack_getbottomz :: (pSliceStack: Lib3MF_SliceStack, pZBottom: *Lib3MF_double) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the number of slices
*
* @param[in] pSliceStack - SliceStack instance.
* @param[out] pCount - the number of slices
* @return error code or 0 (success)
*/
lib3mf_slicestack_getslicecount :: (pSliceStack: Lib3MF_SliceStack, pCount: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Query a slice from the slice stack
*
* @param[in] pSliceStack - SliceStack instance.
* @param[in] nSliceIndex - the index of the slice
* @param[out] pTheSlice - the Slice instance
* @return error code or 0 (success)
*/
lib3mf_slicestack_getslice :: (pSliceStack: Lib3MF_SliceStack, nSliceIndex: Lib3MF_uint64, pTheSlice: *Lib3MF_Slice) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the number of slices
*
* @param[in] pSliceStack - SliceStack instance.
* @param[in] dZTop - upper Z coordinate of the slice
* @param[out] pTheSlice - a new Slice instance
* @return error code or 0 (success)
*/
lib3mf_slicestack_addslice :: (pSliceStack: Lib3MF_SliceStack, dZTop: Lib3MF_double, pTheSlice: *Lib3MF_Slice) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the number of slice refs
*
* @param[in] pSliceStack - SliceStack instance.
* @param[out] pCount - the number of slicereferences
* @return error code or 0 (success)
*/
lib3mf_slicestack_getslicerefcount :: (pSliceStack: Lib3MF_SliceStack, pCount: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Adds another existing slicestack as sliceref in this slicestack
*
* @param[in] pSliceStack - SliceStack instance.
* @param[in] pTheSliceStack - the slicestack to use as sliceref
* @return error code or 0 (success)
*/
lib3mf_slicestack_addslicestackreference :: (pSliceStack: Lib3MF_SliceStack, pTheSliceStack: Lib3MF_SliceStack) -> Lib3MFResult #foreign lib3mf;

/**
* Adds another existing slicestack as sliceref in this slicestack
*
* @param[in] pSliceStack - SliceStack instance.
* @param[in] nSliceRefIndex - the index of the slice ref
* @param[out] pTheSliceStack - the slicestack that is used as sliceref
* @return error code or 0 (success)
*/
lib3mf_slicestack_getslicestackreference :: (pSliceStack: Lib3MF_SliceStack, nSliceRefIndex: Lib3MF_uint64, pTheSliceStack: *Lib3MF_SliceStack) -> Lib3MFResult #foreign lib3mf;

/**
* Removes the indirection of slices via slice-refs, i.e. creates the slices of all slice refs of this SliceStack as actual slices of this SliceStack. All previously existing slices or slicerefs will be removed.
*
* @param[in] pSliceStack - SliceStack instance.
* @return error code or 0 (success)
*/
lib3mf_slicestack_collapseslicereferences :: (pSliceStack: Lib3MF_SliceStack) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the package path where this Slice should be stored. Input an empty string to reset the path
*
* @param[in] pSliceStack - SliceStack instance.
* @param[in] pPath - the package path where this Slice should be stored
* @return error code or 0 (success)
*/
lib3mf_slicestack_setownpath :: (pSliceStack: Lib3MF_SliceStack, pPath: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Obtains the package path where this Slice should be stored. Returns an empty string if the slicestack is stored within the root model.
*
* @param[in] pSliceStack - SliceStack instance.
* @param[in] nPathBufferSize - size of the buffer (including trailing 0)
* @param[out] pPathNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPathBuffer -  buffer of the package path where this Slice will be stored, may be NULL
* @return error code or 0 (success)
*/
lib3mf_slicestack_getownpath :: (pSliceStack: Lib3MF_SliceStack, nPathBufferSize: Lib3MF_uint32, pPathNeededChars: *Lib3MF_uint32, pPathBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the consumerid
*
* @param[in] pConsumer - Consumer instance.
* @param[in] nConsumerIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pConsumerIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pConsumerIDBuffer -  buffer of A unique identifier for the consumers, may be NULL
* @return error code or 0 (success)
*/
lib3mf_consumer_getconsumerid :: (pConsumer: Lib3MF_Consumer, nConsumerIDBufferSize: Lib3MF_uint32, pConsumerIDNeededChars: *Lib3MF_uint32, pConsumerIDBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Getts the keyid
*
* @param[in] pConsumer - Consumer instance.
* @param[in] nKeyIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pKeyIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pKeyIDBuffer -  buffer of The identifier for the key of this consumer, may be NULL
* @return error code or 0 (success)
*/
lib3mf_consumer_getkeyid :: (pConsumer: Lib3MF_Consumer, nKeyIDBufferSize: Lib3MF_uint32, pKeyIDNeededChars: *Lib3MF_uint32, pKeyIDBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the keyvalue associated with this consumer
*
* @param[in] pConsumer - Consumer instance.
* @param[in] nKeyValueBufferSize - size of the buffer (including trailing 0)
* @param[out] pKeyValueNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pKeyValueBuffer -  buffer of The public key, when available, of this consumer, may be NULL
* @return error code or 0 (success)
*/
lib3mf_consumer_getkeyvalue :: (pConsumer: Lib3MF_Consumer, nKeyValueBufferSize: Lib3MF_uint32, pKeyValueNeededChars: *Lib3MF_uint32, pKeyValueBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the consumer associated with this access right
*
* @param[in] pAccessRight - AccessRight instance.
* @param[out] pConsumer - The consumer instance
* @return error code or 0 (success)
*/
lib3mf_accessright_getconsumer :: (pAccessRight: Lib3MF_AccessRight, pConsumer: *Lib3MF_Consumer) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the associated encryption algorithm
*
* @param[in] pAccessRight - AccessRight instance.
* @param[out] pAlgorithm - The algorithm used for the key in this accessright
* @return error code or 0 (success)
*/
lib3mf_accessright_getwrappingalgorithm :: (pAccessRight: Lib3MF_AccessRight, pAlgorithm: *Lib3MF.eWrappingAlgorithm) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the associated mask generation function algorithm
*
* @param[in] pAccessRight - AccessRight instance.
* @param[out] pAlgorithm - The MFG1 algorithm
* @return error code or 0 (success)
*/
lib3mf_accessright_getmgfalgorithm :: (pAccessRight: Lib3MF_AccessRight, pAlgorithm: *Lib3MF.eMgfAlgorithm) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the digest method assoicated
*
* @param[in] pAccessRight - AccessRight instance.
* @param[out] pAlgorithm - The digest method for this accessright
* @return error code or 0 (success)
*/
lib3mf_accessright_getdigestmethod :: (pAccessRight: Lib3MF_AccessRight, pAlgorithm: *Lib3MF.eDigestMethod) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the encryption method to be used in this encryption process
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[out] pAlgorithm -
* @return error code or 0 (success)
*/
lib3mf_contentencryptionparams_getencryptionalgorithm :: (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, pAlgorithm: *Lib3MF.eEncryptionAlgorithm) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the key for the resource associated
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[in] nByteDataBufferSize - Number of elements in buffer
* @param[out] pByteDataNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pByteDataBuffer - uint8  buffer of Pointer to a buffer where to place the key.
* @return error code or 0 (success)
*/
lib3mf_contentencryptionparams_getkey :: (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, nByteDataBufferSize: Lib3MF_uint64, pByteDataNeededCount: *Lib3MF_uint64, pByteDataBuffer: *Lib3MF_uint8) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the IV data
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[in] nByteDataBufferSize - Number of elements in buffer
* @param[out] pByteDataNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pByteDataBuffer - uint8  buffer of Pointer to a buffer where to place the data.
* @return error code or 0 (success)
*/
lib3mf_contentencryptionparams_getinitializationvector :: (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, nByteDataBufferSize: Lib3MF_uint64, pByteDataNeededCount: *Lib3MF_uint64, pByteDataBuffer: *Lib3MF_uint8) -> Lib3MFResult #foreign lib3mf;

/**
* A handler descriptor that uniquely identifies the context of the resource. Each resource will be assigned a different value
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[in] nByteDataBufferSize - Number of elements in buffer
* @param[out] pByteDataNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pByteDataBuffer - uint8  buffer of Pointer to a buffer where to place the data.
* @return error code or 0 (success)
*/
lib3mf_contentencryptionparams_getauthenticationtag :: (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, nByteDataBufferSize: Lib3MF_uint64, pByteDataNeededCount: *Lib3MF_uint64, pByteDataBuffer: *Lib3MF_uint8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the authentication tag
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[in] nByteDataBufferSize - Number of elements in buffer
* @param[in] pByteDataBuffer - uint8 buffer of The authentication tag size
* @return error code or 0 (success)
*/
lib3mf_contentencryptionparams_setauthenticationtag :: (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, nByteDataBufferSize: Lib3MF_uint64, pByteDataBuffer: *Lib3MF_uint8) -> Lib3MFResult #foreign lib3mf;

/**
* A handler descriptor that uniquely identifies the context of the resource. Each resource will be assigned a different value
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[in] nByteDataBufferSize - Number of elements in buffer
* @param[out] pByteDataNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pByteDataBuffer - uint8  buffer of Buffer where the data will be placed
* @return error code or 0 (success)
*/
lib3mf_contentencryptionparams_getadditionalauthenticationdata :: (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, nByteDataBufferSize: Lib3MF_uint64, pByteDataNeededCount: *Lib3MF_uint64, pByteDataBuffer: *Lib3MF_uint8) -> Lib3MFResult #foreign lib3mf;

/**
* A handler descriptor that uniquely identifies the context of the resource. Each resource will be assigned a different value
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[out] pDescriptor -
* @return error code or 0 (success)
*/
lib3mf_contentencryptionparams_getdescriptor :: (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, pDescriptor: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the resourcedatagroup keyuuid
*
* @param[in] pContentEncryptionParams - ContentEncryptionParams instance.
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of The resourcedatagroup keyuuid that may be use to reference an external key, may be NULL
* @return error code or 0 (success)
*/
lib3mf_contentencryptionparams_getkeyuuid :: (pContentEncryptionParams: Lib3MF_ContentEncryptionParams, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the encrypted part path
*
* @param[in] pResourceData - ResourceData instance.
* @param[out] pPath - The part path
* @return error code or 0 (success)
*/
lib3mf_resourcedata_getpath :: (pResourceData: Lib3MF_ResourceData, pPath: *Lib3MF_PackagePart) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the encryption algorithm used to encrypt this ResourceData
*
* @param[in] pResourceData - ResourceData instance.
* @param[out] pEncryptionAlgorithm - The encryption algorithm
* @return error code or 0 (success)
*/
lib3mf_resourcedata_getencryptionalgorithm :: (pResourceData: Lib3MF_ResourceData, pEncryptionAlgorithm: *Lib3MF.eEncryptionAlgorithm) -> Lib3MFResult #foreign lib3mf;

/**
* Tells whether this ResourceData is compressed or not
*
* @param[in] pResourceData - ResourceData instance.
* @param[out] pCompression - The compression method
* @return error code or 0 (success)
*/
lib3mf_resourcedata_getcompression :: (pResourceData: Lib3MF_ResourceData, pCompression: *Lib3MF.eCompression) -> Lib3MFResult #foreign lib3mf;

/**
* Tells whether this ResourceData is compressed or not
*
* @param[in] pResourceData - ResourceData instance.
* @param[in] nByteDataBufferSize - Number of elements in buffer
* @param[out] pByteDataNeededCount - will be filled with the count of the written elements, or needed buffer size.
* @param[out] pByteDataBuffer - uint8  buffer of The compression method
* @return error code or 0 (success)
*/
lib3mf_resourcedata_getadditionalauthenticationdata :: (pResourceData: Lib3MF_ResourceData, nByteDataBufferSize: Lib3MF_uint64, pByteDataNeededCount: *Lib3MF_uint64, pByteDataBuffer: *Lib3MF_uint8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the resourcedatagroup keyuuid
*
* @param[in] pResourceDataGroup - ResourceDataGroup instance.
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of The new resourcedatagroup keyuuid., may be NULL
* @return error code or 0 (success)
*/
lib3mf_resourcedatagroup_getkeyuuid :: (pResourceDataGroup: Lib3MF_ResourceDataGroup, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Add accessright to resourcedatagroup element
*
* @param[in] pResourceDataGroup - ResourceDataGroup instance.
* @param[in] pConsumer - The Consumer reference
* @param[in] eWrappingAlgorithm - The key wrapping algorithm to be used
* @param[in] eMgfAlgorithm - The mask generation function to be used
* @param[in] eDigestMethod - The digest mechanism to be used
* @param[out] pTheAccessRight - The acess right instance
* @return error code or 0 (success)
*/
lib3mf_resourcedatagroup_addaccessright :: (pResourceDataGroup: Lib3MF_ResourceDataGroup, pConsumer: Lib3MF_Consumer, eWrappingAlgorithm_: Lib3MF.eWrappingAlgorithm, eMgfAlgorithm_: Lib3MF.eMgfAlgorithm, eDigestMethod_: Lib3MF.eDigestMethod, pTheAccessRight: *Lib3MF_AccessRight) -> Lib3MFResult #foreign lib3mf;

/**
* Finds the AccessRight associated with a Consumer
*
* @param[in] pResourceDataGroup - ResourceDataGroup instance.
* @param[in] pConsumer - The Consumer instance
* @param[out] pTheAccessRight - The AcessRight instance
* @return error code or 0 (success)
*/
lib3mf_resourcedatagroup_findaccessrightbyconsumer :: (pResourceDataGroup: Lib3MF_ResourceDataGroup, pConsumer: Lib3MF_Consumer, pTheAccessRight: *Lib3MF_AccessRight) -> Lib3MFResult #foreign lib3mf;

/**
* Removes access from a Consumer on this resource data group
*
* @param[in] pResourceDataGroup - ResourceDataGroup instance.
* @param[in] pConsumer - The Consumer instance
* @return error code or 0 (success)
*/
lib3mf_resourcedatagroup_removeaccessright :: (pResourceDataGroup: Lib3MF_ResourceDataGroup, pConsumer: Lib3MF_Consumer) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a consumer to the keystore
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pConsumerID - A unique identifier for the consumer
* @param[in] pKeyID - The id of the key of the consumer
* @param[in] pKeyValue - The public key for this consumer in PEM format
* @param[out] pConsumer - The consumer instance
* @return error code or 0 (success)
*/
lib3mf_keystore_addconsumer :: (pKeyStore: Lib3MF_KeyStore, pConsumerID: *u8, pKeyID: *u8, pKeyValue: *u8, pConsumer: *Lib3MF_Consumer) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the number of consumers in the keystore
*
* @param[in] pKeyStore - KeyStore instance.
* @param[out] pCount - The consumer count
* @return error code or 0 (success)
*/
lib3mf_keystore_getconsumercount :: (pKeyStore: Lib3MF_KeyStore, pCount: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Get a consumer from the keystore
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] nConsumerIndex - The index of the consumer
* @param[out] pConsumer - The consumer instance
* @return error code or 0 (success)
*/
lib3mf_keystore_getconsumer :: (pKeyStore: Lib3MF_KeyStore, nConsumerIndex: Lib3MF_uint64, pConsumer: *Lib3MF_Consumer) -> Lib3MFResult #foreign lib3mf;

/**
* Removes a consumer from the keystore
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pConsumer - The consumer instance to remove
* @return error code or 0 (success)
*/
lib3mf_keystore_removeconsumer :: (pKeyStore: Lib3MF_KeyStore, pConsumer: Lib3MF_Consumer) -> Lib3MFResult #foreign lib3mf;

/**
* Finds a consumer by ID
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pConsumerID - The ID of the consumer
* @param[out] pConsumer - The consumer instance
* @return error code or 0 (success)
*/
lib3mf_keystore_findconsumer :: (pKeyStore: Lib3MF_KeyStore, pConsumerID: *u8, pConsumer: *Lib3MF_Consumer) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the number of resource data group in the keysore
*
* @param[in] pKeyStore - KeyStore instance.
* @param[out] pCount - The number of resource data available
* @return error code or 0 (success)
*/
lib3mf_keystore_getresourcedatagroupcount :: (pKeyStore: Lib3MF_KeyStore, pCount: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a resource data group into the keystore.
*
* @param[in] pKeyStore - KeyStore instance.
* @param[out] pResourceDataGroup - The resource data group instance
* @return error code or 0 (success)
*/
lib3mf_keystore_addresourcedatagroup :: (pKeyStore: Lib3MF_KeyStore, pResourceDataGroup: *Lib3MF_ResourceDataGroup) -> Lib3MFResult #foreign lib3mf;

/**
* Gets a resource data group
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] nResourceDataIndex - The index of the resource data
* @param[out] pResourceDataGroup - The resource data group instance
* @return error code or 0 (success)
*/
lib3mf_keystore_getresourcedatagroup :: (pKeyStore: Lib3MF_KeyStore, nResourceDataIndex: Lib3MF_uint64, pResourceDataGroup: *Lib3MF_ResourceDataGroup) -> Lib3MFResult #foreign lib3mf;

/**
* Removes a resource data group
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pResourceDataGroup - The resource data group instance
* @return error code or 0 (success)
*/
lib3mf_keystore_removeresourcedatagroup :: (pKeyStore: Lib3MF_KeyStore, pResourceDataGroup: Lib3MF_ResourceDataGroup) -> Lib3MFResult #foreign lib3mf;

/**
* Finds a resource data group that contains a particular resourcedata
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pPartPath - The target path for the resourcedata hold by the resource data group
* @param[out] pResourceDataGroup - The data resource instance
* @return error code or 0 (success)
*/
lib3mf_keystore_findresourcedatagroup :: (pKeyStore: Lib3MF_KeyStore, pPartPath: Lib3MF_PackagePart, pResourceDataGroup: *Lib3MF_ResourceDataGroup) -> Lib3MFResult #foreign lib3mf;

/**
* Add resourcedata to resourcedatagroup element
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pResourceDataGroup - The resource data group where to add this resource data
* @param[in] pPartPath - The path of the part to be encrypted
* @param[in] eAlgorithm - The encryption algorithm to be used to encrypt this resource
* @param[in] eCompression - Whether compression should be used prior to encryption
* @param[in] nAdditionalAuthenticationDataBufferSize - Number of elements in buffer
* @param[in] pAdditionalAuthenticationDataBuffer - uint8 buffer of Additional data to be encrypted along the contents for better security
* @param[out] pResourceData - The data resource instance
* @return error code or 0 (success)
*/
lib3mf_keystore_addresourcedata :: (pKeyStore: Lib3MF_KeyStore, pResourceDataGroup: Lib3MF_ResourceDataGroup, pPartPath: Lib3MF_PackagePart, eAlgorithm: Lib3MF.eEncryptionAlgorithm, eCompression_: Lib3MF.eCompression, nAdditionalAuthenticationDataBufferSize: Lib3MF_uint64, pAdditionalAuthenticationDataBuffer: *Lib3MF_uint8, pResourceData: *Lib3MF_ResourceData) -> Lib3MFResult #foreign lib3mf;

/**
* Removes a resource data
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pResourceData - The resource data to be removed
* @return error code or 0 (success)
*/
lib3mf_keystore_removeresourcedata :: (pKeyStore: Lib3MF_KeyStore, pResourceData: Lib3MF_ResourceData) -> Lib3MFResult #foreign lib3mf;

/**
* Finds a resource data on this resource group
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pResourcePath - The target path for the resourcedata
* @param[out] pResourceData - The resource data instance
* @return error code or 0 (success)
*/
lib3mf_keystore_findresourcedata :: (pKeyStore: Lib3MF_KeyStore, pResourcePath: Lib3MF_PackagePart, pResourceData: *Lib3MF_ResourceData) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the number of resource data in the keysore
*
* @param[in] pKeyStore - KeyStore instance.
* @param[out] pCount - The number of resource data available
* @return error code or 0 (success)
*/
lib3mf_keystore_getresourcedatacount :: (pKeyStore: Lib3MF_KeyStore, pCount: *Lib3MF_uint64) -> Lib3MFResult #foreign lib3mf;

/**
* Gets a resource data
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] nResourceDataIndex - The index of the resource data
* @param[out] pResourceData - The data resource instance
* @return error code or 0 (success)
*/
lib3mf_keystore_getresourcedata :: (pKeyStore: Lib3MF_KeyStore, nResourceDataIndex: Lib3MF_uint64, pResourceData: *Lib3MF_ResourceData) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the keystore UUID
*
* @param[in] pKeyStore - KeyStore instance.
* @param[out] pHasUUID - flag whether the keystore has a UUID
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of returns the keystore uuid., may be NULL
* @return error code or 0 (success)
*/
lib3mf_keystore_getuuid :: (pKeyStore: Lib3MF_KeyStore, pHasUUID: *bool, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the keystore UUID
*
* @param[in] pKeyStore - KeyStore instance.
* @param[in] pUUID - The new keystore uuid.
* @return error code or 0 (success)
*/
lib3mf_keystore_setuuid :: (pKeyStore: Lib3MF_KeyStore, pUUID: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the PackagePart within the OPC package that holds the root model.
*
* @param[in] pModel - Model instance.
* @param[out] pRootModelPart - the PackagePart within the OPC package that holds the model-file
* @return error code or 0 (success)
*/
lib3mf_model_rootmodelpart :: (pModel: Lib3MF_Model, pRootModelPart: *Lib3MF_PackagePart) -> Lib3MFResult #foreign lib3mf;

/**
* Returns a new PackagePart for use within the OPC package.
*
* @param[in] pModel - Model instance.
* @param[in] pAbsolutePath - the absolute Path (physical location) within the OPC package
* @param[out] pModelPart - the new PackagePart within the OPC package
* @return error code or 0 (success)
*/
lib3mf_model_findorcreatepackagepart :: (pModel: Lib3MF_Model, pAbsolutePath: *u8, pModelPart: *Lib3MF_PackagePart) -> Lib3MFResult #foreign lib3mf;

/**
* sets the units of a model.
*
* @param[in] pModel - Model instance.
* @param[in] eUnit - Unit enum value for the model unit
* @return error code or 0 (success)
*/
lib3mf_model_setunit :: (pModel: Lib3MF_Model, eUnit: Lib3MF.eModelUnit) -> Lib3MFResult #foreign lib3mf;

/**
* returns the units of a model.
*
* @param[in] pModel - Model instance.
* @param[out] pUnit - Unit enum value for the model unit
* @return error code or 0 (success)
*/
lib3mf_model_getunit :: (pModel: Lib3MF_Model, pUnit: *Lib3MF.eModelUnit) -> Lib3MFResult #foreign lib3mf;

/**
* retrieves the language of a model
*
* @param[in] pModel - Model instance.
* @param[in] nLanguageBufferSize - size of the buffer (including trailing 0)
* @param[out] pLanguageNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pLanguageBuffer -  buffer of language identifier, may be NULL
* @return error code or 0 (success)
*/
lib3mf_model_getlanguage :: (pModel: Lib3MF_Model, nLanguageBufferSize: Lib3MF_uint32, pLanguageNeededChars: *Lib3MF_uint32, pLanguageBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* sets the language of a model
*
* @param[in] pModel - Model instance.
* @param[in] pLanguage - language identifier
* @return error code or 0 (success)
*/
lib3mf_model_setlanguage :: (pModel: Lib3MF_Model, pLanguage: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* creates a model writer instance for a specific file type
*
* @param[in] pModel - Model instance.
* @param[in] pWriterClass -  string identifier for the file type
* @param[out] pWriterInstance -  string identifier for the file type
* @return error code or 0 (success)
*/
lib3mf_model_querywriter :: (pModel: Lib3MF_Model, pWriterClass: *u8, pWriterInstance: *Lib3MF_Writer) -> Lib3MFResult #foreign lib3mf;

/**
* creates a model reader instance for a specific file type
*
* @param[in] pModel - Model instance.
* @param[in] pReaderClass -  string identifier for the file type
* @param[out] pReaderInstance -  string identifier for the file type
* @return error code or 0 (success)
*/
lib3mf_model_queryreader :: (pModel: Lib3MF_Model, pReaderClass: *u8, pReaderInstance: *Lib3MF_Reader) -> Lib3MFResult #foreign lib3mf;

/**
* finds a model texture by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pTextureInstance - returns the texture2d instance
* @return error code or 0 (success)
*/
lib3mf_model_gettexture2dbyid :: (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pTextureInstance: *Lib3MF_Texture2D) -> Lib3MFResult #foreign lib3mf;

/**
* returns a Property's type
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - Resource ID of the Property to Query
* @param[out] pThePropertyType - returns a Property's type
* @return error code or 0 (success)
*/
lib3mf_model_getpropertytypebyid :: (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pThePropertyType: *Lib3MF.ePropertyType) -> Lib3MFResult #foreign lib3mf;

/**
* finds a model base material group by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pBaseMaterialGroupInstance - returns the BaseMaterialGroup instance
* @return error code or 0 (success)
*/
lib3mf_model_getbasematerialgroupbyid :: (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pBaseMaterialGroupInstance: *Lib3MF_BaseMaterialGroup) -> Lib3MFResult #foreign lib3mf;

/**
* finds a model texture2d group by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pTexture2DGroupInstance - returns the Texture2DGroup instance
* @return error code or 0 (success)
*/
lib3mf_model_gettexture2dgroupbyid :: (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pTexture2DGroupInstance: *Lib3MF_Texture2DGroup) -> Lib3MFResult #foreign lib3mf;

/**
* finds a model CompositeMaterials by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pCompositeMaterialsInstance - returns the CompositeMaterials instance
* @return error code or 0 (success)
*/
lib3mf_model_getcompositematerialsbyid :: (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pCompositeMaterialsInstance: *Lib3MF_CompositeMaterials) -> Lib3MFResult #foreign lib3mf;

/**
* finds a model MultiPropertyGroup by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pMultiPropertyGroupInstance - returns the MultiPropertyGroup instance
* @return error code or 0 (success)
*/
lib3mf_model_getmultipropertygroupbyid :: (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pMultiPropertyGroupInstance: *Lib3MF_MultiPropertyGroup) -> Lib3MFResult #foreign lib3mf;

/**
* finds a mesh object by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pMeshObjectInstance - returns the mesh object instance
* @return error code or 0 (success)
*/
lib3mf_model_getmeshobjectbyid :: (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pMeshObjectInstance: *Lib3MF_MeshObject) -> Lib3MFResult #foreign lib3mf;

/**
* finds a components object by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pComponentsObjectInstance - returns the components object instance
* @return error code or 0 (success)
*/
lib3mf_model_getcomponentsobjectbyid :: (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pComponentsObjectInstance: *Lib3MF_ComponentsObject) -> Lib3MFResult #foreign lib3mf;

/**
* finds a model color group by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pColorGroupInstance - returns the ColorGroup instance
* @return error code or 0 (success)
*/
lib3mf_model_getcolorgroupbyid :: (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pColorGroupInstance: *Lib3MF_ColorGroup) -> Lib3MFResult #foreign lib3mf;

/**
* finds a model slicestack by its UniqueResourceID
*
* @param[in] pModel - Model instance.
* @param[in] nUniqueResourceID - UniqueResourceID
* @param[out] pSliceStacInstance - returns the slicestack instance
* @return error code or 0 (success)
*/
lib3mf_model_getslicestackbyid :: (pModel: Lib3MF_Model, nUniqueResourceID: Lib3MF_uint32, pSliceStacInstance: *Lib3MF_SliceStack) -> Lib3MFResult #foreign lib3mf;

/**
* returns, whether a build has a UUID and, if true, the build's UUID
*
* @param[in] pModel - Model instance.
* @param[out] pHasUUID - flag whether the build has a UUID
* @param[in] nUUIDBufferSize - size of the buffer (including trailing 0)
* @param[out] pUUIDNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pUUIDBuffer -  buffer of the UUID as string of the form 'xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx', may be NULL
* @return error code or 0 (success)
*/
lib3mf_model_getbuilduuid :: (pModel: Lib3MF_Model, pHasUUID: *bool, nUUIDBufferSize: Lib3MF_uint32, pUUIDNeededChars: *Lib3MF_uint32, pUUIDBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* sets the build's UUID
*
* @param[in] pModel - Model instance.
* @param[in] pUUID - the UUID as string of the form 'xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx'
* @return error code or 0 (success)
*/
lib3mf_model_setbuilduuid :: (pModel: Lib3MF_Model, pUUID: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* creates a build item iterator instance with all build items.
*
* @param[in] pModel - Model instance.
* @param[out] pBuildItemIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
lib3mf_model_getbuilditems :: (pModel: Lib3MF_Model, pBuildItemIterator: *Lib3MF_BuildItemIterator) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the outbox of a Model
*
* @param[in] pModel - Model instance.
* @param[out] pOutbox - Outbox of this Model
* @return error code or 0 (success)
*/
lib3mf_model_getoutbox :: (pModel: Lib3MF_Model, pOutbox: *Lib3MF.sBox) -> Lib3MFResult #foreign lib3mf;

/**
* creates a resource iterator instance with all resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
lib3mf_model_getresources :: (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_ResourceIterator) -> Lib3MFResult #foreign lib3mf;

/**
* creates a resource iterator instance with all object resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
lib3mf_model_getobjects :: (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_ObjectIterator) -> Lib3MFResult #foreign lib3mf;

/**
* creates a resource iterator instance with all mesh object resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
lib3mf_model_getmeshobjects :: (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_MeshObjectIterator) -> Lib3MFResult #foreign lib3mf;

/**
* creates a resource iterator instance with all components object resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
lib3mf_model_getcomponentsobjects :: (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_ComponentsObjectIterator) -> Lib3MFResult #foreign lib3mf;

/**
* creates a Texture2DIterator instance with all texture2d resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
lib3mf_model_gettexture2ds :: (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_Texture2DIterator) -> Lib3MFResult #foreign lib3mf;

/**
* creates a BaseMaterialGroupIterator instance with all base material resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
lib3mf_model_getbasematerialgroups :: (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_BaseMaterialGroupIterator) -> Lib3MFResult #foreign lib3mf;

/**
* creates a ColorGroupIterator instance with all ColorGroup resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
lib3mf_model_getcolorgroups :: (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_ColorGroupIterator) -> Lib3MFResult #foreign lib3mf;

/**
* creates a Texture2DGroupIterator instance with all base material resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
lib3mf_model_gettexture2dgroups :: (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_Texture2DGroupIterator) -> Lib3MFResult #foreign lib3mf;

/**
* creates a CompositeMaterialsIterator instance with all CompositeMaterials resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
lib3mf_model_getcompositematerials :: (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_CompositeMaterialsIterator) -> Lib3MFResult #foreign lib3mf;

/**
* creates a MultiPropertyGroupsIterator instance with all MultiPropertyGroup resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
lib3mf_model_getmultipropertygroups :: (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_MultiPropertyGroupIterator) -> Lib3MFResult #foreign lib3mf;

/**
* creates a resource iterator instance with all slice stack resources.
*
* @param[in] pModel - Model instance.
* @param[out] pResourceIterator - returns the iterator instance.
* @return error code or 0 (success)
*/
lib3mf_model_getslicestacks :: (pModel: Lib3MF_Model, pResourceIterator: *Lib3MF_SliceStackIterator) -> Lib3MFResult #foreign lib3mf;

/**
* Merges all components and objects which are referenced by a build item into a mesh. The memory is duplicated and a new model is created.
*
* @param[in] pModel - Model instance.
* @param[out] pMergedModelInstance - returns the merged model instance
* @return error code or 0 (success)
*/
lib3mf_model_mergetomodel :: (pModel: Lib3MF_Model, pMergedModelInstance: *Lib3MF_Model) -> Lib3MFResult #foreign lib3mf;

/**
* adds an empty mesh object to the model.
*
* @param[in] pModel - Model instance.
* @param[out] pMeshObjectInstance -  returns the mesh object instance
* @return error code or 0 (success)
*/
lib3mf_model_addmeshobject :: (pModel: Lib3MF_Model, pMeshObjectInstance: *Lib3MF_MeshObject) -> Lib3MFResult #foreign lib3mf;

/**
* adds an empty component object to the model.
*
* @param[in] pModel - Model instance.
* @param[out] pComponentsObjectInstance -  returns the components object instance
* @return error code or 0 (success)
*/
lib3mf_model_addcomponentsobject :: (pModel: Lib3MF_Model, pComponentsObjectInstance: *Lib3MF_ComponentsObject) -> Lib3MFResult #foreign lib3mf;

/**
* creates a new model slicestack by its id
*
* @param[in] pModel - Model instance.
* @param[in] dZBottom - Bottom Z value of the slicestack
* @param[out] pSliceStackInstance - returns the new slicestack instance
* @return error code or 0 (success)
*/
lib3mf_model_addslicestack :: (pModel: Lib3MF_Model, dZBottom: Lib3MF_double, pSliceStackInstance: *Lib3MF_SliceStack) -> Lib3MFResult #foreign lib3mf;

/**
* adds a texture2d resource to the model. Its path is given by that of an existing attachment.
*
* @param[in] pModel - Model instance.
* @param[in] pTextureAttachment - attachment containing the image data.
* @param[out] pTexture2DInstance - returns the new texture instance.
* @return error code or 0 (success)
*/
lib3mf_model_addtexture2dfromattachment :: (pModel: Lib3MF_Model, pTextureAttachment: Lib3MF_Attachment, pTexture2DInstance: *Lib3MF_Texture2D) -> Lib3MFResult #foreign lib3mf;

/**
* adds an empty BaseMaterialGroup resource to the model.
*
* @param[in] pModel - Model instance.
* @param[out] pBaseMaterialGroupInstance - returns the new base material instance.
* @return error code or 0 (success)
*/
lib3mf_model_addbasematerialgroup :: (pModel: Lib3MF_Model, pBaseMaterialGroupInstance: *Lib3MF_BaseMaterialGroup) -> Lib3MFResult #foreign lib3mf;

/**
* adds an empty ColorGroup resource to the model.
*
* @param[in] pModel - Model instance.
* @param[out] pColorGroupInstance - returns the new ColorGroup instance.
* @return error code or 0 (success)
*/
lib3mf_model_addcolorgroup :: (pModel: Lib3MF_Model, pColorGroupInstance: *Lib3MF_ColorGroup) -> Lib3MFResult #foreign lib3mf;

/**
* adds an empty Texture2DGroup resource to the model.
*
* @param[in] pModel - Model instance.
* @param[in] pTexture2DInstance - The texture2D instance of the created Texture2DGroup.
* @param[out] pTexture2DGroupInstance - returns the new Texture2DGroup instance.
* @return error code or 0 (success)
*/
lib3mf_model_addtexture2dgroup :: (pModel: Lib3MF_Model, pTexture2DInstance: Lib3MF_Texture2D, pTexture2DGroupInstance: *Lib3MF_Texture2DGroup) -> Lib3MFResult #foreign lib3mf;

/**
* adds an empty CompositeMaterials resource to the model.
*
* @param[in] pModel - Model instance.
* @param[in] pBaseMaterialGroupInstance - The BaseMaterialGroup instance of the created CompositeMaterials.
* @param[out] pCompositeMaterialsInstance - returns the new CompositeMaterials instance.
* @return error code or 0 (success)
*/
lib3mf_model_addcompositematerials :: (pModel: Lib3MF_Model, pBaseMaterialGroupInstance: Lib3MF_BaseMaterialGroup, pCompositeMaterialsInstance: *Lib3MF_CompositeMaterials) -> Lib3MFResult #foreign lib3mf;

/**
* adds an empty MultiPropertyGroup resource to the model.
*
* @param[in] pModel - Model instance.
* @param[out] pMultiPropertyGroupInstance - returns the new MultiPropertyGroup instance.
* @return error code or 0 (success)
*/
lib3mf_model_addmultipropertygroup :: (pModel: Lib3MF_Model, pMultiPropertyGroupInstance: *Lib3MF_MultiPropertyGroup) -> Lib3MFResult #foreign lib3mf;

/**
* adds a build item to the model.
*
* @param[in] pModel - Model instance.
* @param[in] pObject - Object instance.
* @param[in] pTransform - Transformation matrix.
* @param[out] pBuildItemInstance - returns the build item instance.
* @return error code or 0 (success)
*/
lib3mf_model_addbuilditem :: (pModel: Lib3MF_Model, pObject: Lib3MF_Object, pTransform: *Lib3MF.sTransform, pBuildItemInstance: *Lib3MF_BuildItem) -> Lib3MFResult #foreign lib3mf;

/**
* removes a build item from the model
*
* @param[in] pModel - Model instance.
* @param[in] pBuildItemInstance - Build item to remove.
* @return error code or 0 (success)
*/
lib3mf_model_removebuilditem :: (pModel: Lib3MF_Model, pBuildItemInstance: Lib3MF_BuildItem) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the metadata of the model as MetaDataGroup
*
* @param[in] pModel - Model instance.
* @param[out] pTheMetaDataGroup - returns an Instance of the metadatagroup of the model
* @return error code or 0 (success)
*/
lib3mf_model_getmetadatagroup :: (pModel: Lib3MF_Model, pTheMetaDataGroup: *Lib3MF_MetaDataGroup) -> Lib3MFResult #foreign lib3mf;

/**
* adds an attachment stream to the model. The OPC part will be related to the model stream with a certain relationship type.
*
* @param[in] pModel - Model instance.
* @param[in] pURI - Path of the attachment
* @param[in] pRelationShipType - Relationship type of the attachment
* @param[out] pAttachmentInstance - Instance of the attachment object
* @return error code or 0 (success)
*/
lib3mf_model_addattachment :: (pModel: Lib3MF_Model, pURI: *u8, pRelationShipType: *u8, pAttachmentInstance: *Lib3MF_Attachment) -> Lib3MFResult #foreign lib3mf;

/**
* Removes attachment from the model.
*
* @param[in] pModel - Model instance.
* @param[in] pAttachmentInstance - Attachment instance to remove
* @return error code or 0 (success)
*/
lib3mf_model_removeattachment :: (pModel: Lib3MF_Model, pAttachmentInstance: Lib3MF_Attachment) -> Lib3MFResult #foreign lib3mf;

/**
* retrieves an attachment stream object from the model..
*
* @param[in] pModel - Model instance.
* @param[in] nIndex - Index of the attachment stream
* @param[out] pAttachmentInstance - Instance of the attachment object
* @return error code or 0 (success)
*/
lib3mf_model_getattachment :: (pModel: Lib3MF_Model, nIndex: Lib3MF_uint32, pAttachmentInstance: *Lib3MF_Attachment) -> Lib3MFResult #foreign lib3mf;

/**
* retrieves an attachment stream object from the model.
*
* @param[in] pModel - Model instance.
* @param[in] pURI - Path URI in the package
* @param[out] pAttachmentInstance - Instance of the attachment object
* @return error code or 0 (success)
*/
lib3mf_model_findattachment :: (pModel: Lib3MF_Model, pURI: *u8, pAttachmentInstance: *Lib3MF_Attachment) -> Lib3MFResult #foreign lib3mf;

/**
* retrieves the number of attachments of the model.
*
* @param[in] pModel - Model instance.
* @param[out] pAttachmentCount - Returns the number of attachments.
* @return error code or 0 (success)
*/
lib3mf_model_getattachmentcount :: (pModel: Lib3MF_Model, pAttachmentCount: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieve whether the OPC package contains a package thumbnail.
*
* @param[in] pModel - Model instance.
* @param[out] pHasThumbnail - returns whether the OPC package contains a package thumbnail
* @return error code or 0 (success)
*/
lib3mf_model_haspackagethumbnailattachment :: (pModel: Lib3MF_Model, pHasThumbnail: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Create a new or the existing package thumbnail for the OPC package.
*
* @param[in] pModel - Model instance.
* @param[out] pAttachment - Instance of a new or the existing thumbnailattachment object.
* @return error code or 0 (success)
*/
lib3mf_model_createpackagethumbnailattachment :: (pModel: Lib3MF_Model, pAttachment: *Lib3MF_Attachment) -> Lib3MFResult #foreign lib3mf;

/**
* Get the attachment to the OPC package containing the package thumbnail.
*
* @param[in] pModel - Model instance.
* @param[out] pAttachment - Instance of the thumbnailattachment object or NULL.
* @return error code or 0 (success)
*/
lib3mf_model_getpackagethumbnailattachment :: (pModel: Lib3MF_Model, pAttachment: *Lib3MF_Attachment) -> Lib3MFResult #foreign lib3mf;

/**
* Remove the attachment to the OPC package containing the package thumbnail.
*
* @param[in] pModel - Model instance.
* @return error code or 0 (success)
*/
lib3mf_model_removepackagethumbnailattachment :: (pModel: Lib3MF_Model) -> Lib3MFResult #foreign lib3mf;

/**
* Adds a new Content Type to the model.
*
* @param[in] pModel - Model instance.
* @param[in] pExtension - File Extension
* @param[in] pContentType - Content Type Identifier
* @return error code or 0 (success)
*/
lib3mf_model_addcustomcontenttype :: (pModel: Lib3MF_Model, pExtension: *u8, pContentType: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Removes a custom Content Type from the model (UTF8 version).
*
* @param[in] pModel - Model instance.
* @param[in] pExtension - File Extension
* @return error code or 0 (success)
*/
lib3mf_model_removecustomcontenttype :: (pModel: Lib3MF_Model, pExtension: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the random number generator callback for use in the library
*
* @param[in] pModel - Model instance.
* @param[in] pTheCallback - The callback used to generate random numbers
* @param[in] pUserData - Userdata to be passed to the callback function
* @return error code or 0 (success)
*/
lib3mf_model_setrandomnumbercallback :: (pModel: Lib3MF_Model, pTheCallback: Lib3MF.RandomNumberCallback, pUserData: Lib3MF_pvoid) -> Lib3MFResult #foreign lib3mf;

/**
* Gets the keystore associated with this model
*
* @param[in] pModel - Model instance.
* @param[out] pKeyStore - The package keystore
* @return error code or 0 (success)
*/
lib3mf_model_getkeystore :: (pModel: Lib3MF_Model, pKeyStore: *Lib3MF_KeyStore) -> Lib3MFResult #foreign lib3mf;

/**
* retrieves the binary version of this library.
*
* @param[out] pMajor - returns the major version of this library
* @param[out] pMinor - returns the minor version of this library
* @param[out] pMicro - returns the micro version of this library
* @return error code or 0 (success)
*/
lib3mf_getlibraryversion :: (pMajor: *Lib3MF_uint32, pMinor: *Lib3MF_uint32, pMicro: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* retrieves prerelease information of this library.
*
* @param[out] pHasPrereleaseInfo - Does the library provide prerelease version?
* @param[in] nPrereleaseInfoBufferSize - size of the buffer (including trailing 0)
* @param[out] pPrereleaseInfoNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pPrereleaseInfoBuffer -  buffer of retrieves prerelease information of this library., may be NULL
* @return error code or 0 (success)
*/
lib3mf_getprereleaseinformation :: (pHasPrereleaseInfo: *bool, nPrereleaseInfoBufferSize: Lib3MF_uint32, pPrereleaseInfoNeededChars: *Lib3MF_uint32, pPrereleaseInfoBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* retrieves build information of this library.
*
* @param[out] pHasBuildInfo - Does the library provide build version?
* @param[in] nBuildInformationBufferSize - size of the buffer (including trailing 0)
* @param[out] pBuildInformationNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pBuildInformationBuffer -  buffer of retrieves build information of this library., may be NULL
* @return error code or 0 (success)
*/
lib3mf_getbuildinformation :: (pHasBuildInfo: *bool, nBuildInformationBufferSize: Lib3MF_uint32, pBuildInformationNeededChars: *Lib3MF_uint32, pBuildInformationBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* retrieves whether a specification is supported, and if so, which version.
*
* @param[in] pSpecificationURL - URL of extension to check
* @param[out] pIsSupported - returns whether this specification is supported
* @param[out] pMajor - returns the major version of the extension (if IsSupported)
* @param[out] pMinor - returns the minor version of the extension (if IsSupported)
* @param[out] pMicro - returns the micro version of the extension (if IsSupported)
* @return error code or 0 (success)
*/
lib3mf_getspecificationversion :: (pSpecificationURL: *u8, pIsSupported: *bool, pMajor: *Lib3MF_uint32, pMinor: *Lib3MF_uint32, pMicro: *Lib3MF_uint32) -> Lib3MFResult #foreign lib3mf;

/**
* creates an empty model instance.
*
* @param[out] pModel - returns an empty model instance
* @return error code or 0 (success)
*/
lib3mf_createmodel :: (pModel: *Lib3MF_Model) -> Lib3MFResult #foreign lib3mf;

/**
* releases shared ownership of an object instance
*
* @param[in] pInstance - the object instance to release
* @return error code or 0 (success)
*/
lib3mf_release :: (pInstance: Lib3MF_Base) -> Lib3MFResult #foreign lib3mf;

/**
* acquires shared ownership of an object instance
*
* @param[in] pInstance - the object instance to acquire
* @return error code or 0 (success)
*/
lib3mf_acquire :: (pInstance: Lib3MF_Base) -> Lib3MFResult #foreign lib3mf;

/**
* Sets the journal file path
*
* @param[in] pJournalPath - File name of the journal file
* @return error code or 0 (success)
*/
lib3mf_setjournal :: (pJournalPath: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Retrieves the last error string of an instance
*
* @param[in] pInstance - Object where the error occured.
* @param[in] nLastErrorStringBufferSize - size of the buffer (including trailing 0)
* @param[out] pLastErrorStringNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pLastErrorStringBuffer -  buffer of Last Error String, may be NULL
* @param[out] pHasLastError - Returns if the instance has a last error.
* @return error code or 0 (success)
*/
lib3mf_getlasterror :: (pInstance: Lib3MF_Base, nLastErrorStringBufferSize: Lib3MF_uint32, pLastErrorStringNeededChars: *Lib3MF_uint32, pLastErrorStringBuffer: *u8, pHasLastError: *bool) -> Lib3MFResult #foreign lib3mf;

/**
* Returns the address of the SymbolLookupMethod
*
* @param[out] pSymbolLookupMethod - Address of the SymbolAddressMethod
* @return error code or 0 (success)
*/
lib3mf_getsymbollookupmethod :: (pSymbolLookupMethod: *Lib3MF_pvoid) -> Lib3MFResult #foreign lib3mf;

/**
* Return an English text for a progress identifier.|Note: this is the only function you can call from your callback function.
*
* @param[in] eTheProgressIdentifier - the progress identifier that is passed to the callback function
* @param[in] nProgressMessageBufferSize - size of the buffer (including trailing 0)
* @param[out] pProgressMessageNeededChars - will be filled with the count of the written bytes, or needed buffer size.
* @param[out] pProgressMessageBuffer -  buffer of English text for the progress identifier, may be NULL
* @return error code or 0 (success)
*/
lib3mf_retrieveprogressmessage :: (eTheProgressIdentifier: Lib3MF.eProgressIdentifier, nProgressMessageBufferSize: Lib3MF_uint32, pProgressMessageNeededChars: *Lib3MF_uint32, pProgressMessageBuffer: *u8) -> Lib3MFResult #foreign lib3mf;

/**
* Creates a Color from uint8 RGBA values
*
* @param[in] nRed - Red value of color (0-255)
* @param[in] nGreen - Green value of color (0-255)
* @param[in] nBlue - Blue value of color (0-255)
* @param[in] nAlpha - Alpha value of color (0-255)
* @param[out] pTheColor - Assembled color
* @return error code or 0 (success)
*/
lib3mf_rgbatocolor :: (nRed: Lib3MF_uint8, nGreen: Lib3MF_uint8, nBlue: Lib3MF_uint8, nAlpha: Lib3MF_uint8, pTheColor: *Lib3MF.sColor) -> Lib3MFResult #foreign lib3mf;

/**
* Creates a Color from uint8 RGBA values
*
* @param[in] fRed - Red value of color (0-1)
* @param[in] fGreen - Green value of color (0-1)
* @param[in] fBlue - Blue value of color (0-1)
* @param[in] fAlpha - Alpha value of color (0-1)
* @param[out] pTheColor - Assembled color
* @return error code or 0 (success)
*/
lib3mf_floatrgbatocolor :: (fRed: Lib3MF_single, fGreen: Lib3MF_single, fBlue: Lib3MF_single, fAlpha: Lib3MF_single, pTheColor: *Lib3MF.sColor) -> Lib3MFResult #foreign lib3mf;

/**
* Calculates uint8-RGBA-values from a Color
*
* @param[in] pTheColor - Color to handle
* @param[out] pRed - Red value of color (0-255)
* @param[out] pGreen - Green value of color (0-255)
* @param[out] pBlue - Blue value of color (0-255)
* @param[out] pAlpha - Alpha value of color (0-255)
* @return error code or 0 (success)
*/
lib3mf_colortorgba :: (pTheColor: *Lib3MF.sColor, pRed: *Lib3MF_uint8, pGreen: *Lib3MF_uint8, pBlue: *Lib3MF_uint8, pAlpha: *Lib3MF_uint8) -> Lib3MFResult #foreign lib3mf;

/**
* Calculates float-RGBA-values from a Color
*
* @param[in] pTheColor - Color to handle
* @param[out] pRed - Red value of color (0-1)
* @param[out] pGreen - Green value of color (0-1)
* @param[out] pBlue - Blue value of color (0-1)
* @param[out] pAlpha - Alpha value of color (0-1)
* @return error code or 0 (success)
*/
lib3mf_colortofloatrgba :: (pTheColor: *Lib3MF.sColor, pRed: *Lib3MF_single, pGreen: *Lib3MF_single, pBlue: *Lib3MF_single, pAlpha: *Lib3MF_single) -> Lib3MFResult #foreign lib3mf;

/**
* Creates an identity transform
*
* @param[out] pTransform - Transformation matrix.
* @return error code or 0 (success)
*/
lib3mf_getidentitytransform :: (pTransform: *Lib3MF.sTransform) -> Lib3MFResult #foreign lib3mf;

/**
* Creates a uniform scale transform
*
* @param[in] fFactor - Factor in X, Y and Z
* @param[out] pTransform - Transformation matrix.
* @return error code or 0 (success)
*/
lib3mf_getuniformscaletransform :: (fFactor: Lib3MF_single, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #foreign lib3mf;

/**
* Creates a scale transform
*
* @param[in] fFactorX - Factor in X
* @param[in] fFactorY - Factor in Y
* @param[in] fFactorZ - Factor in Z
* @param[out] pTransform - Transformation matrix.
* @return error code or 0 (success)
*/
lib3mf_getscaletransform :: (fFactorX: Lib3MF_single, fFactorY: Lib3MF_single, fFactorZ: Lib3MF_single, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #foreign lib3mf;

/**
* Creates an translation transform
*
* @param[in] fVectorX - Translation in X
* @param[in] fVectorY - Translation in Y
* @param[in] fVectorZ - Translation in Z
* @param[out] pTransform - Transformation matrix.
* @return error code or 0 (success)
*/
lib3mf_gettranslationtransform :: (fVectorX: Lib3MF_single, fVectorY: Lib3MF_single, fVectorZ: Lib3MF_single, pTransform: *Lib3MF.sTransform) -> Lib3MFResult #foreign lib3mf;

#scope_file

#import "Basic"; // For assert


#run {
    {
        instance: Lib3MF.sTriangle;
        assert(((cast(*void)(*instance.m_Indices)) - cast(*void)(*instance)) == 0, "Lib3MF.sTriangle.m_Indices has unexpected offset % instead of 0", ((cast(*void)(*instance.m_Indices)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sTriangle.m_Indices)) == 12, "Lib3MF.sTriangle.m_Indices has unexpected size % instead of 12", size_of(type_of(Lib3MF.sTriangle.m_Indices)));
        assert(size_of(Lib3MF.sTriangle) == 12, "Lib3MF.sTriangle has size % instead of 12", size_of(Lib3MF.sTriangle));
    }

    {
        instance: Lib3MF.sTriangleProperties;
        assert(((cast(*void)(*instance.m_ResourceID)) - cast(*void)(*instance)) == 0, "Lib3MF.sTriangleProperties.m_ResourceID has unexpected offset % instead of 0", ((cast(*void)(*instance.m_ResourceID)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sTriangleProperties.m_ResourceID)) == 4, "Lib3MF.sTriangleProperties.m_ResourceID has unexpected size % instead of 4", size_of(type_of(Lib3MF.sTriangleProperties.m_ResourceID)));
        assert(((cast(*void)(*instance.m_PropertyIDs)) - cast(*void)(*instance)) == 4, "Lib3MF.sTriangleProperties.m_PropertyIDs has unexpected offset % instead of 4", ((cast(*void)(*instance.m_PropertyIDs)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sTriangleProperties.m_PropertyIDs)) == 12, "Lib3MF.sTriangleProperties.m_PropertyIDs has unexpected size % instead of 12", size_of(type_of(Lib3MF.sTriangleProperties.m_PropertyIDs)));
        assert(size_of(Lib3MF.sTriangleProperties) == 16, "Lib3MF.sTriangleProperties has size % instead of 16", size_of(Lib3MF.sTriangleProperties));
    }

    {
        instance: Lib3MF.sPosition;
        assert(((cast(*void)(*instance.m_Coordinates)) - cast(*void)(*instance)) == 0, "Lib3MF.sPosition.m_Coordinates has unexpected offset % instead of 0", ((cast(*void)(*instance.m_Coordinates)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sPosition.m_Coordinates)) == 12, "Lib3MF.sPosition.m_Coordinates has unexpected size % instead of 12", size_of(type_of(Lib3MF.sPosition.m_Coordinates)));
        assert(size_of(Lib3MF.sPosition) == 12, "Lib3MF.sPosition has size % instead of 12", size_of(Lib3MF.sPosition));
    }

    {
        instance: Lib3MF.sPosition2D;
        assert(((cast(*void)(*instance.m_Coordinates)) - cast(*void)(*instance)) == 0, "Lib3MF.sPosition2D.m_Coordinates has unexpected offset % instead of 0", ((cast(*void)(*instance.m_Coordinates)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sPosition2D.m_Coordinates)) == 8, "Lib3MF.sPosition2D.m_Coordinates has unexpected size % instead of 8", size_of(type_of(Lib3MF.sPosition2D.m_Coordinates)));
        assert(size_of(Lib3MF.sPosition2D) == 8, "Lib3MF.sPosition2D has size % instead of 8", size_of(Lib3MF.sPosition2D));
    }

    {
        instance: Lib3MF.sCompositeConstituent;
        assert(((cast(*void)(*instance.m_PropertyID)) - cast(*void)(*instance)) == 0, "Lib3MF.sCompositeConstituent.m_PropertyID has unexpected offset % instead of 0", ((cast(*void)(*instance.m_PropertyID)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sCompositeConstituent.m_PropertyID)) == 4, "Lib3MF.sCompositeConstituent.m_PropertyID has unexpected size % instead of 4", size_of(type_of(Lib3MF.sCompositeConstituent.m_PropertyID)));
        assert(((cast(*void)(*instance.m_MixingRatio)) - cast(*void)(*instance)) == 4, "Lib3MF.sCompositeConstituent.m_MixingRatio has unexpected offset % instead of 4", ((cast(*void)(*instance.m_MixingRatio)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sCompositeConstituent.m_MixingRatio)) == 8, "Lib3MF.sCompositeConstituent.m_MixingRatio has unexpected size % instead of 8", size_of(type_of(Lib3MF.sCompositeConstituent.m_MixingRatio)));
        assert(size_of(Lib3MF.sCompositeConstituent) == 12, "Lib3MF.sCompositeConstituent has size % instead of 12", size_of(Lib3MF.sCompositeConstituent));
    }

    {
        instance: Lib3MF.sMultiPropertyLayer;
        assert(((cast(*void)(*instance.m_ResourceID)) - cast(*void)(*instance)) == 0, "Lib3MF.sMultiPropertyLayer.m_ResourceID has unexpected offset % instead of 0", ((cast(*void)(*instance.m_ResourceID)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sMultiPropertyLayer.m_ResourceID)) == 4, "Lib3MF.sMultiPropertyLayer.m_ResourceID has unexpected size % instead of 4", size_of(type_of(Lib3MF.sMultiPropertyLayer.m_ResourceID)));
        assert(((cast(*void)(*instance.m_TheBlendMethod)) - cast(*void)(*instance)) == 4, "Lib3MF.sMultiPropertyLayer.m_TheBlendMethod has unexpected offset % instead of 4", ((cast(*void)(*instance.m_TheBlendMethod)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sMultiPropertyLayer.m_TheBlendMethod)) == 4, "Lib3MF.sMultiPropertyLayer.m_TheBlendMethod has unexpected size % instead of 4", size_of(type_of(Lib3MF.sMultiPropertyLayer.m_TheBlendMethod)));
        assert(size_of(Lib3MF.sMultiPropertyLayer) == 8, "Lib3MF.sMultiPropertyLayer has size % instead of 8", size_of(Lib3MF.sMultiPropertyLayer));
    }

    {
        instance: Lib3MF.sTex2Coord;
        assert(((cast(*void)(*instance.m_U)) - cast(*void)(*instance)) == 0, "Lib3MF.sTex2Coord.m_U has unexpected offset % instead of 0", ((cast(*void)(*instance.m_U)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sTex2Coord.m_U)) == 8, "Lib3MF.sTex2Coord.m_U has unexpected size % instead of 8", size_of(type_of(Lib3MF.sTex2Coord.m_U)));
        assert(((cast(*void)(*instance.m_V)) - cast(*void)(*instance)) == 8, "Lib3MF.sTex2Coord.m_V has unexpected offset % instead of 8", ((cast(*void)(*instance.m_V)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sTex2Coord.m_V)) == 8, "Lib3MF.sTex2Coord.m_V has unexpected size % instead of 8", size_of(type_of(Lib3MF.sTex2Coord.m_V)));
        assert(size_of(Lib3MF.sTex2Coord) == 16, "Lib3MF.sTex2Coord has size % instead of 16", size_of(Lib3MF.sTex2Coord));
    }

    {
        instance: Lib3MF.sTransform;
        assert(((cast(*void)(*instance.m_Fields)) - cast(*void)(*instance)) == 0, "Lib3MF.sTransform.m_Fields has unexpected offset % instead of 0", ((cast(*void)(*instance.m_Fields)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sTransform.m_Fields)) == 48, "Lib3MF.sTransform.m_Fields has unexpected size % instead of 48", size_of(type_of(Lib3MF.sTransform.m_Fields)));
        assert(size_of(Lib3MF.sTransform) == 48, "Lib3MF.sTransform has size % instead of 48", size_of(Lib3MF.sTransform));
    }

    {
        instance: Lib3MF.sBox;
        assert(((cast(*void)(*instance.m_MinCoordinate)) - cast(*void)(*instance)) == 0, "Lib3MF.sBox.m_MinCoordinate has unexpected offset % instead of 0", ((cast(*void)(*instance.m_MinCoordinate)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sBox.m_MinCoordinate)) == 12, "Lib3MF.sBox.m_MinCoordinate has unexpected size % instead of 12", size_of(type_of(Lib3MF.sBox.m_MinCoordinate)));
        assert(((cast(*void)(*instance.m_MaxCoordinate)) - cast(*void)(*instance)) == 12, "Lib3MF.sBox.m_MaxCoordinate has unexpected offset % instead of 12", ((cast(*void)(*instance.m_MaxCoordinate)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sBox.m_MaxCoordinate)) == 12, "Lib3MF.sBox.m_MaxCoordinate has unexpected size % instead of 12", size_of(type_of(Lib3MF.sBox.m_MaxCoordinate)));
        assert(size_of(Lib3MF.sBox) == 24, "Lib3MF.sBox has size % instead of 24", size_of(Lib3MF.sBox));
    }

    {
        instance: Lib3MF.sColor;
        assert(((cast(*void)(*instance.m_Red)) - cast(*void)(*instance)) == 0, "Lib3MF.sColor.m_Red has unexpected offset % instead of 0", ((cast(*void)(*instance.m_Red)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sColor.m_Red)) == 1, "Lib3MF.sColor.m_Red has unexpected size % instead of 1", size_of(type_of(Lib3MF.sColor.m_Red)));
        assert(((cast(*void)(*instance.m_Green)) - cast(*void)(*instance)) == 1, "Lib3MF.sColor.m_Green has unexpected offset % instead of 1", ((cast(*void)(*instance.m_Green)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sColor.m_Green)) == 1, "Lib3MF.sColor.m_Green has unexpected size % instead of 1", size_of(type_of(Lib3MF.sColor.m_Green)));
        assert(((cast(*void)(*instance.m_Blue)) - cast(*void)(*instance)) == 2, "Lib3MF.sColor.m_Blue has unexpected offset % instead of 2", ((cast(*void)(*instance.m_Blue)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sColor.m_Blue)) == 1, "Lib3MF.sColor.m_Blue has unexpected size % instead of 1", size_of(type_of(Lib3MF.sColor.m_Blue)));
        assert(((cast(*void)(*instance.m_Alpha)) - cast(*void)(*instance)) == 3, "Lib3MF.sColor.m_Alpha has unexpected offset % instead of 3", ((cast(*void)(*instance.m_Alpha)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sColor.m_Alpha)) == 1, "Lib3MF.sColor.m_Alpha has unexpected size % instead of 1", size_of(type_of(Lib3MF.sColor.m_Alpha)));
        assert(size_of(Lib3MF.sColor) == 4, "Lib3MF.sColor has size % instead of 4", size_of(Lib3MF.sColor));
    }

    {
        instance: Lib3MF.sBeam;
        assert(((cast(*void)(*instance.m_Indices)) - cast(*void)(*instance)) == 0, "Lib3MF.sBeam.m_Indices has unexpected offset % instead of 0", ((cast(*void)(*instance.m_Indices)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sBeam.m_Indices)) == 8, "Lib3MF.sBeam.m_Indices has unexpected size % instead of 8", size_of(type_of(Lib3MF.sBeam.m_Indices)));
        assert(((cast(*void)(*instance.m_Radii)) - cast(*void)(*instance)) == 8, "Lib3MF.sBeam.m_Radii has unexpected offset % instead of 8", ((cast(*void)(*instance.m_Radii)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sBeam.m_Radii)) == 16, "Lib3MF.sBeam.m_Radii has unexpected size % instead of 16", size_of(type_of(Lib3MF.sBeam.m_Radii)));
        assert(((cast(*void)(*instance.m_CapModes)) - cast(*void)(*instance)) == 24, "Lib3MF.sBeam.m_CapModes has unexpected offset % instead of 24", ((cast(*void)(*instance.m_CapModes)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sBeam.m_CapModes)) == 8, "Lib3MF.sBeam.m_CapModes has unexpected size % instead of 8", size_of(type_of(Lib3MF.sBeam.m_CapModes)));
        assert(size_of(Lib3MF.sBeam) == 32, "Lib3MF.sBeam has size % instead of 32", size_of(Lib3MF.sBeam));
    }

    {
        instance: Lib3MF.sBall;
        assert(((cast(*void)(*instance.m_Index)) - cast(*void)(*instance)) == 0, "Lib3MF.sBall.m_Index has unexpected offset % instead of 0", ((cast(*void)(*instance.m_Index)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sBall.m_Index)) == 4, "Lib3MF.sBall.m_Index has unexpected size % instead of 4", size_of(type_of(Lib3MF.sBall.m_Index)));
        assert(((cast(*void)(*instance.m_Radius)) - cast(*void)(*instance)) == 4, "Lib3MF.sBall.m_Radius has unexpected offset % instead of 4", ((cast(*void)(*instance.m_Radius)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.sBall.m_Radius)) == 8, "Lib3MF.sBall.m_Radius has unexpected size % instead of 8", size_of(type_of(Lib3MF.sBall.m_Radius)));
        assert(size_of(Lib3MF.sBall) == 12, "Lib3MF.sBall has size % instead of 12", size_of(Lib3MF.sBall));
    }

    {
        instance: Lib3MF.ELib3MFException;
        assert(((cast(*void)(*instance.m_errorCode)) - cast(*void)(*instance)) == 0, "Lib3MF.ELib3MFException.m_errorCode has unexpected offset % instead of 24", ((cast(*void)(*instance.m_errorCode)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.ELib3MFException.m_errorCode)) == 4, "Lib3MF.ELib3MFException.m_errorCode has unexpected size % instead of 4", size_of(type_of(Lib3MF.ELib3MFException.m_errorCode)));
        assert(((cast(*void)(*instance.m_errorMessage)) - cast(*void)(*instance)) == 8, "Lib3MF.ELib3MFException.m_errorMessage has unexpected offset % instead of 8", ((cast(*void)(*instance.m_errorMessage)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.ELib3MFException.m_errorMessage)) == 16, "Lib3MF.ELib3MFException.m_errorMessage has unexpected size % instead of 16", size_of(type_of(Lib3MF.ELib3MFException.m_errorMessage)));
        assert(size_of(Lib3MF.ELib3MFException) == 24, "Lib3MF.ELib3MFException has size % instead of 24", size_of(Lib3MF.ELib3MFException));
    }

    {
        instance: Lib3MF.CWrapper;
        assert(((cast(*void)(*instance.m_WrapperTable)) - cast(*void)(*instance)) == 0, "Lib3MF.CWrapper.m_WrapperTable has unexpected offset % instead of 0", ((cast(*void)(*instance.m_WrapperTable)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.CWrapper.m_WrapperTable)) == 2864, "Lib3MF.CWrapper.m_WrapperTable has unexpected size % instead of 2864", size_of(type_of(Lib3MF.CWrapper.m_WrapperTable)));
        assert(size_of(Lib3MF.CWrapper) == 2864, "Lib3MF.CWrapper has size % instead of 2864", size_of(Lib3MF.CWrapper));
    }

    {
        instance: Lib3MF.CBase;
        assert(((cast(*void)(*instance.m_pWrapper)) - cast(*void)(*instance)) == 8, "Lib3MF.CBase.m_pWrapper has unexpected offset % instead of 8", ((cast(*void)(*instance.m_pWrapper)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.CBase.m_pWrapper)) == 8, "Lib3MF.CBase.m_pWrapper has unexpected size % instead of 8", size_of(type_of(Lib3MF.CBase.m_pWrapper)));
        assert(((cast(*void)(*instance.m_pHandle)) - cast(*void)(*instance)) == 16, "Lib3MF.CBase.m_pHandle has unexpected offset % instead of 16", ((cast(*void)(*instance.m_pHandle)) - cast(*void)(*instance)));
        assert(size_of(type_of(Lib3MF.CBase.m_pHandle)) == 8, "Lib3MF.CBase.m_pHandle has unexpected size % instead of 8", size_of(type_of(Lib3MF.CBase.m_pHandle)));
        assert(size_of(Lib3MF.CBase) == 24, "Lib3MF.CBase has size % instead of 24", size_of(Lib3MF.CBase));
    }

    assert(size_of(Lib3MF.CWriter) == 24, "Lib3MF.CWriter has size % instead of 24", size_of(Lib3MF.CWriter));

    assert(size_of(Lib3MF.CReader) == 24, "Lib3MF.CReader has size % instead of 24", size_of(Lib3MF.CReader));

    assert(size_of(Lib3MF.CPackagePart) == 24, "Lib3MF.CPackagePart has size % instead of 24", size_of(Lib3MF.CPackagePart));

    assert(size_of(Lib3MF.CResource) == 24, "Lib3MF.CResource has size % instead of 24", size_of(Lib3MF.CResource));

    assert(size_of(Lib3MF.CResourceIterator) == 24, "Lib3MF.CResourceIterator has size % instead of 24", size_of(Lib3MF.CResourceIterator));

    assert(size_of(Lib3MF.CSliceStackIterator) == 24, "Lib3MF.CSliceStackIterator has size % instead of 24", size_of(Lib3MF.CSliceStackIterator));

    assert(size_of(Lib3MF.CObjectIterator) == 24, "Lib3MF.CObjectIterator has size % instead of 24", size_of(Lib3MF.CObjectIterator));

    assert(size_of(Lib3MF.CMeshObjectIterator) == 24, "Lib3MF.CMeshObjectIterator has size % instead of 24", size_of(Lib3MF.CMeshObjectIterator));

    assert(size_of(Lib3MF.CComponentsObjectIterator) == 24, "Lib3MF.CComponentsObjectIterator has size % instead of 24", size_of(Lib3MF.CComponentsObjectIterator));

    assert(size_of(Lib3MF.CTexture2DIterator) == 24, "Lib3MF.CTexture2DIterator has size % instead of 24", size_of(Lib3MF.CTexture2DIterator));

    assert(size_of(Lib3MF.CBaseMaterialGroupIterator) == 24, "Lib3MF.CBaseMaterialGroupIterator has size % instead of 24", size_of(Lib3MF.CBaseMaterialGroupIterator));

    assert(size_of(Lib3MF.CColorGroupIterator) == 24, "Lib3MF.CColorGroupIterator has size % instead of 24", size_of(Lib3MF.CColorGroupIterator));

    assert(size_of(Lib3MF.CTexture2DGroupIterator) == 24, "Lib3MF.CTexture2DGroupIterator has size % instead of 24", size_of(Lib3MF.CTexture2DGroupIterator));

    assert(size_of(Lib3MF.CCompositeMaterialsIterator) == 24, "Lib3MF.CCompositeMaterialsIterator has size % instead of 24", size_of(Lib3MF.CCompositeMaterialsIterator));

    assert(size_of(Lib3MF.CMultiPropertyGroupIterator) == 24, "Lib3MF.CMultiPropertyGroupIterator has size % instead of 24", size_of(Lib3MF.CMultiPropertyGroupIterator));

    assert(size_of(Lib3MF.CMetaData) == 24, "Lib3MF.CMetaData has size % instead of 24", size_of(Lib3MF.CMetaData));

    assert(size_of(Lib3MF.CMetaDataGroup) == 24, "Lib3MF.CMetaDataGroup has size % instead of 24", size_of(Lib3MF.CMetaDataGroup));

    assert(size_of(Lib3MF.CObject) == 24, "Lib3MF.CObject has size % instead of 24", size_of(Lib3MF.CObject));

    assert(size_of(Lib3MF.CMeshObject) == 24, "Lib3MF.CMeshObject has size % instead of 24", size_of(Lib3MF.CMeshObject));

    assert(size_of(Lib3MF.CBeamLattice) == 24, "Lib3MF.CBeamLattice has size % instead of 24", size_of(Lib3MF.CBeamLattice));

    assert(size_of(Lib3MF.CComponent) == 24, "Lib3MF.CComponent has size % instead of 24", size_of(Lib3MF.CComponent));

    assert(size_of(Lib3MF.CComponentsObject) == 24, "Lib3MF.CComponentsObject has size % instead of 24", size_of(Lib3MF.CComponentsObject));

    assert(size_of(Lib3MF.CBeamSet) == 24, "Lib3MF.CBeamSet has size % instead of 24", size_of(Lib3MF.CBeamSet));

    assert(size_of(Lib3MF.CBaseMaterialGroup) == 24, "Lib3MF.CBaseMaterialGroup has size % instead of 24", size_of(Lib3MF.CBaseMaterialGroup));

    assert(size_of(Lib3MF.CColorGroup) == 24, "Lib3MF.CColorGroup has size % instead of 24", size_of(Lib3MF.CColorGroup));

    assert(size_of(Lib3MF.CTexture2DGroup) == 24, "Lib3MF.CTexture2DGroup has size % instead of 24", size_of(Lib3MF.CTexture2DGroup));

    assert(size_of(Lib3MF.CCompositeMaterials) == 24, "Lib3MF.CCompositeMaterials has size % instead of 24", size_of(Lib3MF.CCompositeMaterials));

    assert(size_of(Lib3MF.CMultiPropertyGroup) == 24, "Lib3MF.CMultiPropertyGroup has size % instead of 24", size_of(Lib3MF.CMultiPropertyGroup));

    assert(size_of(Lib3MF.CAttachment) == 24, "Lib3MF.CAttachment has size % instead of 24", size_of(Lib3MF.CAttachment));

    assert(size_of(Lib3MF.CTexture2D) == 24, "Lib3MF.CTexture2D has size % instead of 24", size_of(Lib3MF.CTexture2D));

    assert(size_of(Lib3MF.CBuildItem) == 24, "Lib3MF.CBuildItem has size % instead of 24", size_of(Lib3MF.CBuildItem));

    assert(size_of(Lib3MF.CBuildItemIterator) == 24, "Lib3MF.CBuildItemIterator has size % instead of 24", size_of(Lib3MF.CBuildItemIterator));

    assert(size_of(Lib3MF.CSlice) == 24, "Lib3MF.CSlice has size % instead of 24", size_of(Lib3MF.CSlice));

    assert(size_of(Lib3MF.CSliceStack) == 24, "Lib3MF.CSliceStack has size % instead of 24", size_of(Lib3MF.CSliceStack));

    assert(size_of(Lib3MF.CConsumer) == 24, "Lib3MF.CConsumer has size % instead of 24", size_of(Lib3MF.CConsumer));

    assert(size_of(Lib3MF.CAccessRight) == 24, "Lib3MF.CAccessRight has size % instead of 24", size_of(Lib3MF.CAccessRight));

    assert(size_of(Lib3MF.CContentEncryptionParams) == 24, "Lib3MF.CContentEncryptionParams has size % instead of 24", size_of(Lib3MF.CContentEncryptionParams));

    assert(size_of(Lib3MF.CResourceData) == 24, "Lib3MF.CResourceData has size % instead of 24", size_of(Lib3MF.CResourceData));

    assert(size_of(Lib3MF.CResourceDataGroup) == 24, "Lib3MF.CResourceDataGroup has size % instead of 24", size_of(Lib3MF.CResourceDataGroup));

    assert(size_of(Lib3MF.CKeyStore) == 24, "Lib3MF.CKeyStore has size % instead of 24", size_of(Lib3MF.CKeyStore));

    assert(size_of(Lib3MF.CModel) == 24, "Lib3MF.CModel has size % instead of 24", size_of(Lib3MF.CModel));

    {
        instance: sLib3MFDynamicWrapperTable;
        assert(((cast(*void)(*instance.m_LibraryHandle)) - cast(*void)(*instance)) == 0, "sLib3MFDynamicWrapperTable.m_LibraryHandle has unexpected offset % instead of 0", ((cast(*void)(*instance.m_LibraryHandle)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_LibraryHandle)) == 8, "sLib3MFDynamicWrapperTable.m_LibraryHandle has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_LibraryHandle)));
        assert(((cast(*void)(*instance.m_Writer_WriteToFile)) - cast(*void)(*instance)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_WriteToFile has unexpected offset % instead of 8", ((cast(*void)(*instance.m_Writer_WriteToFile)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_WriteToFile)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_WriteToFile has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_WriteToFile)));
        assert(((cast(*void)(*instance.m_Writer_GetStreamSize)) - cast(*void)(*instance)) == 16, "sLib3MFDynamicWrapperTable.m_Writer_GetStreamSize has unexpected offset % instead of 16", ((cast(*void)(*instance.m_Writer_GetStreamSize)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_GetStreamSize)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_GetStreamSize has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_GetStreamSize)));
        assert(((cast(*void)(*instance.m_Writer_WriteToBuffer)) - cast(*void)(*instance)) == 24, "sLib3MFDynamicWrapperTable.m_Writer_WriteToBuffer has unexpected offset % instead of 24", ((cast(*void)(*instance.m_Writer_WriteToBuffer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_WriteToBuffer)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_WriteToBuffer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_WriteToBuffer)));
        assert(((cast(*void)(*instance.m_Writer_WriteToCallback)) - cast(*void)(*instance)) == 32, "sLib3MFDynamicWrapperTable.m_Writer_WriteToCallback has unexpected offset % instead of 32", ((cast(*void)(*instance.m_Writer_WriteToCallback)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_WriteToCallback)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_WriteToCallback has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_WriteToCallback)));
        assert(((cast(*void)(*instance.m_Writer_SetProgressCallback)) - cast(*void)(*instance)) == 40, "sLib3MFDynamicWrapperTable.m_Writer_SetProgressCallback has unexpected offset % instead of 40", ((cast(*void)(*instance.m_Writer_SetProgressCallback)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_SetProgressCallback)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_SetProgressCallback has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_SetProgressCallback)));
        assert(((cast(*void)(*instance.m_Writer_GetDecimalPrecision)) - cast(*void)(*instance)) == 48, "sLib3MFDynamicWrapperTable.m_Writer_GetDecimalPrecision has unexpected offset % instead of 48", ((cast(*void)(*instance.m_Writer_GetDecimalPrecision)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_GetDecimalPrecision)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_GetDecimalPrecision has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_GetDecimalPrecision)));
        assert(((cast(*void)(*instance.m_Writer_SetDecimalPrecision)) - cast(*void)(*instance)) == 56, "sLib3MFDynamicWrapperTable.m_Writer_SetDecimalPrecision has unexpected offset % instead of 56", ((cast(*void)(*instance.m_Writer_SetDecimalPrecision)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_SetDecimalPrecision)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_SetDecimalPrecision has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_SetDecimalPrecision)));
        assert(((cast(*void)(*instance.m_Writer_SetStrictModeActive)) - cast(*void)(*instance)) == 64, "sLib3MFDynamicWrapperTable.m_Writer_SetStrictModeActive has unexpected offset % instead of 64", ((cast(*void)(*instance.m_Writer_SetStrictModeActive)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_SetStrictModeActive)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_SetStrictModeActive has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_SetStrictModeActive)));
        assert(((cast(*void)(*instance.m_Writer_GetStrictModeActive)) - cast(*void)(*instance)) == 72, "sLib3MFDynamicWrapperTable.m_Writer_GetStrictModeActive has unexpected offset % instead of 72", ((cast(*void)(*instance.m_Writer_GetStrictModeActive)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_GetStrictModeActive)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_GetStrictModeActive has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_GetStrictModeActive)));
        assert(((cast(*void)(*instance.m_Writer_GetWarning)) - cast(*void)(*instance)) == 80, "sLib3MFDynamicWrapperTable.m_Writer_GetWarning has unexpected offset % instead of 80", ((cast(*void)(*instance.m_Writer_GetWarning)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_GetWarning)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_GetWarning has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_GetWarning)));
        assert(((cast(*void)(*instance.m_Writer_GetWarningCount)) - cast(*void)(*instance)) == 88, "sLib3MFDynamicWrapperTable.m_Writer_GetWarningCount has unexpected offset % instead of 88", ((cast(*void)(*instance.m_Writer_GetWarningCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_GetWarningCount)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_GetWarningCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_GetWarningCount)));
        assert(((cast(*void)(*instance.m_Writer_AddKeyWrappingCallback)) - cast(*void)(*instance)) == 96, "sLib3MFDynamicWrapperTable.m_Writer_AddKeyWrappingCallback has unexpected offset % instead of 96", ((cast(*void)(*instance.m_Writer_AddKeyWrappingCallback)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_AddKeyWrappingCallback)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_AddKeyWrappingCallback has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_AddKeyWrappingCallback)));
        assert(((cast(*void)(*instance.m_Writer_SetContentEncryptionCallback)) - cast(*void)(*instance)) == 104, "sLib3MFDynamicWrapperTable.m_Writer_SetContentEncryptionCallback has unexpected offset % instead of 104", ((cast(*void)(*instance.m_Writer_SetContentEncryptionCallback)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_SetContentEncryptionCallback)) == 8, "sLib3MFDynamicWrapperTable.m_Writer_SetContentEncryptionCallback has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Writer_SetContentEncryptionCallback)));
        assert(((cast(*void)(*instance.m_Reader_ReadFromFile)) - cast(*void)(*instance)) == 112, "sLib3MFDynamicWrapperTable.m_Reader_ReadFromFile has unexpected offset % instead of 112", ((cast(*void)(*instance.m_Reader_ReadFromFile)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_ReadFromFile)) == 8, "sLib3MFDynamicWrapperTable.m_Reader_ReadFromFile has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_ReadFromFile)));
        assert(((cast(*void)(*instance.m_Reader_ReadFromBuffer)) - cast(*void)(*instance)) == 120, "sLib3MFDynamicWrapperTable.m_Reader_ReadFromBuffer has unexpected offset % instead of 120", ((cast(*void)(*instance.m_Reader_ReadFromBuffer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_ReadFromBuffer)) == 8, "sLib3MFDynamicWrapperTable.m_Reader_ReadFromBuffer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_ReadFromBuffer)));
        assert(((cast(*void)(*instance.m_Reader_ReadFromCallback)) - cast(*void)(*instance)) == 128, "sLib3MFDynamicWrapperTable.m_Reader_ReadFromCallback has unexpected offset % instead of 128", ((cast(*void)(*instance.m_Reader_ReadFromCallback)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_ReadFromCallback)) == 8, "sLib3MFDynamicWrapperTable.m_Reader_ReadFromCallback has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_ReadFromCallback)));
        assert(((cast(*void)(*instance.m_Reader_SetProgressCallback)) - cast(*void)(*instance)) == 136, "sLib3MFDynamicWrapperTable.m_Reader_SetProgressCallback has unexpected offset % instead of 136", ((cast(*void)(*instance.m_Reader_SetProgressCallback)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_SetProgressCallback)) == 8, "sLib3MFDynamicWrapperTable.m_Reader_SetProgressCallback has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_SetProgressCallback)));
        assert(((cast(*void)(*instance.m_Reader_AddRelationToRead)) - cast(*void)(*instance)) == 144, "sLib3MFDynamicWrapperTable.m_Reader_AddRelationToRead has unexpected offset % instead of 144", ((cast(*void)(*instance.m_Reader_AddRelationToRead)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_AddRelationToRead)) == 8, "sLib3MFDynamicWrapperTable.m_Reader_AddRelationToRead has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_AddRelationToRead)));
        assert(((cast(*void)(*instance.m_Reader_RemoveRelationToRead)) - cast(*void)(*instance)) == 152, "sLib3MFDynamicWrapperTable.m_Reader_RemoveRelationToRead has unexpected offset % instead of 152", ((cast(*void)(*instance.m_Reader_RemoveRelationToRead)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_RemoveRelationToRead)) == 8, "sLib3MFDynamicWrapperTable.m_Reader_RemoveRelationToRead has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_RemoveRelationToRead)));
        assert(((cast(*void)(*instance.m_Reader_SetStrictModeActive)) - cast(*void)(*instance)) == 160, "sLib3MFDynamicWrapperTable.m_Reader_SetStrictModeActive has unexpected offset % instead of 160", ((cast(*void)(*instance.m_Reader_SetStrictModeActive)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_SetStrictModeActive)) == 8, "sLib3MFDynamicWrapperTable.m_Reader_SetStrictModeActive has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_SetStrictModeActive)));
        assert(((cast(*void)(*instance.m_Reader_GetStrictModeActive)) - cast(*void)(*instance)) == 168, "sLib3MFDynamicWrapperTable.m_Reader_GetStrictModeActive has unexpected offset % instead of 168", ((cast(*void)(*instance.m_Reader_GetStrictModeActive)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_GetStrictModeActive)) == 8, "sLib3MFDynamicWrapperTable.m_Reader_GetStrictModeActive has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_GetStrictModeActive)));
        assert(((cast(*void)(*instance.m_Reader_GetWarning)) - cast(*void)(*instance)) == 176, "sLib3MFDynamicWrapperTable.m_Reader_GetWarning has unexpected offset % instead of 176", ((cast(*void)(*instance.m_Reader_GetWarning)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_GetWarning)) == 8, "sLib3MFDynamicWrapperTable.m_Reader_GetWarning has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_GetWarning)));
        assert(((cast(*void)(*instance.m_Reader_GetWarningCount)) - cast(*void)(*instance)) == 184, "sLib3MFDynamicWrapperTable.m_Reader_GetWarningCount has unexpected offset % instead of 184", ((cast(*void)(*instance.m_Reader_GetWarningCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_GetWarningCount)) == 8, "sLib3MFDynamicWrapperTable.m_Reader_GetWarningCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_GetWarningCount)));
        assert(((cast(*void)(*instance.m_Reader_AddKeyWrappingCallback)) - cast(*void)(*instance)) == 192, "sLib3MFDynamicWrapperTable.m_Reader_AddKeyWrappingCallback has unexpected offset % instead of 192", ((cast(*void)(*instance.m_Reader_AddKeyWrappingCallback)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_AddKeyWrappingCallback)) == 8, "sLib3MFDynamicWrapperTable.m_Reader_AddKeyWrappingCallback has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_AddKeyWrappingCallback)));
        assert(((cast(*void)(*instance.m_Reader_SetContentEncryptionCallback)) - cast(*void)(*instance)) == 200, "sLib3MFDynamicWrapperTable.m_Reader_SetContentEncryptionCallback has unexpected offset % instead of 200", ((cast(*void)(*instance.m_Reader_SetContentEncryptionCallback)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_SetContentEncryptionCallback)) == 8, "sLib3MFDynamicWrapperTable.m_Reader_SetContentEncryptionCallback has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Reader_SetContentEncryptionCallback)));
        assert(((cast(*void)(*instance.m_PackagePart_GetPath)) - cast(*void)(*instance)) == 208, "sLib3MFDynamicWrapperTable.m_PackagePart_GetPath has unexpected offset % instead of 208", ((cast(*void)(*instance.m_PackagePart_GetPath)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_PackagePart_GetPath)) == 8, "sLib3MFDynamicWrapperTable.m_PackagePart_GetPath has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_PackagePart_GetPath)));
        assert(((cast(*void)(*instance.m_PackagePart_SetPath)) - cast(*void)(*instance)) == 216, "sLib3MFDynamicWrapperTable.m_PackagePart_SetPath has unexpected offset % instead of 216", ((cast(*void)(*instance.m_PackagePart_SetPath)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_PackagePart_SetPath)) == 8, "sLib3MFDynamicWrapperTable.m_PackagePart_SetPath has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_PackagePart_SetPath)));
        assert(((cast(*void)(*instance.m_Resource_GetResourceID)) - cast(*void)(*instance)) == 224, "sLib3MFDynamicWrapperTable.m_Resource_GetResourceID has unexpected offset % instead of 224", ((cast(*void)(*instance.m_Resource_GetResourceID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Resource_GetResourceID)) == 8, "sLib3MFDynamicWrapperTable.m_Resource_GetResourceID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Resource_GetResourceID)));
        assert(((cast(*void)(*instance.m_Resource_GetUniqueResourceID)) - cast(*void)(*instance)) == 232, "sLib3MFDynamicWrapperTable.m_Resource_GetUniqueResourceID has unexpected offset % instead of 232", ((cast(*void)(*instance.m_Resource_GetUniqueResourceID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Resource_GetUniqueResourceID)) == 8, "sLib3MFDynamicWrapperTable.m_Resource_GetUniqueResourceID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Resource_GetUniqueResourceID)));
        assert(((cast(*void)(*instance.m_Resource_PackagePart)) - cast(*void)(*instance)) == 240, "sLib3MFDynamicWrapperTable.m_Resource_PackagePart has unexpected offset % instead of 240", ((cast(*void)(*instance.m_Resource_PackagePart)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Resource_PackagePart)) == 8, "sLib3MFDynamicWrapperTable.m_Resource_PackagePart has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Resource_PackagePart)));
        assert(((cast(*void)(*instance.m_Resource_SetPackagePart)) - cast(*void)(*instance)) == 248, "sLib3MFDynamicWrapperTable.m_Resource_SetPackagePart has unexpected offset % instead of 248", ((cast(*void)(*instance.m_Resource_SetPackagePart)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Resource_SetPackagePart)) == 8, "sLib3MFDynamicWrapperTable.m_Resource_SetPackagePart has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Resource_SetPackagePart)));
        assert(((cast(*void)(*instance.m_Resource_GetModelResourceID)) - cast(*void)(*instance)) == 256, "sLib3MFDynamicWrapperTable.m_Resource_GetModelResourceID has unexpected offset % instead of 256", ((cast(*void)(*instance.m_Resource_GetModelResourceID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Resource_GetModelResourceID)) == 8, "sLib3MFDynamicWrapperTable.m_Resource_GetModelResourceID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Resource_GetModelResourceID)));
        assert(((cast(*void)(*instance.m_ResourceIterator_MoveNext)) - cast(*void)(*instance)) == 264, "sLib3MFDynamicWrapperTable.m_ResourceIterator_MoveNext has unexpected offset % instead of 264", ((cast(*void)(*instance.m_ResourceIterator_MoveNext)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceIterator_MoveNext)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceIterator_MoveNext has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceIterator_MoveNext)));
        assert(((cast(*void)(*instance.m_ResourceIterator_MovePrevious)) - cast(*void)(*instance)) == 272, "sLib3MFDynamicWrapperTable.m_ResourceIterator_MovePrevious has unexpected offset % instead of 272", ((cast(*void)(*instance.m_ResourceIterator_MovePrevious)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceIterator_MovePrevious)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceIterator_MovePrevious has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceIterator_MovePrevious)));
        assert(((cast(*void)(*instance.m_ResourceIterator_GetCurrent)) - cast(*void)(*instance)) == 280, "sLib3MFDynamicWrapperTable.m_ResourceIterator_GetCurrent has unexpected offset % instead of 280", ((cast(*void)(*instance.m_ResourceIterator_GetCurrent)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceIterator_GetCurrent)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceIterator_GetCurrent has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceIterator_GetCurrent)));
        assert(((cast(*void)(*instance.m_ResourceIterator_Clone)) - cast(*void)(*instance)) == 288, "sLib3MFDynamicWrapperTable.m_ResourceIterator_Clone has unexpected offset % instead of 288", ((cast(*void)(*instance.m_ResourceIterator_Clone)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceIterator_Clone)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceIterator_Clone has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceIterator_Clone)));
        assert(((cast(*void)(*instance.m_ResourceIterator_Count)) - cast(*void)(*instance)) == 296, "sLib3MFDynamicWrapperTable.m_ResourceIterator_Count has unexpected offset % instead of 296", ((cast(*void)(*instance.m_ResourceIterator_Count)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceIterator_Count)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceIterator_Count has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceIterator_Count)));
        assert(((cast(*void)(*instance.m_SliceStackIterator_GetCurrentSliceStack)) - cast(*void)(*instance)) == 304, "sLib3MFDynamicWrapperTable.m_SliceStackIterator_GetCurrentSliceStack has unexpected offset % instead of 304", ((cast(*void)(*instance.m_SliceStackIterator_GetCurrentSliceStack)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStackIterator_GetCurrentSliceStack)) == 8, "sLib3MFDynamicWrapperTable.m_SliceStackIterator_GetCurrentSliceStack has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStackIterator_GetCurrentSliceStack)));
        assert(((cast(*void)(*instance.m_ObjectIterator_GetCurrentObject)) - cast(*void)(*instance)) == 312, "sLib3MFDynamicWrapperTable.m_ObjectIterator_GetCurrentObject has unexpected offset % instead of 312", ((cast(*void)(*instance.m_ObjectIterator_GetCurrentObject)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ObjectIterator_GetCurrentObject)) == 8, "sLib3MFDynamicWrapperTable.m_ObjectIterator_GetCurrentObject has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ObjectIterator_GetCurrentObject)));
        assert(((cast(*void)(*instance.m_MeshObjectIterator_GetCurrentMeshObject)) - cast(*void)(*instance)) == 320, "sLib3MFDynamicWrapperTable.m_MeshObjectIterator_GetCurrentMeshObject has unexpected offset % instead of 320", ((cast(*void)(*instance.m_MeshObjectIterator_GetCurrentMeshObject)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObjectIterator_GetCurrentMeshObject)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObjectIterator_GetCurrentMeshObject has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObjectIterator_GetCurrentMeshObject)));
        assert(((cast(*void)(*instance.m_ComponentsObjectIterator_GetCurrentComponentsObject)) - cast(*void)(*instance)) == 328, "sLib3MFDynamicWrapperTable.m_ComponentsObjectIterator_GetCurrentComponentsObject has unexpected offset % instead of 328", ((cast(*void)(*instance.m_ComponentsObjectIterator_GetCurrentComponentsObject)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ComponentsObjectIterator_GetCurrentComponentsObject)) == 8, "sLib3MFDynamicWrapperTable.m_ComponentsObjectIterator_GetCurrentComponentsObject has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ComponentsObjectIterator_GetCurrentComponentsObject)));
        assert(((cast(*void)(*instance.m_Texture2DIterator_GetCurrentTexture2D)) - cast(*void)(*instance)) == 336, "sLib3MFDynamicWrapperTable.m_Texture2DIterator_GetCurrentTexture2D has unexpected offset % instead of 336", ((cast(*void)(*instance.m_Texture2DIterator_GetCurrentTexture2D)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DIterator_GetCurrentTexture2D)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2DIterator_GetCurrentTexture2D has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DIterator_GetCurrentTexture2D)));
        assert(((cast(*void)(*instance.m_BaseMaterialGroupIterator_GetCurrentBaseMaterialGroup)) - cast(*void)(*instance)) == 344, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroupIterator_GetCurrentBaseMaterialGroup has unexpected offset % instead of 344", ((cast(*void)(*instance.m_BaseMaterialGroupIterator_GetCurrentBaseMaterialGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroupIterator_GetCurrentBaseMaterialGroup)) == 8, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroupIterator_GetCurrentBaseMaterialGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroupIterator_GetCurrentBaseMaterialGroup)));
        assert(((cast(*void)(*instance.m_ColorGroupIterator_GetCurrentColorGroup)) - cast(*void)(*instance)) == 352, "sLib3MFDynamicWrapperTable.m_ColorGroupIterator_GetCurrentColorGroup has unexpected offset % instead of 352", ((cast(*void)(*instance.m_ColorGroupIterator_GetCurrentColorGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroupIterator_GetCurrentColorGroup)) == 8, "sLib3MFDynamicWrapperTable.m_ColorGroupIterator_GetCurrentColorGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroupIterator_GetCurrentColorGroup)));
        assert(((cast(*void)(*instance.m_Texture2DGroupIterator_GetCurrentTexture2DGroup)) - cast(*void)(*instance)) == 360, "sLib3MFDynamicWrapperTable.m_Texture2DGroupIterator_GetCurrentTexture2DGroup has unexpected offset % instead of 360", ((cast(*void)(*instance.m_Texture2DGroupIterator_GetCurrentTexture2DGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroupIterator_GetCurrentTexture2DGroup)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2DGroupIterator_GetCurrentTexture2DGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroupIterator_GetCurrentTexture2DGroup)));
        assert(((cast(*void)(*instance.m_CompositeMaterialsIterator_GetCurrentCompositeMaterials)) - cast(*void)(*instance)) == 368, "sLib3MFDynamicWrapperTable.m_CompositeMaterialsIterator_GetCurrentCompositeMaterials has unexpected offset % instead of 368", ((cast(*void)(*instance.m_CompositeMaterialsIterator_GetCurrentCompositeMaterials)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterialsIterator_GetCurrentCompositeMaterials)) == 8, "sLib3MFDynamicWrapperTable.m_CompositeMaterialsIterator_GetCurrentCompositeMaterials has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterialsIterator_GetCurrentCompositeMaterials)));
        assert(((cast(*void)(*instance.m_MultiPropertyGroupIterator_GetCurrentMultiPropertyGroup)) - cast(*void)(*instance)) == 376, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroupIterator_GetCurrentMultiPropertyGroup has unexpected offset % instead of 376", ((cast(*void)(*instance.m_MultiPropertyGroupIterator_GetCurrentMultiPropertyGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroupIterator_GetCurrentMultiPropertyGroup)) == 8, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroupIterator_GetCurrentMultiPropertyGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroupIterator_GetCurrentMultiPropertyGroup)));
        assert(((cast(*void)(*instance.m_MetaData_GetNameSpace)) - cast(*void)(*instance)) == 384, "sLib3MFDynamicWrapperTable.m_MetaData_GetNameSpace has unexpected offset % instead of 384", ((cast(*void)(*instance.m_MetaData_GetNameSpace)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_GetNameSpace)) == 8, "sLib3MFDynamicWrapperTable.m_MetaData_GetNameSpace has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_GetNameSpace)));
        assert(((cast(*void)(*instance.m_MetaData_SetNameSpace)) - cast(*void)(*instance)) == 392, "sLib3MFDynamicWrapperTable.m_MetaData_SetNameSpace has unexpected offset % instead of 392", ((cast(*void)(*instance.m_MetaData_SetNameSpace)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_SetNameSpace)) == 8, "sLib3MFDynamicWrapperTable.m_MetaData_SetNameSpace has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_SetNameSpace)));
        assert(((cast(*void)(*instance.m_MetaData_GetName)) - cast(*void)(*instance)) == 400, "sLib3MFDynamicWrapperTable.m_MetaData_GetName has unexpected offset % instead of 400", ((cast(*void)(*instance.m_MetaData_GetName)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_GetName)) == 8, "sLib3MFDynamicWrapperTable.m_MetaData_GetName has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_GetName)));
        assert(((cast(*void)(*instance.m_MetaData_SetName)) - cast(*void)(*instance)) == 408, "sLib3MFDynamicWrapperTable.m_MetaData_SetName has unexpected offset % instead of 408", ((cast(*void)(*instance.m_MetaData_SetName)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_SetName)) == 8, "sLib3MFDynamicWrapperTable.m_MetaData_SetName has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_SetName)));
        assert(((cast(*void)(*instance.m_MetaData_GetKey)) - cast(*void)(*instance)) == 416, "sLib3MFDynamicWrapperTable.m_MetaData_GetKey has unexpected offset % instead of 416", ((cast(*void)(*instance.m_MetaData_GetKey)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_GetKey)) == 8, "sLib3MFDynamicWrapperTable.m_MetaData_GetKey has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_GetKey)));
        assert(((cast(*void)(*instance.m_MetaData_GetMustPreserve)) - cast(*void)(*instance)) == 424, "sLib3MFDynamicWrapperTable.m_MetaData_GetMustPreserve has unexpected offset % instead of 424", ((cast(*void)(*instance.m_MetaData_GetMustPreserve)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_GetMustPreserve)) == 8, "sLib3MFDynamicWrapperTable.m_MetaData_GetMustPreserve has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_GetMustPreserve)));
        assert(((cast(*void)(*instance.m_MetaData_SetMustPreserve)) - cast(*void)(*instance)) == 432, "sLib3MFDynamicWrapperTable.m_MetaData_SetMustPreserve has unexpected offset % instead of 432", ((cast(*void)(*instance.m_MetaData_SetMustPreserve)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_SetMustPreserve)) == 8, "sLib3MFDynamicWrapperTable.m_MetaData_SetMustPreserve has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_SetMustPreserve)));
        assert(((cast(*void)(*instance.m_MetaData_GetType)) - cast(*void)(*instance)) == 440, "sLib3MFDynamicWrapperTable.m_MetaData_GetType has unexpected offset % instead of 440", ((cast(*void)(*instance.m_MetaData_GetType)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_GetType)) == 8, "sLib3MFDynamicWrapperTable.m_MetaData_GetType has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_GetType)));
        assert(((cast(*void)(*instance.m_MetaData_SetType)) - cast(*void)(*instance)) == 448, "sLib3MFDynamicWrapperTable.m_MetaData_SetType has unexpected offset % instead of 448", ((cast(*void)(*instance.m_MetaData_SetType)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_SetType)) == 8, "sLib3MFDynamicWrapperTable.m_MetaData_SetType has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_SetType)));
        assert(((cast(*void)(*instance.m_MetaData_GetValue)) - cast(*void)(*instance)) == 456, "sLib3MFDynamicWrapperTable.m_MetaData_GetValue has unexpected offset % instead of 456", ((cast(*void)(*instance.m_MetaData_GetValue)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_GetValue)) == 8, "sLib3MFDynamicWrapperTable.m_MetaData_GetValue has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_GetValue)));
        assert(((cast(*void)(*instance.m_MetaData_SetValue)) - cast(*void)(*instance)) == 464, "sLib3MFDynamicWrapperTable.m_MetaData_SetValue has unexpected offset % instead of 464", ((cast(*void)(*instance.m_MetaData_SetValue)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_SetValue)) == 8, "sLib3MFDynamicWrapperTable.m_MetaData_SetValue has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaData_SetValue)));
        assert(((cast(*void)(*instance.m_MetaDataGroup_GetMetaDataCount)) - cast(*void)(*instance)) == 472, "sLib3MFDynamicWrapperTable.m_MetaDataGroup_GetMetaDataCount has unexpected offset % instead of 472", ((cast(*void)(*instance.m_MetaDataGroup_GetMetaDataCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaDataGroup_GetMetaDataCount)) == 8, "sLib3MFDynamicWrapperTable.m_MetaDataGroup_GetMetaDataCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaDataGroup_GetMetaDataCount)));
        assert(((cast(*void)(*instance.m_MetaDataGroup_GetMetaData)) - cast(*void)(*instance)) == 480, "sLib3MFDynamicWrapperTable.m_MetaDataGroup_GetMetaData has unexpected offset % instead of 480", ((cast(*void)(*instance.m_MetaDataGroup_GetMetaData)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaDataGroup_GetMetaData)) == 8, "sLib3MFDynamicWrapperTable.m_MetaDataGroup_GetMetaData has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaDataGroup_GetMetaData)));
        assert(((cast(*void)(*instance.m_MetaDataGroup_GetMetaDataByKey)) - cast(*void)(*instance)) == 488, "sLib3MFDynamicWrapperTable.m_MetaDataGroup_GetMetaDataByKey has unexpected offset % instead of 488", ((cast(*void)(*instance.m_MetaDataGroup_GetMetaDataByKey)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaDataGroup_GetMetaDataByKey)) == 8, "sLib3MFDynamicWrapperTable.m_MetaDataGroup_GetMetaDataByKey has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaDataGroup_GetMetaDataByKey)));
        assert(((cast(*void)(*instance.m_MetaDataGroup_RemoveMetaDataByIndex)) - cast(*void)(*instance)) == 496, "sLib3MFDynamicWrapperTable.m_MetaDataGroup_RemoveMetaDataByIndex has unexpected offset % instead of 496", ((cast(*void)(*instance.m_MetaDataGroup_RemoveMetaDataByIndex)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaDataGroup_RemoveMetaDataByIndex)) == 8, "sLib3MFDynamicWrapperTable.m_MetaDataGroup_RemoveMetaDataByIndex has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaDataGroup_RemoveMetaDataByIndex)));
        assert(((cast(*void)(*instance.m_MetaDataGroup_RemoveMetaData)) - cast(*void)(*instance)) == 504, "sLib3MFDynamicWrapperTable.m_MetaDataGroup_RemoveMetaData has unexpected offset % instead of 504", ((cast(*void)(*instance.m_MetaDataGroup_RemoveMetaData)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaDataGroup_RemoveMetaData)) == 8, "sLib3MFDynamicWrapperTable.m_MetaDataGroup_RemoveMetaData has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaDataGroup_RemoveMetaData)));
        assert(((cast(*void)(*instance.m_MetaDataGroup_AddMetaData)) - cast(*void)(*instance)) == 512, "sLib3MFDynamicWrapperTable.m_MetaDataGroup_AddMetaData has unexpected offset % instead of 512", ((cast(*void)(*instance.m_MetaDataGroup_AddMetaData)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaDataGroup_AddMetaData)) == 8, "sLib3MFDynamicWrapperTable.m_MetaDataGroup_AddMetaData has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MetaDataGroup_AddMetaData)));
        assert(((cast(*void)(*instance.m_Object_GetType)) - cast(*void)(*instance)) == 520, "sLib3MFDynamicWrapperTable.m_Object_GetType has unexpected offset % instead of 520", ((cast(*void)(*instance.m_Object_GetType)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetType)) == 8, "sLib3MFDynamicWrapperTable.m_Object_GetType has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetType)));
        assert(((cast(*void)(*instance.m_Object_SetType)) - cast(*void)(*instance)) == 528, "sLib3MFDynamicWrapperTable.m_Object_SetType has unexpected offset % instead of 528", ((cast(*void)(*instance.m_Object_SetType)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_SetType)) == 8, "sLib3MFDynamicWrapperTable.m_Object_SetType has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_SetType)));
        assert(((cast(*void)(*instance.m_Object_GetName)) - cast(*void)(*instance)) == 536, "sLib3MFDynamicWrapperTable.m_Object_GetName has unexpected offset % instead of 536", ((cast(*void)(*instance.m_Object_GetName)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetName)) == 8, "sLib3MFDynamicWrapperTable.m_Object_GetName has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetName)));
        assert(((cast(*void)(*instance.m_Object_SetName)) - cast(*void)(*instance)) == 544, "sLib3MFDynamicWrapperTable.m_Object_SetName has unexpected offset % instead of 544", ((cast(*void)(*instance.m_Object_SetName)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_SetName)) == 8, "sLib3MFDynamicWrapperTable.m_Object_SetName has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_SetName)));
        assert(((cast(*void)(*instance.m_Object_GetPartNumber)) - cast(*void)(*instance)) == 552, "sLib3MFDynamicWrapperTable.m_Object_GetPartNumber has unexpected offset % instead of 552", ((cast(*void)(*instance.m_Object_GetPartNumber)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetPartNumber)) == 8, "sLib3MFDynamicWrapperTable.m_Object_GetPartNumber has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetPartNumber)));
        assert(((cast(*void)(*instance.m_Object_SetPartNumber)) - cast(*void)(*instance)) == 560, "sLib3MFDynamicWrapperTable.m_Object_SetPartNumber has unexpected offset % instead of 560", ((cast(*void)(*instance.m_Object_SetPartNumber)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_SetPartNumber)) == 8, "sLib3MFDynamicWrapperTable.m_Object_SetPartNumber has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_SetPartNumber)));
        assert(((cast(*void)(*instance.m_Object_IsMeshObject)) - cast(*void)(*instance)) == 568, "sLib3MFDynamicWrapperTable.m_Object_IsMeshObject has unexpected offset % instead of 568", ((cast(*void)(*instance.m_Object_IsMeshObject)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_IsMeshObject)) == 8, "sLib3MFDynamicWrapperTable.m_Object_IsMeshObject has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_IsMeshObject)));
        assert(((cast(*void)(*instance.m_Object_IsComponentsObject)) - cast(*void)(*instance)) == 576, "sLib3MFDynamicWrapperTable.m_Object_IsComponentsObject has unexpected offset % instead of 576", ((cast(*void)(*instance.m_Object_IsComponentsObject)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_IsComponentsObject)) == 8, "sLib3MFDynamicWrapperTable.m_Object_IsComponentsObject has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_IsComponentsObject)));
        assert(((cast(*void)(*instance.m_Object_IsValid)) - cast(*void)(*instance)) == 584, "sLib3MFDynamicWrapperTable.m_Object_IsValid has unexpected offset % instead of 584", ((cast(*void)(*instance.m_Object_IsValid)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_IsValid)) == 8, "sLib3MFDynamicWrapperTable.m_Object_IsValid has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_IsValid)));
        assert(((cast(*void)(*instance.m_Object_SetAttachmentAsThumbnail)) - cast(*void)(*instance)) == 592, "sLib3MFDynamicWrapperTable.m_Object_SetAttachmentAsThumbnail has unexpected offset % instead of 592", ((cast(*void)(*instance.m_Object_SetAttachmentAsThumbnail)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_SetAttachmentAsThumbnail)) == 8, "sLib3MFDynamicWrapperTable.m_Object_SetAttachmentAsThumbnail has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_SetAttachmentAsThumbnail)));
        assert(((cast(*void)(*instance.m_Object_GetThumbnailAttachment)) - cast(*void)(*instance)) == 600, "sLib3MFDynamicWrapperTable.m_Object_GetThumbnailAttachment has unexpected offset % instead of 600", ((cast(*void)(*instance.m_Object_GetThumbnailAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetThumbnailAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Object_GetThumbnailAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetThumbnailAttachment)));
        assert(((cast(*void)(*instance.m_Object_ClearThumbnailAttachment)) - cast(*void)(*instance)) == 608, "sLib3MFDynamicWrapperTable.m_Object_ClearThumbnailAttachment has unexpected offset % instead of 608", ((cast(*void)(*instance.m_Object_ClearThumbnailAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_ClearThumbnailAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Object_ClearThumbnailAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_ClearThumbnailAttachment)));
        assert(((cast(*void)(*instance.m_Object_GetOutbox)) - cast(*void)(*instance)) == 616, "sLib3MFDynamicWrapperTable.m_Object_GetOutbox has unexpected offset % instead of 616", ((cast(*void)(*instance.m_Object_GetOutbox)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetOutbox)) == 8, "sLib3MFDynamicWrapperTable.m_Object_GetOutbox has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetOutbox)));
        assert(((cast(*void)(*instance.m_Object_GetUUID)) - cast(*void)(*instance)) == 624, "sLib3MFDynamicWrapperTable.m_Object_GetUUID has unexpected offset % instead of 624", ((cast(*void)(*instance.m_Object_GetUUID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetUUID)) == 8, "sLib3MFDynamicWrapperTable.m_Object_GetUUID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetUUID)));
        assert(((cast(*void)(*instance.m_Object_SetUUID)) - cast(*void)(*instance)) == 632, "sLib3MFDynamicWrapperTable.m_Object_SetUUID has unexpected offset % instead of 632", ((cast(*void)(*instance.m_Object_SetUUID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_SetUUID)) == 8, "sLib3MFDynamicWrapperTable.m_Object_SetUUID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_SetUUID)));
        assert(((cast(*void)(*instance.m_Object_GetMetaDataGroup)) - cast(*void)(*instance)) == 640, "sLib3MFDynamicWrapperTable.m_Object_GetMetaDataGroup has unexpected offset % instead of 640", ((cast(*void)(*instance.m_Object_GetMetaDataGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetMetaDataGroup)) == 8, "sLib3MFDynamicWrapperTable.m_Object_GetMetaDataGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetMetaDataGroup)));
        assert(((cast(*void)(*instance.m_Object_SetSlicesMeshResolution)) - cast(*void)(*instance)) == 648, "sLib3MFDynamicWrapperTable.m_Object_SetSlicesMeshResolution has unexpected offset % instead of 648", ((cast(*void)(*instance.m_Object_SetSlicesMeshResolution)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_SetSlicesMeshResolution)) == 8, "sLib3MFDynamicWrapperTable.m_Object_SetSlicesMeshResolution has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_SetSlicesMeshResolution)));
        assert(((cast(*void)(*instance.m_Object_GetSlicesMeshResolution)) - cast(*void)(*instance)) == 656, "sLib3MFDynamicWrapperTable.m_Object_GetSlicesMeshResolution has unexpected offset % instead of 656", ((cast(*void)(*instance.m_Object_GetSlicesMeshResolution)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetSlicesMeshResolution)) == 8, "sLib3MFDynamicWrapperTable.m_Object_GetSlicesMeshResolution has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetSlicesMeshResolution)));
        assert(((cast(*void)(*instance.m_Object_HasSlices)) - cast(*void)(*instance)) == 664, "sLib3MFDynamicWrapperTable.m_Object_HasSlices has unexpected offset % instead of 664", ((cast(*void)(*instance.m_Object_HasSlices)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_HasSlices)) == 8, "sLib3MFDynamicWrapperTable.m_Object_HasSlices has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_HasSlices)));
        assert(((cast(*void)(*instance.m_Object_ClearSliceStack)) - cast(*void)(*instance)) == 672, "sLib3MFDynamicWrapperTable.m_Object_ClearSliceStack has unexpected offset % instead of 672", ((cast(*void)(*instance.m_Object_ClearSliceStack)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_ClearSliceStack)) == 8, "sLib3MFDynamicWrapperTable.m_Object_ClearSliceStack has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_ClearSliceStack)));
        assert(((cast(*void)(*instance.m_Object_GetSliceStack)) - cast(*void)(*instance)) == 680, "sLib3MFDynamicWrapperTable.m_Object_GetSliceStack has unexpected offset % instead of 680", ((cast(*void)(*instance.m_Object_GetSliceStack)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetSliceStack)) == 8, "sLib3MFDynamicWrapperTable.m_Object_GetSliceStack has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_GetSliceStack)));
        assert(((cast(*void)(*instance.m_Object_AssignSliceStack)) - cast(*void)(*instance)) == 688, "sLib3MFDynamicWrapperTable.m_Object_AssignSliceStack has unexpected offset % instead of 688", ((cast(*void)(*instance.m_Object_AssignSliceStack)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_AssignSliceStack)) == 8, "sLib3MFDynamicWrapperTable.m_Object_AssignSliceStack has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Object_AssignSliceStack)));
        assert(((cast(*void)(*instance.m_MeshObject_GetVertexCount)) - cast(*void)(*instance)) == 696, "sLib3MFDynamicWrapperTable.m_MeshObject_GetVertexCount has unexpected offset % instead of 696", ((cast(*void)(*instance.m_MeshObject_GetVertexCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetVertexCount)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_GetVertexCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetVertexCount)));
        assert(((cast(*void)(*instance.m_MeshObject_GetTriangleCount)) - cast(*void)(*instance)) == 704, "sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangleCount has unexpected offset % instead of 704", ((cast(*void)(*instance.m_MeshObject_GetTriangleCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangleCount)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangleCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangleCount)));
        assert(((cast(*void)(*instance.m_MeshObject_GetVertex)) - cast(*void)(*instance)) == 712, "sLib3MFDynamicWrapperTable.m_MeshObject_GetVertex has unexpected offset % instead of 712", ((cast(*void)(*instance.m_MeshObject_GetVertex)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetVertex)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_GetVertex has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetVertex)));
        assert(((cast(*void)(*instance.m_MeshObject_SetVertex)) - cast(*void)(*instance)) == 720, "sLib3MFDynamicWrapperTable.m_MeshObject_SetVertex has unexpected offset % instead of 720", ((cast(*void)(*instance.m_MeshObject_SetVertex)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_SetVertex)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_SetVertex has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_SetVertex)));
        assert(((cast(*void)(*instance.m_MeshObject_AddVertex)) - cast(*void)(*instance)) == 728, "sLib3MFDynamicWrapperTable.m_MeshObject_AddVertex has unexpected offset % instead of 728", ((cast(*void)(*instance.m_MeshObject_AddVertex)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_AddVertex)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_AddVertex has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_AddVertex)));
        assert(((cast(*void)(*instance.m_MeshObject_GetVertices)) - cast(*void)(*instance)) == 736, "sLib3MFDynamicWrapperTable.m_MeshObject_GetVertices has unexpected offset % instead of 736", ((cast(*void)(*instance.m_MeshObject_GetVertices)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetVertices)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_GetVertices has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetVertices)));
        assert(((cast(*void)(*instance.m_MeshObject_GetTriangle)) - cast(*void)(*instance)) == 744, "sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangle has unexpected offset % instead of 744", ((cast(*void)(*instance.m_MeshObject_GetTriangle)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangle)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangle has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangle)));
        assert(((cast(*void)(*instance.m_MeshObject_SetTriangle)) - cast(*void)(*instance)) == 752, "sLib3MFDynamicWrapperTable.m_MeshObject_SetTriangle has unexpected offset % instead of 752", ((cast(*void)(*instance.m_MeshObject_SetTriangle)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_SetTriangle)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_SetTriangle has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_SetTriangle)));
        assert(((cast(*void)(*instance.m_MeshObject_AddTriangle)) - cast(*void)(*instance)) == 760, "sLib3MFDynamicWrapperTable.m_MeshObject_AddTriangle has unexpected offset % instead of 760", ((cast(*void)(*instance.m_MeshObject_AddTriangle)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_AddTriangle)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_AddTriangle has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_AddTriangle)));
        assert(((cast(*void)(*instance.m_MeshObject_GetTriangleIndices)) - cast(*void)(*instance)) == 768, "sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangleIndices has unexpected offset % instead of 768", ((cast(*void)(*instance.m_MeshObject_GetTriangleIndices)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangleIndices)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangleIndices has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangleIndices)));
        assert(((cast(*void)(*instance.m_MeshObject_SetObjectLevelProperty)) - cast(*void)(*instance)) == 776, "sLib3MFDynamicWrapperTable.m_MeshObject_SetObjectLevelProperty has unexpected offset % instead of 776", ((cast(*void)(*instance.m_MeshObject_SetObjectLevelProperty)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_SetObjectLevelProperty)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_SetObjectLevelProperty has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_SetObjectLevelProperty)));
        assert(((cast(*void)(*instance.m_MeshObject_GetObjectLevelProperty)) - cast(*void)(*instance)) == 784, "sLib3MFDynamicWrapperTable.m_MeshObject_GetObjectLevelProperty has unexpected offset % instead of 784", ((cast(*void)(*instance.m_MeshObject_GetObjectLevelProperty)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetObjectLevelProperty)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_GetObjectLevelProperty has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetObjectLevelProperty)));
        assert(((cast(*void)(*instance.m_MeshObject_SetTriangleProperties)) - cast(*void)(*instance)) == 792, "sLib3MFDynamicWrapperTable.m_MeshObject_SetTriangleProperties has unexpected offset % instead of 792", ((cast(*void)(*instance.m_MeshObject_SetTriangleProperties)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_SetTriangleProperties)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_SetTriangleProperties has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_SetTriangleProperties)));
        assert(((cast(*void)(*instance.m_MeshObject_GetTriangleProperties)) - cast(*void)(*instance)) == 800, "sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangleProperties has unexpected offset % instead of 800", ((cast(*void)(*instance.m_MeshObject_GetTriangleProperties)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangleProperties)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangleProperties has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetTriangleProperties)));
        assert(((cast(*void)(*instance.m_MeshObject_SetAllTriangleProperties)) - cast(*void)(*instance)) == 808, "sLib3MFDynamicWrapperTable.m_MeshObject_SetAllTriangleProperties has unexpected offset % instead of 808", ((cast(*void)(*instance.m_MeshObject_SetAllTriangleProperties)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_SetAllTriangleProperties)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_SetAllTriangleProperties has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_SetAllTriangleProperties)));
        assert(((cast(*void)(*instance.m_MeshObject_GetAllTriangleProperties)) - cast(*void)(*instance)) == 816, "sLib3MFDynamicWrapperTable.m_MeshObject_GetAllTriangleProperties has unexpected offset % instead of 816", ((cast(*void)(*instance.m_MeshObject_GetAllTriangleProperties)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetAllTriangleProperties)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_GetAllTriangleProperties has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_GetAllTriangleProperties)));
        assert(((cast(*void)(*instance.m_MeshObject_ClearAllProperties)) - cast(*void)(*instance)) == 824, "sLib3MFDynamicWrapperTable.m_MeshObject_ClearAllProperties has unexpected offset % instead of 824", ((cast(*void)(*instance.m_MeshObject_ClearAllProperties)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_ClearAllProperties)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_ClearAllProperties has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_ClearAllProperties)));
        assert(((cast(*void)(*instance.m_MeshObject_SetGeometry)) - cast(*void)(*instance)) == 832, "sLib3MFDynamicWrapperTable.m_MeshObject_SetGeometry has unexpected offset % instead of 832", ((cast(*void)(*instance.m_MeshObject_SetGeometry)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_SetGeometry)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_SetGeometry has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_SetGeometry)));
        assert(((cast(*void)(*instance.m_MeshObject_IsManifoldAndOriented)) - cast(*void)(*instance)) == 840, "sLib3MFDynamicWrapperTable.m_MeshObject_IsManifoldAndOriented has unexpected offset % instead of 840", ((cast(*void)(*instance.m_MeshObject_IsManifoldAndOriented)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_IsManifoldAndOriented)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_IsManifoldAndOriented has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_IsManifoldAndOriented)));
        assert(((cast(*void)(*instance.m_MeshObject_BeamLattice)) - cast(*void)(*instance)) == 848, "sLib3MFDynamicWrapperTable.m_MeshObject_BeamLattice has unexpected offset % instead of 848", ((cast(*void)(*instance.m_MeshObject_BeamLattice)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_BeamLattice)) == 8, "sLib3MFDynamicWrapperTable.m_MeshObject_BeamLattice has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MeshObject_BeamLattice)));
        assert(((cast(*void)(*instance.m_BeamLattice_GetMinLength)) - cast(*void)(*instance)) == 856, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetMinLength has unexpected offset % instead of 856", ((cast(*void)(*instance.m_BeamLattice_GetMinLength)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetMinLength)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetMinLength has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetMinLength)));
        assert(((cast(*void)(*instance.m_BeamLattice_SetMinLength)) - cast(*void)(*instance)) == 864, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetMinLength has unexpected offset % instead of 864", ((cast(*void)(*instance.m_BeamLattice_SetMinLength)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetMinLength)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetMinLength has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetMinLength)));
        assert(((cast(*void)(*instance.m_BeamLattice_GetClipping)) - cast(*void)(*instance)) == 872, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetClipping has unexpected offset % instead of 872", ((cast(*void)(*instance.m_BeamLattice_GetClipping)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetClipping)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetClipping has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetClipping)));
        assert(((cast(*void)(*instance.m_BeamLattice_SetClipping)) - cast(*void)(*instance)) == 880, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetClipping has unexpected offset % instead of 880", ((cast(*void)(*instance.m_BeamLattice_SetClipping)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetClipping)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetClipping has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetClipping)));
        assert(((cast(*void)(*instance.m_BeamLattice_GetRepresentation)) - cast(*void)(*instance)) == 888, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetRepresentation has unexpected offset % instead of 888", ((cast(*void)(*instance.m_BeamLattice_GetRepresentation)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetRepresentation)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetRepresentation has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetRepresentation)));
        assert(((cast(*void)(*instance.m_BeamLattice_SetRepresentation)) - cast(*void)(*instance)) == 896, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetRepresentation has unexpected offset % instead of 896", ((cast(*void)(*instance.m_BeamLattice_SetRepresentation)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetRepresentation)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetRepresentation has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetRepresentation)));
        assert(((cast(*void)(*instance.m_BeamLattice_GetBallOptions)) - cast(*void)(*instance)) == 904, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBallOptions has unexpected offset % instead of 904", ((cast(*void)(*instance.m_BeamLattice_GetBallOptions)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBallOptions)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBallOptions has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBallOptions)));
        assert(((cast(*void)(*instance.m_BeamLattice_SetBallOptions)) - cast(*void)(*instance)) == 912, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetBallOptions has unexpected offset % instead of 912", ((cast(*void)(*instance.m_BeamLattice_SetBallOptions)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetBallOptions)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetBallOptions has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetBallOptions)));
        assert(((cast(*void)(*instance.m_BeamLattice_GetBeamCount)) - cast(*void)(*instance)) == 920, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeamCount has unexpected offset % instead of 920", ((cast(*void)(*instance.m_BeamLattice_GetBeamCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeamCount)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeamCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeamCount)));
        assert(((cast(*void)(*instance.m_BeamLattice_GetBeam)) - cast(*void)(*instance)) == 928, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeam has unexpected offset % instead of 928", ((cast(*void)(*instance.m_BeamLattice_GetBeam)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeam)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeam has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeam)));
        assert(((cast(*void)(*instance.m_BeamLattice_AddBeam)) - cast(*void)(*instance)) == 936, "sLib3MFDynamicWrapperTable.m_BeamLattice_AddBeam has unexpected offset % instead of 936", ((cast(*void)(*instance.m_BeamLattice_AddBeam)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_AddBeam)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_AddBeam has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_AddBeam)));
        assert(((cast(*void)(*instance.m_BeamLattice_SetBeam)) - cast(*void)(*instance)) == 944, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetBeam has unexpected offset % instead of 944", ((cast(*void)(*instance.m_BeamLattice_SetBeam)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetBeam)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetBeam has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetBeam)));
        assert(((cast(*void)(*instance.m_BeamLattice_SetBeams)) - cast(*void)(*instance)) == 952, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetBeams has unexpected offset % instead of 952", ((cast(*void)(*instance.m_BeamLattice_SetBeams)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetBeams)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetBeams has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetBeams)));
        assert(((cast(*void)(*instance.m_BeamLattice_GetBeams)) - cast(*void)(*instance)) == 960, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeams has unexpected offset % instead of 960", ((cast(*void)(*instance.m_BeamLattice_GetBeams)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeams)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeams has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeams)));
        assert(((cast(*void)(*instance.m_BeamLattice_GetBallCount)) - cast(*void)(*instance)) == 968, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBallCount has unexpected offset % instead of 968", ((cast(*void)(*instance.m_BeamLattice_GetBallCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBallCount)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBallCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBallCount)));
        assert(((cast(*void)(*instance.m_BeamLattice_GetBall)) - cast(*void)(*instance)) == 976, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBall has unexpected offset % instead of 976", ((cast(*void)(*instance.m_BeamLattice_GetBall)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBall)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBall has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBall)));
        assert(((cast(*void)(*instance.m_BeamLattice_AddBall)) - cast(*void)(*instance)) == 984, "sLib3MFDynamicWrapperTable.m_BeamLattice_AddBall has unexpected offset % instead of 984", ((cast(*void)(*instance.m_BeamLattice_AddBall)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_AddBall)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_AddBall has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_AddBall)));
        assert(((cast(*void)(*instance.m_BeamLattice_SetBall)) - cast(*void)(*instance)) == 992, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetBall has unexpected offset % instead of 992", ((cast(*void)(*instance.m_BeamLattice_SetBall)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetBall)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetBall has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetBall)));
        assert(((cast(*void)(*instance.m_BeamLattice_SetBalls)) - cast(*void)(*instance)) == 1000, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetBalls has unexpected offset % instead of 1000", ((cast(*void)(*instance.m_BeamLattice_SetBalls)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetBalls)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_SetBalls has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_SetBalls)));
        assert(((cast(*void)(*instance.m_BeamLattice_GetBalls)) - cast(*void)(*instance)) == 1008, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBalls has unexpected offset % instead of 1008", ((cast(*void)(*instance.m_BeamLattice_GetBalls)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBalls)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBalls has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBalls)));
        assert(((cast(*void)(*instance.m_BeamLattice_GetBeamSetCount)) - cast(*void)(*instance)) == 1016, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeamSetCount has unexpected offset % instead of 1016", ((cast(*void)(*instance.m_BeamLattice_GetBeamSetCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeamSetCount)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeamSetCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeamSetCount)));
        assert(((cast(*void)(*instance.m_BeamLattice_AddBeamSet)) - cast(*void)(*instance)) == 1024, "sLib3MFDynamicWrapperTable.m_BeamLattice_AddBeamSet has unexpected offset % instead of 1024", ((cast(*void)(*instance.m_BeamLattice_AddBeamSet)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_AddBeamSet)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_AddBeamSet has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_AddBeamSet)));
        assert(((cast(*void)(*instance.m_BeamLattice_GetBeamSet)) - cast(*void)(*instance)) == 1032, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeamSet has unexpected offset % instead of 1032", ((cast(*void)(*instance.m_BeamLattice_GetBeamSet)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeamSet)) == 8, "sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeamSet has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamLattice_GetBeamSet)));
        assert(((cast(*void)(*instance.m_Component_GetObjectResource)) - cast(*void)(*instance)) == 1040, "sLib3MFDynamicWrapperTable.m_Component_GetObjectResource has unexpected offset % instead of 1040", ((cast(*void)(*instance.m_Component_GetObjectResource)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_GetObjectResource)) == 8, "sLib3MFDynamicWrapperTable.m_Component_GetObjectResource has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_GetObjectResource)));
        assert(((cast(*void)(*instance.m_Component_GetObjectResourceID)) - cast(*void)(*instance)) == 1048, "sLib3MFDynamicWrapperTable.m_Component_GetObjectResourceID has unexpected offset % instead of 1048", ((cast(*void)(*instance.m_Component_GetObjectResourceID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_GetObjectResourceID)) == 8, "sLib3MFDynamicWrapperTable.m_Component_GetObjectResourceID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_GetObjectResourceID)));
        assert(((cast(*void)(*instance.m_Component_GetUUID)) - cast(*void)(*instance)) == 1056, "sLib3MFDynamicWrapperTable.m_Component_GetUUID has unexpected offset % instead of 1056", ((cast(*void)(*instance.m_Component_GetUUID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_GetUUID)) == 8, "sLib3MFDynamicWrapperTable.m_Component_GetUUID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_GetUUID)));
        assert(((cast(*void)(*instance.m_Component_SetUUID)) - cast(*void)(*instance)) == 1064, "sLib3MFDynamicWrapperTable.m_Component_SetUUID has unexpected offset % instead of 1064", ((cast(*void)(*instance.m_Component_SetUUID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_SetUUID)) == 8, "sLib3MFDynamicWrapperTable.m_Component_SetUUID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_SetUUID)));
        assert(((cast(*void)(*instance.m_Component_HasTransform)) - cast(*void)(*instance)) == 1072, "sLib3MFDynamicWrapperTable.m_Component_HasTransform has unexpected offset % instead of 1072", ((cast(*void)(*instance.m_Component_HasTransform)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_HasTransform)) == 8, "sLib3MFDynamicWrapperTable.m_Component_HasTransform has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_HasTransform)));
        assert(((cast(*void)(*instance.m_Component_GetTransform)) - cast(*void)(*instance)) == 1080, "sLib3MFDynamicWrapperTable.m_Component_GetTransform has unexpected offset % instead of 1080", ((cast(*void)(*instance.m_Component_GetTransform)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_GetTransform)) == 8, "sLib3MFDynamicWrapperTable.m_Component_GetTransform has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_GetTransform)));
        assert(((cast(*void)(*instance.m_Component_SetTransform)) - cast(*void)(*instance)) == 1088, "sLib3MFDynamicWrapperTable.m_Component_SetTransform has unexpected offset % instead of 1088", ((cast(*void)(*instance.m_Component_SetTransform)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_SetTransform)) == 8, "sLib3MFDynamicWrapperTable.m_Component_SetTransform has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Component_SetTransform)));
        assert(((cast(*void)(*instance.m_ComponentsObject_AddComponent)) - cast(*void)(*instance)) == 1096, "sLib3MFDynamicWrapperTable.m_ComponentsObject_AddComponent has unexpected offset % instead of 1096", ((cast(*void)(*instance.m_ComponentsObject_AddComponent)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ComponentsObject_AddComponent)) == 8, "sLib3MFDynamicWrapperTable.m_ComponentsObject_AddComponent has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ComponentsObject_AddComponent)));
        assert(((cast(*void)(*instance.m_ComponentsObject_GetComponent)) - cast(*void)(*instance)) == 1104, "sLib3MFDynamicWrapperTable.m_ComponentsObject_GetComponent has unexpected offset % instead of 1104", ((cast(*void)(*instance.m_ComponentsObject_GetComponent)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ComponentsObject_GetComponent)) == 8, "sLib3MFDynamicWrapperTable.m_ComponentsObject_GetComponent has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ComponentsObject_GetComponent)));
        assert(((cast(*void)(*instance.m_ComponentsObject_GetComponentCount)) - cast(*void)(*instance)) == 1112, "sLib3MFDynamicWrapperTable.m_ComponentsObject_GetComponentCount has unexpected offset % instead of 1112", ((cast(*void)(*instance.m_ComponentsObject_GetComponentCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ComponentsObject_GetComponentCount)) == 8, "sLib3MFDynamicWrapperTable.m_ComponentsObject_GetComponentCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ComponentsObject_GetComponentCount)));
        assert(((cast(*void)(*instance.m_BeamSet_SetName)) - cast(*void)(*instance)) == 1120, "sLib3MFDynamicWrapperTable.m_BeamSet_SetName has unexpected offset % instead of 1120", ((cast(*void)(*instance.m_BeamSet_SetName)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_SetName)) == 8, "sLib3MFDynamicWrapperTable.m_BeamSet_SetName has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_SetName)));
        assert(((cast(*void)(*instance.m_BeamSet_GetName)) - cast(*void)(*instance)) == 1128, "sLib3MFDynamicWrapperTable.m_BeamSet_GetName has unexpected offset % instead of 1128", ((cast(*void)(*instance.m_BeamSet_GetName)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_GetName)) == 8, "sLib3MFDynamicWrapperTable.m_BeamSet_GetName has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_GetName)));
        assert(((cast(*void)(*instance.m_BeamSet_SetIdentifier)) - cast(*void)(*instance)) == 1136, "sLib3MFDynamicWrapperTable.m_BeamSet_SetIdentifier has unexpected offset % instead of 1136", ((cast(*void)(*instance.m_BeamSet_SetIdentifier)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_SetIdentifier)) == 8, "sLib3MFDynamicWrapperTable.m_BeamSet_SetIdentifier has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_SetIdentifier)));
        assert(((cast(*void)(*instance.m_BeamSet_GetIdentifier)) - cast(*void)(*instance)) == 1144, "sLib3MFDynamicWrapperTable.m_BeamSet_GetIdentifier has unexpected offset % instead of 1144", ((cast(*void)(*instance.m_BeamSet_GetIdentifier)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_GetIdentifier)) == 8, "sLib3MFDynamicWrapperTable.m_BeamSet_GetIdentifier has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_GetIdentifier)));
        assert(((cast(*void)(*instance.m_BeamSet_GetReferenceCount)) - cast(*void)(*instance)) == 1152, "sLib3MFDynamicWrapperTable.m_BeamSet_GetReferenceCount has unexpected offset % instead of 1152", ((cast(*void)(*instance.m_BeamSet_GetReferenceCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_GetReferenceCount)) == 8, "sLib3MFDynamicWrapperTable.m_BeamSet_GetReferenceCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_GetReferenceCount)));
        assert(((cast(*void)(*instance.m_BeamSet_SetReferences)) - cast(*void)(*instance)) == 1160, "sLib3MFDynamicWrapperTable.m_BeamSet_SetReferences has unexpected offset % instead of 1160", ((cast(*void)(*instance.m_BeamSet_SetReferences)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_SetReferences)) == 8, "sLib3MFDynamicWrapperTable.m_BeamSet_SetReferences has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_SetReferences)));
        assert(((cast(*void)(*instance.m_BeamSet_GetReferences)) - cast(*void)(*instance)) == 1168, "sLib3MFDynamicWrapperTable.m_BeamSet_GetReferences has unexpected offset % instead of 1168", ((cast(*void)(*instance.m_BeamSet_GetReferences)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_GetReferences)) == 8, "sLib3MFDynamicWrapperTable.m_BeamSet_GetReferences has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_GetReferences)));
        assert(((cast(*void)(*instance.m_BeamSet_GetBallReferenceCount)) - cast(*void)(*instance)) == 1176, "sLib3MFDynamicWrapperTable.m_BeamSet_GetBallReferenceCount has unexpected offset % instead of 1176", ((cast(*void)(*instance.m_BeamSet_GetBallReferenceCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_GetBallReferenceCount)) == 8, "sLib3MFDynamicWrapperTable.m_BeamSet_GetBallReferenceCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_GetBallReferenceCount)));
        assert(((cast(*void)(*instance.m_BeamSet_SetBallReferences)) - cast(*void)(*instance)) == 1184, "sLib3MFDynamicWrapperTable.m_BeamSet_SetBallReferences has unexpected offset % instead of 1184", ((cast(*void)(*instance.m_BeamSet_SetBallReferences)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_SetBallReferences)) == 8, "sLib3MFDynamicWrapperTable.m_BeamSet_SetBallReferences has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_SetBallReferences)));
        assert(((cast(*void)(*instance.m_BeamSet_GetBallReferences)) - cast(*void)(*instance)) == 1192, "sLib3MFDynamicWrapperTable.m_BeamSet_GetBallReferences has unexpected offset % instead of 1192", ((cast(*void)(*instance.m_BeamSet_GetBallReferences)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_GetBallReferences)) == 8, "sLib3MFDynamicWrapperTable.m_BeamSet_GetBallReferences has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BeamSet_GetBallReferences)));
        assert(((cast(*void)(*instance.m_BaseMaterialGroup_GetCount)) - cast(*void)(*instance)) == 1200, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetCount has unexpected offset % instead of 1200", ((cast(*void)(*instance.m_BaseMaterialGroup_GetCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetCount)) == 8, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetCount)));
        assert(((cast(*void)(*instance.m_BaseMaterialGroup_GetAllPropertyIDs)) - cast(*void)(*instance)) == 1208, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetAllPropertyIDs has unexpected offset % instead of 1208", ((cast(*void)(*instance.m_BaseMaterialGroup_GetAllPropertyIDs)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetAllPropertyIDs)) == 8, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetAllPropertyIDs has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetAllPropertyIDs)));
        assert(((cast(*void)(*instance.m_BaseMaterialGroup_AddMaterial)) - cast(*void)(*instance)) == 1216, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_AddMaterial has unexpected offset % instead of 1216", ((cast(*void)(*instance.m_BaseMaterialGroup_AddMaterial)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_AddMaterial)) == 8, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_AddMaterial has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_AddMaterial)));
        assert(((cast(*void)(*instance.m_BaseMaterialGroup_RemoveMaterial)) - cast(*void)(*instance)) == 1224, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_RemoveMaterial has unexpected offset % instead of 1224", ((cast(*void)(*instance.m_BaseMaterialGroup_RemoveMaterial)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_RemoveMaterial)) == 8, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_RemoveMaterial has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_RemoveMaterial)));
        assert(((cast(*void)(*instance.m_BaseMaterialGroup_GetName)) - cast(*void)(*instance)) == 1232, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetName has unexpected offset % instead of 1232", ((cast(*void)(*instance.m_BaseMaterialGroup_GetName)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetName)) == 8, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetName has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetName)));
        assert(((cast(*void)(*instance.m_BaseMaterialGroup_SetName)) - cast(*void)(*instance)) == 1240, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_SetName has unexpected offset % instead of 1240", ((cast(*void)(*instance.m_BaseMaterialGroup_SetName)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_SetName)) == 8, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_SetName has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_SetName)));
        assert(((cast(*void)(*instance.m_BaseMaterialGroup_SetDisplayColor)) - cast(*void)(*instance)) == 1248, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_SetDisplayColor has unexpected offset % instead of 1248", ((cast(*void)(*instance.m_BaseMaterialGroup_SetDisplayColor)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_SetDisplayColor)) == 8, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_SetDisplayColor has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_SetDisplayColor)));
        assert(((cast(*void)(*instance.m_BaseMaterialGroup_GetDisplayColor)) - cast(*void)(*instance)) == 1256, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetDisplayColor has unexpected offset % instead of 1256", ((cast(*void)(*instance.m_BaseMaterialGroup_GetDisplayColor)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetDisplayColor)) == 8, "sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetDisplayColor has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BaseMaterialGroup_GetDisplayColor)));
        assert(((cast(*void)(*instance.m_ColorGroup_GetCount)) - cast(*void)(*instance)) == 1264, "sLib3MFDynamicWrapperTable.m_ColorGroup_GetCount has unexpected offset % instead of 1264", ((cast(*void)(*instance.m_ColorGroup_GetCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroup_GetCount)) == 8, "sLib3MFDynamicWrapperTable.m_ColorGroup_GetCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroup_GetCount)));
        assert(((cast(*void)(*instance.m_ColorGroup_GetAllPropertyIDs)) - cast(*void)(*instance)) == 1272, "sLib3MFDynamicWrapperTable.m_ColorGroup_GetAllPropertyIDs has unexpected offset % instead of 1272", ((cast(*void)(*instance.m_ColorGroup_GetAllPropertyIDs)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroup_GetAllPropertyIDs)) == 8, "sLib3MFDynamicWrapperTable.m_ColorGroup_GetAllPropertyIDs has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroup_GetAllPropertyIDs)));
        assert(((cast(*void)(*instance.m_ColorGroup_AddColor)) - cast(*void)(*instance)) == 1280, "sLib3MFDynamicWrapperTable.m_ColorGroup_AddColor has unexpected offset % instead of 1280", ((cast(*void)(*instance.m_ColorGroup_AddColor)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroup_AddColor)) == 8, "sLib3MFDynamicWrapperTable.m_ColorGroup_AddColor has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroup_AddColor)));
        assert(((cast(*void)(*instance.m_ColorGroup_RemoveColor)) - cast(*void)(*instance)) == 1288, "sLib3MFDynamicWrapperTable.m_ColorGroup_RemoveColor has unexpected offset % instead of 1288", ((cast(*void)(*instance.m_ColorGroup_RemoveColor)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroup_RemoveColor)) == 8, "sLib3MFDynamicWrapperTable.m_ColorGroup_RemoveColor has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroup_RemoveColor)));
        assert(((cast(*void)(*instance.m_ColorGroup_SetColor)) - cast(*void)(*instance)) == 1296, "sLib3MFDynamicWrapperTable.m_ColorGroup_SetColor has unexpected offset % instead of 1296", ((cast(*void)(*instance.m_ColorGroup_SetColor)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroup_SetColor)) == 8, "sLib3MFDynamicWrapperTable.m_ColorGroup_SetColor has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroup_SetColor)));
        assert(((cast(*void)(*instance.m_ColorGroup_GetColor)) - cast(*void)(*instance)) == 1304, "sLib3MFDynamicWrapperTable.m_ColorGroup_GetColor has unexpected offset % instead of 1304", ((cast(*void)(*instance.m_ColorGroup_GetColor)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroup_GetColor)) == 8, "sLib3MFDynamicWrapperTable.m_ColorGroup_GetColor has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorGroup_GetColor)));
        assert(((cast(*void)(*instance.m_Texture2DGroup_GetCount)) - cast(*void)(*instance)) == 1312, "sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetCount has unexpected offset % instead of 1312", ((cast(*void)(*instance.m_Texture2DGroup_GetCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetCount)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetCount)));
        assert(((cast(*void)(*instance.m_Texture2DGroup_GetAllPropertyIDs)) - cast(*void)(*instance)) == 1320, "sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetAllPropertyIDs has unexpected offset % instead of 1320", ((cast(*void)(*instance.m_Texture2DGroup_GetAllPropertyIDs)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetAllPropertyIDs)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetAllPropertyIDs has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetAllPropertyIDs)));
        assert(((cast(*void)(*instance.m_Texture2DGroup_AddTex2Coord)) - cast(*void)(*instance)) == 1328, "sLib3MFDynamicWrapperTable.m_Texture2DGroup_AddTex2Coord has unexpected offset % instead of 1328", ((cast(*void)(*instance.m_Texture2DGroup_AddTex2Coord)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroup_AddTex2Coord)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2DGroup_AddTex2Coord has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroup_AddTex2Coord)));
        assert(((cast(*void)(*instance.m_Texture2DGroup_GetTex2Coord)) - cast(*void)(*instance)) == 1336, "sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetTex2Coord has unexpected offset % instead of 1336", ((cast(*void)(*instance.m_Texture2DGroup_GetTex2Coord)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetTex2Coord)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetTex2Coord has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetTex2Coord)));
        assert(((cast(*void)(*instance.m_Texture2DGroup_RemoveTex2Coord)) - cast(*void)(*instance)) == 1344, "sLib3MFDynamicWrapperTable.m_Texture2DGroup_RemoveTex2Coord has unexpected offset % instead of 1344", ((cast(*void)(*instance.m_Texture2DGroup_RemoveTex2Coord)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroup_RemoveTex2Coord)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2DGroup_RemoveTex2Coord has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroup_RemoveTex2Coord)));
        assert(((cast(*void)(*instance.m_Texture2DGroup_GetTexture2D)) - cast(*void)(*instance)) == 1352, "sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetTexture2D has unexpected offset % instead of 1352", ((cast(*void)(*instance.m_Texture2DGroup_GetTexture2D)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetTexture2D)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetTexture2D has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2DGroup_GetTexture2D)));
        assert(((cast(*void)(*instance.m_CompositeMaterials_GetCount)) - cast(*void)(*instance)) == 1360, "sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetCount has unexpected offset % instead of 1360", ((cast(*void)(*instance.m_CompositeMaterials_GetCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetCount)) == 8, "sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetCount)));
        assert(((cast(*void)(*instance.m_CompositeMaterials_GetAllPropertyIDs)) - cast(*void)(*instance)) == 1368, "sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetAllPropertyIDs has unexpected offset % instead of 1368", ((cast(*void)(*instance.m_CompositeMaterials_GetAllPropertyIDs)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetAllPropertyIDs)) == 8, "sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetAllPropertyIDs has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetAllPropertyIDs)));
        assert(((cast(*void)(*instance.m_CompositeMaterials_GetBaseMaterialGroup)) - cast(*void)(*instance)) == 1376, "sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetBaseMaterialGroup has unexpected offset % instead of 1376", ((cast(*void)(*instance.m_CompositeMaterials_GetBaseMaterialGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetBaseMaterialGroup)) == 8, "sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetBaseMaterialGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetBaseMaterialGroup)));
        assert(((cast(*void)(*instance.m_CompositeMaterials_AddComposite)) - cast(*void)(*instance)) == 1384, "sLib3MFDynamicWrapperTable.m_CompositeMaterials_AddComposite has unexpected offset % instead of 1384", ((cast(*void)(*instance.m_CompositeMaterials_AddComposite)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterials_AddComposite)) == 8, "sLib3MFDynamicWrapperTable.m_CompositeMaterials_AddComposite has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterials_AddComposite)));
        assert(((cast(*void)(*instance.m_CompositeMaterials_RemoveComposite)) - cast(*void)(*instance)) == 1392, "sLib3MFDynamicWrapperTable.m_CompositeMaterials_RemoveComposite has unexpected offset % instead of 1392", ((cast(*void)(*instance.m_CompositeMaterials_RemoveComposite)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterials_RemoveComposite)) == 8, "sLib3MFDynamicWrapperTable.m_CompositeMaterials_RemoveComposite has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterials_RemoveComposite)));
        assert(((cast(*void)(*instance.m_CompositeMaterials_GetComposite)) - cast(*void)(*instance)) == 1400, "sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetComposite has unexpected offset % instead of 1400", ((cast(*void)(*instance.m_CompositeMaterials_GetComposite)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetComposite)) == 8, "sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetComposite has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_CompositeMaterials_GetComposite)));
        assert(((cast(*void)(*instance.m_MultiPropertyGroup_GetCount)) - cast(*void)(*instance)) == 1408, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetCount has unexpected offset % instead of 1408", ((cast(*void)(*instance.m_MultiPropertyGroup_GetCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetCount)) == 8, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetCount)));
        assert(((cast(*void)(*instance.m_MultiPropertyGroup_GetAllPropertyIDs)) - cast(*void)(*instance)) == 1416, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetAllPropertyIDs has unexpected offset % instead of 1416", ((cast(*void)(*instance.m_MultiPropertyGroup_GetAllPropertyIDs)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetAllPropertyIDs)) == 8, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetAllPropertyIDs has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetAllPropertyIDs)));
        assert(((cast(*void)(*instance.m_MultiPropertyGroup_AddMultiProperty)) - cast(*void)(*instance)) == 1424, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_AddMultiProperty has unexpected offset % instead of 1424", ((cast(*void)(*instance.m_MultiPropertyGroup_AddMultiProperty)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_AddMultiProperty)) == 8, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_AddMultiProperty has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_AddMultiProperty)));
        assert(((cast(*void)(*instance.m_MultiPropertyGroup_SetMultiProperty)) - cast(*void)(*instance)) == 1432, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_SetMultiProperty has unexpected offset % instead of 1432", ((cast(*void)(*instance.m_MultiPropertyGroup_SetMultiProperty)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_SetMultiProperty)) == 8, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_SetMultiProperty has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_SetMultiProperty)));
        assert(((cast(*void)(*instance.m_MultiPropertyGroup_GetMultiProperty)) - cast(*void)(*instance)) == 1440, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetMultiProperty has unexpected offset % instead of 1440", ((cast(*void)(*instance.m_MultiPropertyGroup_GetMultiProperty)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetMultiProperty)) == 8, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetMultiProperty has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetMultiProperty)));
        assert(((cast(*void)(*instance.m_MultiPropertyGroup_RemoveMultiProperty)) - cast(*void)(*instance)) == 1448, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_RemoveMultiProperty has unexpected offset % instead of 1448", ((cast(*void)(*instance.m_MultiPropertyGroup_RemoveMultiProperty)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_RemoveMultiProperty)) == 8, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_RemoveMultiProperty has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_RemoveMultiProperty)));
        assert(((cast(*void)(*instance.m_MultiPropertyGroup_GetLayerCount)) - cast(*void)(*instance)) == 1456, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetLayerCount has unexpected offset % instead of 1456", ((cast(*void)(*instance.m_MultiPropertyGroup_GetLayerCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetLayerCount)) == 8, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetLayerCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetLayerCount)));
        assert(((cast(*void)(*instance.m_MultiPropertyGroup_AddLayer)) - cast(*void)(*instance)) == 1464, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_AddLayer has unexpected offset % instead of 1464", ((cast(*void)(*instance.m_MultiPropertyGroup_AddLayer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_AddLayer)) == 8, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_AddLayer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_AddLayer)));
        assert(((cast(*void)(*instance.m_MultiPropertyGroup_GetLayer)) - cast(*void)(*instance)) == 1472, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetLayer has unexpected offset % instead of 1472", ((cast(*void)(*instance.m_MultiPropertyGroup_GetLayer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetLayer)) == 8, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetLayer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_GetLayer)));
        assert(((cast(*void)(*instance.m_MultiPropertyGroup_RemoveLayer)) - cast(*void)(*instance)) == 1480, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_RemoveLayer has unexpected offset % instead of 1480", ((cast(*void)(*instance.m_MultiPropertyGroup_RemoveLayer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_RemoveLayer)) == 8, "sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_RemoveLayer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_MultiPropertyGroup_RemoveLayer)));
        assert(((cast(*void)(*instance.m_Attachment_GetPath)) - cast(*void)(*instance)) == 1488, "sLib3MFDynamicWrapperTable.m_Attachment_GetPath has unexpected offset % instead of 1488", ((cast(*void)(*instance.m_Attachment_GetPath)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_GetPath)) == 8, "sLib3MFDynamicWrapperTable.m_Attachment_GetPath has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_GetPath)));
        assert(((cast(*void)(*instance.m_Attachment_SetPath)) - cast(*void)(*instance)) == 1496, "sLib3MFDynamicWrapperTable.m_Attachment_SetPath has unexpected offset % instead of 1496", ((cast(*void)(*instance.m_Attachment_SetPath)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_SetPath)) == 8, "sLib3MFDynamicWrapperTable.m_Attachment_SetPath has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_SetPath)));
        assert(((cast(*void)(*instance.m_Attachment_PackagePart)) - cast(*void)(*instance)) == 1504, "sLib3MFDynamicWrapperTable.m_Attachment_PackagePart has unexpected offset % instead of 1504", ((cast(*void)(*instance.m_Attachment_PackagePart)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_PackagePart)) == 8, "sLib3MFDynamicWrapperTable.m_Attachment_PackagePart has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_PackagePart)));
        assert(((cast(*void)(*instance.m_Attachment_GetRelationShipType)) - cast(*void)(*instance)) == 1512, "sLib3MFDynamicWrapperTable.m_Attachment_GetRelationShipType has unexpected offset % instead of 1512", ((cast(*void)(*instance.m_Attachment_GetRelationShipType)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_GetRelationShipType)) == 8, "sLib3MFDynamicWrapperTable.m_Attachment_GetRelationShipType has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_GetRelationShipType)));
        assert(((cast(*void)(*instance.m_Attachment_SetRelationShipType)) - cast(*void)(*instance)) == 1520, "sLib3MFDynamicWrapperTable.m_Attachment_SetRelationShipType has unexpected offset % instead of 1520", ((cast(*void)(*instance.m_Attachment_SetRelationShipType)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_SetRelationShipType)) == 8, "sLib3MFDynamicWrapperTable.m_Attachment_SetRelationShipType has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_SetRelationShipType)));
        assert(((cast(*void)(*instance.m_Attachment_WriteToFile)) - cast(*void)(*instance)) == 1528, "sLib3MFDynamicWrapperTable.m_Attachment_WriteToFile has unexpected offset % instead of 1528", ((cast(*void)(*instance.m_Attachment_WriteToFile)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_WriteToFile)) == 8, "sLib3MFDynamicWrapperTable.m_Attachment_WriteToFile has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_WriteToFile)));
        assert(((cast(*void)(*instance.m_Attachment_ReadFromFile)) - cast(*void)(*instance)) == 1536, "sLib3MFDynamicWrapperTable.m_Attachment_ReadFromFile has unexpected offset % instead of 1536", ((cast(*void)(*instance.m_Attachment_ReadFromFile)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_ReadFromFile)) == 8, "sLib3MFDynamicWrapperTable.m_Attachment_ReadFromFile has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_ReadFromFile)));
        assert(((cast(*void)(*instance.m_Attachment_ReadFromCallback)) - cast(*void)(*instance)) == 1544, "sLib3MFDynamicWrapperTable.m_Attachment_ReadFromCallback has unexpected offset % instead of 1544", ((cast(*void)(*instance.m_Attachment_ReadFromCallback)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_ReadFromCallback)) == 8, "sLib3MFDynamicWrapperTable.m_Attachment_ReadFromCallback has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_ReadFromCallback)));
        assert(((cast(*void)(*instance.m_Attachment_GetStreamSize)) - cast(*void)(*instance)) == 1552, "sLib3MFDynamicWrapperTable.m_Attachment_GetStreamSize has unexpected offset % instead of 1552", ((cast(*void)(*instance.m_Attachment_GetStreamSize)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_GetStreamSize)) == 8, "sLib3MFDynamicWrapperTable.m_Attachment_GetStreamSize has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_GetStreamSize)));
        assert(((cast(*void)(*instance.m_Attachment_WriteToBuffer)) - cast(*void)(*instance)) == 1560, "sLib3MFDynamicWrapperTable.m_Attachment_WriteToBuffer has unexpected offset % instead of 1560", ((cast(*void)(*instance.m_Attachment_WriteToBuffer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_WriteToBuffer)) == 8, "sLib3MFDynamicWrapperTable.m_Attachment_WriteToBuffer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_WriteToBuffer)));
        assert(((cast(*void)(*instance.m_Attachment_ReadFromBuffer)) - cast(*void)(*instance)) == 1568, "sLib3MFDynamicWrapperTable.m_Attachment_ReadFromBuffer has unexpected offset % instead of 1568", ((cast(*void)(*instance.m_Attachment_ReadFromBuffer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_ReadFromBuffer)) == 8, "sLib3MFDynamicWrapperTable.m_Attachment_ReadFromBuffer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Attachment_ReadFromBuffer)));
        assert(((cast(*void)(*instance.m_Texture2D_GetAttachment)) - cast(*void)(*instance)) == 1576, "sLib3MFDynamicWrapperTable.m_Texture2D_GetAttachment has unexpected offset % instead of 1576", ((cast(*void)(*instance.m_Texture2D_GetAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_GetAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2D_GetAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_GetAttachment)));
        assert(((cast(*void)(*instance.m_Texture2D_SetAttachment)) - cast(*void)(*instance)) == 1584, "sLib3MFDynamicWrapperTable.m_Texture2D_SetAttachment has unexpected offset % instead of 1584", ((cast(*void)(*instance.m_Texture2D_SetAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_SetAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2D_SetAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_SetAttachment)));
        assert(((cast(*void)(*instance.m_Texture2D_GetContentType)) - cast(*void)(*instance)) == 1592, "sLib3MFDynamicWrapperTable.m_Texture2D_GetContentType has unexpected offset % instead of 1592", ((cast(*void)(*instance.m_Texture2D_GetContentType)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_GetContentType)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2D_GetContentType has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_GetContentType)));
        assert(((cast(*void)(*instance.m_Texture2D_SetContentType)) - cast(*void)(*instance)) == 1600, "sLib3MFDynamicWrapperTable.m_Texture2D_SetContentType has unexpected offset % instead of 1600", ((cast(*void)(*instance.m_Texture2D_SetContentType)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_SetContentType)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2D_SetContentType has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_SetContentType)));
        assert(((cast(*void)(*instance.m_Texture2D_GetTileStyleUV)) - cast(*void)(*instance)) == 1608, "sLib3MFDynamicWrapperTable.m_Texture2D_GetTileStyleUV has unexpected offset % instead of 1608", ((cast(*void)(*instance.m_Texture2D_GetTileStyleUV)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_GetTileStyleUV)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2D_GetTileStyleUV has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_GetTileStyleUV)));
        assert(((cast(*void)(*instance.m_Texture2D_SetTileStyleUV)) - cast(*void)(*instance)) == 1616, "sLib3MFDynamicWrapperTable.m_Texture2D_SetTileStyleUV has unexpected offset % instead of 1616", ((cast(*void)(*instance.m_Texture2D_SetTileStyleUV)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_SetTileStyleUV)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2D_SetTileStyleUV has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_SetTileStyleUV)));
        assert(((cast(*void)(*instance.m_Texture2D_GetFilter)) - cast(*void)(*instance)) == 1624, "sLib3MFDynamicWrapperTable.m_Texture2D_GetFilter has unexpected offset % instead of 1624", ((cast(*void)(*instance.m_Texture2D_GetFilter)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_GetFilter)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2D_GetFilter has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_GetFilter)));
        assert(((cast(*void)(*instance.m_Texture2D_SetFilter)) - cast(*void)(*instance)) == 1632, "sLib3MFDynamicWrapperTable.m_Texture2D_SetFilter has unexpected offset % instead of 1632", ((cast(*void)(*instance.m_Texture2D_SetFilter)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_SetFilter)) == 8, "sLib3MFDynamicWrapperTable.m_Texture2D_SetFilter has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Texture2D_SetFilter)));
        assert(((cast(*void)(*instance.m_BuildItem_GetObjectResource)) - cast(*void)(*instance)) == 1640, "sLib3MFDynamicWrapperTable.m_BuildItem_GetObjectResource has unexpected offset % instead of 1640", ((cast(*void)(*instance.m_BuildItem_GetObjectResource)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetObjectResource)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItem_GetObjectResource has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetObjectResource)));
        assert(((cast(*void)(*instance.m_BuildItem_GetUUID)) - cast(*void)(*instance)) == 1648, "sLib3MFDynamicWrapperTable.m_BuildItem_GetUUID has unexpected offset % instead of 1648", ((cast(*void)(*instance.m_BuildItem_GetUUID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetUUID)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItem_GetUUID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetUUID)));
        assert(((cast(*void)(*instance.m_BuildItem_SetUUID)) - cast(*void)(*instance)) == 1656, "sLib3MFDynamicWrapperTable.m_BuildItem_SetUUID has unexpected offset % instead of 1656", ((cast(*void)(*instance.m_BuildItem_SetUUID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_SetUUID)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItem_SetUUID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_SetUUID)));
        assert(((cast(*void)(*instance.m_BuildItem_GetObjectResourceID)) - cast(*void)(*instance)) == 1664, "sLib3MFDynamicWrapperTable.m_BuildItem_GetObjectResourceID has unexpected offset % instead of 1664", ((cast(*void)(*instance.m_BuildItem_GetObjectResourceID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetObjectResourceID)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItem_GetObjectResourceID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetObjectResourceID)));
        assert(((cast(*void)(*instance.m_BuildItem_HasObjectTransform)) - cast(*void)(*instance)) == 1672, "sLib3MFDynamicWrapperTable.m_BuildItem_HasObjectTransform has unexpected offset % instead of 1672", ((cast(*void)(*instance.m_BuildItem_HasObjectTransform)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_HasObjectTransform)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItem_HasObjectTransform has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_HasObjectTransform)));
        assert(((cast(*void)(*instance.m_BuildItem_GetObjectTransform)) - cast(*void)(*instance)) == 1680, "sLib3MFDynamicWrapperTable.m_BuildItem_GetObjectTransform has unexpected offset % instead of 1680", ((cast(*void)(*instance.m_BuildItem_GetObjectTransform)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetObjectTransform)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItem_GetObjectTransform has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetObjectTransform)));
        assert(((cast(*void)(*instance.m_BuildItem_SetObjectTransform)) - cast(*void)(*instance)) == 1688, "sLib3MFDynamicWrapperTable.m_BuildItem_SetObjectTransform has unexpected offset % instead of 1688", ((cast(*void)(*instance.m_BuildItem_SetObjectTransform)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_SetObjectTransform)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItem_SetObjectTransform has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_SetObjectTransform)));
        assert(((cast(*void)(*instance.m_BuildItem_GetPartNumber)) - cast(*void)(*instance)) == 1696, "sLib3MFDynamicWrapperTable.m_BuildItem_GetPartNumber has unexpected offset % instead of 1696", ((cast(*void)(*instance.m_BuildItem_GetPartNumber)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetPartNumber)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItem_GetPartNumber has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetPartNumber)));
        assert(((cast(*void)(*instance.m_BuildItem_SetPartNumber)) - cast(*void)(*instance)) == 1704, "sLib3MFDynamicWrapperTable.m_BuildItem_SetPartNumber has unexpected offset % instead of 1704", ((cast(*void)(*instance.m_BuildItem_SetPartNumber)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_SetPartNumber)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItem_SetPartNumber has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_SetPartNumber)));
        assert(((cast(*void)(*instance.m_BuildItem_GetMetaDataGroup)) - cast(*void)(*instance)) == 1712, "sLib3MFDynamicWrapperTable.m_BuildItem_GetMetaDataGroup has unexpected offset % instead of 1712", ((cast(*void)(*instance.m_BuildItem_GetMetaDataGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetMetaDataGroup)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItem_GetMetaDataGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetMetaDataGroup)));
        assert(((cast(*void)(*instance.m_BuildItem_GetOutbox)) - cast(*void)(*instance)) == 1720, "sLib3MFDynamicWrapperTable.m_BuildItem_GetOutbox has unexpected offset % instead of 1720", ((cast(*void)(*instance.m_BuildItem_GetOutbox)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetOutbox)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItem_GetOutbox has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItem_GetOutbox)));
        assert(((cast(*void)(*instance.m_BuildItemIterator_MoveNext)) - cast(*void)(*instance)) == 1728, "sLib3MFDynamicWrapperTable.m_BuildItemIterator_MoveNext has unexpected offset % instead of 1728", ((cast(*void)(*instance.m_BuildItemIterator_MoveNext)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItemIterator_MoveNext)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItemIterator_MoveNext has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItemIterator_MoveNext)));
        assert(((cast(*void)(*instance.m_BuildItemIterator_MovePrevious)) - cast(*void)(*instance)) == 1736, "sLib3MFDynamicWrapperTable.m_BuildItemIterator_MovePrevious has unexpected offset % instead of 1736", ((cast(*void)(*instance.m_BuildItemIterator_MovePrevious)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItemIterator_MovePrevious)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItemIterator_MovePrevious has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItemIterator_MovePrevious)));
        assert(((cast(*void)(*instance.m_BuildItemIterator_GetCurrent)) - cast(*void)(*instance)) == 1744, "sLib3MFDynamicWrapperTable.m_BuildItemIterator_GetCurrent has unexpected offset % instead of 1744", ((cast(*void)(*instance.m_BuildItemIterator_GetCurrent)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItemIterator_GetCurrent)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItemIterator_GetCurrent has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItemIterator_GetCurrent)));
        assert(((cast(*void)(*instance.m_BuildItemIterator_Clone)) - cast(*void)(*instance)) == 1752, "sLib3MFDynamicWrapperTable.m_BuildItemIterator_Clone has unexpected offset % instead of 1752", ((cast(*void)(*instance.m_BuildItemIterator_Clone)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItemIterator_Clone)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItemIterator_Clone has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItemIterator_Clone)));
        assert(((cast(*void)(*instance.m_BuildItemIterator_Count)) - cast(*void)(*instance)) == 1760, "sLib3MFDynamicWrapperTable.m_BuildItemIterator_Count has unexpected offset % instead of 1760", ((cast(*void)(*instance.m_BuildItemIterator_Count)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItemIterator_Count)) == 8, "sLib3MFDynamicWrapperTable.m_BuildItemIterator_Count has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_BuildItemIterator_Count)));
        assert(((cast(*void)(*instance.m_Slice_SetVertices)) - cast(*void)(*instance)) == 1768, "sLib3MFDynamicWrapperTable.m_Slice_SetVertices has unexpected offset % instead of 1768", ((cast(*void)(*instance.m_Slice_SetVertices)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_SetVertices)) == 8, "sLib3MFDynamicWrapperTable.m_Slice_SetVertices has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_SetVertices)));
        assert(((cast(*void)(*instance.m_Slice_GetVertices)) - cast(*void)(*instance)) == 1776, "sLib3MFDynamicWrapperTable.m_Slice_GetVertices has unexpected offset % instead of 1776", ((cast(*void)(*instance.m_Slice_GetVertices)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_GetVertices)) == 8, "sLib3MFDynamicWrapperTable.m_Slice_GetVertices has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_GetVertices)));
        assert(((cast(*void)(*instance.m_Slice_GetVertexCount)) - cast(*void)(*instance)) == 1784, "sLib3MFDynamicWrapperTable.m_Slice_GetVertexCount has unexpected offset % instead of 1784", ((cast(*void)(*instance.m_Slice_GetVertexCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_GetVertexCount)) == 8, "sLib3MFDynamicWrapperTable.m_Slice_GetVertexCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_GetVertexCount)));
        assert(((cast(*void)(*instance.m_Slice_AddPolygon)) - cast(*void)(*instance)) == 1792, "sLib3MFDynamicWrapperTable.m_Slice_AddPolygon has unexpected offset % instead of 1792", ((cast(*void)(*instance.m_Slice_AddPolygon)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_AddPolygon)) == 8, "sLib3MFDynamicWrapperTable.m_Slice_AddPolygon has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_AddPolygon)));
        assert(((cast(*void)(*instance.m_Slice_GetPolygonCount)) - cast(*void)(*instance)) == 1800, "sLib3MFDynamicWrapperTable.m_Slice_GetPolygonCount has unexpected offset % instead of 1800", ((cast(*void)(*instance.m_Slice_GetPolygonCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_GetPolygonCount)) == 8, "sLib3MFDynamicWrapperTable.m_Slice_GetPolygonCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_GetPolygonCount)));
        assert(((cast(*void)(*instance.m_Slice_SetPolygonIndices)) - cast(*void)(*instance)) == 1808, "sLib3MFDynamicWrapperTable.m_Slice_SetPolygonIndices has unexpected offset % instead of 1808", ((cast(*void)(*instance.m_Slice_SetPolygonIndices)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_SetPolygonIndices)) == 8, "sLib3MFDynamicWrapperTable.m_Slice_SetPolygonIndices has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_SetPolygonIndices)));
        assert(((cast(*void)(*instance.m_Slice_GetPolygonIndices)) - cast(*void)(*instance)) == 1816, "sLib3MFDynamicWrapperTable.m_Slice_GetPolygonIndices has unexpected offset % instead of 1816", ((cast(*void)(*instance.m_Slice_GetPolygonIndices)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_GetPolygonIndices)) == 8, "sLib3MFDynamicWrapperTable.m_Slice_GetPolygonIndices has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_GetPolygonIndices)));
        assert(((cast(*void)(*instance.m_Slice_GetPolygonIndexCount)) - cast(*void)(*instance)) == 1824, "sLib3MFDynamicWrapperTable.m_Slice_GetPolygonIndexCount has unexpected offset % instead of 1824", ((cast(*void)(*instance.m_Slice_GetPolygonIndexCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_GetPolygonIndexCount)) == 8, "sLib3MFDynamicWrapperTable.m_Slice_GetPolygonIndexCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_GetPolygonIndexCount)));
        assert(((cast(*void)(*instance.m_Slice_GetZTop)) - cast(*void)(*instance)) == 1832, "sLib3MFDynamicWrapperTable.m_Slice_GetZTop has unexpected offset % instead of 1832", ((cast(*void)(*instance.m_Slice_GetZTop)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_GetZTop)) == 8, "sLib3MFDynamicWrapperTable.m_Slice_GetZTop has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Slice_GetZTop)));
        assert(((cast(*void)(*instance.m_SliceStack_GetBottomZ)) - cast(*void)(*instance)) == 1840, "sLib3MFDynamicWrapperTable.m_SliceStack_GetBottomZ has unexpected offset % instead of 1840", ((cast(*void)(*instance.m_SliceStack_GetBottomZ)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_GetBottomZ)) == 8, "sLib3MFDynamicWrapperTable.m_SliceStack_GetBottomZ has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_GetBottomZ)));
        assert(((cast(*void)(*instance.m_SliceStack_GetSliceCount)) - cast(*void)(*instance)) == 1848, "sLib3MFDynamicWrapperTable.m_SliceStack_GetSliceCount has unexpected offset % instead of 1848", ((cast(*void)(*instance.m_SliceStack_GetSliceCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_GetSliceCount)) == 8, "sLib3MFDynamicWrapperTable.m_SliceStack_GetSliceCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_GetSliceCount)));
        assert(((cast(*void)(*instance.m_SliceStack_GetSlice)) - cast(*void)(*instance)) == 1856, "sLib3MFDynamicWrapperTable.m_SliceStack_GetSlice has unexpected offset % instead of 1856", ((cast(*void)(*instance.m_SliceStack_GetSlice)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_GetSlice)) == 8, "sLib3MFDynamicWrapperTable.m_SliceStack_GetSlice has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_GetSlice)));
        assert(((cast(*void)(*instance.m_SliceStack_AddSlice)) - cast(*void)(*instance)) == 1864, "sLib3MFDynamicWrapperTable.m_SliceStack_AddSlice has unexpected offset % instead of 1864", ((cast(*void)(*instance.m_SliceStack_AddSlice)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_AddSlice)) == 8, "sLib3MFDynamicWrapperTable.m_SliceStack_AddSlice has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_AddSlice)));
        assert(((cast(*void)(*instance.m_SliceStack_GetSliceRefCount)) - cast(*void)(*instance)) == 1872, "sLib3MFDynamicWrapperTable.m_SliceStack_GetSliceRefCount has unexpected offset % instead of 1872", ((cast(*void)(*instance.m_SliceStack_GetSliceRefCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_GetSliceRefCount)) == 8, "sLib3MFDynamicWrapperTable.m_SliceStack_GetSliceRefCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_GetSliceRefCount)));
        assert(((cast(*void)(*instance.m_SliceStack_AddSliceStackReference)) - cast(*void)(*instance)) == 1880, "sLib3MFDynamicWrapperTable.m_SliceStack_AddSliceStackReference has unexpected offset % instead of 1880", ((cast(*void)(*instance.m_SliceStack_AddSliceStackReference)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_AddSliceStackReference)) == 8, "sLib3MFDynamicWrapperTable.m_SliceStack_AddSliceStackReference has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_AddSliceStackReference)));
        assert(((cast(*void)(*instance.m_SliceStack_GetSliceStackReference)) - cast(*void)(*instance)) == 1888, "sLib3MFDynamicWrapperTable.m_SliceStack_GetSliceStackReference has unexpected offset % instead of 1888", ((cast(*void)(*instance.m_SliceStack_GetSliceStackReference)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_GetSliceStackReference)) == 8, "sLib3MFDynamicWrapperTable.m_SliceStack_GetSliceStackReference has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_GetSliceStackReference)));
        assert(((cast(*void)(*instance.m_SliceStack_CollapseSliceReferences)) - cast(*void)(*instance)) == 1896, "sLib3MFDynamicWrapperTable.m_SliceStack_CollapseSliceReferences has unexpected offset % instead of 1896", ((cast(*void)(*instance.m_SliceStack_CollapseSliceReferences)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_CollapseSliceReferences)) == 8, "sLib3MFDynamicWrapperTable.m_SliceStack_CollapseSliceReferences has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_CollapseSliceReferences)));
        assert(((cast(*void)(*instance.m_SliceStack_SetOwnPath)) - cast(*void)(*instance)) == 1904, "sLib3MFDynamicWrapperTable.m_SliceStack_SetOwnPath has unexpected offset % instead of 1904", ((cast(*void)(*instance.m_SliceStack_SetOwnPath)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_SetOwnPath)) == 8, "sLib3MFDynamicWrapperTable.m_SliceStack_SetOwnPath has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_SetOwnPath)));
        assert(((cast(*void)(*instance.m_SliceStack_GetOwnPath)) - cast(*void)(*instance)) == 1912, "sLib3MFDynamicWrapperTable.m_SliceStack_GetOwnPath has unexpected offset % instead of 1912", ((cast(*void)(*instance.m_SliceStack_GetOwnPath)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_GetOwnPath)) == 8, "sLib3MFDynamicWrapperTable.m_SliceStack_GetOwnPath has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_SliceStack_GetOwnPath)));
        assert(((cast(*void)(*instance.m_Consumer_GetConsumerID)) - cast(*void)(*instance)) == 1920, "sLib3MFDynamicWrapperTable.m_Consumer_GetConsumerID has unexpected offset % instead of 1920", ((cast(*void)(*instance.m_Consumer_GetConsumerID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Consumer_GetConsumerID)) == 8, "sLib3MFDynamicWrapperTable.m_Consumer_GetConsumerID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Consumer_GetConsumerID)));
        assert(((cast(*void)(*instance.m_Consumer_GetKeyID)) - cast(*void)(*instance)) == 1928, "sLib3MFDynamicWrapperTable.m_Consumer_GetKeyID has unexpected offset % instead of 1928", ((cast(*void)(*instance.m_Consumer_GetKeyID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Consumer_GetKeyID)) == 8, "sLib3MFDynamicWrapperTable.m_Consumer_GetKeyID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Consumer_GetKeyID)));
        assert(((cast(*void)(*instance.m_Consumer_GetKeyValue)) - cast(*void)(*instance)) == 1936, "sLib3MFDynamicWrapperTable.m_Consumer_GetKeyValue has unexpected offset % instead of 1936", ((cast(*void)(*instance.m_Consumer_GetKeyValue)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Consumer_GetKeyValue)) == 8, "sLib3MFDynamicWrapperTable.m_Consumer_GetKeyValue has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Consumer_GetKeyValue)));
        assert(((cast(*void)(*instance.m_AccessRight_GetConsumer)) - cast(*void)(*instance)) == 1944, "sLib3MFDynamicWrapperTable.m_AccessRight_GetConsumer has unexpected offset % instead of 1944", ((cast(*void)(*instance.m_AccessRight_GetConsumer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_AccessRight_GetConsumer)) == 8, "sLib3MFDynamicWrapperTable.m_AccessRight_GetConsumer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_AccessRight_GetConsumer)));
        assert(((cast(*void)(*instance.m_AccessRight_GetWrappingAlgorithm)) - cast(*void)(*instance)) == 1952, "sLib3MFDynamicWrapperTable.m_AccessRight_GetWrappingAlgorithm has unexpected offset % instead of 1952", ((cast(*void)(*instance.m_AccessRight_GetWrappingAlgorithm)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_AccessRight_GetWrappingAlgorithm)) == 8, "sLib3MFDynamicWrapperTable.m_AccessRight_GetWrappingAlgorithm has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_AccessRight_GetWrappingAlgorithm)));
        assert(((cast(*void)(*instance.m_AccessRight_GetMgfAlgorithm)) - cast(*void)(*instance)) == 1960, "sLib3MFDynamicWrapperTable.m_AccessRight_GetMgfAlgorithm has unexpected offset % instead of 1960", ((cast(*void)(*instance.m_AccessRight_GetMgfAlgorithm)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_AccessRight_GetMgfAlgorithm)) == 8, "sLib3MFDynamicWrapperTable.m_AccessRight_GetMgfAlgorithm has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_AccessRight_GetMgfAlgorithm)));
        assert(((cast(*void)(*instance.m_AccessRight_GetDigestMethod)) - cast(*void)(*instance)) == 1968, "sLib3MFDynamicWrapperTable.m_AccessRight_GetDigestMethod has unexpected offset % instead of 1968", ((cast(*void)(*instance.m_AccessRight_GetDigestMethod)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_AccessRight_GetDigestMethod)) == 8, "sLib3MFDynamicWrapperTable.m_AccessRight_GetDigestMethod has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_AccessRight_GetDigestMethod)));
        assert(((cast(*void)(*instance.m_ContentEncryptionParams_GetEncryptionAlgorithm)) - cast(*void)(*instance)) == 1976, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetEncryptionAlgorithm has unexpected offset % instead of 1976", ((cast(*void)(*instance.m_ContentEncryptionParams_GetEncryptionAlgorithm)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetEncryptionAlgorithm)) == 8, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetEncryptionAlgorithm has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetEncryptionAlgorithm)));
        assert(((cast(*void)(*instance.m_ContentEncryptionParams_GetKey)) - cast(*void)(*instance)) == 1984, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetKey has unexpected offset % instead of 1984", ((cast(*void)(*instance.m_ContentEncryptionParams_GetKey)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetKey)) == 8, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetKey has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetKey)));
        assert(((cast(*void)(*instance.m_ContentEncryptionParams_GetInitializationVector)) - cast(*void)(*instance)) == 1992, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetInitializationVector has unexpected offset % instead of 1992", ((cast(*void)(*instance.m_ContentEncryptionParams_GetInitializationVector)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetInitializationVector)) == 8, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetInitializationVector has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetInitializationVector)));
        assert(((cast(*void)(*instance.m_ContentEncryptionParams_GetAuthenticationTag)) - cast(*void)(*instance)) == 2000, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetAuthenticationTag has unexpected offset % instead of 2000", ((cast(*void)(*instance.m_ContentEncryptionParams_GetAuthenticationTag)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetAuthenticationTag)) == 8, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetAuthenticationTag has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetAuthenticationTag)));
        assert(((cast(*void)(*instance.m_ContentEncryptionParams_SetAuthenticationTag)) - cast(*void)(*instance)) == 2008, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_SetAuthenticationTag has unexpected offset % instead of 2008", ((cast(*void)(*instance.m_ContentEncryptionParams_SetAuthenticationTag)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_SetAuthenticationTag)) == 8, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_SetAuthenticationTag has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_SetAuthenticationTag)));
        assert(((cast(*void)(*instance.m_ContentEncryptionParams_GetAdditionalAuthenticationData)) - cast(*void)(*instance)) == 2016, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetAdditionalAuthenticationData has unexpected offset % instead of 2016", ((cast(*void)(*instance.m_ContentEncryptionParams_GetAdditionalAuthenticationData)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetAdditionalAuthenticationData)) == 8, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetAdditionalAuthenticationData has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetAdditionalAuthenticationData)));
        assert(((cast(*void)(*instance.m_ContentEncryptionParams_GetDescriptor)) - cast(*void)(*instance)) == 2024, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetDescriptor has unexpected offset % instead of 2024", ((cast(*void)(*instance.m_ContentEncryptionParams_GetDescriptor)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetDescriptor)) == 8, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetDescriptor has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetDescriptor)));
        assert(((cast(*void)(*instance.m_ContentEncryptionParams_GetKeyUUID)) - cast(*void)(*instance)) == 2032, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetKeyUUID has unexpected offset % instead of 2032", ((cast(*void)(*instance.m_ContentEncryptionParams_GetKeyUUID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetKeyUUID)) == 8, "sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetKeyUUID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ContentEncryptionParams_GetKeyUUID)));
        assert(((cast(*void)(*instance.m_ResourceData_GetPath)) - cast(*void)(*instance)) == 2040, "sLib3MFDynamicWrapperTable.m_ResourceData_GetPath has unexpected offset % instead of 2040", ((cast(*void)(*instance.m_ResourceData_GetPath)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceData_GetPath)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceData_GetPath has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceData_GetPath)));
        assert(((cast(*void)(*instance.m_ResourceData_GetEncryptionAlgorithm)) - cast(*void)(*instance)) == 2048, "sLib3MFDynamicWrapperTable.m_ResourceData_GetEncryptionAlgorithm has unexpected offset % instead of 2048", ((cast(*void)(*instance.m_ResourceData_GetEncryptionAlgorithm)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceData_GetEncryptionAlgorithm)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceData_GetEncryptionAlgorithm has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceData_GetEncryptionAlgorithm)));
        assert(((cast(*void)(*instance.m_ResourceData_GetCompression)) - cast(*void)(*instance)) == 2056, "sLib3MFDynamicWrapperTable.m_ResourceData_GetCompression has unexpected offset % instead of 2056", ((cast(*void)(*instance.m_ResourceData_GetCompression)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceData_GetCompression)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceData_GetCompression has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceData_GetCompression)));
        assert(((cast(*void)(*instance.m_ResourceData_GetAdditionalAuthenticationData)) - cast(*void)(*instance)) == 2064, "sLib3MFDynamicWrapperTable.m_ResourceData_GetAdditionalAuthenticationData has unexpected offset % instead of 2064", ((cast(*void)(*instance.m_ResourceData_GetAdditionalAuthenticationData)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceData_GetAdditionalAuthenticationData)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceData_GetAdditionalAuthenticationData has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceData_GetAdditionalAuthenticationData)));
        assert(((cast(*void)(*instance.m_ResourceDataGroup_GetKeyUUID)) - cast(*void)(*instance)) == 2072, "sLib3MFDynamicWrapperTable.m_ResourceDataGroup_GetKeyUUID has unexpected offset % instead of 2072", ((cast(*void)(*instance.m_ResourceDataGroup_GetKeyUUID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceDataGroup_GetKeyUUID)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceDataGroup_GetKeyUUID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceDataGroup_GetKeyUUID)));
        assert(((cast(*void)(*instance.m_ResourceDataGroup_AddAccessRight)) - cast(*void)(*instance)) == 2080, "sLib3MFDynamicWrapperTable.m_ResourceDataGroup_AddAccessRight has unexpected offset % instead of 2080", ((cast(*void)(*instance.m_ResourceDataGroup_AddAccessRight)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceDataGroup_AddAccessRight)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceDataGroup_AddAccessRight has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceDataGroup_AddAccessRight)));
        assert(((cast(*void)(*instance.m_ResourceDataGroup_FindAccessRightByConsumer)) - cast(*void)(*instance)) == 2088, "sLib3MFDynamicWrapperTable.m_ResourceDataGroup_FindAccessRightByConsumer has unexpected offset % instead of 2088", ((cast(*void)(*instance.m_ResourceDataGroup_FindAccessRightByConsumer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceDataGroup_FindAccessRightByConsumer)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceDataGroup_FindAccessRightByConsumer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceDataGroup_FindAccessRightByConsumer)));
        assert(((cast(*void)(*instance.m_ResourceDataGroup_RemoveAccessRight)) - cast(*void)(*instance)) == 2096, "sLib3MFDynamicWrapperTable.m_ResourceDataGroup_RemoveAccessRight has unexpected offset % instead of 2096", ((cast(*void)(*instance.m_ResourceDataGroup_RemoveAccessRight)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceDataGroup_RemoveAccessRight)) == 8, "sLib3MFDynamicWrapperTable.m_ResourceDataGroup_RemoveAccessRight has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ResourceDataGroup_RemoveAccessRight)));
        assert(((cast(*void)(*instance.m_KeyStore_AddConsumer)) - cast(*void)(*instance)) == 2104, "sLib3MFDynamicWrapperTable.m_KeyStore_AddConsumer has unexpected offset % instead of 2104", ((cast(*void)(*instance.m_KeyStore_AddConsumer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_AddConsumer)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_AddConsumer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_AddConsumer)));
        assert(((cast(*void)(*instance.m_KeyStore_GetConsumerCount)) - cast(*void)(*instance)) == 2112, "sLib3MFDynamicWrapperTable.m_KeyStore_GetConsumerCount has unexpected offset % instead of 2112", ((cast(*void)(*instance.m_KeyStore_GetConsumerCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetConsumerCount)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_GetConsumerCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetConsumerCount)));
        assert(((cast(*void)(*instance.m_KeyStore_GetConsumer)) - cast(*void)(*instance)) == 2120, "sLib3MFDynamicWrapperTable.m_KeyStore_GetConsumer has unexpected offset % instead of 2120", ((cast(*void)(*instance.m_KeyStore_GetConsumer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetConsumer)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_GetConsumer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetConsumer)));
        assert(((cast(*void)(*instance.m_KeyStore_RemoveConsumer)) - cast(*void)(*instance)) == 2128, "sLib3MFDynamicWrapperTable.m_KeyStore_RemoveConsumer has unexpected offset % instead of 2128", ((cast(*void)(*instance.m_KeyStore_RemoveConsumer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_RemoveConsumer)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_RemoveConsumer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_RemoveConsumer)));
        assert(((cast(*void)(*instance.m_KeyStore_FindConsumer)) - cast(*void)(*instance)) == 2136, "sLib3MFDynamicWrapperTable.m_KeyStore_FindConsumer has unexpected offset % instead of 2136", ((cast(*void)(*instance.m_KeyStore_FindConsumer)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_FindConsumer)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_FindConsumer has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_FindConsumer)));
        assert(((cast(*void)(*instance.m_KeyStore_GetResourceDataGroupCount)) - cast(*void)(*instance)) == 2144, "sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceDataGroupCount has unexpected offset % instead of 2144", ((cast(*void)(*instance.m_KeyStore_GetResourceDataGroupCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceDataGroupCount)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceDataGroupCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceDataGroupCount)));
        assert(((cast(*void)(*instance.m_KeyStore_AddResourceDataGroup)) - cast(*void)(*instance)) == 2152, "sLib3MFDynamicWrapperTable.m_KeyStore_AddResourceDataGroup has unexpected offset % instead of 2152", ((cast(*void)(*instance.m_KeyStore_AddResourceDataGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_AddResourceDataGroup)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_AddResourceDataGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_AddResourceDataGroup)));
        assert(((cast(*void)(*instance.m_KeyStore_GetResourceDataGroup)) - cast(*void)(*instance)) == 2160, "sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceDataGroup has unexpected offset % instead of 2160", ((cast(*void)(*instance.m_KeyStore_GetResourceDataGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceDataGroup)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceDataGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceDataGroup)));
        assert(((cast(*void)(*instance.m_KeyStore_RemoveResourceDataGroup)) - cast(*void)(*instance)) == 2168, "sLib3MFDynamicWrapperTable.m_KeyStore_RemoveResourceDataGroup has unexpected offset % instead of 2168", ((cast(*void)(*instance.m_KeyStore_RemoveResourceDataGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_RemoveResourceDataGroup)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_RemoveResourceDataGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_RemoveResourceDataGroup)));
        assert(((cast(*void)(*instance.m_KeyStore_FindResourceDataGroup)) - cast(*void)(*instance)) == 2176, "sLib3MFDynamicWrapperTable.m_KeyStore_FindResourceDataGroup has unexpected offset % instead of 2176", ((cast(*void)(*instance.m_KeyStore_FindResourceDataGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_FindResourceDataGroup)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_FindResourceDataGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_FindResourceDataGroup)));
        assert(((cast(*void)(*instance.m_KeyStore_AddResourceData)) - cast(*void)(*instance)) == 2184, "sLib3MFDynamicWrapperTable.m_KeyStore_AddResourceData has unexpected offset % instead of 2184", ((cast(*void)(*instance.m_KeyStore_AddResourceData)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_AddResourceData)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_AddResourceData has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_AddResourceData)));
        assert(((cast(*void)(*instance.m_KeyStore_RemoveResourceData)) - cast(*void)(*instance)) == 2192, "sLib3MFDynamicWrapperTable.m_KeyStore_RemoveResourceData has unexpected offset % instead of 2192", ((cast(*void)(*instance.m_KeyStore_RemoveResourceData)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_RemoveResourceData)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_RemoveResourceData has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_RemoveResourceData)));
        assert(((cast(*void)(*instance.m_KeyStore_FindResourceData)) - cast(*void)(*instance)) == 2200, "sLib3MFDynamicWrapperTable.m_KeyStore_FindResourceData has unexpected offset % instead of 2200", ((cast(*void)(*instance.m_KeyStore_FindResourceData)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_FindResourceData)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_FindResourceData has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_FindResourceData)));
        assert(((cast(*void)(*instance.m_KeyStore_GetResourceDataCount)) - cast(*void)(*instance)) == 2208, "sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceDataCount has unexpected offset % instead of 2208", ((cast(*void)(*instance.m_KeyStore_GetResourceDataCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceDataCount)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceDataCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceDataCount)));
        assert(((cast(*void)(*instance.m_KeyStore_GetResourceData)) - cast(*void)(*instance)) == 2216, "sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceData has unexpected offset % instead of 2216", ((cast(*void)(*instance.m_KeyStore_GetResourceData)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceData)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceData has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetResourceData)));
        assert(((cast(*void)(*instance.m_KeyStore_GetUUID)) - cast(*void)(*instance)) == 2224, "sLib3MFDynamicWrapperTable.m_KeyStore_GetUUID has unexpected offset % instead of 2224", ((cast(*void)(*instance.m_KeyStore_GetUUID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetUUID)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_GetUUID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_GetUUID)));
        assert(((cast(*void)(*instance.m_KeyStore_SetUUID)) - cast(*void)(*instance)) == 2232, "sLib3MFDynamicWrapperTable.m_KeyStore_SetUUID has unexpected offset % instead of 2232", ((cast(*void)(*instance.m_KeyStore_SetUUID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_SetUUID)) == 8, "sLib3MFDynamicWrapperTable.m_KeyStore_SetUUID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_KeyStore_SetUUID)));
        assert(((cast(*void)(*instance.m_Model_RootModelPart)) - cast(*void)(*instance)) == 2240, "sLib3MFDynamicWrapperTable.m_Model_RootModelPart has unexpected offset % instead of 2240", ((cast(*void)(*instance.m_Model_RootModelPart)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_RootModelPart)) == 8, "sLib3MFDynamicWrapperTable.m_Model_RootModelPart has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_RootModelPart)));
        assert(((cast(*void)(*instance.m_Model_FindOrCreatePackagePart)) - cast(*void)(*instance)) == 2248, "sLib3MFDynamicWrapperTable.m_Model_FindOrCreatePackagePart has unexpected offset % instead of 2248", ((cast(*void)(*instance.m_Model_FindOrCreatePackagePart)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_FindOrCreatePackagePart)) == 8, "sLib3MFDynamicWrapperTable.m_Model_FindOrCreatePackagePart has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_FindOrCreatePackagePart)));
        assert(((cast(*void)(*instance.m_Model_SetUnit)) - cast(*void)(*instance)) == 2256, "sLib3MFDynamicWrapperTable.m_Model_SetUnit has unexpected offset % instead of 2256", ((cast(*void)(*instance.m_Model_SetUnit)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_SetUnit)) == 8, "sLib3MFDynamicWrapperTable.m_Model_SetUnit has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_SetUnit)));
        assert(((cast(*void)(*instance.m_Model_GetUnit)) - cast(*void)(*instance)) == 2264, "sLib3MFDynamicWrapperTable.m_Model_GetUnit has unexpected offset % instead of 2264", ((cast(*void)(*instance.m_Model_GetUnit)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetUnit)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetUnit has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetUnit)));
        assert(((cast(*void)(*instance.m_Model_GetLanguage)) - cast(*void)(*instance)) == 2272, "sLib3MFDynamicWrapperTable.m_Model_GetLanguage has unexpected offset % instead of 2272", ((cast(*void)(*instance.m_Model_GetLanguage)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetLanguage)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetLanguage has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetLanguage)));
        assert(((cast(*void)(*instance.m_Model_SetLanguage)) - cast(*void)(*instance)) == 2280, "sLib3MFDynamicWrapperTable.m_Model_SetLanguage has unexpected offset % instead of 2280", ((cast(*void)(*instance.m_Model_SetLanguage)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_SetLanguage)) == 8, "sLib3MFDynamicWrapperTable.m_Model_SetLanguage has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_SetLanguage)));
        assert(((cast(*void)(*instance.m_Model_QueryWriter)) - cast(*void)(*instance)) == 2288, "sLib3MFDynamicWrapperTable.m_Model_QueryWriter has unexpected offset % instead of 2288", ((cast(*void)(*instance.m_Model_QueryWriter)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_QueryWriter)) == 8, "sLib3MFDynamicWrapperTable.m_Model_QueryWriter has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_QueryWriter)));
        assert(((cast(*void)(*instance.m_Model_QueryReader)) - cast(*void)(*instance)) == 2296, "sLib3MFDynamicWrapperTable.m_Model_QueryReader has unexpected offset % instead of 2296", ((cast(*void)(*instance.m_Model_QueryReader)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_QueryReader)) == 8, "sLib3MFDynamicWrapperTable.m_Model_QueryReader has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_QueryReader)));
        assert(((cast(*void)(*instance.m_Model_GetTexture2DByID)) - cast(*void)(*instance)) == 2304, "sLib3MFDynamicWrapperTable.m_Model_GetTexture2DByID has unexpected offset % instead of 2304", ((cast(*void)(*instance.m_Model_GetTexture2DByID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetTexture2DByID)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetTexture2DByID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetTexture2DByID)));
        assert(((cast(*void)(*instance.m_Model_GetPropertyTypeByID)) - cast(*void)(*instance)) == 2312, "sLib3MFDynamicWrapperTable.m_Model_GetPropertyTypeByID has unexpected offset % instead of 2312", ((cast(*void)(*instance.m_Model_GetPropertyTypeByID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetPropertyTypeByID)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetPropertyTypeByID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetPropertyTypeByID)));
        assert(((cast(*void)(*instance.m_Model_GetBaseMaterialGroupByID)) - cast(*void)(*instance)) == 2320, "sLib3MFDynamicWrapperTable.m_Model_GetBaseMaterialGroupByID has unexpected offset % instead of 2320", ((cast(*void)(*instance.m_Model_GetBaseMaterialGroupByID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetBaseMaterialGroupByID)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetBaseMaterialGroupByID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetBaseMaterialGroupByID)));
        assert(((cast(*void)(*instance.m_Model_GetTexture2DGroupByID)) - cast(*void)(*instance)) == 2328, "sLib3MFDynamicWrapperTable.m_Model_GetTexture2DGroupByID has unexpected offset % instead of 2328", ((cast(*void)(*instance.m_Model_GetTexture2DGroupByID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetTexture2DGroupByID)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetTexture2DGroupByID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetTexture2DGroupByID)));
        assert(((cast(*void)(*instance.m_Model_GetCompositeMaterialsByID)) - cast(*void)(*instance)) == 2336, "sLib3MFDynamicWrapperTable.m_Model_GetCompositeMaterialsByID has unexpected offset % instead of 2336", ((cast(*void)(*instance.m_Model_GetCompositeMaterialsByID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetCompositeMaterialsByID)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetCompositeMaterialsByID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetCompositeMaterialsByID)));
        assert(((cast(*void)(*instance.m_Model_GetMultiPropertyGroupByID)) - cast(*void)(*instance)) == 2344, "sLib3MFDynamicWrapperTable.m_Model_GetMultiPropertyGroupByID has unexpected offset % instead of 2344", ((cast(*void)(*instance.m_Model_GetMultiPropertyGroupByID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetMultiPropertyGroupByID)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetMultiPropertyGroupByID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetMultiPropertyGroupByID)));
        assert(((cast(*void)(*instance.m_Model_GetMeshObjectByID)) - cast(*void)(*instance)) == 2352, "sLib3MFDynamicWrapperTable.m_Model_GetMeshObjectByID has unexpected offset % instead of 2352", ((cast(*void)(*instance.m_Model_GetMeshObjectByID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetMeshObjectByID)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetMeshObjectByID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetMeshObjectByID)));
        assert(((cast(*void)(*instance.m_Model_GetComponentsObjectByID)) - cast(*void)(*instance)) == 2360, "sLib3MFDynamicWrapperTable.m_Model_GetComponentsObjectByID has unexpected offset % instead of 2360", ((cast(*void)(*instance.m_Model_GetComponentsObjectByID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetComponentsObjectByID)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetComponentsObjectByID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetComponentsObjectByID)));
        assert(((cast(*void)(*instance.m_Model_GetColorGroupByID)) - cast(*void)(*instance)) == 2368, "sLib3MFDynamicWrapperTable.m_Model_GetColorGroupByID has unexpected offset % instead of 2368", ((cast(*void)(*instance.m_Model_GetColorGroupByID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetColorGroupByID)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetColorGroupByID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetColorGroupByID)));
        assert(((cast(*void)(*instance.m_Model_GetSliceStackByID)) - cast(*void)(*instance)) == 2376, "sLib3MFDynamicWrapperTable.m_Model_GetSliceStackByID has unexpected offset % instead of 2376", ((cast(*void)(*instance.m_Model_GetSliceStackByID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetSliceStackByID)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetSliceStackByID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetSliceStackByID)));
        assert(((cast(*void)(*instance.m_Model_GetBuildUUID)) - cast(*void)(*instance)) == 2384, "sLib3MFDynamicWrapperTable.m_Model_GetBuildUUID has unexpected offset % instead of 2384", ((cast(*void)(*instance.m_Model_GetBuildUUID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetBuildUUID)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetBuildUUID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetBuildUUID)));
        assert(((cast(*void)(*instance.m_Model_SetBuildUUID)) - cast(*void)(*instance)) == 2392, "sLib3MFDynamicWrapperTable.m_Model_SetBuildUUID has unexpected offset % instead of 2392", ((cast(*void)(*instance.m_Model_SetBuildUUID)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_SetBuildUUID)) == 8, "sLib3MFDynamicWrapperTable.m_Model_SetBuildUUID has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_SetBuildUUID)));
        assert(((cast(*void)(*instance.m_Model_GetBuildItems)) - cast(*void)(*instance)) == 2400, "sLib3MFDynamicWrapperTable.m_Model_GetBuildItems has unexpected offset % instead of 2400", ((cast(*void)(*instance.m_Model_GetBuildItems)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetBuildItems)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetBuildItems has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetBuildItems)));
        assert(((cast(*void)(*instance.m_Model_GetOutbox)) - cast(*void)(*instance)) == 2408, "sLib3MFDynamicWrapperTable.m_Model_GetOutbox has unexpected offset % instead of 2408", ((cast(*void)(*instance.m_Model_GetOutbox)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetOutbox)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetOutbox has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetOutbox)));
        assert(((cast(*void)(*instance.m_Model_GetResources)) - cast(*void)(*instance)) == 2416, "sLib3MFDynamicWrapperTable.m_Model_GetResources has unexpected offset % instead of 2416", ((cast(*void)(*instance.m_Model_GetResources)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetResources)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetResources has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetResources)));
        assert(((cast(*void)(*instance.m_Model_GetObjects)) - cast(*void)(*instance)) == 2424, "sLib3MFDynamicWrapperTable.m_Model_GetObjects has unexpected offset % instead of 2424", ((cast(*void)(*instance.m_Model_GetObjects)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetObjects)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetObjects has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetObjects)));
        assert(((cast(*void)(*instance.m_Model_GetMeshObjects)) - cast(*void)(*instance)) == 2432, "sLib3MFDynamicWrapperTable.m_Model_GetMeshObjects has unexpected offset % instead of 2432", ((cast(*void)(*instance.m_Model_GetMeshObjects)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetMeshObjects)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetMeshObjects has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetMeshObjects)));
        assert(((cast(*void)(*instance.m_Model_GetComponentsObjects)) - cast(*void)(*instance)) == 2440, "sLib3MFDynamicWrapperTable.m_Model_GetComponentsObjects has unexpected offset % instead of 2440", ((cast(*void)(*instance.m_Model_GetComponentsObjects)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetComponentsObjects)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetComponentsObjects has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetComponentsObjects)));
        assert(((cast(*void)(*instance.m_Model_GetTexture2Ds)) - cast(*void)(*instance)) == 2448, "sLib3MFDynamicWrapperTable.m_Model_GetTexture2Ds has unexpected offset % instead of 2448", ((cast(*void)(*instance.m_Model_GetTexture2Ds)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetTexture2Ds)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetTexture2Ds has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetTexture2Ds)));
        assert(((cast(*void)(*instance.m_Model_GetBaseMaterialGroups)) - cast(*void)(*instance)) == 2456, "sLib3MFDynamicWrapperTable.m_Model_GetBaseMaterialGroups has unexpected offset % instead of 2456", ((cast(*void)(*instance.m_Model_GetBaseMaterialGroups)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetBaseMaterialGroups)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetBaseMaterialGroups has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetBaseMaterialGroups)));
        assert(((cast(*void)(*instance.m_Model_GetColorGroups)) - cast(*void)(*instance)) == 2464, "sLib3MFDynamicWrapperTable.m_Model_GetColorGroups has unexpected offset % instead of 2464", ((cast(*void)(*instance.m_Model_GetColorGroups)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetColorGroups)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetColorGroups has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetColorGroups)));
        assert(((cast(*void)(*instance.m_Model_GetTexture2DGroups)) - cast(*void)(*instance)) == 2472, "sLib3MFDynamicWrapperTable.m_Model_GetTexture2DGroups has unexpected offset % instead of 2472", ((cast(*void)(*instance.m_Model_GetTexture2DGroups)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetTexture2DGroups)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetTexture2DGroups has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetTexture2DGroups)));
        assert(((cast(*void)(*instance.m_Model_GetCompositeMaterials)) - cast(*void)(*instance)) == 2480, "sLib3MFDynamicWrapperTable.m_Model_GetCompositeMaterials has unexpected offset % instead of 2480", ((cast(*void)(*instance.m_Model_GetCompositeMaterials)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetCompositeMaterials)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetCompositeMaterials has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetCompositeMaterials)));
        assert(((cast(*void)(*instance.m_Model_GetMultiPropertyGroups)) - cast(*void)(*instance)) == 2488, "sLib3MFDynamicWrapperTable.m_Model_GetMultiPropertyGroups has unexpected offset % instead of 2488", ((cast(*void)(*instance.m_Model_GetMultiPropertyGroups)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetMultiPropertyGroups)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetMultiPropertyGroups has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetMultiPropertyGroups)));
        assert(((cast(*void)(*instance.m_Model_GetSliceStacks)) - cast(*void)(*instance)) == 2496, "sLib3MFDynamicWrapperTable.m_Model_GetSliceStacks has unexpected offset % instead of 2496", ((cast(*void)(*instance.m_Model_GetSliceStacks)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetSliceStacks)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetSliceStacks has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetSliceStacks)));
        assert(((cast(*void)(*instance.m_Model_MergeToModel)) - cast(*void)(*instance)) == 2504, "sLib3MFDynamicWrapperTable.m_Model_MergeToModel has unexpected offset % instead of 2504", ((cast(*void)(*instance.m_Model_MergeToModel)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_MergeToModel)) == 8, "sLib3MFDynamicWrapperTable.m_Model_MergeToModel has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_MergeToModel)));
        assert(((cast(*void)(*instance.m_Model_AddMeshObject)) - cast(*void)(*instance)) == 2512, "sLib3MFDynamicWrapperTable.m_Model_AddMeshObject has unexpected offset % instead of 2512", ((cast(*void)(*instance.m_Model_AddMeshObject)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddMeshObject)) == 8, "sLib3MFDynamicWrapperTable.m_Model_AddMeshObject has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddMeshObject)));
        assert(((cast(*void)(*instance.m_Model_AddComponentsObject)) - cast(*void)(*instance)) == 2520, "sLib3MFDynamicWrapperTable.m_Model_AddComponentsObject has unexpected offset % instead of 2520", ((cast(*void)(*instance.m_Model_AddComponentsObject)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddComponentsObject)) == 8, "sLib3MFDynamicWrapperTable.m_Model_AddComponentsObject has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddComponentsObject)));
        assert(((cast(*void)(*instance.m_Model_AddSliceStack)) - cast(*void)(*instance)) == 2528, "sLib3MFDynamicWrapperTable.m_Model_AddSliceStack has unexpected offset % instead of 2528", ((cast(*void)(*instance.m_Model_AddSliceStack)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddSliceStack)) == 8, "sLib3MFDynamicWrapperTable.m_Model_AddSliceStack has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddSliceStack)));
        assert(((cast(*void)(*instance.m_Model_AddTexture2DFromAttachment)) - cast(*void)(*instance)) == 2536, "sLib3MFDynamicWrapperTable.m_Model_AddTexture2DFromAttachment has unexpected offset % instead of 2536", ((cast(*void)(*instance.m_Model_AddTexture2DFromAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddTexture2DFromAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Model_AddTexture2DFromAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddTexture2DFromAttachment)));
        assert(((cast(*void)(*instance.m_Model_AddBaseMaterialGroup)) - cast(*void)(*instance)) == 2544, "sLib3MFDynamicWrapperTable.m_Model_AddBaseMaterialGroup has unexpected offset % instead of 2544", ((cast(*void)(*instance.m_Model_AddBaseMaterialGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddBaseMaterialGroup)) == 8, "sLib3MFDynamicWrapperTable.m_Model_AddBaseMaterialGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddBaseMaterialGroup)));
        assert(((cast(*void)(*instance.m_Model_AddColorGroup)) - cast(*void)(*instance)) == 2552, "sLib3MFDynamicWrapperTable.m_Model_AddColorGroup has unexpected offset % instead of 2552", ((cast(*void)(*instance.m_Model_AddColorGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddColorGroup)) == 8, "sLib3MFDynamicWrapperTable.m_Model_AddColorGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddColorGroup)));
        assert(((cast(*void)(*instance.m_Model_AddTexture2DGroup)) - cast(*void)(*instance)) == 2560, "sLib3MFDynamicWrapperTable.m_Model_AddTexture2DGroup has unexpected offset % instead of 2560", ((cast(*void)(*instance.m_Model_AddTexture2DGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddTexture2DGroup)) == 8, "sLib3MFDynamicWrapperTable.m_Model_AddTexture2DGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddTexture2DGroup)));
        assert(((cast(*void)(*instance.m_Model_AddCompositeMaterials)) - cast(*void)(*instance)) == 2568, "sLib3MFDynamicWrapperTable.m_Model_AddCompositeMaterials has unexpected offset % instead of 2568", ((cast(*void)(*instance.m_Model_AddCompositeMaterials)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddCompositeMaterials)) == 8, "sLib3MFDynamicWrapperTable.m_Model_AddCompositeMaterials has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddCompositeMaterials)));
        assert(((cast(*void)(*instance.m_Model_AddMultiPropertyGroup)) - cast(*void)(*instance)) == 2576, "sLib3MFDynamicWrapperTable.m_Model_AddMultiPropertyGroup has unexpected offset % instead of 2576", ((cast(*void)(*instance.m_Model_AddMultiPropertyGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddMultiPropertyGroup)) == 8, "sLib3MFDynamicWrapperTable.m_Model_AddMultiPropertyGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddMultiPropertyGroup)));
        assert(((cast(*void)(*instance.m_Model_AddBuildItem)) - cast(*void)(*instance)) == 2584, "sLib3MFDynamicWrapperTable.m_Model_AddBuildItem has unexpected offset % instead of 2584", ((cast(*void)(*instance.m_Model_AddBuildItem)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddBuildItem)) == 8, "sLib3MFDynamicWrapperTable.m_Model_AddBuildItem has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddBuildItem)));
        assert(((cast(*void)(*instance.m_Model_RemoveBuildItem)) - cast(*void)(*instance)) == 2592, "sLib3MFDynamicWrapperTable.m_Model_RemoveBuildItem has unexpected offset % instead of 2592", ((cast(*void)(*instance.m_Model_RemoveBuildItem)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_RemoveBuildItem)) == 8, "sLib3MFDynamicWrapperTable.m_Model_RemoveBuildItem has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_RemoveBuildItem)));
        assert(((cast(*void)(*instance.m_Model_GetMetaDataGroup)) - cast(*void)(*instance)) == 2600, "sLib3MFDynamicWrapperTable.m_Model_GetMetaDataGroup has unexpected offset % instead of 2600", ((cast(*void)(*instance.m_Model_GetMetaDataGroup)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetMetaDataGroup)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetMetaDataGroup has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetMetaDataGroup)));
        assert(((cast(*void)(*instance.m_Model_AddAttachment)) - cast(*void)(*instance)) == 2608, "sLib3MFDynamicWrapperTable.m_Model_AddAttachment has unexpected offset % instead of 2608", ((cast(*void)(*instance.m_Model_AddAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Model_AddAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddAttachment)));
        assert(((cast(*void)(*instance.m_Model_RemoveAttachment)) - cast(*void)(*instance)) == 2616, "sLib3MFDynamicWrapperTable.m_Model_RemoveAttachment has unexpected offset % instead of 2616", ((cast(*void)(*instance.m_Model_RemoveAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_RemoveAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Model_RemoveAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_RemoveAttachment)));
        assert(((cast(*void)(*instance.m_Model_GetAttachment)) - cast(*void)(*instance)) == 2624, "sLib3MFDynamicWrapperTable.m_Model_GetAttachment has unexpected offset % instead of 2624", ((cast(*void)(*instance.m_Model_GetAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetAttachment)));
        assert(((cast(*void)(*instance.m_Model_FindAttachment)) - cast(*void)(*instance)) == 2632, "sLib3MFDynamicWrapperTable.m_Model_FindAttachment has unexpected offset % instead of 2632", ((cast(*void)(*instance.m_Model_FindAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_FindAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Model_FindAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_FindAttachment)));
        assert(((cast(*void)(*instance.m_Model_GetAttachmentCount)) - cast(*void)(*instance)) == 2640, "sLib3MFDynamicWrapperTable.m_Model_GetAttachmentCount has unexpected offset % instead of 2640", ((cast(*void)(*instance.m_Model_GetAttachmentCount)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetAttachmentCount)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetAttachmentCount has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetAttachmentCount)));
        assert(((cast(*void)(*instance.m_Model_HasPackageThumbnailAttachment)) - cast(*void)(*instance)) == 2648, "sLib3MFDynamicWrapperTable.m_Model_HasPackageThumbnailAttachment has unexpected offset % instead of 2648", ((cast(*void)(*instance.m_Model_HasPackageThumbnailAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_HasPackageThumbnailAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Model_HasPackageThumbnailAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_HasPackageThumbnailAttachment)));
        assert(((cast(*void)(*instance.m_Model_CreatePackageThumbnailAttachment)) - cast(*void)(*instance)) == 2656, "sLib3MFDynamicWrapperTable.m_Model_CreatePackageThumbnailAttachment has unexpected offset % instead of 2656", ((cast(*void)(*instance.m_Model_CreatePackageThumbnailAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_CreatePackageThumbnailAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Model_CreatePackageThumbnailAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_CreatePackageThumbnailAttachment)));
        assert(((cast(*void)(*instance.m_Model_GetPackageThumbnailAttachment)) - cast(*void)(*instance)) == 2664, "sLib3MFDynamicWrapperTable.m_Model_GetPackageThumbnailAttachment has unexpected offset % instead of 2664", ((cast(*void)(*instance.m_Model_GetPackageThumbnailAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetPackageThumbnailAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetPackageThumbnailAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetPackageThumbnailAttachment)));
        assert(((cast(*void)(*instance.m_Model_RemovePackageThumbnailAttachment)) - cast(*void)(*instance)) == 2672, "sLib3MFDynamicWrapperTable.m_Model_RemovePackageThumbnailAttachment has unexpected offset % instead of 2672", ((cast(*void)(*instance.m_Model_RemovePackageThumbnailAttachment)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_RemovePackageThumbnailAttachment)) == 8, "sLib3MFDynamicWrapperTable.m_Model_RemovePackageThumbnailAttachment has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_RemovePackageThumbnailAttachment)));
        assert(((cast(*void)(*instance.m_Model_AddCustomContentType)) - cast(*void)(*instance)) == 2680, "sLib3MFDynamicWrapperTable.m_Model_AddCustomContentType has unexpected offset % instead of 2680", ((cast(*void)(*instance.m_Model_AddCustomContentType)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddCustomContentType)) == 8, "sLib3MFDynamicWrapperTable.m_Model_AddCustomContentType has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_AddCustomContentType)));
        assert(((cast(*void)(*instance.m_Model_RemoveCustomContentType)) - cast(*void)(*instance)) == 2688, "sLib3MFDynamicWrapperTable.m_Model_RemoveCustomContentType has unexpected offset % instead of 2688", ((cast(*void)(*instance.m_Model_RemoveCustomContentType)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_RemoveCustomContentType)) == 8, "sLib3MFDynamicWrapperTable.m_Model_RemoveCustomContentType has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_RemoveCustomContentType)));
        assert(((cast(*void)(*instance.m_Model_SetRandomNumberCallback)) - cast(*void)(*instance)) == 2696, "sLib3MFDynamicWrapperTable.m_Model_SetRandomNumberCallback has unexpected offset % instead of 2696", ((cast(*void)(*instance.m_Model_SetRandomNumberCallback)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_SetRandomNumberCallback)) == 8, "sLib3MFDynamicWrapperTable.m_Model_SetRandomNumberCallback has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_SetRandomNumberCallback)));
        assert(((cast(*void)(*instance.m_Model_GetKeyStore)) - cast(*void)(*instance)) == 2704, "sLib3MFDynamicWrapperTable.m_Model_GetKeyStore has unexpected offset % instead of 2704", ((cast(*void)(*instance.m_Model_GetKeyStore)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetKeyStore)) == 8, "sLib3MFDynamicWrapperTable.m_Model_GetKeyStore has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Model_GetKeyStore)));
        assert(((cast(*void)(*instance.m_GetLibraryVersion)) - cast(*void)(*instance)) == 2712, "sLib3MFDynamicWrapperTable.m_GetLibraryVersion has unexpected offset % instead of 2712", ((cast(*void)(*instance.m_GetLibraryVersion)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_GetLibraryVersion)) == 8, "sLib3MFDynamicWrapperTable.m_GetLibraryVersion has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_GetLibraryVersion)));
        assert(((cast(*void)(*instance.m_GetPrereleaseInformation)) - cast(*void)(*instance)) == 2720, "sLib3MFDynamicWrapperTable.m_GetPrereleaseInformation has unexpected offset % instead of 2720", ((cast(*void)(*instance.m_GetPrereleaseInformation)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_GetPrereleaseInformation)) == 8, "sLib3MFDynamicWrapperTable.m_GetPrereleaseInformation has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_GetPrereleaseInformation)));
        assert(((cast(*void)(*instance.m_GetBuildInformation)) - cast(*void)(*instance)) == 2728, "sLib3MFDynamicWrapperTable.m_GetBuildInformation has unexpected offset % instead of 2728", ((cast(*void)(*instance.m_GetBuildInformation)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_GetBuildInformation)) == 8, "sLib3MFDynamicWrapperTable.m_GetBuildInformation has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_GetBuildInformation)));
        assert(((cast(*void)(*instance.m_GetSpecificationVersion)) - cast(*void)(*instance)) == 2736, "sLib3MFDynamicWrapperTable.m_GetSpecificationVersion has unexpected offset % instead of 2736", ((cast(*void)(*instance.m_GetSpecificationVersion)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_GetSpecificationVersion)) == 8, "sLib3MFDynamicWrapperTable.m_GetSpecificationVersion has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_GetSpecificationVersion)));
        assert(((cast(*void)(*instance.m_CreateModel)) - cast(*void)(*instance)) == 2744, "sLib3MFDynamicWrapperTable.m_CreateModel has unexpected offset % instead of 2744", ((cast(*void)(*instance.m_CreateModel)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_CreateModel)) == 8, "sLib3MFDynamicWrapperTable.m_CreateModel has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_CreateModel)));
        assert(((cast(*void)(*instance.m_Release)) - cast(*void)(*instance)) == 2752, "sLib3MFDynamicWrapperTable.m_Release has unexpected offset % instead of 2752", ((cast(*void)(*instance.m_Release)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Release)) == 8, "sLib3MFDynamicWrapperTable.m_Release has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Release)));
        assert(((cast(*void)(*instance.m_Acquire)) - cast(*void)(*instance)) == 2760, "sLib3MFDynamicWrapperTable.m_Acquire has unexpected offset % instead of 2760", ((cast(*void)(*instance.m_Acquire)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_Acquire)) == 8, "sLib3MFDynamicWrapperTable.m_Acquire has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_Acquire)));
        assert(((cast(*void)(*instance.m_SetJournal)) - cast(*void)(*instance)) == 2768, "sLib3MFDynamicWrapperTable.m_SetJournal has unexpected offset % instead of 2768", ((cast(*void)(*instance.m_SetJournal)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_SetJournal)) == 8, "sLib3MFDynamicWrapperTable.m_SetJournal has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_SetJournal)));
        assert(((cast(*void)(*instance.m_GetLastError)) - cast(*void)(*instance)) == 2776, "sLib3MFDynamicWrapperTable.m_GetLastError has unexpected offset % instead of 2776", ((cast(*void)(*instance.m_GetLastError)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_GetLastError)) == 8, "sLib3MFDynamicWrapperTable.m_GetLastError has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_GetLastError)));
        assert(((cast(*void)(*instance.m_GetSymbolLookupMethod)) - cast(*void)(*instance)) == 2784, "sLib3MFDynamicWrapperTable.m_GetSymbolLookupMethod has unexpected offset % instead of 2784", ((cast(*void)(*instance.m_GetSymbolLookupMethod)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_GetSymbolLookupMethod)) == 8, "sLib3MFDynamicWrapperTable.m_GetSymbolLookupMethod has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_GetSymbolLookupMethod)));
        assert(((cast(*void)(*instance.m_RetrieveProgressMessage)) - cast(*void)(*instance)) == 2792, "sLib3MFDynamicWrapperTable.m_RetrieveProgressMessage has unexpected offset % instead of 2792", ((cast(*void)(*instance.m_RetrieveProgressMessage)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_RetrieveProgressMessage)) == 8, "sLib3MFDynamicWrapperTable.m_RetrieveProgressMessage has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_RetrieveProgressMessage)));
        assert(((cast(*void)(*instance.m_RGBAToColor)) - cast(*void)(*instance)) == 2800, "sLib3MFDynamicWrapperTable.m_RGBAToColor has unexpected offset % instead of 2800", ((cast(*void)(*instance.m_RGBAToColor)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_RGBAToColor)) == 8, "sLib3MFDynamicWrapperTable.m_RGBAToColor has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_RGBAToColor)));
        assert(((cast(*void)(*instance.m_FloatRGBAToColor)) - cast(*void)(*instance)) == 2808, "sLib3MFDynamicWrapperTable.m_FloatRGBAToColor has unexpected offset % instead of 2808", ((cast(*void)(*instance.m_FloatRGBAToColor)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_FloatRGBAToColor)) == 8, "sLib3MFDynamicWrapperTable.m_FloatRGBAToColor has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_FloatRGBAToColor)));
        assert(((cast(*void)(*instance.m_ColorToRGBA)) - cast(*void)(*instance)) == 2816, "sLib3MFDynamicWrapperTable.m_ColorToRGBA has unexpected offset % instead of 2816", ((cast(*void)(*instance.m_ColorToRGBA)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorToRGBA)) == 8, "sLib3MFDynamicWrapperTable.m_ColorToRGBA has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorToRGBA)));
        assert(((cast(*void)(*instance.m_ColorToFloatRGBA)) - cast(*void)(*instance)) == 2824, "sLib3MFDynamicWrapperTable.m_ColorToFloatRGBA has unexpected offset % instead of 2824", ((cast(*void)(*instance.m_ColorToFloatRGBA)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorToFloatRGBA)) == 8, "sLib3MFDynamicWrapperTable.m_ColorToFloatRGBA has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_ColorToFloatRGBA)));
        assert(((cast(*void)(*instance.m_GetIdentityTransform)) - cast(*void)(*instance)) == 2832, "sLib3MFDynamicWrapperTable.m_GetIdentityTransform has unexpected offset % instead of 2832", ((cast(*void)(*instance.m_GetIdentityTransform)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_GetIdentityTransform)) == 8, "sLib3MFDynamicWrapperTable.m_GetIdentityTransform has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_GetIdentityTransform)));
        assert(((cast(*void)(*instance.m_GetUniformScaleTransform)) - cast(*void)(*instance)) == 2840, "sLib3MFDynamicWrapperTable.m_GetUniformScaleTransform has unexpected offset % instead of 2840", ((cast(*void)(*instance.m_GetUniformScaleTransform)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_GetUniformScaleTransform)) == 8, "sLib3MFDynamicWrapperTable.m_GetUniformScaleTransform has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_GetUniformScaleTransform)));
        assert(((cast(*void)(*instance.m_GetScaleTransform)) - cast(*void)(*instance)) == 2848, "sLib3MFDynamicWrapperTable.m_GetScaleTransform has unexpected offset % instead of 2848", ((cast(*void)(*instance.m_GetScaleTransform)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_GetScaleTransform)) == 8, "sLib3MFDynamicWrapperTable.m_GetScaleTransform has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_GetScaleTransform)));
        assert(((cast(*void)(*instance.m_GetTranslationTransform)) - cast(*void)(*instance)) == 2856, "sLib3MFDynamicWrapperTable.m_GetTranslationTransform has unexpected offset % instead of 2856", ((cast(*void)(*instance.m_GetTranslationTransform)) - cast(*void)(*instance)));
        assert(size_of(type_of(sLib3MFDynamicWrapperTable.m_GetTranslationTransform)) == 8, "sLib3MFDynamicWrapperTable.m_GetTranslationTransform has unexpected size % instead of 8", size_of(type_of(sLib3MFDynamicWrapperTable.m_GetTranslationTransform)));
        assert(size_of(sLib3MFDynamicWrapperTable) == 2864, "sLib3MFDynamicWrapperTable has size % instead of 2864", size_of(sLib3MFDynamicWrapperTable));
    }
}

