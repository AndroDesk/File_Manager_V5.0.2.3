.class public final enum Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;
.super Ljava/lang/Enum;
.source "Mp4HdlrBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum APPL:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum CRSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum HINT:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum IPSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum M7SM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum MDIR:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum META:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum MJSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum MP7B:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum MP7T:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum OCSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum ODSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum SDSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum SOUN:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum VIDE:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 3
    const-string v1, "ODSM"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "odsm"

    .line 8
    const-string v4, "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->ODSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 15
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 17
    const-string v3, "CRSM"

    .line 19
    const/4 v4, 0x1

    .line 20
    const-string v5, "crsm"

    .line 22
    const-string v6, "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 24
    invoke-direct {v1, v3, v4, v5, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    sput-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->CRSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 29
    new-instance v3, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 31
    const-string v5, "SDSM"

    .line 33
    const/4 v6, 0x2

    .line 34
    const-string v7, "sdsm"

    .line 36
    const-string v8, "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 38
    invoke-direct {v3, v5, v6, v7, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    sput-object v3, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->SDSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 43
    new-instance v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 45
    const-string v7, "M7SM"

    .line 47
    const/4 v8, 0x3

    .line 48
    const-string v9, "m7sm"

    .line 50
    const-string v10, "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 52
    invoke-direct {v5, v7, v8, v9, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    sput-object v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->M7SM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 57
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 59
    const-string v9, "OCSM"

    .line 61
    const/4 v10, 0x4

    .line 62
    const-string v11, "ocsm"

    .line 64
    const-string v12, "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 66
    invoke-direct {v7, v9, v10, v11, v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->OCSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 71
    new-instance v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 73
    const-string v11, "IPSM"

    .line 75
    const/4 v12, 0x5

    .line 76
    const-string v13, "ipsm"

    .line 78
    const-string v14, "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 80
    invoke-direct {v9, v11, v12, v13, v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    sput-object v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->IPSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 85
    new-instance v11, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 87
    const-string v13, "MJSM"

    .line 89
    const/4 v14, 0x6

    .line 90
    const-string v15, "mjsm"

    .line 92
    const-string v12, "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 94
    invoke-direct {v11, v13, v14, v15, v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    sput-object v11, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->MJSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 99
    new-instance v12, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 101
    const-string v13, "MDIR"

    .line 103
    const/4 v15, 0x7

    .line 104
    const-string v14, "mdir"

    .line 106
    const-string v10, "Apple Meta Data iTunes Reader"

    .line 108
    invoke-direct {v12, v13, v15, v14, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    sput-object v12, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->MDIR:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 113
    new-instance v10, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 115
    const-string v13, "MP7B"

    .line 117
    const/16 v14, 0x8

    .line 119
    const-string v15, "mp7b"

    .line 121
    const-string v8, "MPEG-7 binary XML"

    .line 123
    invoke-direct {v10, v13, v14, v15, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    sput-object v10, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->MP7B:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 128
    new-instance v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 130
    const-string v13, "MP7T"

    .line 132
    const/16 v15, 0x9

    .line 134
    const-string v14, "mp7t"

    .line 136
    const-string v6, "MPEG-7 XML"

    .line 138
    invoke-direct {v8, v13, v15, v14, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    sput-object v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->MP7T:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 143
    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 145
    const-string v13, "VIDE"

    .line 147
    const/16 v14, 0xa

    .line 149
    const-string v15, "vide"

    .line 151
    const-string v4, "Video Track"

    .line 153
    invoke-direct {v6, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    sput-object v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->VIDE:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 158
    new-instance v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 160
    const-string v13, "SOUN"

    .line 162
    const/16 v15, 0xb

    .line 164
    const-string v14, "soun"

    .line 166
    const-string v2, "Sound Track"

    .line 168
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    sput-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->SOUN:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 173
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 175
    const-string v13, "HINT"

    .line 177
    const/16 v14, 0xc

    .line 179
    const-string v15, "hint"

    .line 181
    move-object/from16 v16, v4

    .line 183
    const-string v4, "Hint Track"

    .line 185
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->HINT:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 190
    new-instance v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 192
    const-string v13, "APPL"

    .line 194
    const/16 v15, 0xd

    .line 196
    const-string v14, "appl"

    .line 198
    move-object/from16 v17, v2

    .line 200
    const-string v2, "Apple specific"

    .line 202
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    sput-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->APPL:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 207
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 209
    const-string v13, "META"

    .line 211
    const/16 v14, 0xe

    .line 213
    const-string v15, "meta"

    .line 215
    move-object/from16 v18, v4

    .line 217
    const-string v4, "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 219
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->META:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 224
    const/16 v4, 0xf

    .line 226
    new-array v4, v4, [Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 228
    const/4 v13, 0x0

    .line 229
    aput-object v0, v4, v13

    .line 231
    const/4 v0, 0x1

    .line 232
    aput-object v1, v4, v0

    .line 234
    const/4 v0, 0x2

    .line 235
    aput-object v3, v4, v0

    .line 237
    const/4 v0, 0x3

    .line 238
    aput-object v5, v4, v0

    .line 240
    const/4 v0, 0x4

    .line 241
    aput-object v7, v4, v0

    .line 243
    const/4 v0, 0x5

    .line 244
    aput-object v9, v4, v0

    .line 246
    const/4 v0, 0x6

    .line 247
    aput-object v11, v4, v0

    .line 249
    const/4 v0, 0x7

    .line 250
    aput-object v12, v4, v0

    .line 252
    const/16 v0, 0x8

    .line 254
    aput-object v10, v4, v0

    .line 256
    const/16 v0, 0x9

    .line 258
    aput-object v8, v4, v0

    .line 260
    const/16 v0, 0xa

    .line 262
    aput-object v6, v4, v0

    .line 264
    const/16 v0, 0xb

    .line 266
    aput-object v16, v4, v0

    .line 268
    const/16 v0, 0xc

    .line 270
    aput-object v17, v4, v0

    .line 272
    const/16 v0, 0xd

    .line 274
    aput-object v18, v4, v0

    .line 276
    aput-object v2, v4, v14

    .line 278
    sput-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 280
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
    iput-object p3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->id:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->description:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->id:Ljava/lang/String;

    .line 3
    return-object v0
.end method
