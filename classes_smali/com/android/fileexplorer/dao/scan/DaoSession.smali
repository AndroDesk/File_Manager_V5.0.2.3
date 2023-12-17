.class public Lcom/android/fileexplorer/dao/scan/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final appInfoDao:Lcom/android/fileexplorer/dao/scan/AppInfoDao;

.field private final appInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final appScanConfigDao:Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;

.field private final appScanConfigDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final blackDirInfoDao:Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;

.field private final blackDirInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final versionInfoDao:Lcom/android/fileexplorer/dao/scan/VersionInfoDao;

.field private final versionInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    const-class p1, Lcom/android/fileexplorer/dao/scan/AppInfoDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appScanConfigDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v1, Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->blackDirInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v2, Lcom/android/fileexplorer/dao/scan/VersionInfoDao;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p3}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->versionInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p3, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    new-instance p2, Lcom/android/fileexplorer/dao/scan/AppInfoDao;

    invoke-direct {p2, p1, p0}, Lcom/android/fileexplorer/dao/scan/AppInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/scan/DaoSession;)V

    iput-object p2, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appInfoDao:Lcom/android/fileexplorer/dao/scan/AppInfoDao;

    new-instance p1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;

    invoke-direct {p1, v0, p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/scan/DaoSession;)V

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appScanConfigDao:Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;

    new-instance v0, Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;

    invoke-direct {v0, v1, p0}, Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/scan/DaoSession;)V

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->blackDirInfoDao:Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;

    new-instance v1, Lcom/android/fileexplorer/dao/scan/VersionInfoDao;

    invoke-direct {v1, p3, p0}, Lcom/android/fileexplorer/dao/scan/VersionInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/scan/DaoSession;)V

    iput-object v1, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->versionInfoDao:Lcom/android/fileexplorer/dao/scan/VersionInfoDao;

    const-class p3, Lcom/android/fileexplorer/dao/scan/AppInfo;

    invoke-virtual {p0, p3, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p2, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/android/fileexplorer/dao/scan/VersionInfo;

    invoke-virtual {p0, p1, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appScanConfigDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->blackDirInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->versionInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getAppInfoDao()Lcom/android/fileexplorer/dao/scan/AppInfoDao;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appInfoDao:Lcom/android/fileexplorer/dao/scan/AppInfoDao;

    return-object v0
.end method

.method public getAppScanConfigDao()Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appScanConfigDao:Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;

    return-object v0
.end method

.method public getBlackDirInfoDao()Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->blackDirInfoDao:Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;

    return-object v0
.end method

.method public getVersionInfoDao()Lcom/android/fileexplorer/dao/scan/VersionInfoDao;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->versionInfoDao:Lcom/android/fileexplorer/dao/scan/VersionInfoDao;

    return-object v0
.end method
