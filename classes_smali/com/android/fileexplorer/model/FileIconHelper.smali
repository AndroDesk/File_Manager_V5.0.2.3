.class public Lcom/android/fileexplorer/model/FileIconHelper;
.super Ljava/lang/Object;
.source "FileIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;,
        Lcom/android/fileexplorer/model/FileIconHelper$Builder;
    }
.end annotation


# static fields
.field public static final MIDRIVE_THUMB_SCHEMA:Ljava/lang/String; = "midrive"

.field private static final PICASSO_TAG:Ljava/lang/String; = "PICASSO"

.field private static final TAG:Ljava/lang/String; = "FileIconHelper"

.field private static final VOLUME_NAME:Ljava/lang/String; = "external"

.field private static volatile fileIconHelperInstance:Lcom/android/fileexplorer/model/FileIconHelper;


# instance fields
.field public ListPadding:I

.field public borderWidth:I

.field public gridHorizontalPadding:I

.field public gridTopPadding:I

.field private mRequestManager:Lcom/bumptech/glide/RequestManager;

.field public radius:I

.field public radiusSixDp:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, 0x7f070218

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->gridHorizontalPadding:I

    .line 13
    const v0, 0x7f070219

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->gridTopPadding:I

    .line 22
    const v0, 0x7f07021f

    .line 25
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->borderWidth:I

    .line 31
    const v0, 0x7f07029b

    .line 34
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->ListPadding:I

    .line 40
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 50
    const v0, 0x7f0700fc

    .line 53
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    .line 59
    const v0, 0x7f0700fd

    .line 62
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radiusSixDp:I

    .line 68
    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 12

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 3
    int-to-double v0, v0

    .line 4
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6
    int-to-double v2, p0

    .line 7
    const/4 p0, 0x1

    .line 8
    const/4 v4, -0x1

    .line 9
    if-ne p2, v4, :cond_c

    .line 11
    move v5, p0

    .line 12
    goto :goto_19

    .line 13
    :cond_c
    mul-double v5, v0, v2

    .line 15
    int-to-double v7, p2

    .line 16
    div-double/2addr v5, v7

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 20
    move-result-wide v5

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 24
    move-result-wide v5

    .line 25
    double-to-int v5, v5

    .line 26
    :goto_19
    if-ne p1, v4, :cond_1e

    .line 28
    const/16 v0, 0x80

    .line 30
    goto :goto_2e

    .line 31
    :cond_1e
    int-to-double v6, p1

    .line 32
    div-double/2addr v0, v6

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 36
    move-result-wide v0

    .line 37
    div-double/2addr v2, v6

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 41
    move-result-wide v2

    .line 42
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 45
    move-result-wide v0

    .line 46
    double-to-int v0, v0

    .line 47
    :goto_2e
    if-ge v0, v5, :cond_31

    .line 49
    return v5

    .line 50
    :cond_31
    if-ne p2, v4, :cond_36

    .line 52
    if-ne p1, v4, :cond_36

    .line 54
    return p0

    .line 55
    :cond_36
    if-ne p1, v4, :cond_39

    .line 57
    return v5

    .line 58
    :cond_39
    return v0
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/model/FileIconHelper;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    .line 4
    move-result p0

    .line 5
    const/16 p1, 0x8

    .line 7
    if-gt p0, p1, :cond_e

    .line 9
    const/4 p1, 0x1

    .line 10
    :goto_9
    if-ge p1, p0, :cond_12

    .line 12
    shl-int/lit8 p1, p1, 0x1

    .line 14
    goto :goto_9

    .line 15
    :cond_e
    add-int/lit8 p0, p0, 0x7

    .line 17
    div-int/2addr p0, p1

    .line 18
    mul-int/2addr p1, p0

    .line 19
    :cond_12
    return p1
.end method

.method private static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 6

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 3
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_6
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    .line 15
    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_1a
    .catchall {:try_start_6 .. :try_end_f} :catchall_18

    .line 16
    :try_start_f
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    .line 19
    goto :goto_27

    .line 20
    :catch_13
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    goto :goto_27

    .line 25
    :catchall_18
    move-exception p0

    .line 26
    goto :goto_5d

    .line 27
    :catch_1a
    move-exception p0

    .line 28
    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .line 31
    :try_start_1e
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    .line 34
    goto :goto_26

    .line 35
    :catch_22
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    :goto_26
    move-object p0, v1

    .line 40
    :goto_27
    if-nez p0, :cond_2a

    .line 42
    return-object v1

    .line 43
    :cond_2a
    const/4 v0, 0x1

    .line 44
    if-ne p1, v0, :cond_52

    .line 46
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 53
    move-result v1

    .line 54
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 57
    move-result v2

    .line 58
    const/16 v3, 0x200

    .line 60
    if-le v2, v3, :cond_5c

    .line 62
    const/high16 v3, 0x44000000  # 512.0f

    .line 64
    int-to-float v2, v2

    .line 65
    div-float/2addr v3, v2

    .line 66
    int-to-float p1, p1

    .line 67
    mul-float/2addr p1, v3

    .line 68
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 71
    move-result p1

    .line 72
    int-to-float v1, v1

    .line 73
    mul-float/2addr v3, v1

    .line 74
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 77
    move-result v1

    .line 78
    invoke-static {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 81
    move-result-object p0

    .line 82
    goto :goto_5c

    .line 83
    :cond_52
    const/4 v0, 0x3

    .line 84
    if-ne p1, v0, :cond_5c

    .line 86
    const/4 p1, 0x2

    .line 87
    const/16 v0, 0x60

    .line 89
    invoke-static {p0, v0, v0, p1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 92
    move-result-object p0

    .line 93
    :cond_5c
    :goto_5c
    return-object p0

    .line 94
    :goto_5d
    :try_start_5d
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    .line 97
    goto :goto_65

    .line 98
    :catch_61
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    :goto_65
    throw p0
.end method

.method private generateLoadInfo(Ljava/lang/String;II)Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;
    .registers 9

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/util/WechatUtil;->isApk(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_15

    .line 8
    sget-boolean v2, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 10
    if-eqz v2, :cond_f

    .line 12
    const v2, 0x7f080164

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    const v2, 0x7f080165

    .line 19
    :goto_12
    const-string v3, "apk"

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    const-string v3, ""

    .line 24
    move v2, v1

    .line 25
    :goto_18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_1f

    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    :goto_23
    if-nez v0, :cond_2a

    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-static {v3, v1, v0}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 42
    move-result v2

    .line 43
    :cond_2a
    invoke-static {v3}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    const-string v1, "image/"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_40

    .line 55
    new-instance v0, Ljava/io/File;

    .line 57
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 63
    move-result-object v0

    .line 64
    goto :goto_44

    .line 65
    :cond_40
    invoke-static {v0, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    move-result-object v0

    .line 69
    :goto_44
    new-instance v1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-direct {v1, v3}, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;-><init>(Lcom/android/fileexplorer/model/FileIconHelper$1;)V

    .line 75
    iput-object v0, v1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->mode:Ljava/lang/Object;

    .line 77
    iput p2, v1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->width:I

    .line 79
    iput p3, v1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->height:I

    .line 81
    iput v2, v1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->defaultResIcon:I

    .line 83
    iput-object p1, v1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->filePath:Ljava/lang/String;

    .line 85
    return-object v1
.end method

.method private static getAnotherMusicThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lorg/jaudiotagger/audio/AudioFileIO;->read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;

    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_d

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_14

    .line 20
    return-object v0

    .line 21
    :cond_14
    invoke-interface {p0}, Lorg/jaudiotagger/tag/Tag;->getFirstArtwork()Lorg/jaudiotagger/tag/datatype/Artwork;

    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_54

    .line 27
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Artwork;->getBinaryData()[B

    .line 30
    move-result-object p0

    .line 31
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 33
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 36
    const/4 v2, 0x1

    .line 37
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 39
    array-length v3, p0

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {p0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 44
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 46
    if-nez v3, :cond_54

    .line 48
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 50
    const/4 v5, -0x1

    .line 51
    if-eq v3, v5, :cond_54

    .line 53
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 55
    if-ne v3, v5, :cond_39

    .line 57
    goto :goto_54

    .line 58
    :cond_39
    const/16 v3, 0x32

    .line 60
    const/high16 v5, 0x80000

    .line 62
    invoke-static {v1, v3, v5}, Lcom/android/fileexplorer/model/FileIconHelper;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    .line 65
    move-result v3

    .line 66
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 68
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 72
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 74
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 76
    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 78
    array-length v2, p0

    .line 79
    invoke-static {p0, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 82
    move-result-object p0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_52} :catch_54

    .line 83
    move-object v0, p0

    .line 84
    nop

    .line 85
    :catch_54
    :cond_54
    :goto_54
    return-object v0
.end method

.method public static getApkThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/AppIconHelper;->getAppIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getAudioThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileIconHelper;->getMusicThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileIconHelper;->getAnotherMusicThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    return-object v0
.end method

.method private static getDbId(Ljava/lang/String;Landroid/net/Uri;)J
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v5, v0, [Ljava/lang/String;

    .line 4
    const/4 v0, 0x0

    .line 5
    aput-object p0, v5, v0

    .line 7
    const-string p0, "_id"

    .line 9
    const-string v1, "_data"

    .line 11
    filled-new-array {p0, v1}, [Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    move-result-object v1

    .line 23
    const-string v4, "_data=?"

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v2, p1

    .line 27
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    move-result-object p0

    .line 31
    const-wide/16 v1, 0x0

    .line 33
    if-nez p0, :cond_23

    .line 35
    return-wide v1

    .line 36
    :cond_23
    :try_start_23
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2d

    .line 42
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 45
    move-result-wide v1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_31

    .line 46
    :cond_2d
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 49
    return-wide v1

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 54
    throw p1
.end method

.method public static getFolderID(Landroid/content/Context;Z)I
    .registers 3

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->getFolderID(Landroid/content/Context;ZZ)I

    move-result p0

    return p0
.end method

.method public static getFolderID(Landroid/content/Context;ZZ)I
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getViewMode()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->getFolderID(Landroid/content/Context;ZZI)I

    move-result p0

    return p0
.end method

.method public static getFolderID(Landroid/content/Context;ZZI)I
    .registers 4

    .line 2
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    const p0, 0x7f080263

    const p2, 0x7f080264

    goto :goto_13

    :cond_d
    const p0, 0x7f080227

    const p2, 0x7f08022a

    :goto_13
    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    if-ne p1, p3, :cond_19

    goto :goto_1a

    :cond_19
    move p0, p2

    :goto_1a
    return p0

    :cond_1b
    return p2
.end method

.method public static getFrameAtTime(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 3
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 6
    :try_start_5
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    .line 12
    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_12
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 13
    :try_start_c
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_1a

    .line 16
    goto :goto_1a

    .line 17
    :catchall_10
    move-exception p0

    .line 18
    goto :goto_1b

    .line 19
    :catch_12
    move-exception p0

    .line 20
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_10

    .line 23
    :try_start_16
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_19

    .line 26
    :catch_19
    const/4 p0, 0x0

    .line 27
    :catch_1a
    :goto_1a
    return-object p0

    .line 28
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1e

    .line 31
    :catch_1e
    throw p0
.end method

.method public static getImageThumb(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 6

    .line 1
    const-string v0, "external"

    .line 3
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->getDbId(Ljava/lang/String;Landroid/net/Uri;)J

    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    cmp-long p0, v0, v2

    .line 15
    const/4 v2, 0x0

    .line 16
    if-lez p0, :cond_1d

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0, v0, v1, p1, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 29
    move-result-object v2

    .line 30
    :cond_1d
    return-object v2
.end method

.method public static getImageThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 9
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 12
    iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 14
    if-nez v2, :cond_33

    .line 16
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 18
    const/4 v3, -0x1

    .line 19
    if-eq v2, v3, :cond_33

    .line 21
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 23
    if-ne v2, v3, :cond_19

    .line 25
    goto :goto_33

    .line 26
    :cond_19
    const/16 v2, 0x32

    .line 28
    const/high16 v3, 0x80000

    .line 30
    invoke-static {v0, v2, v3}, Lcom/android/fileexplorer/model/FileIconHelper;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    .line 33
    move-result v2

    .line 34
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 36
    const/4 v2, 0x0

    .line 37
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 39
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 41
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 43
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 45
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 47
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_33
    :goto_33
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/FileIconHelper;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/FileIconHelper;->fileIconHelperInstance:Lcom/android/fileexplorer/model/FileIconHelper;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/android/fileexplorer/model/FileIconHelper;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/model/FileIconHelper;->fileIconHelperInstance:Lcom/android/fileexplorer/model/FileIconHelper;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/android/fileexplorer/model/FileIconHelper;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/model/FileIconHelper;-><init>()V

    .line 17
    sput-object v1, Lcom/android/fileexplorer/model/FileIconHelper;->fileIconHelperInstance:Lcom/android/fileexplorer/model/FileIconHelper;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/model/FileIconHelper;->fileIconHelperInstance:Lcom/android/fileexplorer/model/FileIconHelper;

    .line 26
    return-object v0
.end method

.method private static getMusicThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9

    .line 1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3
    const/4 v6, 0x1

    .line 4
    new-array v4, v6, [Ljava/lang/String;

    .line 6
    const/4 v7, 0x0

    .line 7
    aput-object p0, v4, v7

    .line 9
    const-string p0, "_id"

    .line 11
    const-string v0, "album_id"

    .line 13
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v0

    .line 25
    const-string v3, "_data=?"

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    move-result-object p0

    .line 32
    const/4 v0, 0x0

    .line 33
    if-nez p0, :cond_23

    .line 35
    return-object v0

    .line 36
    :cond_23
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_35

    .line 42
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 45
    move-result-wide v0

    .line 46
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 49
    move-result-wide v2

    .line 50
    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/util/MusicUtils;->getArtwork(JJ)Landroid/graphics/Bitmap;

    .line 53
    move-result-object v0

    .line 54
    :cond_35
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 57
    return-object v0
.end method

.method private getTransformWithPadding(III)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;
    .registers 5

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIII)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object p1

    return-object p1
.end method

.method private getTransformWithPadding(IIII)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;
    .registers 13

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIIIIZ)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object p1

    return-object p1
.end method

.method private getTransformWithPadding(IIIII)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;
    .registers 14

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIIIIZ)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object p1

    return-object p1
.end method

.method private getTransformWithPadding(IIIIIIZ)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;
    .registers 21

    move-object v0, p0

    const v1, 0x7f0600b6

    if-gtz p1, :cond_1a

    if-gtz p2, :cond_1a

    if-nez p7, :cond_b

    goto :goto_1a

    .line 4
    :cond_b
    new-instance v2, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    iget v3, v0, Lcom/android/fileexplorer/model/FileIconHelper;->borderWidth:I

    int-to-float v3, v3

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v1

    move/from16 v5, p4

    invoke-direct {v2, v3, v1, v5}, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;-><init>(FII)V

    return-object v2

    :cond_1a
    :goto_1a
    move/from16 v5, p4

    .line 5
    new-instance v12, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    iget v2, v0, Lcom/android/fileexplorer/model/FileIconHelper;->borderWidth:I

    int-to-float v3, v2

    .line 6
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v4

    move-object v2, v12

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move v9, p1

    move v10, p2

    move/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;-><init>(FIIIIZIII)V

    return-object v12
.end method

.method public static getVideoThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private ignoreDiskCache()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/constant/Device;->BUILD_DEVICE:Ljava/lang/String;

    .line 3
    const-string v1, "cas"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private isDocFile(Ljava/lang/String;)Z
    .registers 7

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sRecentDocExts:[Ljava/lang/String;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_5
    if-ge v3, v1, :cond_14

    .line 8
    aget-object v4, v0, v3

    .line 10
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_11

    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    add-int/lit8 v3, v3, 0x1

    .line 20
    goto :goto_5

    .line 21
    :cond_14
    :goto_14
    return v2
.end method

.method private isLoadDefaultDrawable(Ljava/lang/String;Z)Z
    .registers 4

    .line 1
    const-string v0, "application/vnd.android.package-archive"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_c

    .line 9
    if-nez p2, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    const-string p2, "audio/"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method private loadBitmap(Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->mode:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    .line 15
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 21
    iget v1, p1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->width:I

    .line 23
    if-lez v1, :cond_1f

    .line 25
    iget v2, p1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->height:I

    .line 27
    if-lez v2, :cond_1f

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 32
    :cond_1f
    iget v1, p1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->defaultResIcon:I

    .line 34
    if-lez v1, :cond_2b

    .line 36
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 39
    iget v1, p1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->defaultResIcon:I

    .line 41
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 44
    :cond_2b
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->mode:Ljava/lang/Object;

    .line 46
    if-eqz v1, :cond_3b

    .line 48
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->filePath:Ljava/lang/String;

    .line 50
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->isScreenShot(Ljava/lang/String;)Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3b

    .line 56
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 59
    goto :goto_3e

    .line 60
    :cond_3b
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 63
    :goto_3e
    const/4 v1, 0x0

    .line 64
    :try_start_3f
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_49} :catch_4b

    .line 74
    move-object v1, v0

    .line 75
    goto :goto_4f

    .line 76
    :catch_4b
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :goto_4f
    if-nez v1, :cond_8f

    .line 82
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object v0

    .line 90
    iget v1, p1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->defaultResIcon:I

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/android/fileexplorer/util/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 99
    move-result-object v1

    .line 100
    iget v0, p1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->width:I

    .line 102
    if-lez v0, :cond_8f

    .line 104
    iget v0, p1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->height:I

    .line 106
    if-lez v0, :cond_8f

    .line 108
    :try_start_6b
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 110
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    .line 117
    move-result-object v0

    .line 118
    iget v2, p1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->width:I

    .line 120
    iget p1, p1, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->height:I

    .line 122
    invoke-virtual {v0, v2, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 128
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    .line 131
    move-result-object p1

    .line 132
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_89} :catch_8b

    .line 138
    move-object v1, p1

    .line 139
    goto :goto_8f

    .line 140
    :catch_8b
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    :cond_8f
    :goto_8f
    return-object v1
.end method

.method public static setIcon(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;)V
    .registers 5

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v1

    iget v1, v1, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZ)V

    return-void
.end method

.method public static setIcon(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZ)V
    .registers 13

    const-string v0, "Trace_setIcon"

    .line 4
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez p3, :cond_1d

    const p3, 0x7f07029b

    .line 5
    invoke-static {p3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v7

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, v7

    move v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInnerWithPadding(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZIIIZ)V

    goto :goto_2b

    .line 7
    :cond_1d
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p2

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p3

    iget p3, p3, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZ)V

    .line 8
    :goto_2b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static setIcon(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/android/fileexplorer/model/FileIconHelper;->setIcon(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method public static setIcon(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .registers 11

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    const-wide/16 v2, -0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method public static setIconByFileInfo(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    iget v0, v0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconByFileInfo(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;Ljava/lang/String;II)V

    return-void
.end method

.method public static setIconByFileInfo(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;Ljava/lang/String;II)V
    .registers 13

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;II)V

    return-void
.end method

.method public static setIconByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .registers 11

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 16
    move-result-wide v2

    .line 17
    move-object v4, p1

    .line 18
    move-object v5, p2

    .line 19
    move v6, p3

    .line 20
    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;I)V

    .line 23
    return-void
.end method

.method private setIconInner(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZ)V
    .registers 13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v7, p4

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInnerWithPadding(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZIIZ)V

    return-void
.end method

.method private setIconInner(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;ZZ)V
    .registers 13

    .line 29
    iget v3, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInnerWithPadding(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZIIZ)V

    return-void
.end method

.method private setIconInnerWithPadding(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZIIIZ)V
    .registers 24

    move-object v12, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v11, p8

    .line 3
    instance-of v1, v0, Lcom/android/cloud/bean/CloudFileInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    move-object v6, v1

    goto :goto_12

    :cond_11
    move-object v6, v2

    .line 5
    :goto_12
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    const/4 v9, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_20a

    if-eqz v6, :cond_28

    invoke-virtual {v6}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "folder"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto/16 :goto_20a

    .line 6
    :cond_28
    sget-boolean v1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz v1, :cond_6a

    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 7
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "image/"

    .line 9
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 10
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-wide v2, v0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object/from16 v4, p2

    move/from16 v7, p3

    move v8, v9

    move v9, v10

    move v10, v13

    move/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIIIIZ)V

    goto :goto_69

    .line 11
    :cond_5e
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    invoke-static {v1, v3, v11}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v1

    invoke-virtual {v0, v1, v8}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    :goto_69
    return-void

    :cond_6a
    if-eqz v6, :cond_180

    .line 12
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 13
    invoke-virtual {v6}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 14
    invoke-static {v1, v0}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getThumbnailUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 15
    iget-object v0, v6, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0, v3, v11}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v10

    .line 17
    invoke-virtual {v6}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f060553

    const/4 v4, 0x2

    if-nez v1, :cond_ff

    invoke-virtual {v6}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "video"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    goto :goto_ff

    :cond_a4
    const/4 v1, -0x1

    const v11, 0x7f080145

    if-eqz p4, :cond_af

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->isApk(Ljava/lang/String;)Z

    move v6, v11

    goto :goto_b0

    :cond_af
    move v6, v1

    :goto_b0
    if-eqz p4, :cond_b4

    move v5, v2

    goto :goto_b5

    :cond_b4
    move v5, v1

    .line 19
    :goto_b5
    new-instance v13, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v14, v4, [Lcom/bumptech/glide/load/Transformation;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v0, v14, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move/from16 v4, p3

    .line 20
    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIIIIZ)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object v0

    aput-object v0, v14, v9

    invoke-direct {v13, v14}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 22
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 23
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 24
    invoke-virtual {v0, v13}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 25
    invoke-virtual {v0, v11}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 26
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_17f

    :cond_ff
    :goto_ff
    if-nez p4, :cond_120

    .line 27
    new-instance v11, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v13, v4, [Lcom/bumptech/glide/load/Transformation;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v0, v13, v3

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p3

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIII)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object v0

    aput-object v0, v13, v9

    invoke-direct {v11, v13}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    goto :goto_141

    .line 29
    :cond_120
    new-instance v11, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v13, v4, [Lcom/bumptech/glide/load/Transformation;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v0, v13, v3

    .line 30
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v5

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIII)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object v0

    aput-object v0, v13, v9

    invoke-direct {v11, v13}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 31
    :goto_141
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 33
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 34
    invoke-virtual {v0, v10}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    .line 35
    invoke-virtual {v6}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 36
    invoke-virtual {v0, v11}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 37
    invoke-virtual {v0, v10}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_17f
    return-void

    .line 38
    :cond_180
    iget v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1f3

    .line 39
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v1, v3, v11}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v1

    .line 41
    iget-object v3, v0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    invoke-virtual {v3}, Lcom/android/fileexplorer/mtp/DocumentInfo;->isThumbnailSupported()Z

    move-result v3

    const-string v4, "FileIconHelper"

    if-eqz v3, :cond_1d1

    .line 42
    iget-object v3, v0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    iget-object v3, v3, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mtp"

    invoke-static {v5, v3, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "trying to get thumbnail for "

    .line 43
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 44
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, v12, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_209

    :cond_1d1
    const-string v2, "thumbnail is not support for "

    .line 46
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 47
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    iget-object v0, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, v12, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_209

    .line 49
    :cond_1f3
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-wide v2, v0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v4, p2

    move/from16 v7, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIIIIZ)V

    :goto_209
    return-void

    .line 50
    :cond_20a
    :goto_20a
    iget-object v1, v12, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    invoke-static {v4, v9, v0, v11}, Lcom/android/fileexplorer/model/FileIconHelper;->getFolderID(Landroid/content/Context;ZZI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_231

    .line 52
    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    invoke-virtual {v8, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_231
    return-void
.end method

.method private setIconInnerWithPadding(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZIIZ)V
    .registers 18

    move-object v9, p0

    .line 2
    iget v5, v9, Lcom/android/fileexplorer/model/FileIconHelper;->gridHorizontalPadding:I

    iget v6, v9, Lcom/android/fileexplorer/model/FileIconHelper;->gridTopPadding:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInnerWithPadding(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZIIIZ)V

    return-void
.end method

.method private setIconInnerWithPadding(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;Z)V
    .registers 12

    .line 1
    iget v3, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    iget v5, p0, Lcom/android/fileexplorer/model/FileIconHelper;->gridHorizontalPadding:I

    iget v6, p0, Lcom/android/fileexplorer/model/FileIconHelper;->gridTopPadding:I

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInnerWithPadding(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZIIZ)V

    return-void
.end method

.method public static setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;III)V
    .registers 19

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 2
    invoke-static/range {v0 .. v10}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIIIII)V

    return-void
.end method

.method public static setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIIIII)V
    .registers 24

    move-object v0, p0

    move-object/from16 v1, p3

    .line 3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v2, p4

    goto :goto_10

    :cond_c
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    :goto_10
    sget-boolean v3, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_21

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    invoke-static {v2, v4, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    return-void

    .line 6
    :cond_21
    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p4

    .line 7
    invoke-static {v3, p0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 8
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 9
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f07031d

    invoke-static {v6, v7}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v6

    move v11, v6

    goto :goto_44

    :cond_42
    move/from16 v11, p7

    .line 10
    :goto_44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5a

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mts"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 11
    invoke-static {v3, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 12
    :cond_5a
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v2

    iget-object v2, v2, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isAllMiuiLite()Z

    move-result v3

    if-nez v3, :cond_72

    move/from16 v3, p5

    .line 14
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    :cond_72
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bumptech/glide/load/Transformation;

    .line 15
    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v7

    const/4 v12, -0x1

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v7 .. v12}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIII)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    new-instance v3, Lcom/bumptech/glide/signature/ObjectKey;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v5, p1

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 17
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIZ)V
    .registers 16

    if-eqz p7, :cond_9

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p7

    iget p7, p7, Lcom/android/fileexplorer/model/FileIconHelper;->radiusSixDp:I

    goto :goto_f

    :cond_9
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p7

    iget p7, p7, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    :goto_f
    move v7, p7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;III)V

    return-void
.end method

.method public static setIconRoundWithPadding(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;II)V
    .registers 19

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 4
    move-result-object v0

    .line 5
    iget v8, v0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 10
    move-result-object v0

    .line 11
    iget v9, v0, Lcom/android/fileexplorer/model/FileIconHelper;->gridHorizontalPadding:I

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 16
    move-result-object v0

    .line 17
    iget v10, v0, Lcom/android/fileexplorer/model/FileIconHelper;->gridTopPadding:I

    .line 19
    const/4 v11, 0x0

    .line 20
    move-object v1, p0

    .line 21
    move-wide v2, p1

    .line 22
    move-object v4, p3

    .line 23
    move-object/from16 v5, p4

    .line 25
    move/from16 v6, p5

    .line 27
    move/from16 v7, p6

    .line 29
    invoke-static/range {v1 .. v11}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIIIII)V

    .line 32
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public clearSingleMemCache(Ljava/io/File;)V
    .registers 6

    .line 1
    if-eqz p1, :cond_32

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_32

    .line 10
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_23

    .line 35
    return-void

    .line 36
    :cond_23
    const-string v3, "image/"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2f

    .line 44
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    :cond_32
    :goto_32
    return-void
.end method

.method public getRequestBuilder(Landroid/net/Uri;III)Lcom/bumptech/glide/RequestBuilder;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    .line 9
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 15
    if-lez p2, :cond_15

    .line 17
    if-lez p3, :cond_15

    .line 19
    invoke-virtual {p1, p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 22
    :cond_15
    if-lez p4, :cond_1a

    .line 24
    invoke-virtual {p1, p4}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 27
    :cond_1a
    return-object p1
.end method

.method public getThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 8

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;-><init>(Lcom/android/fileexplorer/model/FileIconHelper$1;)V

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->isDocFile(Ljava/lang/String;)Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_22

    .line 17
    new-instance v3, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;

    .line 19
    invoke-direct {v3, v1}, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;-><init>(Lcom/android/fileexplorer/model/FileIconHelper$1;)V

    .line 22
    iput p2, v3, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->width:I

    .line 24
    iput p3, v3, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->height:I

    .line 26
    invoke-static {v2}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIcon(Ljava/lang/String;)I

    .line 29
    move-result p2

    .line 30
    iput p2, v3, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->defaultResIcon:I

    .line 32
    iput-object p1, v3, Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;->filePath:Ljava/lang/String;

    .line 34
    goto :goto_26

    .line 35
    :cond_22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/model/FileIconHelper;->generateLoadInfo(Ljava/lang/String;II)Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;

    .line 38
    move-result-object v0

    .line 39
    :goto_26
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->loadBitmap(Lcom/android/fileexplorer/model/FileIconHelper$LoadInfo;)Landroid/graphics/Bitmap;

    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public loadDefaultDrawable(ILandroid/widget/ImageView;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 15
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 21
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 24
    return-void
.end method

.method public loadDocSnapshot(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v6, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDocSnapshot(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;IZ)V

    return-void
.end method

.method public loadDocSnapshot(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;IZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Landroid/graphics/drawable/Drawable;",
            ">;IZ)V"
        }
    .end annotation

    const-string p7, "FileIconHelper"

    if-nez p3, :cond_a

    const-string p1, "loadDocSnapshot: image is null"

    .line 2
    invoke-static {p7, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_a
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 4
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p2

    invoke-static {p1, v1, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result p1

    invoke-virtual {p2, p1, p3}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    return-void

    .line 6
    :cond_21
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string p1, "loadDocSnapshot: doc path is null."

    .line 8
    invoke-static {p7, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    new-instance p2, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;

    invoke-direct {p2, p3}, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    invoke-interface {p5, p1, v0, p2, v1}, Lcom/bumptech/glide/request/RequestListener;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    return-void

    .line 10
    :cond_38
    new-instance p7, Lcom/android/fileexplorer/model/DocRequest;

    invoke-direct {p7}, Lcom/android/fileexplorer/model/DocRequest;-><init>()V

    .line 11
    invoke-virtual {p7, v0}, Lx1/b;->setInputPathStr(Ljava/lang/String;)Lx1/b;

    .line 12
    iput-object p2, p7, Lx1/b;->resolution:Ljava/lang/String;

    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_b3

    .line 14
    iget-object p2, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {p2, p7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p4}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    sget-object p7, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 16
    invoke-virtual {p2, p7}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 17
    invoke-virtual {p2, p4}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 18
    invoke-virtual {p2, p5}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance p4, Lcom/bumptech/glide/signature/ObjectKey;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p7, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-virtual {p5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p2, p4}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance p2, Lcom/bumptech/glide/load/MultiTransformation;

    const/4 p4, 0x2

    new-array p4, p4, [Lcom/bumptech/glide/load/Transformation;

    new-instance p5, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {p5}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    aput-object p5, p4, v1

    const/4 p5, 0x1

    new-instance p7, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    iget v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->borderWidth:I

    int-to-float v0, v0

    const v1, 0x7f0600b6

    .line 20
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v1

    invoke-direct {p7, v0, v1, p6}, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;-><init>(FII)V

    aput-object p7, p4, p5

    invoke-direct {p2, p4}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 21
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 22
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_cc

    .line 23
    :cond_b3
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {p1, p7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p4}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 25
    invoke-virtual {p1, p4}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 26
    invoke-virtual {p1, p5}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_cc
    return-void
.end method

.method public loadFileIntoImg(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;ZZ)V
    .registers 17

    .line 1
    move-object v1, p1

    .line 2
    move-object v3, p2

    .line 3
    move v0, p3

    .line 4
    move/from16 v2, p4

    .line 6
    iget-object v4, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 8
    invoke-static {v4}, Lcom/android/fileexplorer/util/WechatUtil;->isApk(Ljava/lang/String;)Z

    .line 11
    move-result v4

    .line 12
    const-string v5, "apk"

    .line 14
    const/4 v6, 0x1

    .line 15
    if-eqz v4, :cond_15

    .line 17
    const v4, 0x7f0801b4

    .line 20
    move-object v7, v5

    .line 21
    goto :goto_40

    .line 22
    :cond_15
    iget-boolean v4, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 24
    if-nez v4, :cond_20

    .line 26
    iget-object v4, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 28
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    const-string v4, ""

    .line 35
    :goto_22
    iget-boolean v7, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 37
    if-eqz v7, :cond_31

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v7

    .line 43
    iget-boolean v8, v1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 45
    invoke-static {v7, v6, v8, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->getFolderID(Landroid/content/Context;ZZI)I

    .line 48
    move-result v7

    .line 49
    goto :goto_3d

    .line 50
    :cond_31
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v7

    .line 54
    invoke-static {v7}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 57
    move-result v7

    .line 58
    invoke-static {v4, v7, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 61
    move-result v7

    .line 62
    :goto_3d
    move v11, v7

    .line 63
    move-object v7, v4

    .line 64
    move v4, v11

    .line 65
    :goto_40
    invoke-static {v7}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v8

    .line 69
    instance-of v9, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 71
    const/4 v10, 0x0

    .line 72
    if-eqz v9, :cond_5d

    .line 74
    if-eqz v2, :cond_53

    .line 76
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 79
    move-result-object v2

    .line 80
    invoke-direct {v2, p1, p2, p3}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInnerWithPadding(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;Z)V

    .line 83
    goto :goto_5a

    .line 84
    :cond_53
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v2, p1, p2, p3, v10}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;ZZ)V

    .line 91
    :goto_5a
    move-object v9, p0

    .line 92
    goto/16 :goto_d0

    .line 94
    :cond_5d
    invoke-static {v7}, Lcom/android/fileexplorer/apptag/FileUtils;->isWord(Ljava/lang/String;)Z

    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_89

    .line 100
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 107
    move-result-object v4

    .line 108
    invoke-static {v4}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_76

    .line 114
    invoke-static {v7}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIconMirror(Ljava/lang/String;)I

    .line 117
    move-result v2

    .line 118
    goto :goto_7a

    .line 119
    :cond_76
    invoke-static {v7, v10, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 122
    move-result v2

    .line 123
    :goto_7a
    move v4, v2

    .line 124
    new-instance v5, Lcom/android/fileexplorer/model/FileIconHelper$1;

    .line 126
    move-object v9, p0

    .line 127
    invoke-direct {v5, p0}, Lcom/android/fileexplorer/model/FileIconHelper$1;-><init>(Lcom/android/fileexplorer/model/FileIconHelper;)V

    .line 130
    const-string v2, "186X264"

    .line 132
    move-object v1, p1

    .line 133
    move-object v3, p2

    .line 134
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDocSnapshot(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    .line 137
    goto :goto_d0

    .line 138
    :cond_89
    move-object v9, p0

    .line 139
    const-string v0, "image/"

    .line 141
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_aa

    .line 147
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 150
    move-result-object v0

    .line 151
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 154
    move-result-object v2

    .line 155
    invoke-static {v2}, Lcom/android/fileexplorer/util/DisplayUtil;->getDefaultIconSize(Landroid/content/Context;)I

    .line 158
    move-result v5

    .line 159
    const/4 v6, 0x1

    .line 160
    const/4 v7, 0x0

    .line 161
    move-object v1, p1

    .line 162
    move v2, v4

    .line 163
    move-object v3, p2

    .line 164
    move v4, v5

    .line 165
    move v5, v6

    .line 166
    move v6, v7

    .line 167
    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByFileInfo(Lcom/android/fileexplorer/model/FileInfo;ILandroid/widget/ImageView;IZZ)V

    .line 170
    goto :goto_d0

    .line 171
    :cond_aa
    const-string v0, "audio/"

    .line 173
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_be

    .line 179
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 182
    move-result-object v0

    .line 183
    invoke-static {v7, v10, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 186
    move-result v1

    .line 187
    invoke-virtual {v0, v1, p2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    .line 190
    goto :goto_d0

    .line 191
    :cond_be
    iget-object v0, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 193
    invoke-static {v8, v0, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 196
    move-result-object v0

    .line 197
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 200
    move-result-object v1

    .line 201
    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 204
    move-result v2

    .line 205
    xor-int/2addr v2, v6

    .line 206
    invoke-virtual {v1, v0, v4, p2, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByUrlWithPadding(Landroid/net/Uri;ILandroid/widget/ImageView;Z)V

    .line 209
    :goto_d0
    return-void
.end method

.method public loadGif(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 18
    return-void
.end method

.method public loadGifByDGifDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 15
    return-void
.end method

.method public loadGifPic(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    .line 3
    invoke-direct {v0, p2}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0, p1}, Lcom/android/fileexplorer/model/FileIconHelper;->loadGifByDGifDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 13
    goto :goto_3a

    .line 14
    :catch_d
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/model/FileIconHelper;->clear(Landroid/view/View;)V

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadPreviewPic(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string p2, "loadGifByDGifDrawable error:"

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    const-string p2, "FileIconHelper"

    .line 56
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_3a
    return-void
.end method

.method public loadInto(IILandroid/widget/ImageView;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/model/FileIconHelper;->ignoreDiskCache()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 3
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 4
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_41

    .line 5
    :cond_28
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_41
    return-void
.end method

.method public loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V

    return-void
.end method

.method public loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V
    .registers 8

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 10
    :goto_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/model/FileIconHelper;->getRequestBuilder(Landroid/net/Uri;III)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    if-eqz p6, :cond_2d

    if-lez p2, :cond_2d

    if-lez p3, :cond_2d

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/bumptech/glide/load/Transformation;

    const/4 p3, 0x0

    .line 11
    new-instance p4, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {p4}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    aput-object p4, p2, p3

    const/4 p3, 0x1

    new-instance p4, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {p4}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object p4, p2, p3

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_3e

    :cond_2d
    if-eqz p6, :cond_37

    .line 12
    new-instance p4, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {p4}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {p1, p4}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    :cond_37
    if-lez p2, :cond_3e

    if-lez p3, :cond_3e

    .line 13
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 14
    :cond_3e
    :goto_3e
    invoke-virtual {p1, p5}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public loadPreviewPic(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 6

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 6
    if-eqz p3, :cond_e

    .line 8
    sget-object p3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;

    .line 10
    sget-object v1, Lcom/bumptech/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 12
    invoke-virtual {v0, p3, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 15
    :cond_e
    iget-object p3, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 17
    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 20
    move-result-object p2

    .line 21
    const p3, 0x7f08023e

    .line 24
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 30
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 40
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 43
    return-void
.end method

.method public loadRoundInto(Ljava/lang/String;JILandroid/widget/ImageView;I)V
    .registers 19

    move-object v11, p0

    .line 1
    iget v7, v11, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;IIIII)V

    return-void
.end method

.method public loadRoundInto(Ljava/lang/String;JILandroid/widget/ImageView;II)V
    .registers 19

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 2
    invoke-virtual/range {v0 .. v10}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;IIIII)V

    return-void
.end method

.method public loadRoundIntoByCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;ILandroid/widget/ImageView;Lcom/android/cloud/bean/TransferState;IIIZ)V
    .registers 26

    move-object/from16 v8, p0

    move/from16 v6, p2

    move-object/from16 v9, p3

    move/from16 v10, p8

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getThumbnailUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/cloud/bean/CloudFileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_2d

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/android/cloud/bean/CloudFileItem;->getCloudLocalFileId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 6
    invoke-virtual/range {p4 .. p4}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v2

    sget-object v3, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    if-eq v2, v3, :cond_2d

    move v2, v11

    goto :goto_2e

    :cond_2d
    move v2, v1

    :goto_2e
    if-nez v6, :cond_3e

    .line 7
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v0, v3, v10}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v3

    move v12, v3

    goto :goto_3f

    :cond_3e
    move v12, v6

    .line 8
    :goto_3f
    invoke-virtual/range {p1 .. p1}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v14, 0x7f080128

    const v4, 0x7f060553

    const/4 v5, 0x2

    if-nez v3, :cond_cf

    invoke-virtual/range {p1 .. p1}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v15, "video"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    goto/16 :goto_cf

    :cond_60
    const/4 v3, -0x1

    if-eqz v2, :cond_72

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->isApk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const v0, 0x7f0800c9

    goto :goto_70

    :cond_6d
    const v0, 0x7f080145

    :goto_70
    move v6, v0

    goto :goto_73

    :cond_72
    move v6, v3

    :goto_73
    if-eqz v2, :cond_77

    move v7, v4

    goto :goto_78

    :cond_77
    move v7, v3

    .line 10
    :goto_78
    new-instance v15, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v5, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v0, v5, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v8, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v13, v5

    move v5, v7

    move/from16 v7, v16

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIIIIZ)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object v0

    aput-object v0, v13, v11

    invoke-direct {v15, v13}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 13
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 14
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 15
    invoke-virtual {v0, v15}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    if-eqz v10, :cond_c3

    const v13, 0x7f0801af

    goto :goto_c4

    :cond_c3
    move v13, v14

    .line 16
    :goto_c4
    invoke-virtual {v0, v13}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 17
    invoke-virtual {v0, v9}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_14b

    :cond_cf
    :goto_cf
    if-nez v2, :cond_f1

    .line 18
    new-instance v12, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v13, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v0, v13, v1

    iget v4, v8, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIII)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object v0

    aput-object v0, v13, v11

    invoke-direct {v12, v13}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    goto :goto_115

    .line 19
    :cond_f1
    new-instance v12, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v13, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v0, v13, v1

    iget v5, v8, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move v4, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIII)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object v0

    aput-object v0, v13, v11

    invoke-direct {v12, v13}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 20
    :goto_115
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 22
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 23
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 24
    invoke-virtual {v0, v12}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    if-eqz v10, :cond_141

    const v13, 0x7f0801af

    goto :goto_142

    :cond_141
    move v13, v14

    .line 25
    :goto_142
    invoke-virtual {v0, v13}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, v9}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_14b
    return-void
.end method

.method public loadRoundIntoByCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;ILandroid/widget/ImageView;Lcom/android/cloud/bean/TransferState;ZZ)V
    .registers 17

    move-object v9, p0

    if-eqz p5, :cond_12

    .line 1
    iget v5, v9, Lcom/android/fileexplorer/model/FileIconHelper;->gridHorizontalPadding:I

    iget v6, v9, Lcom/android/fileexplorer/model/FileIconHelper;->gridTopPadding:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;ILandroid/widget/ImageView;Lcom/android/cloud/bean/TransferState;IIIZ)V

    goto :goto_1e

    :cond_12
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-virtual/range {v0 .. v8}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;ILandroid/widget/ImageView;Lcom/android/cloud/bean/TransferState;IIIZ)V

    :goto_1e
    return-void
.end method

.method public loadRoundIntoByFileInfo(Lcom/android/fileexplorer/model/FileInfo;ILandroid/widget/ImageView;IZZ)V
    .registers 15

    .line 1
    if-eqz p5, :cond_e

    .line 3
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 5
    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 7
    move-object v0, p0

    .line 8
    move v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move v6, p4

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;I)V

    .line 14
    goto :goto_21

    .line 15
    :cond_e
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 17
    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 19
    if-eqz p6, :cond_17

    .line 21
    iget v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radiusSixDp:I

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    iget v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    .line 26
    :goto_19
    move v7, v0

    .line 27
    move-object v0, p0

    .line 28
    move v4, p2

    .line 29
    move-object v5, p3

    .line 30
    move v6, p4

    .line 31
    invoke-virtual/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundInto(Ljava/lang/String;JILandroid/widget/ImageView;II)V

    .line 34
    :goto_21
    return-void
.end method

.method public loadRoundIntoByFileItemWithPadding(Lcom/android/fileexplorer/dao/file/FileItem;ILandroid/widget/ImageView;)V
    .registers 15

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 12
    move-result-wide v2

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/util/DisplayUtil;->getDefaultIconSize(Landroid/content/Context;)I

    .line 20
    move-result v6

    .line 21
    iget v7, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    .line 23
    const p1, 0x7f070218

    .line 26
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 29
    move-result v8

    .line 30
    const p1, 0x7f070219

    .line 33
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 36
    move-result v9

    .line 37
    const/4 v10, 0x0

    .line 38
    move-object v0, p0

    .line 39
    move v4, p2

    .line 40
    move-object v5, p3

    .line 41
    invoke-virtual/range {v0 .. v10}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;IIIII)V

    .line 44
    return-void
.end method

.method public loadRoundIntoByResIdWithPadding(ILandroid/widget/ImageView;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByUrlWithPadding(Landroid/net/Uri;ILandroid/widget/ImageView;)V

    .line 5
    return-void
.end method

.method public loadRoundIntoByUriWithPadding(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/Object;ILandroid/widget/ImageView;I)V

    .line 17
    return-void
.end method

.method public loadRoundIntoByUrl(Landroid/net/Uri;ILandroid/widget/ImageView;I)V
    .registers 9

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_11

    .line 11
    const p4, 0x7f07031d

    .line 14
    invoke-static {p4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 17
    move-result p4

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 20
    if-nez p1, :cond_19

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    :cond_19
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    .line 32
    const/4 v1, 0x2

    .line 33
    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    .line 35
    const/4 v2, 0x0

    .line 36
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 38
    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    .line 41
    aput-object v3, v1, v2

    .line 43
    const/4 v2, 0x1

    .line 44
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    .line 46
    invoke-direct {v3, p4}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 49
    aput-object v3, v1, v2

    .line 51
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 60
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 66
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 69
    return-void
.end method

.method public loadRoundIntoByUrlWithPadding(Landroid/net/Uri;ILandroid/widget/ImageView;)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/Object;ILandroid/widget/ImageView;I)V

    return-void
.end method

.method public loadRoundIntoByUrlWithPadding(Landroid/net/Uri;ILandroid/widget/ImageView;Z)V
    .registers 16

    .line 2
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f07031d

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    .line 4
    :cond_13
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v4, p0, Lcom/android/fileexplorer/model/FileIconHelper;->gridHorizontalPadding:I

    iget v5, p0, Lcom/android/fileexplorer/model/FileIconHelper;->gridTopPadding:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v3, p0

    move v10, p4

    .line 5
    invoke-direct/range {v3 .. v10}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIIIIZ)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object p4

    aput-object p4, v1, v2

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 7
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public loadRoundIntoByUrlWithSign(Landroid/net/Uri;ILandroid/widget/ImageView;Ljava/lang/String;IZIII)V
    .registers 26

    .line 1
    move-object/from16 v8, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move/from16 v9, p2

    .line 7
    move-object/from16 v10, p3

    .line 9
    move-object/from16 v11, p4

    .line 11
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_5a

    .line 21
    iget-object v1, v8, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 23
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    .line 26
    move-result-object v12

    .line 27
    new-instance v13, Lcom/bumptech/glide/load/MultiTransformation;

    .line 29
    const/4 v0, 0x2

    .line 30
    new-array v14, v0, [Lcom/bumptech/glide/load/Transformation;

    .line 32
    const/4 v0, 0x0

    .line 33
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 35
    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    .line 38
    aput-object v1, v14, v0

    .line 40
    const/4 v15, 0x1

    .line 41
    const/4 v5, -0x1

    .line 42
    const/4 v6, -0x1

    .line 43
    move-object/from16 v0, p0

    .line 45
    move/from16 v1, p7

    .line 47
    move/from16 v2, p8

    .line 49
    move/from16 v3, p9

    .line 51
    move/from16 v4, p5

    .line 53
    move/from16 v7, p6

    .line 55
    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIIIIZ)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    .line 58
    move-result-object v0

    .line 59
    aput-object v0, v14, v15

    .line 61
    invoke-direct {v13, v14}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 64
    invoke-virtual {v12, v13}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 70
    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    .line 72
    invoke-direct {v1, v11}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 81
    invoke-virtual {v0, v9}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 87
    invoke-virtual {v0, v10}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 90
    goto :goto_7a

    .line 91
    :cond_5a
    iget-object v1, v8, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 93
    if-nez v0, :cond_62

    .line 95
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v0

    .line 99
    :cond_62
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    .line 105
    invoke-direct {v1, v11}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 114
    invoke-virtual {v0, v9}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 120
    invoke-virtual {v0, v10}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 123
    :goto_7a
    return-void
.end method

.method public loadRoundIntoWithPadding(Ljava/lang/Object;ILandroid/widget/ImageView;I)V
    .registers 10

    .line 20
    invoke-direct {p0}, Lcom/android/fileexplorer/model/FileIconHelper;->ignoreDiskCache()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_4b

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 22
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 23
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v3, v3, [Lcom/bumptech/glide/load/Transformation;

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v4, v3, v2

    iget v2, p0, Lcom/android/fileexplorer/model/FileIconHelper;->gridHorizontalPadding:I

    iget v4, p0, Lcom/android/fileexplorer/model/FileIconHelper;->gridTopPadding:I

    .line 24
    invoke-direct {p0, v2, v4, p4}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(III)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object p4

    aput-object p4, v3, v1

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 25
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 26
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_8a

    .line 27
    :cond_4b
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 29
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v3, v3, [Lcom/bumptech/glide/load/Transformation;

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v4, v3, v2

    iget v2, p0, Lcom/android/fileexplorer/model/FileIconHelper;->gridHorizontalPadding:I

    iget v4, p0, Lcom/android/fileexplorer/model/FileIconHelper;->gridTopPadding:I

    .line 30
    invoke-direct {p0, v2, v4, p4}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(III)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object p4

    aput-object p4, v3, v1

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 31
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 32
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_8a
    return-void
.end method

.method public loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;I)V
    .registers 19

    move-object v11, p0

    .line 1
    iget v7, v11, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    iget v8, v11, Lcom/android/fileexplorer/model/FileIconHelper;->gridHorizontalPadding:I

    iget v9, v11, Lcom/android/fileexplorer/model/FileIconHelper;->gridTopPadding:I

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;IIIII)V

    return-void
.end method

.method public loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;IIIII)V
    .registers 25

    move-object v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    .line 3
    sget-boolean v6, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz v6, :cond_2f

    .line 4
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070076

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 5
    new-instance v7, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v7}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v7, v6, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    :cond_2f
    sget-boolean v6, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v6, :cond_36

    .line 7
    invoke-virtual {v5, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 8
    :cond_36
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v6, :cond_a6

    const v6, 0x7f07031d

    .line 9
    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 10
    invoke-virtual {v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/RequestBuilder;

    .line 11
    invoke-virtual {v5, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    new-instance v5, Lcom/bumptech/glide/signature/ObjectKey;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v3, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-array v1, v9, [Lcom/bumptech/glide/load/Transformation;

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v2, v1, v8

    new-instance v2, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v3, v9, [Lcom/bumptech/glide/load/Transformation;

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v5, v3, v8

    new-instance v5, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-object v6, p0

    iget v8, v6, Lcom/android/fileexplorer/model/FileIconHelper;->borderWidth:I

    int-to-float v8, v8

    const v9, 0x7f0600b6

    .line 13
    invoke-static {v9}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v9

    const/16 v10, 0xc

    invoke-direct {v5, v8, v9, v10}, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;-><init>(FII)V

    aput-object v5, v3, v7

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    aput-object v2, v1, v7

    .line 14
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 15
    invoke-virtual {v0, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_f4

    :cond_a6
    move-object v6, p0

    .line 16
    invoke-virtual {v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/RequestBuilder;

    .line 17
    invoke-virtual {v5, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    new-instance v5, Lcom/bumptech/glide/signature/ObjectKey;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v3, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v2, v9, [Lcom/bumptech/glide/load/Transformation;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v3, v2, v8

    const/4 v13, -0x1

    move-object v8, p0

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p7

    .line 19
    invoke-direct/range {v8 .. v13}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIII)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_f4
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->getInstance()Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->pause()V

    .line 13
    return-void
.end method

.method public release()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->getInstance()Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->clear()V

    .line 19
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->getInstance()Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->resume()V

    .line 13
    return-void
.end method

.method public setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;I)V
    .registers 15

    .line 1
    iget v7, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;II)V

    return-void
.end method

.method public setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;II)V
    .registers 21

    move-object v12, p0

    .line 2
    iget v8, v12, Lcom/android/fileexplorer/model/FileIconHelper;->gridHorizontalPadding:I

    iget v9, v12, Lcom/android/fileexplorer/model/FileIconHelper;->gridTopPadding:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIIIIZ)V

    return-void
.end method

.method public setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIIIIZ)V
    .registers 27

    move-object v11, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v10, p4

    move/from16 v0, p11

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/android/fileexplorer/util/WechatUtil;->isApk(Ljava/lang/String;)Z

    move-result v4

    const-string v12, "apk"

    const/4 v13, 0x0

    if-eqz v4, :cond_1e

    if-eqz v0, :cond_18

    const v5, 0x7f0801b4

    goto :goto_1c

    .line 4
    :cond_18
    invoke-static {v12}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    move-result v5

    :goto_1c
    move-object v14, v12

    goto :goto_21

    :cond_1e
    move-object/from16 v14, p5

    move v5, v13

    .line 5
    :goto_21
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    move-object v6, v14

    goto :goto_2d

    :cond_29
    invoke-static/range {p1 .. p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2d
    if-nez v4, :cond_41

    if-nez p6, :cond_3e

    .line 6
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v6, v4, v0}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v4

    goto :goto_42

    :cond_3e
    move/from16 v4, p6

    goto :goto_42

    :cond_41
    move v4, v5

    .line 7
    :goto_42
    invoke-static {v6}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "image/"

    .line 8
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_94

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0701ef

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    cmp-long v0, v2, v8

    if-gez v0, :cond_80

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    move-object v0, p0

    move-object/from16 v5, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;IIIII)V

    goto/16 :goto_146

    :cond_80
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v5, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 12
    invoke-virtual/range {v0 .. v10}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;IIIII)V

    goto/16 :goto_146

    :cond_94
    const-string v7, "audio/aac"

    .line 13
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 14
    invoke-virtual {p0, v4, v10}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByResIdWithPadding(ILandroid/widget/ImageView;)V

    goto/16 :goto_146

    :cond_a1
    const-string v7, "audio/"

    .line 15
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b2

    .line 16
    invoke-static {v6, v13, v0}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    goto/16 :goto_146

    .line 17
    :cond_b2
    invoke-static {v5, v1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    cmp-long v0, v2, v8

    if-gez v0, :cond_e0

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_dd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ef

    :cond_dd
    const-string v0, ""

    goto :goto_ef

    .line 20
    :cond_e0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ef
    move-object v6, v0

    .line 21
    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    move-object v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v3, p4

    move-object v4, v6

    move/from16 v5, p7

    move v6, v7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByUrlWithSign(Landroid/net/Uri;ILandroid/widget/ImageView;Ljava/lang/String;IZIII)V

    .line 22
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13f

    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13f

    const v0, 0x7f0a027a

    .line 23
    invoke-virtual {v10, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_13f

    invoke-virtual {v10, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13f

    const/16 v0, 0x1a

    .line 24
    invoke-virtual {v10, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f080687

    .line 25
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_146

    .line 26
    :cond_13f
    invoke-virtual {v10, v13, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    const/4 v0, 0x0

    .line 27
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_146
    return-void
.end method

.method public setPrivateFileIcon(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/widget/ImageView;)V
    .registers 14

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getViewMode(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne v1, v0, :cond_10

    .line 15
    move v3, v1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v3, v2

    .line 18
    :goto_11
    if-eqz v3, :cond_1b

    .line 20
    iget v4, p0, Lcom/android/fileexplorer/model/FileIconHelper;->gridHorizontalPadding:I

    .line 22
    iget v5, p0, Lcom/android/fileexplorer/model/FileIconHelper;->gridTopPadding:I

    .line 24
    move v7, v2

    .line 25
    move v6, v5

    .line 26
    move v5, v4

    .line 27
    goto :goto_20

    .line 28
    :cond_1b
    iget v4, p0, Lcom/android/fileexplorer/model/FileIconHelper;->ListPadding:I

    .line 30
    move v5, v4

    .line 31
    move v6, v5

    .line 32
    move v7, v6

    .line 33
    :goto_20
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_31

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4, v1, v2, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->getFolderID(Landroid/content/Context;ZZI)I

    .line 46
    move-result v0

    .line 47
    const-string v4, ""

    .line 49
    goto :goto_45

    .line 50
    :cond_31
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 65
    move-result v0

    .line 66
    invoke-static {v4, v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 69
    move-result v0

    .line 70
    :goto_45
    move-object v10, v4

    .line 71
    move v4, v0

    .line 72
    move-object v0, v10

    .line 73
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getThumbPath()Ljava/lang/String;

    .line 76
    move-result-object v8

    .line 77
    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    const-string v9, "image/"

    .line 83
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    move-result v9

    .line 87
    if-nez v9, :cond_6b

    .line 89
    const-string v9, "video/"

    .line 91
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    move-result v9

    .line 95
    if-nez v9, :cond_6b

    .line 97
    const-string v9, "application/vnd.android.package-archive"

    .line 99
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_69

    .line 105
    goto :goto_6b

    .line 106
    :cond_69
    move v9, v2

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    :goto_6b
    move v9, v1

    .line 109
    :goto_6c
    invoke-direct {p0, v0, v3}, Lcom/android/fileexplorer/model/FileIconHelper;->isLoadDefaultDrawable(Ljava/lang/String;Z)Z

    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_74

    .line 115
    const/4 v0, 0x0

    .line 116
    goto :goto_7e

    .line 117
    :cond_74
    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    const-string v1, "encrypted_thumbnail"

    .line 123
    invoke-static {v1, v8, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 126
    move-result-object v0

    .line 127
    :goto_7e
    move-object v1, v0

    .line 128
    iget v8, p0, Lcom/android/fileexplorer/model/FileIconHelper;->radius:I

    .line 130
    move-object v0, p0

    .line 131
    move-object v2, p2

    .line 132
    move v3, v4

    .line 133
    move v4, v8

    .line 134
    move v8, v9

    .line 135
    invoke-virtual/range {v0 .. v8}, Lcom/android/fileexplorer/model/FileIconHelper;->setPrivateFileIconLoad(Landroid/net/Uri;Landroid/widget/ImageView;IIIIIZ)V

    .line 138
    return-void
.end method

.method public setPrivateFileIconLoad(Landroid/net/Uri;Landroid/widget/ImageView;IIIIIZ)V
    .registers 18

    .line 1
    move-object v8, p0

    .line 2
    if-nez p8, :cond_14

    .line 4
    new-instance v0, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    .line 6
    iget v1, v8, Lcom/android/fileexplorer/model/FileIconHelper;->borderWidth:I

    .line 8
    int-to-float v1, v1

    .line 9
    const v2, 0x7f0600b6

    .line 12
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 15
    move-result v2

    .line 16
    move v4, p4

    .line 17
    invoke-direct {v0, v1, v2, p4}, Lcom/android/fileexplorer/view/crop/BorderRoundTransform;-><init>(FII)V

    .line 20
    goto :goto_21

    .line 21
    :cond_14
    move v4, p4

    .line 22
    const/4 v5, -0x1

    .line 23
    const/4 v6, -0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v0, p0

    .line 26
    move v1, p5

    .line 27
    move v2, p6

    .line 28
    move/from16 v3, p7

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->getTransformWithPadding(IIIIIIZ)Lcom/android/fileexplorer/view/crop/BorderRoundTransform;

    .line 33
    move-result-object v0

    .line 34
    :goto_21
    iget-object v1, v8, Lcom/android/fileexplorer/model/FileIconHelper;->mRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 36
    move-object v2, p1

    .line 37
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lcom/bumptech/glide/load/MultiTransformation;

    .line 43
    const/4 v3, 0x2

    .line 44
    new-array v3, v3, [Lcom/bumptech/glide/load/Transformation;

    .line 46
    const/4 v4, 0x0

    .line 47
    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 49
    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    .line 52
    aput-object v5, v3, v4

    .line 54
    const/4 v4, 0x1

    .line 55
    aput-object v0, v3, v4

    .line 57
    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 60
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 66
    move v1, p3

    .line 67
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 73
    move-object v1, p2

    .line 74
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 77
    return-void
.end method
