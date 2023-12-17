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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils$SingletonHolder;->access$000()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    move-result-object v0

    return-object v0
.end method

.method private onDatabaseChanged()V
    .registers 5

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/event/FileChangeEvent;

    sget-boolean v2, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-direct {v1, v2, v3, v3}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/dao/fav/FavoriteDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/dao/Dao;->bulkDelete(Ljava/util/List;Ljava/lang/String;)V

    if-eqz p2, :cond_10

    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->onDatabaseChanged()V

    :cond_10
    return-void
.end method

.method public getFavCount()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->count()J

    move-result-wide v0

    long-to-int v0, v0

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

    new-instance v0, Lcom/android/fileexplorer/dao/GreenDao;

    const-class v1, Lcom/android/fileexplorer/dao/fav/Favorite;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/dao/GreenDao;-><init>(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDaoSession;)V

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/dao/fav/FavoriteDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/dao/Dao;->bulkQuery(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/dao/fav/FavoriteDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object v2, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    invoke-direct {p2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    const-string v2, "lower("

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    const-string v3, ") = ?"

    invoke-static {v2, v1, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2, v1, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/android/fileexplorer/dao/Dao;->updateRaw(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->onDatabaseChanged()V

    return-void
.end method
