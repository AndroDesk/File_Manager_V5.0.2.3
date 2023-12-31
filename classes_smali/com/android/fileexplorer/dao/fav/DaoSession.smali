.class public Lcom/android/fileexplorer/dao/fav/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final favoriteDao:Lcom/android/fileexplorer/dao/fav/FavoriteDao;

.field private final favoriteDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .registers 4
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
    const-class p1, Lcom/android/fileexplorer/dao/fav/FavoriteDao;

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
    iput-object p1, p0, Lcom/android/fileexplorer/dao/fav/DaoSession;->favoriteDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 18
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 21
    new-instance p2, Lcom/android/fileexplorer/dao/fav/FavoriteDao;

    .line 23
    invoke-direct {p2, p1, p0}, Lcom/android/fileexplorer/dao/fav/FavoriteDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/fav/DaoSession;)V

    .line 26
    iput-object p2, p0, Lcom/android/fileexplorer/dao/fav/DaoSession;->favoriteDao:Lcom/android/fileexplorer/dao/fav/FavoriteDao;

    .line 28
    const-class p1, Lcom/android/fileexplorer/dao/fav/Favorite;

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/fav/DaoSession;->favoriteDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 6
    return-void
.end method

.method public getFavoriteDao()Lcom/android/fileexplorer/dao/fav/FavoriteDao;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/fav/DaoSession;->favoriteDao:Lcom/android/fileexplorer/dao/fav/FavoriteDao;

    .line 3
    return-object v0
.end method
