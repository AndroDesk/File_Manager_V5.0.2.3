.class public final enum Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;
.super Ljava/lang/Enum;
.source "Mp4ContentTypeValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum AUDIO_BOOK:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum BOOKLET:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum BOOKMARK:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum MOVIE:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum MUSIC_VIDEO:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum NORMAL:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum SHORT_FILM:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum TV_SHOW:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 3
    const-string v1, "MOVIE"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Movie"

    .line 8
    invoke-direct {v0, v1, v2, v3, v2}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 11
    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->MOVIE:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 13
    new-instance v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 15
    const-string v3, "NORMAL"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "Normal"

    .line 20
    invoke-direct {v1, v3, v4, v5, v4}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 23
    sput-object v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->NORMAL:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 25
    new-instance v3, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 27
    const-string v5, "AUDIO_BOOK"

    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "AudioBook"

    .line 32
    invoke-direct {v3, v5, v6, v7, v6}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 35
    sput-object v3, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->AUDIO_BOOK:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 37
    new-instance v5, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 39
    const-string v7, "BOOKMARK"

    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "Whacked Bookmark"

    .line 44
    const/4 v10, 0x5

    .line 45
    invoke-direct {v5, v7, v8, v9, v10}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 48
    sput-object v5, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->BOOKMARK:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 50
    new-instance v7, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 52
    const-string v9, "MUSIC_VIDEO"

    .line 54
    const/4 v11, 0x4

    .line 55
    const-string v12, "Music Video"

    .line 57
    const/4 v13, 0x6

    .line 58
    invoke-direct {v7, v9, v11, v12, v13}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 61
    sput-object v7, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->MUSIC_VIDEO:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 63
    new-instance v9, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 65
    const-string v12, "SHORT_FILM"

    .line 67
    const-string v14, "Short Film"

    .line 69
    const/16 v15, 0x9

    .line 71
    invoke-direct {v9, v12, v10, v14, v15}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 74
    sput-object v9, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->SHORT_FILM:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 76
    new-instance v12, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 78
    const-string v14, "TV_SHOW"

    .line 80
    const-string v15, "TV Show"

    .line 82
    const/16 v10, 0xa

    .line 84
    invoke-direct {v12, v14, v13, v15, v10}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 87
    sput-object v12, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->TV_SHOW:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 89
    new-instance v10, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 91
    const-string v14, "BOOKLET"

    .line 93
    const/4 v15, 0x7

    .line 94
    const-string v13, "Booklet"

    .line 96
    const/16 v11, 0xb

    .line 98
    invoke-direct {v10, v14, v15, v13, v11}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 101
    sput-object v10, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->BOOKLET:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 103
    const/16 v11, 0x8

    .line 105
    new-array v11, v11, [Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 107
    aput-object v0, v11, v2

    .line 109
    aput-object v1, v11, v4

    .line 111
    aput-object v3, v11, v6

    .line 113
    aput-object v5, v11, v8

    .line 115
    const/4 v0, 0x4

    .line 116
    aput-object v7, v11, v0

    .line 118
    const/4 v0, 0x5

    .line 119
    aput-object v9, v11, v0

    .line 121
    const/4 v0, 0x6

    .line 122
    aput-object v12, v11, v0

    .line 124
    aput-object v10, v11, v15

    .line 126
    sput-object v11, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->$VALUES:[Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 128
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->description:Ljava/lang/String;

    .line 6
    iput p4, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->id:I

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->$VALUES:[Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->id:I

    .line 3
    return v0
.end method

.method public getIdAsString()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->id:I

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
