.class public Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;
.super Ljava/lang/Object;
.source "FileMimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;
    }
.end annotation


# static fields
.field private static final MAX_END_LENGTH:I

.field private static final MAX_HEAD_LENGTH:I

.field private static final MIMES:[Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

.field public static final TAG:Ljava/lang/String; = "FileMimeUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    const/16 v0, 0x13

    .line 3
    new-array v0, v0, [Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 5
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v3, v2, [B

    .line 10
    fill-array-data v3, :array_156

    .line 13
    new-array v4, v2, [B

    .line 15
    fill-array-data v4, :array_15c

    .line 18
    const-string v5, "image/jpeg"

    .line 20
    invoke-direct {v1, v5, v3, v4}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object v1, v0, v3

    .line 26
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 28
    new-array v4, v2, [B

    .line 30
    fill-array-data v4, :array_162

    .line 33
    new-array v6, v2, [B

    .line 35
    fill-array-data v6, :array_168

    .line 38
    invoke-direct {v1, v5, v4, v6}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 41
    const/4 v4, 0x1

    .line 42
    aput-object v1, v0, v4

    .line 44
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 46
    const/16 v4, 0x8

    .line 48
    new-array v5, v4, [B

    .line 50
    fill-array-data v5, :array_16e

    .line 53
    const-string v6, "image/png"

    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-direct {v1, v6, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 59
    aput-object v1, v0, v2

    .line 61
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 63
    const/4 v5, 0x5

    .line 64
    new-array v6, v5, [B

    .line 66
    fill-array-data v6, :array_176

    .line 69
    const-string v8, "image/tga"

    .line 71
    invoke-direct {v1, v8, v6, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 74
    const/4 v6, 0x3

    .line 75
    aput-object v1, v0, v6

    .line 77
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 79
    new-array v6, v5, [B

    .line 81
    fill-array-data v6, :array_17e

    .line 84
    invoke-direct {v1, v8, v6, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 87
    const/4 v6, 0x4

    .line 88
    aput-object v1, v0, v6

    .line 90
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 92
    const/4 v6, 0x6

    .line 93
    new-array v8, v6, [B

    .line 95
    fill-array-data v8, :array_186

    .line 98
    const-string v9, "image/gif"

    .line 100
    invoke-direct {v1, v9, v8, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 103
    aput-object v1, v0, v5

    .line 105
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 107
    new-array v5, v6, [B

    .line 109
    fill-array-data v5, :array_18e

    .line 112
    invoke-direct {v1, v9, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 115
    aput-object v1, v0, v6

    .line 117
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 119
    new-array v5, v2, [B

    .line 121
    fill-array-data v5, :array_196

    .line 124
    const-string v6, "image/bmp"

    .line 126
    invoke-direct {v1, v6, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 129
    const/4 v5, 0x7

    .line 130
    aput-object v1, v0, v5

    .line 132
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 134
    new-array v5, v2, [B

    .line 136
    fill-array-data v5, :array_19c

    .line 139
    const-string v6, "image/tiff"

    .line 141
    invoke-direct {v1, v6, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 144
    aput-object v1, v0, v4

    .line 146
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 148
    new-array v2, v2, [B

    .line 150
    fill-array-data v2, :array_1a2

    .line 153
    invoke-direct {v1, v6, v2, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 156
    const/16 v2, 0x9

    .line 158
    aput-object v1, v0, v2

    .line 160
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 162
    const/16 v2, 0xc

    .line 164
    new-array v4, v2, [B

    .line 166
    fill-array-data v4, :array_1a8

    .line 169
    const-string v5, "video/3gpp"

    .line 171
    invoke-direct {v1, v5, v4, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 174
    const/16 v4, 0xa

    .line 176
    aput-object v1, v0, v4

    .line 178
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 180
    new-array v5, v2, [B

    .line 182
    fill-array-data v5, :array_1b2

    .line 185
    const-string v6, "video/mp4"

    .line 187
    invoke-direct {v1, v6, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 190
    const/16 v5, 0xb

    .line 192
    aput-object v1, v0, v5

    .line 194
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 196
    new-array v8, v2, [B

    .line 198
    fill-array-data v8, :array_1bc

    .line 201
    invoke-direct {v1, v6, v8, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 204
    aput-object v1, v0, v2

    .line 206
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 208
    new-array v5, v5, [B

    .line 210
    fill-array-data v5, :array_1c6

    .line 213
    invoke-direct {v1, v6, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 216
    const/16 v5, 0xd

    .line 218
    aput-object v1, v0, v5

    .line 220
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 222
    new-array v5, v2, [B

    .line 224
    fill-array-data v5, :array_1d0

    .line 227
    const-string v8, "video/3gp"

    .line 229
    invoke-direct {v1, v8, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 232
    const/16 v5, 0xe

    .line 234
    aput-object v1, v0, v5

    .line 236
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 238
    new-array v4, v4, [B

    .line 240
    fill-array-data v4, :array_1da

    .line 243
    const-string v5, "video/quicktime"

    .line 245
    invoke-direct {v1, v5, v4, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 248
    const/16 v4, 0xf

    .line 250
    aput-object v1, v0, v4

    .line 252
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 254
    new-array v4, v2, [B

    .line 256
    fill-array-data v4, :array_1e4

    .line 259
    invoke-direct {v1, v6, v4, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 262
    const/16 v4, 0x10

    .line 264
    aput-object v1, v0, v4

    .line 266
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 268
    new-array v4, v2, [B

    .line 270
    fill-array-data v4, :array_1ee

    .line 273
    invoke-direct {v1, v5, v4, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 276
    const/16 v4, 0x11

    .line 278
    aput-object v1, v0, v4

    .line 280
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 282
    new-array v2, v2, [B

    .line 284
    fill-array-data v2, :array_1f8

    .line 287
    invoke-direct {v1, v6, v2, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    .line 290
    const/16 v2, 0x12

    .line 292
    aput-object v1, v0, v2

    .line 294
    sput-object v0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->MIMES:[Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 296
    array-length v1, v0

    .line 297
    move v2, v3

    .line 298
    move v4, v2

    .line 299
    :goto_12a
    if-ge v3, v1, :cond_151

    .line 301
    aget-object v5, v0, v3

    .line 303
    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->hasHead()Z

    .line 306
    move-result v6

    .line 307
    if-eqz v6, :cond_13e

    .line 309
    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getHeadLength()I

    .line 312
    move-result v6

    .line 313
    if-le v6, v2, :cond_13e

    .line 315
    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getHeadLength()I

    .line 318
    move-result v2

    .line 319
    :cond_13e
    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->hasEnd()Z

    .line 322
    move-result v6

    .line 323
    if-eqz v6, :cond_14e

    .line 325
    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getEndLength()I

    .line 328
    move-result v6

    .line 329
    if-le v6, v4, :cond_14e

    .line 331
    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getEndLength()I

    .line 334
    move-result v4

    .line 335
    :cond_14e
    add-int/lit8 v3, v3, 0x1

    .line 337
    goto :goto_12a

    .line 338
    :cond_151
    sput v2, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->MAX_HEAD_LENGTH:I

    .line 340
    sput v4, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->MAX_END_LENGTH:I

    .line 342
    return-void

    .line 343
    :array_156
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    .line 348
    nop

    .line 349
    :array_15c
    .array-data 1
        -0x1t
        -0x27t
    .end array-data

    .line 354
    nop

    .line 355
    :array_162
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    .line 360
    nop

    .line 361
    :array_168
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 366
    nop

    .line 367
    :array_16e
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    .line 375
    :array_176
    .array-data 1
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
    .end array-data

    .line 382
    nop

    .line 383
    :array_17e
    .array-data 1
        0x0t
        0x0t
        0x10t
        0x0t
        0x0t
    .end array-data

    .line 390
    nop

    .line 391
    :array_186
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x37t
        0x61t
    .end array-data

    .line 398
    nop

    .line 399
    :array_18e
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x39t
        0x61t
    .end array-data

    .line 406
    nop

    .line 407
    :array_196
    .array-data 1
        0x42t
        0x4dt
    .end array-data

    .line 412
    nop

    .line 413
    :array_19c
    .array-data 1
        0x4dt
        0x4dt
    .end array-data

    .line 418
    nop

    .line 419
    :array_1a2
    .array-data 1
        0x49t
        0x49t
    .end array-data

    .line 424
    nop

    .line 425
    :array_1a8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x69t
        0x73t
        0x6ft
        0x6dt
        0x33t
        0x67t
        0x70t
        0x34t
    .end array-data

    .line 435
    :array_1b2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x18t
        0x66t
        0x74t
        0x79t
        0x70t
        0x69t
        0x73t
        0x6ft
        0x6dt
    .end array-data

    .line 445
    :array_1bc
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x18t
        0x66t
        0x74t
        0x79t
        0x70t
        0x6dt
        0x70t
        0x34t
        0x32t
    .end array-data

    .line 455
    :array_1c6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x18t
        0x66t
        0x74t
        0x79t
        0x70t
        0x33t
        0x67t
        0x70t
    .end array-data

    .line 465
    :array_1d0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1ct
        0x66t
        0x74t
        0x79t
        0x70t
        0x33t
        0x67t
        0x70t
        0x34t
    .end array-data

    .line 475
    :array_1da
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x14t
        0x66t
        0x74t
        0x79t
        0x70t
        0x71t
        0x74t
    .end array-data

    .line 484
    nop

    .line 485
    :array_1e4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x20t
        0x66t
        0x74t
        0x79t
        0x70t
        0x61t
        0x76t
        0x63t
        0x31t
    .end array-data

    .line 495
    :array_1ee
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1ct
        0x66t
        0x74t
        0x79t
        0x70t
        0x6dt
        0x70t
        0x34t
        0x32t
    .end array-data

    .line 505
    :array_1f8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x20t
        0x66t
        0x74t
        0x79t
        0x70t
        0x69t
        0x73t
        0x6ft
        0x6dt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1b

    .line 7
    const/16 v0, 0x2f

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x2e

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 18
    move-result v1

    .line 19
    if-le v1, v0, :cond_1b

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    const-string p0, ""

    .line 30
    :goto_1d
    return-object p0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->rawGetMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p0

    .line 6
    :catch_5
    move-exception p0

    .line 7
    const-string v0, "FileMimeUtils"

    .line 9
    const-string v1, "rawGetMimeType"

    .line 11
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method private static rawGetMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 18

    .line 1
    const-string v1, "close image file failed."

    .line 3
    const-string v2, "FileMimeUtils"

    .line 5
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 7
    const-string v0, "r"

    .line 9
    move-object/from16 v4, p0

    .line 11
    invoke-direct {v3, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget v0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->MAX_HEAD_LENGTH:I

    .line 16
    new-array v4, v0, [B

    .line 18
    sget v5, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->MAX_END_LENGTH:I

    .line 20
    new-array v6, v5, [B

    .line 22
    const-wide/16 v7, 0x0

    .line 24
    :try_start_17
    invoke-virtual {v3, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 27
    const/4 v9, 0x0

    .line 28
    invoke-virtual {v3, v4, v9, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 31
    move-result v0

    .line 32
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    .line 35
    move-result-wide v10

    .line 36
    int-to-long v12, v5

    .line 37
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 40
    move-result-wide v12

    .line 41
    cmp-long v5, v12, v7

    .line 43
    const/4 v14, 0x0

    .line 44
    if-ltz v5, :cond_a3

    .line 46
    const-wide/32 v15, 0x7fffffff

    .line 49
    cmp-long v15, v12, v15

    .line 51
    if-lez v15, :cond_36

    .line 53
    goto/16 :goto_a3

    .line 55
    :cond_36
    if-nez v5, :cond_47

    .line 57
    const-string v0, "endBufferedLength is 0, just return null mime type"

    .line 59
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_c6

    .line 62
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 65
    goto :goto_46

    .line 66
    :catch_41
    move-exception v0

    .line 67
    move-object v3, v0

    .line 68
    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :goto_46
    return-object v14

    .line 72
    :cond_47
    sub-long/2addr v10, v12

    .line 73
    :try_start_48
    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 76
    long-to-int v5, v12

    .line 77
    invoke-virtual {v3, v6, v9, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 80
    move-result v5

    .line 81
    int-to-long v10, v5

    .line 82
    cmp-long v5, v12, v10

    .line 84
    if-eqz v5, :cond_56

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move-wide v7, v12

    .line 88
    :goto_57
    sget-object v5, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->MIMES:[Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    .line 90
    array-length v10, v5

    .line 91
    :goto_5a
    if-ge v9, v10, :cond_99

    .line 93
    aget-object v11, v5, v9

    .line 95
    invoke-virtual {v11}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->hasHead()Z

    .line 98
    move-result v12

    .line 99
    if-eqz v12, :cond_72

    .line 101
    invoke-virtual {v11}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getHeadLength()I

    .line 104
    move-result v12

    .line 105
    if-ge v0, v12, :cond_6b

    .line 107
    goto :goto_88

    .line 108
    :cond_6b
    invoke-virtual {v11, v4}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->isHeadRight([B)Z

    .line 111
    move-result v12

    .line 112
    if-nez v12, :cond_72

    .line 114
    goto :goto_88

    .line 115
    :cond_72
    invoke-virtual {v11}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->hasEnd()Z

    .line 118
    move-result v12

    .line 119
    if-eqz v12, :cond_8b

    .line 121
    invoke-virtual {v11}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getEndLength()I

    .line 124
    move-result v12

    .line 125
    int-to-long v12, v12

    .line 126
    cmp-long v12, v7, v12

    .line 128
    if-gez v12, :cond_82

    .line 130
    goto :goto_88

    .line 131
    :cond_82
    invoke-virtual {v11, v6}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->isEndRight([B)Z

    .line 134
    move-result v12

    .line 135
    if-nez v12, :cond_8b

    .line 137
    :goto_88
    add-int/lit8 v9, v9, 0x1

    .line 139
    goto :goto_5a

    .line 140
    :cond_8b
    invoke-virtual {v11}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getMimeType()Ljava/lang/String;

    .line 143
    move-result-object v4
    :try_end_8f
    .catchall {:try_start_48 .. :try_end_8f} :catchall_c6

    .line 144
    :try_start_8f
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    .line 147
    goto :goto_98

    .line 148
    :catch_93
    move-exception v0

    .line 149
    move-object v3, v0

    .line 150
    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :goto_98
    return-object v4

    .line 154
    :cond_99
    :try_start_99
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 157
    goto :goto_a2

    .line 158
    :catch_9d
    move-exception v0

    .line 159
    move-object v3, v0

    .line 160
    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    :goto_a2
    return-object v14

    .line 164
    :cond_a3
    :goto_a3
    :try_start_a3
    const-string v0, "unexpected error, endBufferedLength: %d, file length: %d"

    .line 166
    const/4 v4, 0x2

    .line 167
    new-array v4, v4, [Ljava/lang/Object;

    .line 169
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    move-result-object v5

    .line 173
    aput-object v5, v4, v9

    .line 175
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    move-result-object v5

    .line 179
    const/4 v6, 0x1

    .line 180
    aput-object v5, v4, v6

    .line 182
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_a3 .. :try_end_bc} :catchall_c6

    .line 189
    :try_start_bc
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0

    .line 192
    goto :goto_c5

    .line 193
    :catch_c0
    move-exception v0

    .line 194
    move-object v3, v0

    .line 195
    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    :goto_c5
    return-object v14

    .line 199
    :catchall_c6
    move-exception v0

    .line 200
    move-object v4, v0

    .line 201
    :try_start_c8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cc

    .line 204
    goto :goto_d1

    .line 205
    :catch_cc
    move-exception v0

    .line 206
    move-object v3, v0

    .line 207
    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :goto_d1
    throw v4
.end method
