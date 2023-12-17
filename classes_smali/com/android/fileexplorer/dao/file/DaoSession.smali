.class public Lcom/android/fileexplorer/dao/file/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final appTagDao:Lcom/android/fileexplorer/dao/file/AppTagDao;

.field private final appTagDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final contentTagDao:Lcom/android/fileexplorer/dao/file/ContentTagDao;

.field private final contentTagDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final fileGroupDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

.field private final fileGroupDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final fileGroupDetailDao:Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;

.field private final fileGroupDetailDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final fileItemDao:Lcom/android/fileexplorer/dao/file/FileItemDao;

.field private final fileItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final widgetPinFileDao:Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

.field private final widgetPinFileDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .registers 9
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

    const-class p1, Lcom/android/fileexplorer/dao/file/AppTagDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->appTagDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/android/fileexplorer/dao/file/ContentTagDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->contentTagDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v1, Lcom/android/fileexplorer/dao/file/FileGroupDao;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v2, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDetailDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v3, Lcom/android/fileexplorer/dao/file/FileItemDao;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v3, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    new-instance v4, Lcom/android/fileexplorer/dao/file/AppTagDao;

    invoke-direct {v4, p1, p0}, Lcom/android/fileexplorer/dao/file/AppTagDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V

    iput-object v4, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->appTagDao:Lcom/android/fileexplorer/dao/file/AppTagDao;

    new-instance p1, Lcom/android/fileexplorer/dao/file/ContentTagDao;

    invoke-direct {p1, v0, p0}, Lcom/android/fileexplorer/dao/file/ContentTagDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->contentTagDao:Lcom/android/fileexplorer/dao/file/ContentTagDao;

    new-instance v0, Lcom/android/fileexplorer/dao/file/FileGroupDao;

    invoke-direct {v0, v1, p0}, Lcom/android/fileexplorer/dao/file/FileGroupDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V

    iput-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

    new-instance v1, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;

    invoke-direct {v1, v2, p0}, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V

    iput-object v1, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDetailDao:Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;

    new-instance v2, Lcom/android/fileexplorer/dao/file/FileItemDao;

    invoke-direct {v2, v3, p0}, Lcom/android/fileexplorer/dao/file/FileItemDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V

    iput-object v2, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileItemDao:Lcom/android/fileexplorer/dao/file/FileItemDao;

    const-class v3, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p3}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->widgetPinFileDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p3, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    new-instance p2, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    invoke-direct {p2, p3, p0}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V

    iput-object p2, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->widgetPinFileDao:Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    const-class p3, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p0, p3, v4}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p3, Lcom/android/fileexplorer/dao/file/ContentTag;

    invoke-virtual {p0, p3, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/android/fileexplorer/dao/file/FileGroupDetail;

    invoke-virtual {p0, p1, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, v2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->appTagDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->contentTagDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDetailDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->widgetPinFileDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getAppTagDao()Lcom/android/fileexplorer/dao/file/AppTagDao;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->appTagDao:Lcom/android/fileexplorer/dao/file/AppTagDao;

    return-object v0
.end method

.method public getContentTagDao()Lcom/android/fileexplorer/dao/file/ContentTagDao;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->contentTagDao:Lcom/android/fileexplorer/dao/file/ContentTagDao;

    return-object v0
.end method

.method public getFileGroupDao()Lcom/android/fileexplorer/dao/file/FileGroupDao;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

    return-object v0
.end method

.method public getFileGroupDetailDao()Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDetailDao:Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;

    return-object v0
.end method

.method public getFileItemDao()Lcom/android/fileexplorer/dao/file/FileItemDao;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileItemDao:Lcom/android/fileexplorer/dao/file/FileItemDao;

    return-object v0
.end method

.method public getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->widgetPinFileDao:Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    return-object v0
.end method
