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

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 3
    const-string v1, "ITUNES"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->ITUNES:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 11
    new-instance v1, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 13
    const-string v3, "MEDIAPLAYER"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIAPLAYER:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 21
    new-instance v3, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 23
    const-string v5, "WINAMP"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lorg/jaudiotagger/tag/reference/Tagger;->WINAMP:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 31
    new-instance v5, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 33
    const-string v7, "MP3TAG"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lorg/jaudiotagger/tag/reference/Tagger;->MP3TAG:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 41
    new-instance v7, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 43
    const-string v9, "MEDIA_MONKEY"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 51
    new-instance v9, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 53
    const-string v11, "TAG_AND_RENAME"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lorg/jaudiotagger/tag/reference/Tagger;->TAG_AND_RENAME:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 61
    new-instance v11, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 63
    const-string v13, "PICARD"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lorg/jaudiotagger/tag/reference/Tagger;->PICARD:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 71
    new-instance v13, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 73
    const-string v15, "JAIKOZ"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lorg/jaudiotagger/tag/reference/Tagger;->JAIKOZ:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 81
    new-instance v15, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 83
    const-string v14, "TAGSCANNER"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lorg/jaudiotagger/tag/reference/Tagger;->TAGSCANNER:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 92
    new-instance v14, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 94
    const-string v12, "XIPH"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Lorg/jaudiotagger/tag/reference/Tagger;->XIPH:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 103
    new-instance v12, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 105
    const-string v10, "FOOBAR2000"

    .line 107
    const/16 v8, 0xa

    .line 109
    invoke-direct {v12, v10, v8}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v12, Lorg/jaudiotagger/tag/reference/Tagger;->FOOBAR2000:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 114
    new-instance v10, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 116
    const-string v8, "BEATUNES"

    .line 118
    const/16 v6, 0xb

    .line 120
    invoke-direct {v10, v8, v6}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;I)V

    .line 123
    sput-object v10, Lorg/jaudiotagger/tag/reference/Tagger;->BEATUNES:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 125
    const/16 v8, 0xc

    .line 127
    new-array v8, v8, [Lorg/jaudiotagger/tag/reference/Tagger;

    .line 129
    aput-object v0, v8, v2

    .line 131
    aput-object v1, v8, v4

    .line 133
    const/4 v0, 0x2

    .line 134
    aput-object v3, v8, v0

    .line 136
    const/4 v0, 0x3

    .line 137
    aput-object v5, v8, v0

    .line 139
    const/4 v0, 0x4

    .line 140
    aput-object v7, v8, v0

    .line 142
    const/4 v0, 0x5

    .line 143
    aput-object v9, v8, v0

    .line 145
    const/4 v0, 0x6

    .line 146
    aput-object v11, v8, v0

    .line 148
    const/4 v0, 0x7

    .line 149
    aput-object v13, v8, v0

    .line 151
    const/16 v0, 0x8

    .line 153
    aput-object v15, v8, v0

    .line 155
    const/16 v0, 0x9

    .line 157
    aput-object v14, v8, v0

    .line 159
    const/16 v0, 0xa

    .line 161
    aput-object v12, v8, v0

    .line 163
    aput-object v10, v8, v6

    .line 165
    sput-object v8, Lorg/jaudiotagger/tag/reference/Tagger;->$VALUES:[Lorg/jaudiotagger/tag/reference/Tagger;

    .line 167
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/reference/Tagger;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/tag/reference/Tagger;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/tag/reference/Tagger;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->$VALUES:[Lorg/jaudiotagger/tag/reference/Tagger;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/reference/Tagger;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/tag/reference/Tagger;

    .line 9
    return-object v0
.end method
