.class public final enum Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;
.super Ljava/lang/Enum;
.source "BlockType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum APPLICATION:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum CUESHEET:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum PADDING:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum PICTURE:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum SEEKTABLE:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum STREAMINFO:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum VORBIS_COMMENT:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;


# instance fields
.field private id:I


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 3
    const-string v1, "STREAMINFO"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->STREAMINFO:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 11
    new-instance v1, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 13
    const-string v3, "PADDING"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->PADDING:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 21
    new-instance v3, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 23
    const-string v5, "APPLICATION"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v3, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->APPLICATION:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 31
    new-instance v5, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 33
    const-string v7, "SEEKTABLE"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v5, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->SEEKTABLE:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 41
    new-instance v7, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 43
    const-string v9, "VORBIS_COMMENT"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v7, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->VORBIS_COMMENT:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 51
    new-instance v9, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 53
    const-string v11, "CUESHEET"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    .line 59
    sput-object v9, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->CUESHEET:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 61
    new-instance v11, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 63
    const-string v13, "PICTURE"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    .line 69
    sput-object v11, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->PICTURE:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 71
    const/4 v13, 0x7

    .line 72
    new-array v13, v13, [Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 74
    aput-object v0, v13, v2

    .line 76
    aput-object v1, v13, v4

    .line 78
    aput-object v3, v13, v6

    .line 80
    aput-object v5, v13, v8

    .line 82
    aput-object v7, v13, v10

    .line 84
    aput-object v9, v13, v12

    .line 86
    aput-object v11, v13, v14

    .line 88
    sput-object v13, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->$VALUES:[Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->id:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->$VALUES:[Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->id:I

    .line 3
    return v0
.end method
