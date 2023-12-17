.class public final enum Lorg/jaudiotagger/audio/SupportedFileFormat;
.super Ljava/lang/Enum;
.source "SupportedFileFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/SupportedFileFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum FLAC:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum M4A:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum M4B:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum M4P:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum MP3:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum MP4:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum OGG:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum RA:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum RM:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum WAV:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum WMA:Lorg/jaudiotagger/audio/SupportedFileFormat;


# instance fields
.field private filesuffix:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 3
    const-string v1, "OGG"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "ogg"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->OGG:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 13
    new-instance v1, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 15
    const-string v3, "MP3"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "mp3"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP3:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 25
    new-instance v3, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 27
    const-string v5, "FLAC"

    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "flac"

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    sput-object v3, Lorg/jaudiotagger/audio/SupportedFileFormat;->FLAC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 37
    new-instance v5, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 39
    const-string v7, "MP4"

    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "mp4"

    .line 44
    invoke-direct {v5, v7, v8, v9}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    sput-object v5, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP4:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 49
    new-instance v7, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 51
    const-string v9, "M4A"

    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "m4a"

    .line 56
    invoke-direct {v7, v9, v10, v11}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    sput-object v7, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4A:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 61
    new-instance v9, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 63
    const-string v11, "M4P"

    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "m4p"

    .line 68
    invoke-direct {v9, v11, v12, v13}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    sput-object v9, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4P:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 73
    new-instance v11, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 75
    const-string v13, "WMA"

    .line 77
    const/4 v14, 0x6

    .line 78
    const-string v15, "wma"

    .line 80
    invoke-direct {v11, v13, v14, v15}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    sput-object v11, Lorg/jaudiotagger/audio/SupportedFileFormat;->WMA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 85
    new-instance v13, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 87
    const-string v15, "WAV"

    .line 89
    const/4 v14, 0x7

    .line 90
    const-string v12, "wav"

    .line 92
    invoke-direct {v13, v15, v14, v12}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    sput-object v13, Lorg/jaudiotagger/audio/SupportedFileFormat;->WAV:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 97
    new-instance v12, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 99
    const-string v15, "RA"

    .line 101
    const/16 v14, 0x8

    .line 103
    const-string v10, "ra"

    .line 105
    invoke-direct {v12, v15, v14, v10}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    sput-object v12, Lorg/jaudiotagger/audio/SupportedFileFormat;->RA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 110
    new-instance v10, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 112
    const-string v15, "RM"

    .line 114
    const/16 v14, 0x9

    .line 116
    const-string v8, "rm"

    .line 118
    invoke-direct {v10, v15, v14, v8}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    sput-object v10, Lorg/jaudiotagger/audio/SupportedFileFormat;->RM:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 123
    new-instance v8, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 125
    const-string v15, "M4B"

    .line 127
    const/16 v14, 0xa

    .line 129
    const-string v6, "m4b"

    .line 131
    invoke-direct {v8, v15, v14, v6}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    sput-object v8, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4B:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 136
    const/16 v6, 0xb

    .line 138
    new-array v6, v6, [Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 140
    aput-object v0, v6, v2

    .line 142
    aput-object v1, v6, v4

    .line 144
    const/4 v0, 0x2

    .line 145
    aput-object v3, v6, v0

    .line 147
    const/4 v0, 0x3

    .line 148
    aput-object v5, v6, v0

    .line 150
    const/4 v0, 0x4

    .line 151
    aput-object v7, v6, v0

    .line 153
    const/4 v0, 0x5

    .line 154
    aput-object v9, v6, v0

    .line 156
    const/4 v0, 0x6

    .line 157
    aput-object v11, v6, v0

    .line 159
    const/4 v0, 0x7

    .line 160
    aput-object v13, v6, v0

    .line 162
    const/16 v0, 0x8

    .line 164
    aput-object v12, v6, v0

    .line 166
    const/16 v0, 0x9

    .line 168
    aput-object v10, v6, v0

    .line 170
    aput-object v8, v6, v14

    .line 172
    sput-object v6, Lorg/jaudiotagger/audio/SupportedFileFormat;->$VALUES:[Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 174
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lorg/jaudiotagger/audio/SupportedFileFormat;->filesuffix:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/SupportedFileFormat;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/audio/SupportedFileFormat;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->$VALUES:[Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/SupportedFileFormat;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getFilesuffix()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/SupportedFileFormat;->filesuffix:Ljava/lang/String;

    .line 3
    return-object v0
.end method
