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
.field public static final FLAG_MERGE_TX:I = 0x1

.field public static final FLAG_STOP_QUEUE_ON_EXCEPTION:I = 0x2

.field public static final FLAG_TRACK_CREATOR_STACKTRACE:I = 0x4


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 6
    iput p5, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->flags:I

    .line 8
    iput-object p2, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 10
    iput-object p3, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->database:Lorg/greenrobot/greendao/database/Database;

    .line 12
    iput-object p4, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 14
    and-int/lit8 p1, p5, 0x4

    .line 16
    if-eqz p1, :cond_19

    .line 18
    new-instance p1, Ljava/lang/Exception;

    .line 20
    const-string p2, "AsyncOperation was created here"

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    :goto_1a
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->creatorStacktrace:Ljava/lang/Exception;

    .line 29
    return-void
.end method


# virtual methods
.method public getCreatorStacktrace()Ljava/lang/Exception;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->creatorStacktrace:Ljava/lang/Exception;

    .line 3
    return-object v0
.end method

.method public getDatabase()Lorg/greenrobot/greendao/database/Database;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->database:Lorg/greenrobot/greendao/database/Database;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_b

    .line 6
    :cond_5
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 8
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    return-object v0
.end method

.method public getDuration()J
    .registers 5

    .line 1
    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    .line 11
    iget-wide v2, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    .line 13
    sub-long/2addr v0, v2

    .line 14
    return-wide v0

    .line 15
    :cond_e
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 17
    const-string v1, "This operation did not yet complete"

    .line 19
    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0
.end method

.method public getMergedOperationsCount()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->mergedOperationsCount:I

    .line 3
    return v0
.end method

.method public getParameter()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    .line 4
    if-nez v0, :cond_8

    .line 6
    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->waitForCompletion()Ljava/lang/Object;

    .line 9
    :cond_8
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 11
    if-nez v0, :cond_10

    .line 13
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    .line 15
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :cond_10
    :try_start_10
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncDaoException;

    .line 19
    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 21
    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/async/AsyncDaoException;-><init>(Lorg/greenrobot/greendao/async/AsyncOperation;Ljava/lang/Throwable;)V

    .line 24
    throw v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_18

    .line 25
    :catchall_18
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public getSequenceNumber()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->sequenceNumber:I

    .line 3
    return v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 3
    return-object v0
.end method

.method public getTimeCompleted()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    .line 3
    return-wide v0
.end method

.method public getTimeStarted()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    .line 3
    return-wide v0
.end method

.method public getType()Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 3
    return-object v0
.end method

.method public isCompleted()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    .line 3
    return v0
.end method

.method public isCompletedSucessfully()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public isFailed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isMergeTx()Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->flags:I

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    return v1
.end method

.method public isMergeableWith(Lorg/greenrobot/greendao/async/AsyncOperation;)Z
    .registers 3

    .line 1
    if-eqz p1, :cond_1a

    .line 3
    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeTx()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1a

    .line 9
    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeTx()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1a

    .line 15
    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 22
    move-result-object p1

    .line 23
    if-ne v0, p1, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method

.method public reset()V
    .registers 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    .line 5
    iput-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 13
    iput-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 15
    iput v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->mergedOperationsCount:I

    .line 17
    return-void
.end method

.method public declared-synchronized setCompleted()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_2
    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 3
    return-void
.end method

.method public declared-synchronized waitForCompletion()Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    .line 1
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v0, :cond_12

    .line 2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_16

    goto :goto_1

    :catch_9
    move-exception v0

    .line 3
    :try_start_a
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "Interrupted while waiting for operation to complete"

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4
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

    .line 5
    :try_start_1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_13

    int-to-long v0, p1

    .line 6
    :try_start_6
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a
    .catchall {:try_start_6 .. :try_end_9} :catchall_17

    goto :goto_13

    :catch_a
    move-exception p1

    .line 7
    :try_start_b
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Interrupted while waiting for operation to complete"

    invoke-direct {v0, v1, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
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
