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

    .line 1
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 4
    const-class p1, Lcom/android/fileexplorer/dao/scan/AppInfoDao;

    .line 6
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 12
    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 18
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 21
    const-class v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;

    .line 23
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 29
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appScanConfigDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 35
    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 38
    const-class v1, Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;

    .line 40
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 46
    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->blackDirInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 52
    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 55
    const-class v2, Lcom/android/fileexplorer/dao/scan/VersionInfoDao;

    .line 57
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p3

    .line 61
    check-cast p3, Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 63
    invoke-virtual {p3}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 66
    move-result-object p3

    .line 67
    iput-object p3, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->versionInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 69
    invoke-virtual {p3, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 72
    new-instance p2, Lcom/android/fileexplorer/dao/scan/AppInfoDao;

    .line 74
    invoke-direct {p2, p1, p0}, Lcom/android/fileexplorer/dao/scan/AppInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/scan/DaoSession;)V

    .line 77
    iput-object p2, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appInfoDao:Lcom/android/fileexplorer/dao/scan/AppInfoDao;

    .line 79
    new-instance p1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;

    .line 81
    invoke-direct {p1, v0, p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/scan/DaoSession;)V

    .line 84
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appScanConfigDao:Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;

    .line 86
    new-instance v0, Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;

    .line 88
    invoke-direct {v0, v1, p0}, Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/scan/DaoSession;)V

    .line 91
    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->blackDirInfoDao:Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;

    .line 93
    new-instance v1, Lcom/android/fileexplorer/dao/scan/VersionInfoDao;

    .line 95
    invoke-direct {v1, p3, p0}, Lcom/android/fileexplorer/dao/scan/VersionInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/scan/DaoSession;)V

    .line 98
    iput-object v1, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->versionInfoDao:Lcom/android/fileexplorer/dao/scan/VersionInfoDao;

    .line 100
    const-class p3, Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 102
    invoke-virtual {p0, p3, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 105
    const-class p2, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 107
    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 110
    const-class p1, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;

    .line 112
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 115
    const-class p1, Lcom/android/fileexplorer/dao/scan/VersionInfo;

    .line 117
    invoke-virtual {p0, p1, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 120
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appScanConfigDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 8
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->blackDirInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 13
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->versionInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 18
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 21
    return-void
.end method

.method public getAppInfoDao()Lcom/android/fileexplorer/dao/scan/AppInfoDao;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appInfoDao:Lcom/android/fileexplorer/dao/scan/AppInfoDao;

    .line 3
    return-object v0
.end method

.method public getAppScanConfigDao()Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->appScanConfigDao:Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;

    .line 3
    return-object v0
.end method

.method public getBlackDirInfoDao()Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->blackDirInfoDao:Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao;

    .line 3
    return-object v0
.end method

.method public getVersionInfoDao()Lcom/android/fileexplorer/dao/scan/VersionInfoDao;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/DaoSession;->versionInfoDao:Lcom/android/fileexplorer/dao/scan/VersionInfoDao;

    .line 3
    return-object v0
.end method
