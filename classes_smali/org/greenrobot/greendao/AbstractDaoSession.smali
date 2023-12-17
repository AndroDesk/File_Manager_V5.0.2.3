.class public Lorg/greenrobot/greendao/AbstractDaoSession;
.super Ljava/lang/Object;
.source "AbstractDaoSession.java"


# instance fields
.field private final db:Lorg/greenrobot/greendao/database/Database;

.field private final entityToDao:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;"
        }
    .end annotation
.end field

.field private volatile rxTxIo:Lorg/greenrobot/greendao/rx/RxTransaction;

.field private volatile rxTxPlain:Lorg/greenrobot/greendao/rx/RxTransaction;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->entityToDao:Ljava/util/Map;

    .line 13
    return-void
.end method


# virtual methods
.method public callInTx(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 3
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 6
    :try_start_5
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 12
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    .line 15
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 17
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 20
    return-object p1

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 24
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 27
    throw p1
.end method

.method public callInTxNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 3
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 6
    :try_start_5
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 9
    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_16
    .catchall {:try_start_5 .. :try_end_9} :catchall_14

    .line 10
    :try_start_9
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 12
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_14

    .line 15
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 17
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 20
    return-object p1

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    goto :goto_1f

    .line 23
    :catch_16
    move-exception p1

    .line 24
    :try_start_17
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 26
    const-string v1, "Callable failed"

    .line 28
    invoke-direct {v0, v1, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    throw v0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_14

    .line 32
    :goto_1f
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 34
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 37
    throw p1
.end method

.method public delete(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public deleteAll(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 8
    return-void
.end method

.method public getAllDaos()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->entityToDao:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->entityToDao:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/greenrobot/greendao/AbstractDao;

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-object v0

    .line 12
    :cond_b
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 14
    const-string v1, "No DAO registered for "

    .line 16
    invoke-static {v1, p1}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method public getDatabase()Lorg/greenrobot/greendao/database/Database;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 3
    return-object v0
.end method

.method public insert(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)J"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public insertOrReplace(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)J"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public load(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TK;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public loadAll(Ljava/lang/Class;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public varargs queryRaw(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2, p3}, Lorg/greenrobot/greendao/AbstractDao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public refresh(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->refresh(Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->entityToDao:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public runInTx(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 3
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 6
    :try_start_5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 9
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 11
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    .line 14
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 16
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 19
    return-void

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 23
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 26
    throw p1
.end method

.method public rxTx()Lorg/greenrobot/greendao/rx/RxTransaction;
    .registers 3
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->rxTxIo:Lorg/greenrobot/greendao/rx/RxTransaction;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Lorg/greenrobot/greendao/rx/RxTransaction;

    .line 7
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/rx/RxTransaction;-><init>(Lorg/greenrobot/greendao/AbstractDaoSession;Lrx/Scheduler;)V

    .line 14
    iput-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->rxTxIo:Lorg/greenrobot/greendao/rx/RxTransaction;

    .line 16
    :cond_f
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->rxTxIo:Lorg/greenrobot/greendao/rx/RxTransaction;

    .line 18
    return-object v0
.end method

.method public rxTxPlain()Lorg/greenrobot/greendao/rx/RxTransaction;
    .registers 2
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->rxTxPlain:Lorg/greenrobot/greendao/rx/RxTransaction;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/greenrobot/greendao/rx/RxTransaction;

    .line 7
    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxTransaction;-><init>(Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 10
    iput-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->rxTxPlain:Lorg/greenrobot/greendao/rx/RxTransaction;

    .line 12
    :cond_b
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->rxTxPlain:Lorg/greenrobot/greendao/rx/RxTransaction;

    .line 14
    return-object v0
.end method

.method public startAsyncSession()Lorg/greenrobot/greendao/async/AsyncSession;
    .registers 2

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncSession;

    .line 3
    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/async/AsyncSession;-><init>(Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 6
    return-object v0
.end method

.method public update(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    .line 12
    return-void
.end method
