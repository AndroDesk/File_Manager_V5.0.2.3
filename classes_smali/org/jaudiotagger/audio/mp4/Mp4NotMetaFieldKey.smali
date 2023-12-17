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

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 3
    const-string v1, "FTYP"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "ftyp"

    .line 8
    const-string v4, "File type Identification"

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->FTYP:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 15
    new-instance v1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 17
    const-string v3, "MOOV"

    .line 19
    const/4 v4, 0x1

    .line 20
    const-string v5, "moov"

    .line 22
    const-string v6, "Top level Presentation"

    .line 24
    invoke-direct {v1, v3, v4, v5, v6}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    sput-object v1, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MOOV:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 29
    new-instance v3, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 31
    const-string v5, "MVHD"

    .line 33
    const/4 v6, 0x2

    .line 34
    const-string v7, "mvhd"

    .line 36
    const-string v8, "Movie Header"

    .line 38
    invoke-direct {v3, v5, v6, v7, v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    sput-object v3, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MVHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 43
    new-instance v5, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 45
    const-string v7, "UDTA"

    .line 47
    const/4 v8, 0x3

    .line 48
    const-string v9, "udta"

    .line 50
    const-string v10, "User Data"

    .line 52
    invoke-direct {v5, v7, v8, v9, v10}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    sput-object v5, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 57
    new-instance v7, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 59
    const-string v9, "META"

    .line 61
    const/4 v10, 0x4

    .line 62
    const-string v11, "meta"

    .line 64
    const-string v12, "MetaInformation"

    .line 66
    invoke-direct {v7, v9, v10, v11, v12}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    sput-object v7, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->META:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 71
    new-instance v9, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 73
    const-string v11, "ILST"

    .line 75
    const/4 v12, 0x5

    .line 76
    const-string v13, "ilst"

    .line 78
    const-string v14, "MetaInformation Optional"

    .line 80
    invoke-direct {v9, v11, v12, v13, v14}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    sput-object v9, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 85
    new-instance v11, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 87
    const-string v13, "MDAT"

    .line 89
    const/4 v14, 0x6

    .line 90
    const-string v15, "mdat"

    .line 92
    const-string v12, "Audio Data"

    .line 94
    invoke-direct {v11, v13, v14, v15, v12}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    sput-object v11, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MDAT:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 99
    new-instance v12, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 101
    const-string v13, "MDIA"

    .line 103
    const/4 v15, 0x7

    .line 104
    const-string v14, "mdia"

    .line 106
    const-string v10, "Media"

    .line 108
    invoke-direct {v12, v13, v15, v14, v10}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    sput-object v12, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MDIA:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 113
    new-instance v10, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 115
    const-string v13, "MDHD"

    .line 117
    const/16 v14, 0x8

    .line 119
    const-string v15, "mdhd"

    .line 121
    const-string v8, "Media Header"

    .line 123
    invoke-direct {v10, v13, v14, v15, v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    sput-object v10, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MDHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 128
    new-instance v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 130
    const-string v13, "TKHD"

    .line 132
    const/16 v15, 0x9

    .line 134
    const-string v14, "tkhd"

    .line 136
    const-string v6, "Track Header"

    .line 138
    invoke-direct {v8, v13, v15, v14, v6}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    sput-object v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->TKHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 143
    new-instance v6, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 145
    const-string v13, "FREE"

    .line 147
    const/16 v14, 0xa

    .line 149
    const-string v15, "free"

    .line 151
    const-string v4, "Padding"

    .line 153
    invoke-direct {v6, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    sput-object v6, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->FREE:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 158
    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 160
    const-string v13, "TRAK"

    .line 162
    const/16 v15, 0xb

    .line 164
    const-string v14, "trak"

    .line 166
    const-string v2, "Track"

    .line 168
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 173
    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 175
    const-string v13, "SMHD"

    .line 177
    const/16 v14, 0xc

    .line 179
    const-string v15, "smhd"

    .line 181
    move-object/from16 v16, v4

    .line 183
    const-string v4, "Sound Media Header"

    .line 185
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->SMHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 190
    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 192
    const-string v13, "NMHD"

    .line 194
    const/16 v15, 0xd

    .line 196
    const-string v14, "nmhd"

    .line 198
    move-object/from16 v17, v2

    .line 200
    const-string v2, "Media Stream Header"

    .line 202
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->NMHD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 207
    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 209
    const-string v13, "STBL"

    .line 211
    const/16 v14, 0xe

    .line 213
    const-string v15, "stbl"

    .line 215
    move-object/from16 v18, v4

    .line 217
    const-string v4, "Sample Table"

    .line 219
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->STBL:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 224
    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 226
    const-string v13, "STSD"

    .line 228
    const/16 v15, 0xf

    .line 230
    const-string v14, "stsd"

    .line 232
    move-object/from16 v19, v2

    .line 234
    const-string v2, "Sample Description"

    .line 236
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 239
    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->STSD:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 241
    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 243
    const-string v13, "MP4A"

    .line 245
    const/16 v14, 0x10

    .line 247
    const-string v15, "mp4a"

    .line 249
    move-object/from16 v20, v4

    .line 251
    const-string v4, "AAC Audio"

    .line 253
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MP4A:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 258
    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 260
    const-string v13, "ESDS"

    .line 262
    const/16 v15, 0x11

    .line 264
    const-string v14, "esds"

    .line 266
    move-object/from16 v21, v2

    .line 268
    const-string v2, "Track codec specific information"

    .line 270
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ESDS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 275
    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 277
    const-string v13, "MINF"

    .line 279
    const/16 v14, 0x12

    .line 281
    const-string v15, "minf"

    .line 283
    move-object/from16 v22, v4

    .line 285
    const-string v4, "Media Information"

    .line 287
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 290
    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MINF:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 292
    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 294
    const-string v13, "STCO"

    .line 296
    const/16 v15, 0x13

    .line 298
    const-string v14, "stco"

    .line 300
    move-object/from16 v23, v2

    .line 302
    const-string v2, "Offsets into Audio Data"

    .line 304
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->STCO:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 309
    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 311
    const-string v13, "DRMS"

    .line 313
    const/16 v14, 0x14

    .line 315
    const-string v15, "drms"

    .line 317
    move-object/from16 v24, v4

    .line 319
    const-string v4, "DRM protected File"

    .line 321
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->DRMS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 326
    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 328
    const-string v13, "ALAC"

    .line 330
    const/16 v15, 0x15

    .line 332
    const-string v14, "alac"

    .line 334
    move-object/from16 v25, v2

    .line 336
    const-string v2, "Apple Lossless File"

    .line 338
    invoke-direct {v4, v13, v15, v14, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 341
    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ALAC:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 343
    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 345
    const-string v13, "HDLR"

    .line 347
    const/16 v14, 0x16

    .line 349
    const-string v15, "hdlr"

    .line 351
    move-object/from16 v26, v4

    .line 353
    const-string v4, "Metadata Handler"

    .line 355
    invoke-direct {v2, v13, v14, v15, v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->HDLR:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 360
    new-instance v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 362
    const-string v13, "TAGS"

    .line 364
    const/16 v14, 0x17

    .line 366
    const-string v15, "tags"

    .line 368
    move-object/from16 v27, v2

    .line 370
    const-string v2, "Nero Encoder Tags"

    .line 372
    invoke-direct {v4, v13, v14, v15, v2}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    sput-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->TAGS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 377
    const/16 v2, 0x18

    .line 379
    new-array v2, v2, [Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 381
    const/4 v13, 0x0

    .line 382
    aput-object v0, v2, v13

    .line 384
    const/4 v0, 0x1

    .line 385
    aput-object v1, v2, v0

    .line 387
    const/4 v0, 0x2

    .line 388
    aput-object v3, v2, v0

    .line 390
    const/4 v0, 0x3

    .line 391
    aput-object v5, v2, v0

    .line 393
    const/4 v0, 0x4

    .line 394
    aput-object v7, v2, v0

    .line 396
    const/4 v0, 0x5

    .line 397
    aput-object v9, v2, v0

    .line 399
    const/4 v0, 0x6

    .line 400
    aput-object v11, v2, v0

    .line 402
    const/4 v0, 0x7

    .line 403
    aput-object v12, v2, v0

    .line 405
    const/16 v0, 0x8

    .line 407
    aput-object v10, v2, v0

    .line 409
    const/16 v0, 0x9

    .line 411
    aput-object v8, v2, v0

    .line 413
    const/16 v0, 0xa

    .line 415
    aput-object v6, v2, v0

    .line 417
    const/16 v0, 0xb

    .line 419
    aput-object v16, v2, v0

    .line 421
    const/16 v0, 0xc

    .line 423
    aput-object v17, v2, v0

    .line 425
    const/16 v0, 0xd

    .line 427
    aput-object v18, v2, v0

    .line 429
    const/16 v0, 0xe

    .line 431
    aput-object v19, v2, v0

    .line 433
    const/16 v0, 0xf

    .line 435
    aput-object v20, v2, v0

    .line 437
    const/16 v0, 0x10

    .line 439
    aput-object v21, v2, v0

    .line 441
    const/16 v0, 0x11

    .line 443
    aput-object v22, v2, v0

    .line 445
    const/16 v0, 0x12

    .line 447
    aput-object v23, v2, v0

    .line 449
    const/16 v0, 0x13

    .line 451
    aput-object v24, v2, v0

    .line 453
    const/16 v0, 0x14

    .line 455
    aput-object v25, v2, v0

    .line 457
    const/16 v0, 0x15

    .line 459
    aput-object v26, v2, v0

    .line 461
    const/16 v0, 0x16

    .line 463
    aput-object v27, v2, v0

    .line 465
    const/16 v0, 0x17

    .line 467
    aput-object v4, v2, v0

    .line 469
    sput-object v2, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->$VALUES:[Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 471
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
    iput-object p3, p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->fieldName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->description:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->$VALUES:[Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->fieldName:Ljava/lang/String;

    .line 3
    return-object v0
.end method
