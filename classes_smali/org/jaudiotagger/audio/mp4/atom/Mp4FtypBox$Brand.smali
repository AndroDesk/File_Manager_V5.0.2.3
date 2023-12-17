.class public final enum Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;
.super Ljava/lang/Enum;
.source "Mp4FtypBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Brand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum AES_ENCRYPTED_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum APPLE_AAC_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum APPLE_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum APPLE_AUDIO_ONLY:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_12_BASE_MEDIA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_12_MPEG7_METADATA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_1_BASE_MEDIA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_1_VERSION_1:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_1_VERSION_2:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum JVT_AVC:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum QUICKTIME_MOVIE:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum THREEG_MOBILE_MP4:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 3
    const-string v1, "ISO14496_1_BASE_MEDIA"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "isom"

    .line 8
    const-string v4, "ISO 14496-1"

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_BASE_MEDIA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 15
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 17
    const-string v3, "ISO14496_12_BASE_MEDIA"

    .line 19
    const/4 v5, 0x1

    .line 20
    const-string v6, "iso2"

    .line 22
    const-string v7, "ISO 14496-12"

    .line 24
    invoke-direct {v1, v3, v5, v6, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    sput-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_12_BASE_MEDIA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 29
    new-instance v3, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 31
    const-string v6, "ISO14496_1_VERSION_1"

    .line 33
    const/4 v7, 0x2

    .line 34
    const-string v8, "mp41"

    .line 36
    invoke-direct {v3, v6, v7, v8, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    sput-object v3, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_VERSION_1:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 41
    new-instance v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 43
    const-string v6, "ISO14496_1_VERSION_2"

    .line 45
    const/4 v8, 0x3

    .line 46
    const-string v9, "mp42"

    .line 48
    const-string v10, "ISO 14496-2:Multi track with BIFS scenes"

    .line 50
    invoke-direct {v4, v6, v8, v9, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    sput-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_VERSION_2:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 55
    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 57
    const-string v9, "QUICKTIME_MOVIE"

    .line 59
    const/4 v10, 0x4

    .line 60
    const-string v11, "qt  "

    .line 62
    const-string v12, "Original Quicktime"

    .line 64
    invoke-direct {v6, v9, v10, v11, v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    sput-object v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->QUICKTIME_MOVIE:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 69
    new-instance v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 71
    const-string v11, "JVT_AVC"

    .line 73
    const/4 v12, 0x5

    .line 74
    const-string v13, "avc1"

    .line 76
    const-string v14, "JVT"

    .line 78
    invoke-direct {v9, v11, v12, v13, v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    sput-object v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->JVT_AVC:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 83
    new-instance v11, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 85
    const-string v13, "THREEG_MOBILE_MP4"

    .line 87
    const/4 v14, 0x6

    .line 88
    const-string v15, "MPA "

    .line 90
    const-string v12, "3G Mobile"

    .line 92
    invoke-direct {v11, v13, v14, v15, v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    sput-object v11, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->THREEG_MOBILE_MP4:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 97
    new-instance v12, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 99
    const-string v13, "APPLE_AAC_AUDIO"

    .line 101
    const/4 v15, 0x7

    .line 102
    const-string v14, "M4P "

    .line 104
    const-string v10, "Apple Audio"

    .line 106
    invoke-direct {v12, v13, v15, v14, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    sput-object v12, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AAC_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 111
    new-instance v13, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 113
    const-string v14, "AES_ENCRYPTED_AUDIO"

    .line 115
    const/16 v15, 0x8

    .line 117
    const-string v8, "M4B "

    .line 119
    const-string v7, "Apple encrypted Audio"

    .line 121
    invoke-direct {v13, v14, v15, v8, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    sput-object v13, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->AES_ENCRYPTED_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 126
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 128
    const-string v8, "APPLE_AUDIO"

    .line 130
    const/16 v14, 0x9

    .line 132
    const-string v15, "mp71"

    .line 134
    invoke-direct {v7, v8, v14, v15, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 139
    new-instance v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 141
    const-string v10, "ISO14496_12_MPEG7_METADATA"

    .line 143
    const/16 v14, 0xa

    .line 145
    const-string v5, "MAIN_SYNTHESIS"

    .line 147
    invoke-direct {v8, v10, v14, v15, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    sput-object v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_12_MPEG7_METADATA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 152
    new-instance v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 154
    const-string v10, "APPLE_AUDIO_ONLY"

    .line 156
    const/16 v15, 0xb

    .line 158
    const-string v14, "M4A "

    .line 160
    const-string v2, "M4A Audio"

    .line 162
    invoke-direct {v5, v10, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    sput-object v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AUDIO_ONLY:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 167
    const/16 v2, 0xc

    .line 169
    new-array v2, v2, [Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 171
    const/4 v10, 0x0

    .line 172
    aput-object v0, v2, v10

    .line 174
    const/4 v0, 0x1

    .line 175
    aput-object v1, v2, v0

    .line 177
    const/4 v0, 0x2

    .line 178
    aput-object v3, v2, v0

    .line 180
    const/4 v0, 0x3

    .line 181
    aput-object v4, v2, v0

    .line 183
    const/4 v0, 0x4

    .line 184
    aput-object v6, v2, v0

    .line 186
    const/4 v0, 0x5

    .line 187
    aput-object v9, v2, v0

    .line 189
    const/4 v0, 0x6

    .line 190
    aput-object v11, v2, v0

    .line 192
    const/4 v0, 0x7

    .line 193
    aput-object v12, v2, v0

    .line 195
    const/16 v0, 0x8

    .line 197
    aput-object v13, v2, v0

    .line 199
    const/16 v0, 0x9

    .line 201
    aput-object v7, v2, v0

    .line 203
    const/16 v0, 0xa

    .line 205
    aput-object v8, v2, v0

    .line 207
    aput-object v5, v2, v15

    .line 209
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 211
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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->id:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->description:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->id:Ljava/lang/String;

    .line 3
    return-object v0
.end method
