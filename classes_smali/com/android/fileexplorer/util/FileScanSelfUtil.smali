.class public Lcom/android/fileexplorer/util/FileScanSelfUtil;
.super Ljava/lang/Object;
.source "FileScanSelfUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/FileScanSelfUtil$ScanNameFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileScanSelfUtil"

.field private static final sScanParentPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sScanPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/util/FileScanSelfUtil;->sScanPaths:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sput-object v0, Lcom/android/fileexplorer/util/FileScanSelfUtil;->sScanParentPaths:Ljava/util/List;

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    const/16 v1, 0x1e

    .line 19
    if-ge v0, v1, :cond_23

    .line 21
    const-string v0, "/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv"

    .line 23
    invoke-static {v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->addPath(Ljava/lang/String;)V

    .line 26
    const-string v0, "/Android/data/com.tencent.mm/MicroMsg/Download"

    .line 28
    invoke-static {v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->addPath(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/android/fileexplorer/apptag/GroupPathManager$ScanParentDir;->ZSXQ_PARENT_PATH:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->addParentPath(Ljava/lang/String;)V

    .line 36
    :cond_23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFileInfoListSource(Lcom/android/fileexplorer/apptag/AppScanConfigManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/apptag/AppScanConfigManager;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_25

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_25

    .line 9
    if-nez p0, :cond_b

    .line 11
    goto :goto_25

    .line 12
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p1

    .line 21
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_24

    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 33
    invoke-static {p0, v1}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->addFileInfoSource(Lcom/android/fileexplorer/apptag/AppScanConfigManager;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 36
    goto :goto_14

    .line 37
    :cond_24
    return-object v0

    .line 38
    :cond_25
    :goto_25
    return-object p1
.end method

.method public static addFileInfoSource(Lcom/android/fileexplorer/apptag/AppScanConfigManager;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->getParentDir(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getConfigForPath(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_2c

    .line 20
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {p0, v1, v2}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getAppInfoByAppId(J)Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_44

    .line 34
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppName()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    iput-object p0, p1, Lcom/android/fileexplorer/model/FileInfo;->source:Ljava/lang/String;

    .line 44
    goto :goto_44

    .line 45
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getAppInfoByPkgName(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 56
    move-result-object p0

    .line 57
    if-eqz p0, :cond_44

    .line 59
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppName()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByLocale(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    iput-object p0, p1, Lcom/android/fileexplorer/model/FileInfo;->source:Ljava/lang/String;

    .line 69
    :cond_44
    :goto_44
    iget-object p0, p1, Lcom/android/fileexplorer/model/FileInfo;->source:Ljava/lang/String;

    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_52

    .line 77
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    iput-object p0, p1, Lcom/android/fileexplorer/model/FileInfo;->source:Ljava/lang/String;

    .line 83
    :cond_52
    return-void
.end method

.method private static addParentPath(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    sget-object v0, Lcom/android/fileexplorer/util/FileScanSelfUtil;->sScanParentPaths:Ljava/util/List;

    .line 26
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method private static addPath(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    sget-object v0, Lcom/android/fileexplorer/util/FileScanSelfUtil;->sScanPaths:Ljava/util/List;

    .line 26
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method private static getParentDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1b

    .line 7
    const-string v0, "/"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_f

    .line 15
    goto :goto_1b

    .line 16
    :cond_f
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method private static getScanDocExtByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/FileScanSelfUtil$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 9
    packed-switch p0, :pswitch_data_2e

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :pswitch_d  #0xb
    sget-object p0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_AUDIO_FORMAT:[Ljava/lang/String;

    .line 16
    return-object p0

    .line 17
    :pswitch_10  #0xa
    sget-object p0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_VIDEO_FORMAT:[Ljava/lang/String;

    .line 19
    return-object p0

    .line 20
    :pswitch_13  #0x9
    sget-object p0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_PHOTO_FORMAT:[Ljava/lang/String;

    .line 22
    return-object p0

    .line 23
    :pswitch_16  #0x8
    sget-object p0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_APK_FORMAT:[Ljava/lang/String;

    .line 25
    return-object p0

    .line 26
    :pswitch_19  #0x7
    sget-object p0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_ZIP_FORMAT:[Ljava/lang/String;

    .line 28
    return-object p0

    .line 29
    :pswitch_1c  #0x6
    sget-object p0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sDocAllExts:[Ljava/lang/String;

    .line 31
    return-object p0

    .line 32
    :pswitch_1f  #0x5
    sget-object p0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sOtherExts:[Ljava/lang/String;

    .line 34
    return-object p0

    .line 35
    :pswitch_22  #0x4
    sget-object p0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sPptExts:[Ljava/lang/String;

    .line 37
    return-object p0

    .line 38
    :pswitch_25  #0x3
    sget-object p0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sPdfExts:[Ljava/lang/String;

    .line 40
    return-object p0

    .line 41
    :pswitch_28  #0x2
    sget-object p0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sXlsExts:[Ljava/lang/String;

    .line 43
    return-object p0

    .line 44
    :pswitch_2b  #0x1
    sget-object p0, Lcom/android/fileexplorer/apptag/SysMediaStoreHelper;->sWordExts:[Ljava/lang/String;

    .line 46
    return-object p0

    .line 47
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b  #00000001
        :pswitch_28  #00000002
        :pswitch_25  #00000003
        :pswitch_22  #00000004
        :pswitch_1f  #00000005
        :pswitch_1c  #00000006
        :pswitch_19  #00000007
        :pswitch_16  #00000008
        :pswitch_13  #00000009
        :pswitch_10  #0000000a
        :pswitch_d  #0000000b
    .end packed-switch
.end method

.method private static getVideoDuration(Ljava/lang/String;)J
    .registers 5

    .line 1
    const-string v0, "FileScanSelfUtil"

    .line 3
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    .line 5
    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 8
    :try_start_7
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 11
    const/16 p0, 0x9

    .line 13
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v3, "duration = "

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 40
    move-result-wide v2
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_28} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_28} :catch_2e
    .catchall {:try_start_7 .. :try_end_28} :catchall_2c

    .line 41
    :try_start_28
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2b} :catch_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2b

    .line 44
    :catch_2b
    return-wide v2

    .line 45
    :catchall_2c
    move-exception p0

    .line 46
    goto :goto_4b

    .line 47
    :catch_2e
    move-exception p0

    .line 48
    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v3, "getVideoDuration error: "

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_2c

    .line 72
    :catch_47
    :try_start_47
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4a} :catch_4f
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4f

    .line 75
    goto :goto_4f

    .line 76
    :goto_4b
    :try_start_4b
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4e} :catch_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4e

    .line 79
    :catch_4e
    throw p0

    .line 80
    :catch_4f
    :goto_4f
    const-wide/16 v0, 0x0

    .line 82
    return-wide v0
.end method

.method public static mergeFileInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->mergeFileInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static mergeFileInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_77

    if-eqz p1, :cond_77

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_77

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_77

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_21

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    move-result-object v0

    .line 6
    :cond_21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    .line 7
    iget-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_25

    if-eqz v0, :cond_25

    .line 8
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->addFileInfoSource(Lcom/android/fileexplorer/apptag/AppScanConfigManager;Lcom/android/fileexplorer/model/FileInfo;)V

    goto :goto_25

    .line 9
    :cond_3e
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 10
    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    if-eqz p2, :cond_5d

    if-eqz v0, :cond_5d

    .line 11
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->addFileInfoSource(Lcom/android/fileexplorer/apptag/AppScanConfigManager;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 12
    :cond_5d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_61
    const-string v3, "contains, continue path = "

    .line 13
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 14
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileScanSelfUtil"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_76
    return-object v1

    :cond_77
    if-eqz p0, :cond_8c

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8c

    if-eqz p2, :cond_85

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    move-result-object v0

    :cond_85
    if-eqz p2, :cond_8b

    .line 17
    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->addFileInfoListSource(Lcom/android/fileexplorer/apptag/AppScanConfigManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_8b
    return-object p0

    :cond_8c
    if-eqz p1, :cond_a1

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a1

    if-eqz p2, :cond_9a

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    move-result-object v0

    :cond_9a
    if-eqz p2, :cond_a0

    .line 20
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->addFileInfoListSource(Lcom/android/fileexplorer/apptag/AppScanConfigManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_a0
    return-object p1

    .line 21
    :cond_a1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static scanAllFolderFiles(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/util/FileScanSelfUtil;->sScanPaths:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1f

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 24
    invoke-static {v2, p0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->scanFolderFile(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    goto :goto_b

    .line 32
    :cond_1f
    sget-object v1, Lcom/android/fileexplorer/util/FileScanSelfUtil;->sScanParentPaths:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v1

    .line 38
    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_55

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/String;

    .line 50
    const-string v3, "com.unnoo.quan"

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_25

    .line 58
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/ExternalStorageAppFilesUtil;->isZSXQParentDir(Ljava/lang/String;)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_25

    .line 64
    invoke-static {}, Lcom/android/fileexplorer/apptag/ExternalStorageAppFilesUtil;->getZSXQDocDir()[Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_25

    .line 70
    array-length v3, v2

    .line 71
    const/4 v4, 0x0

    .line 72
    :goto_47
    if-ge v4, v3, :cond_25

    .line 74
    aget-object v5, v2, v4

    .line 76
    invoke-static {v5, p0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->scanFolderFile(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;

    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 85
    goto :goto_47

    .line 86
    :cond_55
    return-object v0
.end method

.method private static scanFolderFile(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/io/File;

    .line 8
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_11

    .line 17
    return-object v0

    .line 18
    :cond_11
    new-instance p0, Lcom/android/fileexplorer/util/FileScanSelfUtil$ScanNameFilter;

    .line 20
    invoke-static {p1}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->getScanDocExtByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)[Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/util/FileScanSelfUtil$ScanNameFilter;-><init>([Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 30
    move-result-object p0

    .line 31
    if-nez p0, :cond_21

    .line 33
    return-object v0

    .line 34
    :cond_21
    array-length v1, p0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_23
    if-ge v2, v1, :cond_62

    .line 38
    aget-object v3, p0, v2

    .line 40
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_5f

    .line 50
    iget-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 52
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 55
    move-result v4

    .line 56
    int-to-long v4, v4

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    move-result-object v4

    .line 61
    iput-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 63
    iget-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 65
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    iput-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->subFileCategoryType:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 74
    move-result v4

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v4

    .line 79
    iput-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    .line 81
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 83
    if-ne v4, p1, :cond_5c

    .line 85
    iget-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 87
    invoke-static {v4}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->getVideoDuration(Ljava/lang/String;)J

    .line 90
    move-result-wide v4

    .line 91
    iput-wide v4, v3, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    .line 93
    :cond_5c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_23

    .line 99
    :cond_62
    return-object v0
.end method
