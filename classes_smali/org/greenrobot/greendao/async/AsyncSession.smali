.class public Lorg/greenrobot/greendao/async/AsyncSession;
.super Ljava/lang/Object;
.source "AsyncSession.java"


# instance fields
.field private final daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

.field private final executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

.field private sessionFlags:I


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDaoSession;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 6
    new-instance p1, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 8
    invoke-direct {p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 13
    return-void
.end method

.method private enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 3
    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    .line 6
    move-result-object v3

    .line 7
    new-instance p2, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 9
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->sessionFlags:I

    .line 11
    or-int v6, p4, v0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, p2

    .line 15
    move-object v2, p1

    .line 16
    move-object v5, p3

    .line 17
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/async/AsyncOperation;-><init>(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/database/Database;Ljava/lang/Object;I)V

    .line 20
    iget-object p1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 22
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->enqueue(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 25
    return-object p2
.end method

.method private enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 11

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 6
    move-result-object v4

    .line 7
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 9
    iget v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->sessionFlags:I

    .line 11
    or-int v6, p3, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    move-object v1, v0

    .line 15
    move-object v2, p1

    .line 16
    move-object v5, p2

    .line 17
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/async/AsyncOperation;-><init>(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/database/Database;Ljava/lang/Object;I)V

    .line 20
    iget-object p1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 22
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->enqueue(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 25
    return-object v0
.end method

.method private enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method


# virtual methods
.method public callInTx(Ljava/util/concurrent/Callable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->callInTx(Ljava/util/concurrent/Callable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public callInTx(Ljava/util/concurrent/Callable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionCallable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public count(Ljava/lang/Class;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->count(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public count(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Count:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->delete(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Delete:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public deleteAll(Ljava/lang/Class;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->deleteAll(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public deleteAll(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public deleteByKey(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->deleteByKey(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public deleteByKey(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteByKey:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public varargs deleteInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;I[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public deleteInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->deleteInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public deleteInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public varargs deleteInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->deleteInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public getListener()Lorg/greenrobot/greendao/async/AsyncOperationListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->getListener()Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getListenerMainThread()Lorg/greenrobot/greendao/async/AsyncOperationListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->getListenerMainThread()Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMaxOperationCountToMerge()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->getMaxOperationCountToMerge()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSessionFlags()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->sessionFlags:I

    .line 3
    return v0
.end method

.method public getWaitForMergeMillis()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->getWaitForMergeMillis()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public insert(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->insert(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public insert(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Insert:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public varargs insertInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;I[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public insertInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->insertInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public insertInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public varargs insertInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->insertInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public insertOrReplace(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->insertOrReplace(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public insertOrReplace(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplace:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public varargs insertOrReplaceInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;I[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public insertOrReplaceInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->insertOrReplaceInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public insertOrReplaceInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public varargs insertOrReplaceInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->insertOrReplaceInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public isCompleted()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->isCompleted()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public load(Ljava/lang/Class;Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->load(Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Load:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public loadAll(Ljava/lang/Class;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->loadAll(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public loadAll(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->LoadAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public queryList(Lorg/greenrobot/greendao/query/Query;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query<",
            "*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->queryList(Lorg/greenrobot/greendao/query/Query;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public queryList(Lorg/greenrobot/greendao/query/Query;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query<",
            "*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryList:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public queryUnique(Lorg/greenrobot/greendao/query/Query;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query<",
            "*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->queryUnique(Lorg/greenrobot/greendao/query/Query;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public queryUnique(Lorg/greenrobot/greendao/query/Query;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query<",
            "*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryUnique:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public refresh(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->refresh(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public refresh(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Refresh:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public runInTx(Ljava/lang/Runnable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->runInTx(Ljava/lang/Runnable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public runInTx(Ljava/lang/Runnable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionRunnable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public setListener(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 3
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->setListener(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V

    .line 6
    return-void
.end method

.method public setListenerMainThread(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 3
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->setListenerMainThread(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V

    .line 6
    return-void
.end method

.method public setMaxOperationCountToMerge(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 3
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->setMaxOperationCountToMerge(I)V

    .line 6
    return-void
.end method

.method public setSessionFlags(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->sessionFlags:I

    .line 3
    return-void
.end method

.method public setWaitForMergeMillis(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 3
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->setWaitForMergeMillis(I)V

    .line 6
    return-void
.end method

.method public update(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->update(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Update:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public varargs updateInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;I[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public updateInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->updateInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public updateInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public varargs updateInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->updateInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object p1

    return-object p1
.end method

.method public waitForCompletion()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForCompletion()V

    return-void
.end method

.method public waitForCompletion(I)Z
    .registers 3

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForCompletion(I)Z

    move-result p1

    return p1
.end method
