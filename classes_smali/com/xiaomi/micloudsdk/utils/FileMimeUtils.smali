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

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const/4 v2, 0x2

    new-array v3, v2, [B

    fill-array-data v3, :array_156

    new-array v4, v2, [B

    fill-array-data v4, :array_15c

    const-string v5, "image/jpeg"

    invoke-direct {v1, v5, v3, v4}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v4, v2, [B

    fill-array-data v4, :array_162

    new-array v6, v2, [B

    fill-array-data v6, :array_168

    invoke-direct {v1, v5, v4, v6}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const/16 v4, 0x8

    new-array v5, v4, [B

    fill-array-data v5, :array_16e

    const-string v6, "image/png"

    const/4 v7, 0x0

    invoke-direct {v1, v6, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const/4 v5, 0x5

    new-array v6, v5, [B

    fill-array-data v6, :array_176

    const-string v8, "image/tga"

    invoke-direct {v1, v8, v6, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/4 v6, 0x3

    aput-object v1, v0, v6

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v6, v5, [B

    fill-array-data v6, :array_17e

    invoke-direct {v1, v8, v6, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const/4 v6, 0x6

    new-array v8, v6, [B

    fill-array-data v8, :array_186

    const-string v9, "image/gif"

    invoke-direct {v1, v9, v8, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v5, v6, [B

    fill-array-data v5, :array_18e

    invoke-direct {v1, v9, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v5, v2, [B

    fill-array-data v5, :array_196

    const-string v6, "image/bmp"

    invoke-direct {v1, v6, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/4 v5, 0x7

    aput-object v1, v0, v5

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v5, v2, [B

    fill-array-data v5, :array_19c

    const-string v6, "image/tiff"

    invoke-direct {v1, v6, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v2, v2, [B

    fill-array-data v2, :array_1a2

    invoke-direct {v1, v6, v2, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    const/16 v2, 0xc

    new-array v4, v2, [B

    fill-array-data v4, :array_1a8

    const-string v5, "video/3gpp"

    invoke-direct {v1, v5, v4, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v4, 0xa

    aput-object v1, v0, v4

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v5, v2, [B

    fill-array-data v5, :array_1b2

    const-string v6, "video/mp4"

    invoke-direct {v1, v6, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v5, 0xb

    aput-object v1, v0, v5

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v8, v2, [B

    fill-array-data v8, :array_1bc

    invoke-direct {v1, v6, v8, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v5, v5, [B

    fill-array-data v5, :array_1c6

    invoke-direct {v1, v6, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v5, 0xd

    aput-object v1, v0, v5

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v5, v2, [B

    fill-array-data v5, :array_1d0

    const-string v8, "video/3gp"

    invoke-direct {v1, v8, v5, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v5, 0xe

    aput-object v1, v0, v5

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v4, v4, [B

    fill-array-data v4, :array_1da

    const-string v5, "video/quicktime"

    invoke-direct {v1, v5, v4, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v4, 0xf

    aput-object v1, v0, v4

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v4, v2, [B

    fill-array-data v4, :array_1e4

    invoke-direct {v1, v6, v4, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v4, 0x10

    aput-object v1, v0, v4

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v4, v2, [B

    fill-array-data v4, :array_1ee

    invoke-direct {v1, v5, v4, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v4, 0x11

    aput-object v1, v0, v4

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    new-array v2, v2, [B

    fill-array-data v2, :array_1f8

    invoke-direct {v1, v6, v2, v7}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;-><init>(Ljava/lang/String;[B[B)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->MIMES:[Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    array-length v1, v0

    move v2, v3

    move v4, v2

    :goto_12a
    if-ge v3, v1, :cond_151

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->hasHead()Z

    move-result v6

    if-eqz v6, :cond_13e

    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getHeadLength()I

    move-result v6

    if-le v6, v2, :cond_13e

    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getHeadLength()I

    move-result v2

    :cond_13e
    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->hasEnd()Z

    move-result v6

    if-eqz v6, :cond_14e

    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getEndLength()I

    move-result v6

    if-le v6, v4, :cond_14e

    invoke-virtual {v5}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getEndLength()I

    move-result v4

    :cond_14e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12a

    :cond_151
    sput v2, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->MAX_HEAD_LENGTH:I

    sput v4, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->MAX_END_LENGTH:I

    return-void

    :array_156
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_15c
    .array-data 1
        -0x1t
        -0x27t
    .end array-data

    nop

    :array_162
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_168
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

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

    :array_176
    .array-data 1
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17e
    .array-data 1
        0x0t
        0x0t
        0x10t
        0x0t
        0x0t
    .end array-data

    nop

    :array_186
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x37t
        0x61t
    .end array-data

    nop

    :array_18e
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x39t
        0x61t
    .end array-data

    nop

    :array_196
    .array-data 1
        0x42t
        0x4dt
    .end array-data

    nop

    :array_19c
    .array-data 1
        0x4dt
        0x4dt
    .end array-data

    nop

    :array_1a2
    .array-data 1
        0x49t
        0x49t
    .end array-data

    nop

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

    nop

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

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-le v1, v0, :cond_1b

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_1b
    const-string p0, ""

    :goto_1d
    return-object p0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->rawGetMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const-string v0, "FileMimeUtils"

    const-string v1, "rawGetMimeType"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static rawGetMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 18

    const-string v1, "close image file failed."

    const-string v2, "FileMimeUtils"

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->MAX_HEAD_LENGTH:I

    new-array v4, v0, [B

    sget v5, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->MAX_END_LENGTH:I

    new-array v6, v5, [B

    const-wide/16 v7, 0x0

    :try_start_17
    invoke-virtual {v3, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    int-to-long v12, v5

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    cmp-long v5, v12, v7

    const/4 v14, 0x0

    if-ltz v5, :cond_a3

    const-wide/32 v15, 0x7fffffff

    cmp-long v15, v12, v15

    if-lez v15, :cond_36

    goto/16 :goto_a3

    :cond_36
    if-nez v5, :cond_47

    const-string v0, "endBufferedLength is 0, just return null mime type"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_c6

    :try_start_3d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_46

    :catch_41
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return-object v14

    :cond_47
    sub-long/2addr v10, v12

    :try_start_48
    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v5, v12

    invoke-virtual {v3, v6, v9, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v5

    int-to-long v10, v5

    cmp-long v5, v12, v10

    if-eqz v5, :cond_56

    goto :goto_57

    :cond_56
    move-wide v7, v12

    :goto_57
    sget-object v5, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;->MIMES:[Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;

    array-length v10, v5

    :goto_5a
    if-ge v9, v10, :cond_99

    aget-object v11, v5, v9

    invoke-virtual {v11}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->hasHead()Z

    move-result v12

    if-eqz v12, :cond_72

    invoke-virtual {v11}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getHeadLength()I

    move-result v12

    if-ge v0, v12, :cond_6b

    goto :goto_88

    :cond_6b
    invoke-virtual {v11, v4}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->isHeadRight([B)Z

    move-result v12

    if-nez v12, :cond_72

    goto :goto_88

    :cond_72
    invoke-virtual {v11}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->hasEnd()Z

    move-result v12

    if-eqz v12, :cond_8b

    invoke-virtual {v11}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getEndLength()I

    move-result v12

    int-to-long v12, v12

    cmp-long v12, v7, v12

    if-gez v12, :cond_82

    goto :goto_88

    :cond_82
    invoke-virtual {v11, v6}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->isEndRight([B)Z

    move-result v12

    if-nez v12, :cond_8b

    :goto_88
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    :cond_8b
    invoke-virtual {v11}, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->getMimeType()Ljava/lang/String;

    move-result-object v4
    :try_end_8f
    .catchall {:try_start_48 .. :try_end_8f} :catchall_c6

    :try_start_8f
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_98

    :catch_93
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_98
    return-object v4

    :cond_99
    :try_start_99
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_a2

    :catch_9d
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a2
    return-object v14

    :cond_a3
    :goto_a3
    :try_start_a3
    const-string v0, "unexpected error, endBufferedLength: %d, file length: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_a3 .. :try_end_bc} :catchall_c6

    :try_start_bc
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_c5

    :catch_c0
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c5
    return-object v14

    :catchall_c6
    move-exception v0

    move-object v4, v0

    :try_start_c8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cc

    goto :goto_d1

    :catch_cc
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d1
    throw v4
.end method
