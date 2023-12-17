.class public final enum Lorg/jaudiotagger/tag/reference/Tagger;
.super Ljava/lang/Enum;
.source "Tagger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/reference/Tagger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum BEATUNES:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum FOOBAR2000:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum ITUNES:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum JAIKOZ:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum MEDIAPLAYER:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum MEDIA_MONKEY:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum MP3TAG:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum PICARD:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum TAGSCANNER:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum TAG_AND_RENAME:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum WINAMP:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum XIPH:Lorg/jaudiotagger/tag/reference/Tagger;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v1, "ITUNES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->ITUNES:Lorg/jaudiotagger/tag/reference/Tagger;

    new-instance v1, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v3, "MEDIAPLAYER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIAPLAYER:Lorg/jaudiotagger/tag/reference/Tagger;

    new-instance v3, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v5, "WINAMP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jaudiotagger/tag/reference/Tagger;->WINAMP:Lorg/jaudiotagger/tag/reference/Tagger;

    new-instance v5, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v7, "MP3TAG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jaudiotagger/tag/reference/Tagger;->MP3TAG:Lorg/jaudiotagger/tag/reference/Tagger;

    new-instance v7, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v9, "MEDIA_MONKEY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/jaudiotagger/tag/reference/Tagger;

    new-instance v9, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v11, "TAG_AND_RENAME"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jaudiotagger/tag/reference/Tagger;->TAG_AND_RENAME:Lorg/jaudiotagger/tag/reference/Tagger;

    new-instance v11, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v13, "PICARD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jaudiotagger/tag/reference/Tagger;->PICARD:Lorg/jaudiotagger/tag/reference/Tagger;

    new-instance v13, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v15, "JAIKOZ"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/jaudiotagger/tag/reference/Tagger;->JAIKOZ:Lorg/jaudiotagger/tag/reference/Tagger;

    new-instance v15, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v14, "TAGSCANNER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/jaudiotagger/tag/reference/Tagger;->TAGSCANNER:Lorg/jaudiotagger/tag/reference/Tagger;

    new-instance v14, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v12, "XIPH"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/jaudiotagger/tag/reference/Tagger;->XIPH:Lorg/jaudiotagger/tag/reference/Tagger;

    new-instance v12, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v10, "FOOBAR2000"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/jaudiotagger/tag/reference/Tagger;->FOOBAR2000:Lorg/jaudiotagger/tag/reference/Tagger;

    new-instance v10, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v8, "BEATUNES"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/jaudiotagger/tag/reference/Tagger;->BEATUNES:Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v8, 0xc

    new-array v8, v8, [Lorg/jaudiotagger/tag/reference/Tagger;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lorg/jaudiotagger/tag/reference/Tagger;->$VALUES:[Lorg/jaudiotagger/tag/reference/Tagger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/reference/Tagger;
    .registers 2

    const-class v0, Lorg/jaudiotagger/tag/reference/Tagger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/tag/reference/Tagger;

    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/tag/reference/Tagger;
    .registers 1

    sget-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->$VALUES:[Lorg/jaudiotagger/tag/reference/Tagger;

    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/reference/Tagger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/tag/reference/Tagger;

    return-object v0
.end method
