.class public final enum Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;
.super Ljava/lang/Enum;
.source "Mp4NotMetaFieldKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum ALAC:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum DRMS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum ESDS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum FREE:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum FTYP:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum HDLR:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum ILST:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum MDAT:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum MDHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum MDIA:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum META:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum MINF:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum MOOV:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum MP4A:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum MVHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum NMHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum SMHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum STBL:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum STCO:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum STSD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum TAGS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum TKHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum TRAK:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

.field public static final enum UDTA:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;


# instance fields
.field private description:Ljava/lang/String;

.field private fieldName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 28

    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v1, "FTYP"

    const/4 v2, 0x0

    const-string v3, "ftyp"

    const-string v4, "File type Identification"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->FTYP:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v3, "MOOV"

    const/4 v4, 0x1

    const-string v5, "moov"

    const-string v6, "Top level Presentation"

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MOOV:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v3, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v5, "MVHD"

    const/4 v6, 0x2

    const-string v7, "mvhd"

    const-string v8, "Movie Header"

    invoke-direct {v3, v5, v6, v7, v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MVHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v5, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v7, "UDTA"

    const/4 v8, 0x3

    const-string v9, "udta"

    const-string v10, "User Data"

    invoke-direct {v5, v7, v8, v9, v10}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v7, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v9, "META"

    const/4 v10, 0x4

    const-string v11, "meta"

    const-string v12, "MetaInformation"

    invoke-direct {v7, v9, v10, v11, v12}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->META:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v9, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v11, "ILST"

    const/4 v12, 0x5

    const-string v13, "ilst"

    const-string v14, "MetaInformation Optional"

    invoke-direct {v9, v11, v12, v13, v14}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v11, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "MDAT"

    const/4 v14, 0x6

    const-string v15, "mdat"

    const-string v12, "Audio Data"

    invoke-direct {v11, v13, v14, v15, v12}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MDAT:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v12, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "MDIA"

    const/4 v15, 0x7

    const-string v14, "mdia"

    const-string v10, "Media"

    invoke-direct {v12, v13, v15, v14, v10}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MDIA:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v10, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "MDHD"

    const/16 v14, 0x8

    const-string v15, "mdhd"

    const-string v8, "Media Header"

    invoke-direct {v10, v13, v14, v15, v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MDHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "TKHD"

    const/16 v15, 0x9

    const-string v14, "tkhd"

    const-string v6, "Track Header"

    invoke-direct {v8, v13, v15, v14, v6}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->TKHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v6, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "FREE"

    const/16 v14, 0xa

    const-string v15, "free"

    const-string v4, "Padding"

    invoke-direct {v6, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->FREE:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "TRAK"

    const/16 v15, 0xb

    const-string v14, "trak"

    const-string v2, "Track"

    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "SMHD"

    const/16 v14, 0xc

    const-string v15, "smhd"

    move-object/from16 v16, v4

    const-string v4, "Sound Media Header"

    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->SMHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "NMHD"

    const/16 v15, 0xd

    const-string v14, "nmhd"

    move-object/from16 v17, v2

    const-string v2, "Media Stream Header"

    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->NMHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "STBL"

    const/16 v14, 0xe

    const-string v15, "stbl"

    move-object/from16 v18, v4

    const-string v4, "Sample Table"

    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->STBL:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "STSD"

    const/16 v15, 0xf

    const-string v14, "stsd"

    move-object/from16 v19, v2

    const-string v2, "Sample Description"

    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->STSD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "MP4A"

    const/16 v14, 0x10

    const-string v15, "mp4a"

    move-object/from16 v20, v4

    const-string v4, "AAC Audio"

    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MP4A:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "ESDS"

    const/16 v15, 0x11

    const-string v14, "esds"

    move-object/from16 v21, v2

    const-string v2, "Track codec specific information"

    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ESDS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "MINF"

    const/16 v14, 0x12

    const-string v15, "minf"

    move-object/from16 v22, v4

    const-string v4, "Media Information"

    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MINF:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "STCO"

    const/16 v15, 0x13

    const-string v14, "stco"

    move-object/from16 v23, v2

    const-string v2, "Offsets into Audio Data"

    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->STCO:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "DRMS"

    const/16 v14, 0x14

    const-string v15, "drms"

    move-object/from16 v24, v4

    const-string v4, "DRM protected File"

    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->DRMS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "ALAC"

    const/16 v15, 0x15

    const-string v14, "alac"

    move-object/from16 v25, v2

    const-string v2, "Apple Lossless File"

    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ALAC:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "HDLR"

    const/16 v14, 0x16

    const-string v15, "hdlr"

    move-object/from16 v26, v4

    const-string v4, "Metadata Handler"

    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->HDLR:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const-string v13, "TAGS"

    const/16 v14, 0x17

    const-string v15, "tags"

    move-object/from16 v27, v2

    const-string v2, "Nero Encoder Tags"

    invoke-direct {v4, v13, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->TAGS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const/16 v2, 0x18

    new-array v2, v2, [Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v12, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v8, v2, v0

    const/16 v0, 0xa

    aput-object v6, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    const/16 v0, 0x11

    aput-object v22, v2, v0

    const/16 v0, 0x12

    aput-object v23, v2, v0

    const/16 v0, 0x13

    aput-object v24, v2, v0

    const/16 v0, 0x14

    aput-object v25, v2, v0

    const/16 v0, 0x15

    aput-object v26, v2, v0

    const/16 v0, 0x16

    aput-object v27, v2, v0

    const/16 v0, 0x17

    aput-object v4, v2, v0

    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->$VALUES:[Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->fieldName:Ljava/lang/String;

    iput-object p4, p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;
    .registers 2

    const-class v0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;
    .registers 1

    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->$VALUES:[Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->fieldName:Ljava/lang/String;

    return-object v0
.end method
