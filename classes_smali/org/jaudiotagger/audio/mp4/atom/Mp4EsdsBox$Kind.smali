.class public final enum Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;
.super Ljava/lang/Enum;
.source "Mp4EsdsBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum ADPCM_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum ALAW_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum DOLBY_V3_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum H261_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum H263_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum H264_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum JPEG_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG1_ADTS:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG1_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG2_422_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG2_ADTS_MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG2_HIGH_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG2_MAIN_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG2_SIMPLE_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG2_SNR_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG2_SPATIAL_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG4_ADTS_LOW_COMPLEXITY:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG4_ADTS_MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG4_ADTS_SCALEABLE_SAMPLING:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG4_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG4_AVC_PPS:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG4_AVC_SPS:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MPEG4_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum MULAW_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum PCM_BIG_ENDIAN_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum PCM_LITTLE_ENDIAN_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum PRIVATE_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum PRIVATE_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum V1:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum V2:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum VORBIS_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field public static final enum YV12_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;


# instance fields
.field private id:I


# direct methods
.method public static constructor <clinit>()V
    .registers 35

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 3
    const-string v1, "V1"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->V1:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 12
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 14
    const-string v4, "V2"

    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 20
    sput-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->V2:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 22
    new-instance v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 24
    const-string v6, "MPEG4_VIDEO"

    .line 26
    const/16 v7, 0x20

    .line 28
    invoke-direct {v4, v6, v5, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 31
    sput-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG4_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 33
    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 35
    const-string v8, "MPEG4_AVC_SPS"

    .line 37
    const/4 v9, 0x3

    .line 38
    const/16 v10, 0x21

    .line 40
    invoke-direct {v6, v8, v9, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 43
    sput-object v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG4_AVC_SPS:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 45
    new-instance v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 47
    const-string v10, "MPEG4_AVC_PPS"

    .line 49
    const/4 v11, 0x4

    .line 50
    const/16 v12, 0x22

    .line 52
    invoke-direct {v8, v10, v11, v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 55
    sput-object v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG4_AVC_PPS:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 57
    new-instance v10, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 59
    const-string v12, "MPEG4_AUDIO"

    .line 61
    const/4 v13, 0x5

    .line 62
    const/16 v14, 0x40

    .line 64
    invoke-direct {v10, v12, v13, v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 67
    sput-object v10, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG4_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 69
    new-instance v12, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 71
    const-string v14, "MPEG2_SIMPLE_VIDEO"

    .line 73
    const/4 v15, 0x6

    .line 74
    const/16 v13, 0x60

    .line 76
    invoke-direct {v12, v14, v15, v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 79
    sput-object v12, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG2_SIMPLE_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 81
    new-instance v13, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 83
    const-string v14, "MPEG2_MAIN_VIDEO"

    .line 85
    const/4 v15, 0x7

    .line 86
    const/16 v11, 0x61

    .line 88
    invoke-direct {v13, v14, v15, v11}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 91
    sput-object v13, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG2_MAIN_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 93
    new-instance v11, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 95
    const-string v14, "MPEG2_SNR_VIDEO"

    .line 97
    const/16 v15, 0x8

    .line 99
    const/16 v9, 0x62

    .line 101
    invoke-direct {v11, v14, v15, v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 104
    sput-object v11, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG2_SNR_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 106
    new-instance v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 108
    const-string v14, "MPEG2_SPATIAL_VIDEO"

    .line 110
    const/16 v15, 0x9

    .line 112
    const/16 v5, 0x63

    .line 114
    invoke-direct {v9, v14, v15, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 117
    sput-object v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG2_SPATIAL_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 119
    new-instance v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 121
    const-string v14, "MPEG2_HIGH_VIDEO"

    .line 123
    const/16 v15, 0xa

    .line 125
    const/16 v3, 0x64

    .line 127
    invoke-direct {v5, v14, v15, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 130
    sput-object v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG2_HIGH_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 132
    new-instance v3, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 134
    const-string v14, "MPEG2_422_VIDEO"

    .line 136
    const/16 v15, 0xb

    .line 138
    const/16 v2, 0x65

    .line 140
    invoke-direct {v3, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 143
    sput-object v3, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG2_422_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 145
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 147
    const-string v14, "MPEG4_ADTS_MAIN"

    .line 149
    const/16 v15, 0xc

    .line 151
    const/16 v7, 0x66

    .line 153
    invoke-direct {v2, v14, v15, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 156
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG4_ADTS_MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 158
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 160
    const-string v14, "MPEG4_ADTS_LOW_COMPLEXITY"

    .line 162
    const/16 v15, 0xd

    .line 164
    move-object/from16 v16, v2

    .line 166
    const/16 v2, 0x67

    .line 168
    invoke-direct {v7, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 171
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG4_ADTS_LOW_COMPLEXITY:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 173
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 175
    const-string v14, "MPEG4_ADTS_SCALEABLE_SAMPLING"

    .line 177
    const/16 v15, 0xe

    .line 179
    move-object/from16 v17, v7

    .line 181
    const/16 v7, 0x68

    .line 183
    invoke-direct {v2, v14, v15, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 186
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG4_ADTS_SCALEABLE_SAMPLING:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 188
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 190
    const-string v14, "MPEG2_ADTS_MAIN"

    .line 192
    const/16 v15, 0xf

    .line 194
    move-object/from16 v18, v2

    .line 196
    const/16 v2, 0x69

    .line 198
    invoke-direct {v7, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 201
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG2_ADTS_MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 203
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 205
    const-string v14, "MPEG1_VIDEO"

    .line 207
    const/16 v15, 0x10

    .line 209
    move-object/from16 v19, v7

    .line 211
    const/16 v7, 0x6a

    .line 213
    invoke-direct {v2, v14, v15, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 216
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG1_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 218
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 220
    const-string v14, "MPEG1_ADTS"

    .line 222
    const/16 v15, 0x11

    .line 224
    move-object/from16 v20, v2

    .line 226
    const/16 v2, 0x6b

    .line 228
    invoke-direct {v7, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 231
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MPEG1_ADTS:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 233
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 235
    const-string v14, "JPEG_VIDEO"

    .line 237
    const/16 v15, 0x12

    .line 239
    move-object/from16 v21, v7

    .line 241
    const/16 v7, 0x6c

    .line 243
    invoke-direct {v2, v14, v15, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 246
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->JPEG_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 248
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 250
    const-string v14, "PRIVATE_AUDIO"

    .line 252
    const/16 v15, 0x13

    .line 254
    move-object/from16 v22, v2

    .line 256
    const/16 v2, 0xc0

    .line 258
    invoke-direct {v7, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 261
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->PRIVATE_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 263
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 265
    const-string v14, "PRIVATE_VIDEO"

    .line 267
    const/16 v15, 0x14

    .line 269
    move-object/from16 v23, v7

    .line 271
    const/16 v7, 0xd0

    .line 273
    invoke-direct {v2, v14, v15, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 276
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->PRIVATE_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 278
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 280
    const-string v14, "PCM_LITTLE_ENDIAN_AUDIO"

    .line 282
    const/16 v15, 0x15

    .line 284
    move-object/from16 v24, v2

    .line 286
    const/16 v2, 0xe0

    .line 288
    invoke-direct {v7, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 291
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->PCM_LITTLE_ENDIAN_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 293
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 295
    const-string v14, "VORBIS_AUDIO"

    .line 297
    const/16 v15, 0x16

    .line 299
    move-object/from16 v25, v7

    .line 301
    const/16 v7, 0xe1

    .line 303
    invoke-direct {v2, v14, v15, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 306
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->VORBIS_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 308
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 310
    const-string v14, "DOLBY_V3_AUDIO"

    .line 312
    const/16 v15, 0x17

    .line 314
    move-object/from16 v26, v2

    .line 316
    const/16 v2, 0xe2

    .line 318
    invoke-direct {v7, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 321
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->DOLBY_V3_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 323
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 325
    const-string v14, "ALAW_AUDIO"

    .line 327
    const/16 v15, 0x18

    .line 329
    move-object/from16 v27, v7

    .line 331
    const/16 v7, 0xe3

    .line 333
    invoke-direct {v2, v14, v15, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 336
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->ALAW_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 338
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 340
    const-string v14, "MULAW_AUDIO"

    .line 342
    const/16 v15, 0x19

    .line 344
    move-object/from16 v28, v2

    .line 346
    const/16 v2, 0xe4

    .line 348
    invoke-direct {v7, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 351
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->MULAW_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 353
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 355
    const-string v14, "ADPCM_AUDIO"

    .line 357
    const/16 v15, 0x1a

    .line 359
    move-object/from16 v29, v7

    .line 361
    const/16 v7, 0xe5

    .line 363
    invoke-direct {v2, v14, v15, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 366
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->ADPCM_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 368
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 370
    const-string v14, "PCM_BIG_ENDIAN_AUDIO"

    .line 372
    const/16 v15, 0x1b

    .line 374
    move-object/from16 v30, v2

    .line 376
    const/16 v2, 0xe6

    .line 378
    invoke-direct {v7, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 381
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->PCM_BIG_ENDIAN_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 383
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 385
    const-string v14, "YV12_VIDEO"

    .line 387
    const/16 v15, 0x1c

    .line 389
    move-object/from16 v31, v7

    .line 391
    const/16 v7, 0xf0

    .line 393
    invoke-direct {v2, v14, v15, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 396
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->YV12_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 398
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 400
    const-string v14, "H264_VIDEO"

    .line 402
    const/16 v15, 0x1d

    .line 404
    move-object/from16 v32, v2

    .line 406
    const/16 v2, 0xf1

    .line 408
    invoke-direct {v7, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 411
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->H264_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 413
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 415
    const-string v14, "H263_VIDEO"

    .line 417
    const/16 v15, 0x1e

    .line 419
    move-object/from16 v33, v7

    .line 421
    const/16 v7, 0xf2

    .line 423
    invoke-direct {v2, v14, v15, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 426
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->H263_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 428
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 430
    const-string v14, "H261_VIDEO"

    .line 432
    const/16 v15, 0x1f

    .line 434
    move-object/from16 v34, v2

    .line 436
    const/16 v2, 0xf3

    .line 438
    invoke-direct {v7, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;-><init>(Ljava/lang/String;II)V

    .line 441
    sput-object v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->H261_VIDEO:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 443
    const/16 v2, 0x20

    .line 445
    new-array v2, v2, [Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 447
    const/4 v14, 0x0

    .line 448
    aput-object v0, v2, v14

    .line 450
    const/4 v0, 0x1

    .line 451
    aput-object v1, v2, v0

    .line 453
    const/4 v0, 0x2

    .line 454
    aput-object v4, v2, v0

    .line 456
    const/4 v0, 0x3

    .line 457
    aput-object v6, v2, v0

    .line 459
    const/4 v0, 0x4

    .line 460
    aput-object v8, v2, v0

    .line 462
    const/4 v0, 0x5

    .line 463
    aput-object v10, v2, v0

    .line 465
    const/4 v0, 0x6

    .line 466
    aput-object v12, v2, v0

    .line 468
    const/4 v0, 0x7

    .line 469
    aput-object v13, v2, v0

    .line 471
    const/16 v0, 0x8

    .line 473
    aput-object v11, v2, v0

    .line 475
    const/16 v0, 0x9

    .line 477
    aput-object v9, v2, v0

    .line 479
    const/16 v0, 0xa

    .line 481
    aput-object v5, v2, v0

    .line 483
    const/16 v0, 0xb

    .line 485
    aput-object v3, v2, v0

    .line 487
    const/16 v0, 0xc

    .line 489
    aput-object v16, v2, v0

    .line 491
    const/16 v0, 0xd

    .line 493
    aput-object v17, v2, v0

    .line 495
    const/16 v0, 0xe

    .line 497
    aput-object v18, v2, v0

    .line 499
    const/16 v0, 0xf

    .line 501
    aput-object v19, v2, v0

    .line 503
    const/16 v0, 0x10

    .line 505
    aput-object v20, v2, v0

    .line 507
    const/16 v0, 0x11

    .line 509
    aput-object v21, v2, v0

    .line 511
    const/16 v0, 0x12

    .line 513
    aput-object v22, v2, v0

    .line 515
    const/16 v0, 0x13

    .line 517
    aput-object v23, v2, v0

    .line 519
    const/16 v0, 0x14

    .line 521
    aput-object v24, v2, v0

    .line 523
    const/16 v0, 0x15

    .line 525
    aput-object v25, v2, v0

    .line 527
    const/16 v0, 0x16

    .line 529
    aput-object v26, v2, v0

    .line 531
    const/16 v0, 0x17

    .line 533
    aput-object v27, v2, v0

    .line 535
    const/16 v0, 0x18

    .line 537
    aput-object v28, v2, v0

    .line 539
    const/16 v0, 0x19

    .line 541
    aput-object v29, v2, v0

    .line 543
    const/16 v0, 0x1a

    .line 545
    aput-object v30, v2, v0

    .line 547
    const/16 v0, 0x1b

    .line 549
    aput-object v31, v2, v0

    .line 551
    const/16 v0, 0x1c

    .line 553
    aput-object v32, v2, v0

    .line 555
    const/16 v0, 0x1d

    .line 557
    aput-object v33, v2, v0

    .line 559
    const/16 v0, 0x1e

    .line 561
    aput-object v34, v2, v0

    .line 563
    const/16 v0, 0x1f

    .line 565
    aput-object v7, v2, v0

    .line 567
    sput-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 569
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
    iput p3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->id:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->id:I

    .line 3
    return v0
.end method
