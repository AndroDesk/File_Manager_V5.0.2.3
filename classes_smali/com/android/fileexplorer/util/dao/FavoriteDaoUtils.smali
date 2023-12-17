.class public Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;
.super Lcom/android/fileexplorer/util/dao/AbsDaoUtils;
.source "FavoriteDaoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils$SingletonHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/util/dao/AbsDaoUtils<",
        "Lcom/android/fileexplorer/dao/fav/Favorite;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils$SingletonHolder;->access$000()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private onDatabaseChanged()V
    .registers 5

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/fileexplorer/event/FileChangeEvent;

    .line 7
    sget-boolean v2, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 9
    const/4 v3, 0x1

    .line 10
    xor-int/2addr v2, v3

    .line 11
    invoke-direct {v1, v2, v3, v3}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZ)V

    .line 14
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 17
    return-void
.end method


# virtual methods
.method public deleteByLocation(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/dao/fav/FavoriteDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    .line 7
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/dao/Dao;->bulkDelete(Ljava/util/List;Ljava/lang/String;)V

    .line 12
    if-eqz p2, :cond_10

    .line 14
    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->onDatabaseChanged()V

    .line 17
    :cond_10
    return-void
.end method

.method public getFavCount()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->count()J

    .line 8
    move-result-wide v0

    .line 9
    long-to-int v0, v0

    .line 10
    return v0
.end method

.method public initDao()Lcom/android/fileexplorer/dao/Dao;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/dao/Dao<",
            "Lcom/android/fileexplorer/dao/fav/Favorite;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/GreenDao;

    .line 3
    const-class v1, Lcom/android/fileexplorer/dao/fav/Favorite;

    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-static {v2}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 9
    move-result-object v2

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/dao/GreenDao;-><init>(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 13
    return-object v0
.end method

.method public queryByLocation(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/fav/Favorite;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/dao/fav/FavoriteDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    .line 7
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/dao/Dao;->bulkQuery(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/dao/fav/FavoriteDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    .line 8
    iget-object v2, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p2, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 15
    invoke-direct {p2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 18
    const-string v2, "lower("

    .line 20
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v2

    .line 24
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 26
    const-string v3, ") = ?"

    .line 28
    invoke-static {v2, v1, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const/4 v2, 0x1

    .line 37
    new-array v2, v2, [Ljava/lang/String;

    .line 39
    const/4 v3, 0x0

    .line 40
    aput-object p1, v2, v3

    .line 42
    invoke-virtual {p2, v1, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 45
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p1, v0, v1, p2}, Lcom/android/fileexplorer/dao/Dao;->updateRaw(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->onDatabaseChanged()V

    .line 63
    return-void
.end method
