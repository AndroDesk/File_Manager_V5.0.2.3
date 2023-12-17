.class public Lcom/android/fileexplorer/apptag/AppScanConfigManager;
.super Ljava/lang/Object;
.source "AppScanConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileBlackList;,
        Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;
    }
.end annotation


# static fields
.field private static final APP_CONFIG_DISABLE:Ljava/lang/String; = "disable"

.field private static final APP_CONFIG_ENABLE:Ljava/lang/String; = "enable"

.field public static final BLACK_VERSION_CODE:Ljava/lang/String; = "black_ver_code"

.field private static final DIR_TYPE_ROOT:I

.field public static final SCAN_VERSION_CODE:Ljava/lang/String; = "ver_code"

.field private static final TAG:Ljava/lang/String; = "AppScanConfigManager"

.field private static volatile sInstance:Lcom/android/fileexplorer/apptag/AppScanConfigManager;


# instance fields
.field private mAppInfoDaoUtils:Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

.field private mAppInfoMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/fileexplorer/dao/scan/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppInfoMapPkgName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/dao/scan/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppScanConfigDaoUtils:Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;

.field private mAppScanConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mAppScanConfigMapRaw:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackDirList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/BlackDirInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIgnoreDirDataUtils:Lcom/android/fileexplorer/util/dao/BlackDirInfoDaoUtils;

.field private mRootPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mRootPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionInfoDataUtils:Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->DIR_TYPE_ROOT:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMapRaw:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMap:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMapPkgName:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mBlackDirList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mHasLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoDaoUtils:Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

    new-instance v0, Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigDaoUtils:Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;

    new-instance v0, Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mVersionInfoDataUtils:Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;

    new-instance v0, Lcom/android/fileexplorer/util/dao/BlackDirInfoDaoUtils;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/BlackDirInfoDaoUtils;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mIgnoreDirDataUtils:Lcom/android/fileexplorer/util/dao/BlackDirInfoDaoUtils;

    return-void
.end method

.method private cacheAppInfo(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/scan/AppInfo;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_38
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMapPkgName:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_42
    return-void
.end method

.method private cacheAppScanConfig(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_d8

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    if-eqz v1, :cond_c7

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c7

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_60

    array-length v3, v0

    :goto_3f
    if-ge v4, v3, :cond_71

    aget-object v5, v0, v4

    new-instance v6, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    invoke-direct {v6, v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;-><init>(Lcom/android/fileexplorer/dao/scan/AppScanConfig;)V

    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppDirPath(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_60
    array-length v3, v0

    :goto_61
    if-ge v4, v3, :cond_71

    aget-object v5, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getAppScanConfigList(Lcom/android/fileexplorer/dao/scan/AppScanConfig;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6e

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    :cond_71
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_75
    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirType()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_b9

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirType()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b9

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/Download"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b9

    iget-object v5, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    iget-object v5, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    :cond_b9
    iget-object v5, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    iget-object v5, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    :cond_c7
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMapRaw:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_a

    :cond_d8
    return-void
.end method

.method private getAppScanConfigList(Lcom/android/fileexplorer/dao/scan/AppScanConfig;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ce

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirFlag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2c

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2c
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getPathList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_47
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    invoke-direct {v2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;-><init>()V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppId(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirId(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppDirPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirType(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setSubDirName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setSubDirFlag(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirectName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirectName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setState(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppDirTag(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getNotification()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a9

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getNotification()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_aa

    :cond_a9
    move v0, v3

    :goto_aa
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setNotification(Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getUserModified()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c0

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getUserModified()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_c1

    :cond_c0
    move v0, v3

    :goto_c1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setUserModified(Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    :cond_cd
    return-object v1

    :cond_ce
    const/4 p1, 0x0

    return-object p1
.end method

.method private getConfigByRootPath(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppScanConfig;
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_10
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    invoke-static {v4, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_37
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    if-eqz v2, :cond_57

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_17

    :cond_57
    move-object v2, v3

    goto :goto_17

    :cond_59
    return-object v2
.end method

.method public static getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->sInstance:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->sInstance:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->sInstance:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->sInstance:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    return-object v0
.end method

.method private static getPathList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    invoke-static {p1, p0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->recursionPathList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-nez p0, :cond_13

    return-object v0

    :cond_13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_31
    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_4b
    return-object p0
.end method

.method private declared-synchronized loadAllAppInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoDaoUtils:Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadAllAppScanInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigDaoUtils:Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;->loadAll()Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadAllBlackDirInfo()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/BlackDirInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mIgnoreDirDataUtils:Lcom/android/fileexplorer/util/dao/BlackDirInfoDaoUtils;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3e

    monitor-exit p0

    return-object v0

    :cond_10
    :try_start_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;

    if-eqz v2, :cond_38

    const-string v3, "disable"

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->getDirName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_38
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_3e

    goto :goto_14

    :cond_3c
    monitor-exit p0

    return-object v0

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadByState(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigDaoUtils:Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/AppScanConfigDaoUtils;->loadByState(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static recursionPathList(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_b

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_46

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_46

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_46

    array-length v1, p0

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v1, :cond_46

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-static {v3, v4}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->recursionPathList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_43

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_46
    :goto_46
    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMapPkgName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mBlackDirList:Ljava/util/List;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_21
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mHasLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppInfoByAppId(J)Lcom/android/fileexplorer/dao/scan/AppInfo;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/dao/scan/AppInfo;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAppInfoByPkgName(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p1, 0x0

    goto :goto_11

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMapPkgName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/dao/scan/AppInfo;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :goto_11
    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBlackDirList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    iget-object v4, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mBlackDirList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_39

    iget-object v4, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mBlackDirList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;

    array-length v5, v0

    move v6, v2

    :goto_1d
    if-ge v6, v5, :cond_36

    aget-object v7, v0, v6

    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->getDirName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_39
    sget-object v3, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileBlackList;->sBlackPath:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    array-length v5, v0

    move v6, v2

    :goto_4d
    if-ge v6, v5, :cond_3f

    aget-object v7, v0, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_66
    return-object v1
.end method

.method public declared-synchronized getConfigForPath(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppScanConfig;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    if-nez v0, :cond_13

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getConfigByRootPath(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mHasLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    return-object v1

    :cond_1c
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mRootPathMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    :cond_2f
    if-nez v1, :cond_32

    return-object v0

    :cond_32
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppInfoMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/dao/scan/AppInfo;

    if-nez p1, :cond_45

    return-object v0

    :cond_45
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getScanPathList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mAppScanConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_26
    sget-object v1, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanPaths:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanParentPaths:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object v0

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVersion(Ljava/lang/String;)J
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mVersionInfoDataUtils:Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;->getVersion(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isPathIgnore(Ljava/lang/String;)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mBlackDirList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;

    array-length v4, v0

    :goto_19
    if-ge v3, v4, :cond_b

    aget-object v5, v0, v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->getDirName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_46

    if-eqz v5, :cond_41

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_44
    monitor-exit p0

    return v3

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadConfigStateDisable()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
            ">;"
        }
    .end annotation

    const-string v0, "disable"

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadByState(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized loadScanConfig()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mHasLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_27

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadAllAppInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadAllAppScanInfo()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->loadAllBlackDirInfo()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mBlackDirList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->cacheAppInfo(Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->cacheAppScanConfig(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->mHasLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_27

    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadScanConfigFromServer()V
    .registers 1

    return-void
.end method
