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

    .line 1
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 4
    const-class p1, Lcom/android/fileexplorer/dao/file/AppTagDao;

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
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->appTagDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 18
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 21
    const-class v0, Lcom/android/fileexplorer/dao/file/ContentTagDao;

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
    iput-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->contentTagDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 35
    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 38
    const-class v1, Lcom/android/fileexplorer/dao/file/FileGroupDao;

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
    iput-object v1, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 52
    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 55
    const-class v2, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;

    .line 57
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 63
    invoke-virtual {v2}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 66
    move-result-object v2

    .line 67
    iput-object v2, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDetailDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 69
    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 72
    const-class v3, Lcom/android/fileexplorer/dao/file/FileItemDao;

    .line 74
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 80
    invoke-virtual {v3}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 83
    move-result-object v3

    .line 84
    iput-object v3, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 86
    invoke-virtual {v3, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 89
    new-instance v4, Lcom/android/fileexplorer/dao/file/AppTagDao;

    .line 91
    invoke-direct {v4, p1, p0}, Lcom/android/fileexplorer/dao/file/AppTagDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V

    .line 94
    iput-object v4, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->appTagDao:Lcom/android/fileexplorer/dao/file/AppTagDao;

    .line 96
    new-instance p1, Lcom/android/fileexplorer/dao/file/ContentTagDao;

    .line 98
    invoke-direct {p1, v0, p0}, Lcom/android/fileexplorer/dao/file/ContentTagDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V

    .line 101
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->contentTagDao:Lcom/android/fileexplorer/dao/file/ContentTagDao;

    .line 103
    new-instance v0, Lcom/android/fileexplorer/dao/file/FileGroupDao;

    .line 105
    invoke-direct {v0, v1, p0}, Lcom/android/fileexplorer/dao/file/FileGroupDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V

    .line 108
    iput-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

    .line 110
    new-instance v1, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;

    .line 112
    invoke-direct {v1, v2, p0}, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V

    .line 115
    iput-object v1, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDetailDao:Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;

    .line 117
    new-instance v2, Lcom/android/fileexplorer/dao/file/FileItemDao;

    .line 119
    invoke-direct {v2, v3, p0}, Lcom/android/fileexplorer/dao/file/FileItemDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V

    .line 122
    iput-object v2, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileItemDao:Lcom/android/fileexplorer/dao/file/FileItemDao;

    .line 124
    const-class v3, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    .line 126
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-result-object p3

    .line 130
    check-cast p3, Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 132
    invoke-virtual {p3}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 135
    move-result-object p3

    .line 136
    iput-object p3, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->widgetPinFileDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 138
    invoke-virtual {p3, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 141
    new-instance p2, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    .line 143
    invoke-direct {p2, p3, p0}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V

    .line 146
    iput-object p2, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->widgetPinFileDao:Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    .line 148
    const-class p3, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 150
    invoke-virtual {p0, p3, v4}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 153
    const-class p3, Lcom/android/fileexplorer/dao/file/ContentTag;

    .line 155
    invoke-virtual {p0, p3, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 158
    const-class p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 160
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 163
    const-class p1, Lcom/android/fileexplorer/dao/file/FileGroupDetail;

    .line 165
    invoke-virtual {p0, p1, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 168
    const-class p1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 170
    invoke-virtual {p0, p1, v2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 173
    const-class p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 175
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 178
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->appTagDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->contentTagDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 8
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 13
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDetailDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 18
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileItemDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 23
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->widgetPinFileDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 28
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 31
    return-void
.end method

.method public getAppTagDao()Lcom/android/fileexplorer/dao/file/AppTagDao;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->appTagDao:Lcom/android/fileexplorer/dao/file/AppTagDao;

    .line 3
    return-object v0
.end method

.method public getContentTagDao()Lcom/android/fileexplorer/dao/file/ContentTagDao;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->contentTagDao:Lcom/android/fileexplorer/dao/file/ContentTagDao;

    .line 3
    return-object v0
.end method

.method public getFileGroupDao()Lcom/android/fileexplorer/dao/file/FileGroupDao;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

    .line 3
    return-object v0
.end method

.method public getFileGroupDetailDao()Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileGroupDetailDao:Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;

    .line 3
    return-object v0
.end method

.method public getFileItemDao()Lcom/android/fileexplorer/dao/file/FileItemDao;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->fileItemDao:Lcom/android/fileexplorer/dao/file/FileItemDao;

    .line 3
    return-object v0
.end method

.method public getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/DaoSession;->widgetPinFileDao:Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    .line 3
    return-object v0
.end method
