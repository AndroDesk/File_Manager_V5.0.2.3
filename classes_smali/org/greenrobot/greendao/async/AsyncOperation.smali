.class public Lorg/greenrobot/greendao/async/AsyncOperation;
.super Ljava/lang/Object;
.source "AsyncOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    }
.end annotation


# static fields
.field public static final FLAG_MERGE_TX:I

.field public static final FLAG_STOP_QUEUE_ON_EXCEPTION:I

.field public static final FLAG_TRACK_CREATOR_STACKTRACE:I


# instance fields
.field private volatile completed:Z

.field public final creatorStacktrace:Ljava/lang/Exception;

.field public final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final database:Lorg/greenrobot/greendao/database/Database;

.field public final flags:I

.field public volatile mergedOperationsCount:I

.field public final parameter:Ljava/lang/Object;

.field public volatile result:Ljava/lang/Object;

.field public sequenceNumber:I

.field public volatile throwable:Ljava/lang/Throwable;

.field public volatile timeCompleted:J

.field public volatile timeStarted:J

.field public final type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/greenrobot/greendao/async/AsyncOperation;->FLAG_MERGE_TX:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/greenrobot/greendao/async/AsyncOperation;->FLAG_STOP_QUEUE_ON_EXCEPTION:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/greenrobot/greendao/async/AsyncOperation;->FLAG_TRACK_CREATOR_STACKTRACE:I

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/database/Database;Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    iput p5, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->flags:I

    iput-object p2, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iput-object p3, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->database:Lorg/greenrobot/greendao/database/Database;

    iput-object p4, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_19

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "AsyncOperation was created here"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->creatorStacktrace:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCreatorStacktrace()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->creatorStacktrace:Ljava/lang/Exception;

    return-object v0
.end method

.method public getDatabase()Lorg/greenrobot/greendao/database/Database;
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->database:Lorg/greenrobot/greendao/database/Database;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getDuration()J
    .registers 5

    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    iget-wide v2, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_e
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "This operation did not yet complete"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMergedOperationsCount()I
    .registers 2

    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->mergedOperationsCount:I

    return v0
.end method

.method public getParameter()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->waitForCompletion()Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    monitor-exit p0

    return-object v0

    :cond_10
    :try_start_10
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncDaoException;

    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/async/AsyncDaoException;-><init>(Lorg/greenrobot/greendao/async/AsyncOperation;Ljava/lang/Throwable;)V

    throw v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSequenceNumber()I
    .registers 2

    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->sequenceNumber:I

    return v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTimeCompleted()J
    .registers 3

    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    return-wide v0
.end method

.method public getTimeStarted()J
    .registers 3

    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    return-wide v0
.end method

.method public getType()Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    return-object v0
.end method

.method public isCompleted()Z
    .registers 2

    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    return v0
.end method

.method public isCompletedSucessfully()Z
    .registers 2

    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isFailed()Z
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isMergeTx()Z
    .registers 3

    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isMergeableWith(Lorg/greenrobot/greendao/async/AsyncOperation;)Z
    .registers 3

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeTx()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeTx()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    if-ne v0, p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    iput-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    iput-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    iput v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->mergedOperationsCount:I

    return-void
.end method

.method public declared-synchronized setCompleted()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public declared-synchronized waitForCompletion()Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v0, :cond_12

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_16

    goto :goto_1

    :catch_9
    move-exception v0

    :try_start_a
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "Interrupted while waiting for operation to complete"

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_12
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitForCompletion(I)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_13

    int-to-long v0, p1

    :try_start_6
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a
    .catchall {:try_start_6 .. :try_end_9} :catchall_17

    goto :goto_13

    :catch_a
    move-exception p1

    :try_start_b
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Interrupted while waiting for operation to complete"

    invoke-direct {v0, v1, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_13
    :goto_13
    iget-boolean p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_17

    monitor-exit p0

    return p1

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method
