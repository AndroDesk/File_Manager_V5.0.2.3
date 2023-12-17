.class public final enum Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;
.super Ljava/lang/Enum;
.source "Mp4NonStandardFieldKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum AAPR:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum ADCP:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum ALFN:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum AMIM:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum APTY:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;


# instance fields
.field private description:Ljava/lang/String;

.field private fieldName:Ljava/lang/String;

.field private tagger:Lorg/jaudiotagger/tag/reference/Tagger;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    .line 1
    new-instance v6, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 3
    sget-object v7, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 5
    const-string v1, "AAPR"

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "AApr"

    .line 10
    const-string v4, "MM3 Album Art Attributes"

    .line 12
    move-object v0, v6

    .line 13
    move-object v5, v7

    .line 14
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jaudiotagger/tag/reference/Tagger;)V

    .line 17
    sput-object v6, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->AAPR:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 19
    new-instance v8, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 21
    const-string v1, "ALFN"

    .line 23
    const/4 v2, 0x1

    .line 24
    const-string v3, "Alfn"

    .line 26
    const-string v4, "MM3 Album Art Unknown"

    .line 28
    move-object v0, v8

    .line 29
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jaudiotagger/tag/reference/Tagger;)V

    .line 32
    sput-object v8, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->ALFN:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 34
    new-instance v9, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 36
    const-string v1, "AMIM"

    .line 38
    const/4 v2, 0x2

    .line 39
    const-string v3, "AMIM"

    .line 41
    const-string v4, "MM3 Album Art MimeType"

    .line 43
    move-object v0, v9

    .line 44
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jaudiotagger/tag/reference/Tagger;)V

    .line 47
    sput-object v9, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->AMIM:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 49
    new-instance v10, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 51
    const-string v1, "ADCP"

    .line 53
    const/4 v2, 0x3

    .line 54
    const-string v3, "Adcp"

    .line 56
    const-string v4, "MM3 Album Art Description"

    .line 58
    move-object v0, v10

    .line 59
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jaudiotagger/tag/reference/Tagger;)V

    .line 62
    sput-object v10, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->ADCP:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 64
    new-instance v11, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 66
    const-string v1, "APTY"

    .line 68
    const/4 v2, 0x4

    .line 69
    const-string v3, "Apty"

    .line 71
    const-string v4, "MM3 Album Art ID3 Picture Type"

    .line 73
    move-object v0, v11

    .line 74
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jaudiotagger/tag/reference/Tagger;)V

    .line 77
    sput-object v11, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->APTY:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 79
    const/4 v0, 0x5

    .line 80
    new-array v0, v0, [Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 82
    const/4 v1, 0x0

    .line 83
    aput-object v6, v0, v1

    .line 85
    const/4 v1, 0x1

    .line 86
    aput-object v8, v0, v1

    .line 88
    const/4 v1, 0x2

    .line 89
    aput-object v9, v0, v1

    .line 91
    const/4 v1, 0x3

    .line 92
    aput-object v10, v0, v1

    .line 94
    const/4 v1, 0x4

    .line 95
    aput-object v11, v0, v1

    .line 97
    sput-object v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->$VALUES:[Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 99
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jaudiotagger/tag/reference/Tagger;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/reference/Tagger;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->fieldName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->description:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->tagger:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->$VALUES:[Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 9
    return-object v0
.end method


# virtual methods
.method public geTagger()Lorg/jaudiotagger/tag/reference/Tagger;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->tagger:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 3
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->fieldName:Ljava/lang/String;

    .line 3
    return-object v0
.end method
