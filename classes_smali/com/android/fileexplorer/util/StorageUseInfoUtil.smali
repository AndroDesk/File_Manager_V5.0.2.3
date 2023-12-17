.class public Lcom/android/fileexplorer/util/StorageUseInfoUtil;
.super Ljava/lang/Object;
.source "StorageUseInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;,
        Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;
    }
.end annotation


# static fields
.field private static CATEGORY_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "StorageUseInfoUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "SUM(_size)"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->CATEGORY_COLUMNS:[Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDocSelection()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sDocExts:[Ljava/lang/String;

    .line 8
    const-string v2, "("

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_f
    if-ge v4, v2, :cond_23

    .line 18
    aget-object v5, v1, v4

    .line 20
    const-string v6, "(_data LIKE \'%."

    .line 22
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v5, "\') OR "

    .line 30
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 35
    goto :goto_f

    .line 36
    :cond_23
    const-string v1, ")"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    .line 41
    move-result v2

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 44
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method private static buildSelectionByCategory(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$1;->$SwitchMap$com$android$fileexplorer$util$StorageUseInfoUtil$StorageCategory:[I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_19

    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_16

    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_13

    .line 18
    const/4 p0, 0x0

    .line 19
    goto :goto_1d

    .line 20
    :cond_13
    const-string p0, "(_data LIKE \'%.apk\' OR _data LIKE \'%.apk.1\')"

    .line 22
    goto :goto_1d

    .line 23
    :cond_16
    const-string p0, "(mime_type == \'application/zip\' OR _data LIKE \'%.rar\')"

    .line 25
    goto :goto_1d

    .line 26
    :cond_19
    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->buildDocSelection()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    :goto_1d
    return-object p0
.end method

.method public static getAvailableExternalStorageSize()J
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getSDStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_13

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getAvailableStorageSize(Ljava/lang/String;)J

    .line 18
    move-result-wide v0

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const-wide/16 v0, 0x0

    .line 22
    :goto_15
    return-wide v0
.end method

.method public static getAvailableInternalStorageSize()J
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Environment.getAvailableInternalStorageSize() path="

    .line 7
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "StorageUseInfoUtil"

    .line 24
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getAvailableStorageSize(Ljava/lang/String;)J

    .line 34
    move-result-wide v0

    .line 35
    return-wide v0
.end method

.method public static getAvailableStorageSize(Ljava/lang/String;)J
    .registers 9

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    if-nez v0, :cond_63

    .line 9
    new-instance v0, Ljava/io/File;

    .line 11
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    const-string p0, "File.getAvailableExternalStorageSize() sd path="

    .line 16
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    const-string v3, "StorageUseInfoUtil"

    .line 33
    invoke-static {v3, p0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :try_start_23
    new-instance p0, Landroid/os/StatFs;

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 48
    move-result-wide v4

    .line 49
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 52
    move-result-wide v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_34} :catch_5f

    .line 53
    mul-long v6, v0, v4

    .line 55
    :try_start_36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v2, "getAvailableStorageSize blockSize = "

    .line 62
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    const-string v2, ";totalBlocks="

    .line 70
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, ";sdSize="

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    invoke-static {v3, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5a} :catch_5c

    .line 91
    move-wide v1, v6

    .line 92
    goto :goto_63

    .line 93
    :catch_5c
    move-exception p0

    .line 94
    move-wide v1, v6

    .line 95
    goto :goto_60

    .line 96
    :catch_5f
    move-exception p0

    .line 97
    :goto_60
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    :cond_63
    :goto_63
    return-wide v1
.end method

.method private static getContentUriByCategory(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Landroid/net/Uri;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$1;->$SwitchMap$com$android$fileexplorer$util$StorageUseInfoUtil$StorageCategory:[I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 9
    packed-switch p0, :pswitch_data_1e

    .line 12
    const/4 p0, 0x0

    .line 13
    goto :goto_1c

    .line 14
    :pswitch_d  #0x6
    sget-object p0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 16
    goto :goto_1c

    .line 17
    :pswitch_10  #0x5
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 19
    goto :goto_1c

    .line 20
    :pswitch_13  #0x4
    sget-object p0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 22
    goto :goto_1c

    .line 23
    :pswitch_16  #0x1, 0x2, 0x3
    const-string p0, "external"

    .line 25
    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    move-result-object p0

    .line 29
    :goto_1c
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_16  #00000001
        :pswitch_16  #00000002
        :pswitch_16  #00000003
        :pswitch_13  #00000004
        :pswitch_10  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public static getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;
    .registers 6

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_6
    sget-object v2, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->CATEGORY_COLUMNS:[Ljava/lang/String;

    .line 9
    const/4 v3, -0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-static {p0, v2, v4, v3}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->queryCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;[Ljava/lang/String;II)Landroid/database/Cursor;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1c

    .line 17
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1c

    .line 23
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 26
    move-result-wide v2

    .line 27
    iput-wide v2, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_20

    .line 29
    :cond_1c
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 32
    return-object v0

    .line 33
    :catchall_20
    move-exception p0

    .line 34
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 37
    throw p0
.end method

.method public static getTotalExternalStorageSize()J
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getSDStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_14

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getTotalStorageSize(Ljava/lang/String;Z)J

    .line 19
    move-result-wide v0

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    const-wide/16 v0, 0x0

    .line 23
    :goto_16
    return-wide v0
.end method

.method public static getTotalInternalStorageSize()J
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Environment.getTotalInternalStorageSize() path="

    .line 7
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "StorageUseInfoUtil"

    .line 24
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getTotalStorageSize(Ljava/lang/String;Z)J

    .line 35
    move-result-wide v0

    .line 36
    return-wide v0
.end method

.method public static getTotalStorageSize(Ljava/lang/String;Z)J
    .registers 10

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    if-nez v0, :cond_71

    .line 9
    new-instance v0, Ljava/io/File;

    .line 11
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    const-string p0, "File.getTotalExternalStorageSize() sd path="

    .line 16
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    const-string v3, "StorageUseInfoUtil"

    .line 33
    invoke-static {v3, p0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :try_start_23
    new-instance p0, Landroid/os/StatFs;

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 48
    move-result-wide v4

    .line 49
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 52
    move-result-wide v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_34} :catch_6d

    .line 53
    mul-long v6, v0, v4

    .line 55
    if-nez p1, :cond_3c

    .line 57
    :try_start_38
    invoke-static {v6, v7}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->roundStorageSize(J)J

    .line 60
    move-result-wide v6

    .line 61
    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v2, "getTotalStorageSize blockSize = "

    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, ";totalBlocks="

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    const-string v0, ";sdSize="

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, ";isExternal="

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-static {v3, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_68} :catch_6a

    .line 105
    move-wide v1, v6

    .line 106
    goto :goto_71

    .line 107
    :catch_6a
    move-exception p0

    .line 108
    move-wide v1, v6

    .line 109
    goto :goto_6e

    .line 110
    :catch_6d
    move-exception p0

    .line 111
    :goto_6e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    :cond_71
    :goto_71
    return-wide v1
.end method

.method private static queryCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;[Ljava/lang/String;II)Landroid/database/Cursor;
    .registers 12

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getContentUriByCategory(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Landroid/net/Uri;

    .line 4
    move-result-object v1

    .line 5
    invoke-static {p0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->buildSelectionByCategory(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Ljava/lang/String;

    .line 8
    move-result-object v3

    .line 9
    const-string v0, ","

    .line 11
    const-string v2, " limit "

    .line 13
    if-ltz p2, :cond_26

    .line 15
    if-lez p3, :cond_26

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    goto :goto_28

    .line 39
    :cond_26
    const-string v4, ""

    .line 41
    :goto_28
    const-string v6, "StorageUseInfoUtil"

    .line 43
    const/4 v7, 0x0

    .line 44
    if-nez v1, :cond_42

    .line 46
    const-string p1, "invalid uri, category:"

    .line 48
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-static {v6, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-object v7

    .line 67
    :cond_42
    :try_start_42
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    const/16 v5, 0x1d

    .line 71
    if-lt p0, v5, :cond_76

    .line 73
    new-instance p0, Landroid/os/Bundle;

    .line 75
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 78
    if-eqz v3, :cond_54

    .line 80
    const-string v0, "android:query-arg-sql-selection"

    .line 82
    invoke-virtual {p0, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_54
    if-eqz v4, :cond_5b

    .line 87
    const-string v0, "android:query-arg-sql-sort-order"

    .line 89
    invoke-virtual {p0, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_5b
    if-ltz p2, :cond_69

    .line 94
    if-lez p3, :cond_69

    .line 96
    const-string v0, "android:query-arg-limit"

    .line 98
    invoke-virtual {p0, v0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string p3, "android:query-arg-offset"

    .line 103
    invoke-virtual {p0, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 106
    :cond_69
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 113
    move-result-object p2

    .line 114
    invoke-static {p2, v1, p1, p0}, Landroidx/appcompat/widget/x;->f(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    .line 117
    move-result-object p0

    .line 118
    goto :goto_a3

    .line 119
    :cond_76
    if-ltz p2, :cond_94

    .line 121
    if-lez p3, :cond_94

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    move-object v5, p0

    .line 148
    goto :goto_95

    .line 149
    :cond_94
    move-object v5, v4

    .line 150
    :goto_95
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 157
    move-result-object v0

    .line 158
    const/4 v4, 0x0

    .line 159
    move-object v2, p1

    .line 160
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 163
    move-result-object p0
    :try_end_a3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_42 .. :try_end_a3} :catch_a4

    .line 164
    :goto_a3
    return-object p0

    .line 165
    :catch_a4
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    move-result-object p0

    .line 170
    invoke-static {v6, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-object v7
.end method

.method public static roundStorageSize(J)J
    .registers 11

    const-wide/16 v0, 0x1

    move-wide v2, v0

    move-wide v4, v2

    :cond_4
    :goto_4
    mul-long v6, v2, v4

    cmp-long v8, v6, p0

    if-gez v8, :cond_17

    const/4 v6, 0x1

    shl-long/2addr v2, v6

    const-wide/16 v6, 0x200

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    const-wide/16 v2, 0x3e8

    mul-long/2addr v4, v2

    move-wide v2, v0

    goto :goto_4

    :cond_17
    return-wide v6
.end method
