.class public Lcom/android/fileexplorer/dao/GreenDao;
.super Ljava/lang/Object;
.source "GreenDao.java"

# interfaces
.implements Lcom/android/fileexplorer/dao/Dao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/dao/Dao<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final SQLITE_MAX_VARIABLE_NUMBER:I = 0x3e6


# instance fields
.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDaoSession:Lorg/greenrobot/greendao/AbstractDaoSession;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDaoSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/greenrobot/greendao/AbstractDaoSession;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/dao/GreenDao;->mClazz:Ljava/lang/Class;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/dao/GreenDao;->mDaoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 8
    return-void
.end method

.method private delete(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TM;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3b

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3b

    .line 7
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_23

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_23
    const-string v1, " IN "

    .line 10
    invoke-static {p2, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/dao/GreenDao;->selectionBuilder(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/dao/GreenDao;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method private getDao()Lorg/greenrobot/greendao/AbstractDao;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/GreenDao;->mDaoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/dao/GreenDao;->mClazz:Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private query(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TM;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_3e

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3e

    .line 12
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_23

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_23
    const-string v1, " IN "

    .line 15
    invoke-static {p2, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/dao/GreenDao;->selectionBuilder(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, p2, p2}, Lcom/android/fileexplorer/dao/GreenDao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 18
    :cond_3e
    :goto_3e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private selectionBuilder(I)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "("

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    if-eqz p1, :cond_21

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-eq v1, p1, :cond_18

    .line 12
    const-string v2, "?"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ","

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_9

    .line 25
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 28
    move-result p1

    .line 29
    add-int/lit8 p1, p1, -0x1

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 34
    :cond_21
    const-string p1, ")"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method


# virtual methods
.method public bulkDelete(Ljava/util/List;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TM;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e6

    .line 7
    div-int/2addr v0, v1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    move-result v2

    .line 12
    rem-int/2addr v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_e
    if-eq v4, v0, :cond_2b

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 22
    move v6, v3

    .line 23
    :goto_16
    if-eq v6, v1, :cond_25

    .line 25
    mul-int/lit16 v7, v4, 0x3e6

    .line 27
    add-int/2addr v7, v6

    .line 28
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v7

    .line 32
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v6, v6, 0x1

    .line 37
    goto :goto_16

    .line 38
    :cond_25
    invoke-direct {p0, v5, p2}, Lcom/android/fileexplorer/dao/GreenDao;->delete(Ljava/util/List;Ljava/lang/String;)V

    .line 41
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_e

    .line 44
    :cond_2b
    new-instance v4, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    :goto_30
    if-eq v3, v2, :cond_3f

    .line 51
    mul-int/lit16 v5, v0, 0x3e6

    .line 53
    add-int/2addr v5, v3

    .line 54
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_30

    .line 64
    :cond_3f
    invoke-direct {p0, v4, p2}, Lcom/android/fileexplorer/dao/GreenDao;->delete(Ljava/util/List;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public bulkQuery(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TM;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_59

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_59

    .line 10
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x3e6

    .line 21
    div-int/2addr v1, v2

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    move-result v3

    .line 26
    rem-int/2addr v3, v2

    .line 27
    const/4 v4, 0x0

    .line 28
    move v5, v4

    .line 29
    :goto_1c
    if-eq v5, v1, :cond_3d

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    move v7, v4

    .line 37
    :goto_24
    if-eq v7, v2, :cond_33

    .line 39
    mul-int/lit16 v8, v5, 0x3e6

    .line 41
    add-int/2addr v8, v7

    .line 42
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 51
    goto :goto_24

    .line 52
    :cond_33
    invoke-direct {p0, v6, p2}, Lcom/android/fileexplorer/dao/GreenDao;->query(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 61
    goto :goto_1c

    .line 62
    :cond_3d
    new-instance v5, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    :goto_42
    if-eq v4, v3, :cond_51

    .line 69
    mul-int/lit16 v6, v1, 0x3e6

    .line 71
    add-int/2addr v6, v4

    .line 72
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 81
    goto :goto_42

    .line 82
    :cond_51
    invoke-direct {p0, v5, p2}, Lcom/android/fileexplorer/dao/GreenDao;->query(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    return-object v0

    .line 90
    :cond_59
    :goto_59
    new-instance p1, Ljava/util/ArrayList;

    .line 92
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    return-object p1
.end method

.method public count()J
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public count(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 5

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 4
    new-instance v1, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;

    invoke-direct {v1, p1, p2}, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 6
    :cond_19
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildCount()Lorg/greenrobot/greendao/query/CountQuery;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/CountQuery;->count()J

    move-result-wide p1

    return-wide p1
.end method

.method public delete(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 3
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;

    invoke-direct {v0, p1, p2}, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, v0, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    return-void
.end method

.method public deleteAll()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 8
    return-void
.end method

.method public deleteRaw(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->getRawDatabase()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 26
    move-result p1

    .line 27
    int-to-long p1, p1

    .line 28
    return-wide p1
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getAllColumns()[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getPkColumns()[Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public insert(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public loadAll()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/dao/GreenDao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 4
    new-instance v1, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;

    invoke-direct {v1, p1, p2}, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 6
    :cond_19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 7
    invoke-virtual {v0, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderRaw(Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 8
    :cond_22
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_35

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_35

    .line 9
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 10
    :cond_35
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 3
    new-instance v1, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;

    invoke-direct {v1, p1, p2}, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 4
    invoke-virtual {v0, v1, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 5
    :cond_19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 6
    invoke-virtual {v0, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderRaw(Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 7
    :cond_22
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 8
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 9
    :cond_2f
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildCursor()Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/CursorQuery;->query()Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public save(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->save(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public saveInTx(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->saveInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public varargs saveInTx([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->saveInTx([Ljava/lang/Object;)V

    return-void
.end method

.method public update(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public updateRaw(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->getRawDatabase()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/GreenDao;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 26
    move-result p1

    .line 27
    return p1
.end method
