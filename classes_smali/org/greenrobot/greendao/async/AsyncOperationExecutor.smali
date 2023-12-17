.class Lorg/greenrobot/greendao/async/AsyncOperationExecutor;
.super Ljava/lang/Object;
.source "AsyncOperationExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private countOperationsCompleted:I

.field private countOperationsEnqueued:I

.field private volatile executorRunning:Z

.field private handlerMainThread:Landroid/os/Handler;

.field private lastSequenceNumber:I

.field private volatile listener:Lorg/greenrobot/greendao/async/AsyncOperationListener;

.field private volatile listenerMainThread:Lorg/greenrobot/greendao/async/AsyncOperationListener;

.field private volatile maxOperationCountToMerge:I

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/greenrobot/greendao/async/AsyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private volatile waitForMergeMillis:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 11
    const/16 v0, 0x32

    .line 13
    iput v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    .line 15
    iput v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    .line 17
    return-void
.end method

.method private executeOperation(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    .line 7
    :try_start_6
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 9
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v1

    .line 15
    aget v0, v0, v1

    .line 17
    packed-switch v0, :pswitch_data_112

    .line 20
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 22
    goto/16 :goto_f1

    .line 24
    :pswitch_17  #0x16
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 26
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 28
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->refresh(Ljava/lang/Object;)V

    .line 31
    goto/16 :goto_10b

    .line 33
    :pswitch_20  #0x15
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 35
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 38
    move-result-wide v0

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 45
    goto/16 :goto_10b

    .line 47
    :pswitch_2e  #0x14
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 49
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 55
    goto/16 :goto_10b

    .line 57
    :pswitch_38  #0x13
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 59
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 61
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 67
    goto/16 :goto_10b

    .line 69
    :pswitch_44  #0x12
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 71
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 74
    goto/16 :goto_10b

    .line 76
    :pswitch_4b  #0x11
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 78
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 80
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 83
    goto/16 :goto_10b

    .line 85
    :pswitch_54  #0x10
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 87
    check-cast v0, Lorg/greenrobot/greendao/query/Query;

    .line 89
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->forCurrentThread()Lorg/greenrobot/greendao/query/Query;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 99
    goto/16 :goto_10b

    .line 101
    :pswitch_64  #0xf
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 103
    check-cast v0, Lorg/greenrobot/greendao/query/Query;

    .line 105
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->forCurrentThread()Lorg/greenrobot/greendao/query/Query;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    .line 112
    move-result-object v0

    .line 113
    iput-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 115
    goto/16 :goto_10b

    .line 117
    :pswitch_74  #0xe
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeTransactionCallable(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 120
    goto/16 :goto_10b

    .line 122
    :pswitch_79  #0xd
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeTransactionRunnable(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 125
    goto/16 :goto_10b

    .line 127
    :pswitch_7e  #0xc
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 129
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 131
    check-cast v1, [Ljava/lang/Object;

    .line 133
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx([Ljava/lang/Object;)V

    .line 136
    goto/16 :goto_10b

    .line 138
    :pswitch_89  #0xb
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 140
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 142
    check-cast v1, Ljava/lang/Iterable;

    .line 144
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 147
    goto/16 :goto_10b

    .line 149
    :pswitch_94  #0xa
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 151
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 153
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    .line 156
    goto/16 :goto_10b

    .line 158
    :pswitch_9d  #0x9
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 160
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 162
    check-cast v1, [Ljava/lang/Object;

    .line 164
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    .line 167
    goto :goto_10b

    .line 168
    :pswitch_a7  #0x8
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 170
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 172
    check-cast v1, Ljava/lang/Iterable;

    .line 174
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 177
    goto :goto_10b

    .line 178
    :pswitch_b1  #0x7
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 180
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 182
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 185
    goto :goto_10b

    .line 186
    :pswitch_b9  #0x6
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 188
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 190
    check-cast v1, [Ljava/lang/Object;

    .line 192
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx([Ljava/lang/Object;)V

    .line 195
    goto :goto_10b

    .line 196
    :pswitch_c3  #0x5
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 198
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 200
    check-cast v1, Ljava/lang/Iterable;

    .line 202
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 205
    goto :goto_10b

    .line 206
    :pswitch_cd  #0x4
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 208
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 210
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 213
    goto :goto_10b

    .line 214
    :pswitch_d5  #0x3
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 216
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 218
    check-cast v1, [Ljava/lang/Object;

    .line 220
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx([Ljava/lang/Object;)V

    .line 223
    goto :goto_10b

    .line 224
    :pswitch_df  #0x2
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 226
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 228
    check-cast v1, Ljava/lang/Iterable;

    .line 230
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 233
    goto :goto_10b

    .line 234
    :pswitch_e9  #0x1
    iget-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 236
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 238
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    .line 241
    goto :goto_10b

    .line 242
    :goto_f1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 244
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    const-string v2, "Unsupported operation: "

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v1

    .line 261
    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 264
    throw v0
    :try_end_108
    .catchall {:try_start_6 .. :try_end_108} :catchall_108

    .line 265
    :catchall_108
    move-exception v0

    .line 266
    iput-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 268
    :goto_10b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 271
    move-result-wide v0

    .line 272
    iput-wide v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    .line 274
    return-void

    .line 275
    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_e9  #00000001
        :pswitch_df  #00000002
        :pswitch_d5  #00000003
        :pswitch_cd  #00000004
        :pswitch_c3  #00000005
        :pswitch_b9  #00000006
        :pswitch_b1  #00000007
        :pswitch_a7  #00000008
        :pswitch_9d  #00000009
        :pswitch_94  #0000000a
        :pswitch_89  #0000000b
        :pswitch_7e  #0000000c
        :pswitch_79  #0000000d
        :pswitch_74  #0000000e
        :pswitch_64  #0000000f
        :pswitch_54  #00000010
        :pswitch_4b  #00000011
        :pswitch_44  #00000012
        :pswitch_38  #00000013
        :pswitch_2e  #00000014
        :pswitch_20  #00000015
        :pswitch_17  #00000016
    .end packed-switch
.end method

.method private executeOperationAndPostCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeOperation(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 4
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->handleOperationCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 7
    return-void
.end method

.method private executeTransactionCallable(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 8
    :try_start_7
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/util/concurrent/Callable;

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 18
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 21
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 24
    return-void

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 29
    throw p1
.end method

.method private executeTransactionRunnable(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 8
    :try_start_7
    iget-object p1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 10
    check-cast p1, Ljava/lang/Runnable;

    .line 12
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 15
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 18
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 21
    return-void

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 26
    throw p1
.end method

.method private handleOperationCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->setCompleted()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listener:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-interface {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationListener;->onAsyncOperationCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 11
    :cond_a
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listenerMainThread:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_29

    .line 16
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    .line 18
    if-nez v0, :cond_1e

    .line 20
    new-instance v0, Landroid/os/Handler;

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 29
    iput-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    .line 31
    :cond_1e
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    .line 39
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    :cond_29
    monitor-enter p0

    .line 43
    :try_start_2a
    iget p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsCompleted:I

    .line 45
    add-int/2addr p1, v1

    .line 46
    iput p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsCompleted:I

    .line 48
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    .line 50
    if-ne p1, v0, :cond_36

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    :cond_36
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :catchall_38
    move-exception p1

    .line 58
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_38

    .line 59
    throw p1
.end method

.method private mergeTxAndExecute(Lorg/greenrobot/greendao/async/AsyncOperation;Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .registers 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 19
    const/4 p2, 0x0

    .line 20
    move v1, p2

    .line 21
    :goto_14
    :try_start_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-ge v1, v2, :cond_61

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 34
    invoke-direct {p0, v2}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeOperation(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 37
    invoke-virtual {v2}, Lorg/greenrobot/greendao/async/AsyncOperation;->isFailed()Z

    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2b

    .line 43
    goto :goto_61

    .line 44
    :cond_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v4

    .line 48
    sub-int/2addr v4, v3

    .line 49
    if-ne v1, v4, :cond_5e

    .line 51
    iget-object v4, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 53
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 59
    iget v5, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    .line 61
    if-ge v1, v5, :cond_5a

    .line 63
    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeableWith(Lorg/greenrobot/greendao/async/AsyncOperation;)Z

    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_5a

    .line 69
    iget-object v2, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 71
    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 77
    if-ne v2, v4, :cond_52

    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    goto :goto_5e

    .line 83
    :cond_52
    new-instance p2, Lorg/greenrobot/greendao/DaoException;

    .line 85
    const-string v0, "Internal error: peeked op did not match removed op"

    .line 87
    invoke-direct {p2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p2

    .line 91
    :cond_5a
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_5d
    .catchall {:try_start_14 .. :try_end_5d} :catchall_b5

    .line 94
    goto :goto_62

    .line 95
    :cond_5e
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    .line 97
    goto :goto_14

    .line 98
    :cond_61
    :goto_61
    move v3, p2

    .line 99
    :goto_62
    :try_start_62
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_65} :catch_67

    .line 102
    move p2, v3

    .line 103
    goto :goto_7c

    .line 104
    :catch_67
    move-exception p1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const-string v2, "Async transaction could not be ended, success so far was: "

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1, p1}, Lorg/greenrobot/greendao/DaoLog;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :goto_7c
    if-eqz p2, :cond_98

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    move-result p1

    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object p2

    .line 135
    :goto_86
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_b4

    .line 141
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 147
    iput p1, v0, Lorg/greenrobot/greendao/async/AsyncOperation;->mergedOperationsCount:I

    .line 149
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->handleOperationCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 152
    goto :goto_86

    .line 153
    :cond_98
    const-string p1, "Reverted merged transaction because one of the operations failed. Executing operations one by one instead..."

    .line 155
    invoke-static {p1}, Lorg/greenrobot/greendao/DaoLog;->i(Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 161
    move-result-object p1

    .line 162
    :goto_a1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    move-result p2

    .line 166
    if-eqz p2, :cond_b4

    .line 168
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    move-result-object p2

    .line 172
    check-cast p2, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 174
    invoke-virtual {p2}, Lorg/greenrobot/greendao/async/AsyncOperation;->reset()V

    .line 177
    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 180
    goto :goto_a1

    .line 181
    :cond_b4
    return-void

    .line 182
    :catchall_b5
    move-exception p2

    .line 183
    :try_start_b6
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V
    :try_end_b9
    .catch Ljava/lang/RuntimeException; {:try_start_b6 .. :try_end_b9} :catch_ba

    .line 186
    goto :goto_c0

    .line 187
    :catch_ba
    move-exception p1

    .line 188
    const-string v0, "Async transaction could not be ended, success so far was: false"

    .line 190
    invoke-static {v0, p1}, Lorg/greenrobot/greendao/DaoLog;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :goto_c0
    throw p2
.end method


# virtual methods
.method public enqueue(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->lastSequenceNumber:I

    .line 4
    const/4 v1, 0x1

    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->lastSequenceNumber:I

    .line 8
    iput v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->sequenceNumber:I

    .line 10
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 15
    iget p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    .line 17
    add-int/2addr p1, v1

    .line 18
    iput p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    .line 20
    iget-boolean p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 22
    if-nez p1, :cond_1e

    .line 24
    iput-boolean v1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 26
    sget-object p1, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 28
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    :cond_1e
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    .line 35
    throw p1
.end method

.method public getListener()Lorg/greenrobot/greendao/async/AsyncOperationListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listener:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 3
    return-object v0
.end method

.method public getListenerMainThread()Lorg/greenrobot/greendao/async/AsyncOperationListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listenerMainThread:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 3
    return-object v0
.end method

.method public getMaxOperationCountToMerge()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    .line 3
    return v0
.end method

.method public getWaitForMergeMillis()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    .line 3
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listenerMainThread:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    check-cast p1, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 9
    invoke-interface {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationListener;->onAsyncOperationCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public declared-synchronized isCompleted()Z
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    .line 4
    iget v1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsCompleted:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    .line 6
    if-ne v0, v1, :cond_9

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    monitor-exit p0

    .line 12
    return v0

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public run()V
    .registers 7

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 4
    const-wide/16 v2, 0x1

    .line 6
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 14
    if-nez v1, :cond_25

    .line 16
    monitor-enter p0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_10} :catch_51
    .catchall {:try_start_1 .. :try_end_10} :catchall_4f

    .line 17
    :try_start_10
    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 19
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 25
    if-nez v1, :cond_20

    .line 27
    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 29
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_22

    .line 30
    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 32
    return-void

    .line 33
    :cond_20
    :try_start_20
    monitor-exit p0

    .line 34
    goto :goto_25

    .line 35
    :catchall_22
    move-exception v1

    .line 36
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_22

    .line 37
    :try_start_24
    throw v1

    .line 38
    :cond_25
    :goto_25
    invoke-virtual {v1}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeTx()Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_4b

    .line 44
    iget-object v2, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 46
    iget v3, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    .line 48
    int-to-long v3, v3

    .line 49
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 57
    if-eqz v2, :cond_4b

    .line 59
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeableWith(Lorg/greenrobot/greendao/async/AsyncOperation;)Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_44

    .line 65
    invoke-direct {p0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->mergeTxAndExecute(Lorg/greenrobot/greendao/async/AsyncOperation;Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 68
    goto :goto_0

    .line 69
    :cond_44
    invoke-direct {p0, v1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 72
    invoke-direct {p0, v2}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 75
    goto :goto_0

    .line 76
    :cond_4b
    invoke-direct {p0, v1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_4e} :catch_51
    .catchall {:try_start_24 .. :try_end_4e} :catchall_4f

    .line 79
    goto :goto_0

    .line 80
    :catchall_4f
    move-exception v1

    .line 81
    goto :goto_71

    .line 82
    :catch_51
    move-exception v1

    .line 83
    :try_start_52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v3, " was interruppted"

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    invoke-static {v2, v1}, Lorg/greenrobot/greendao/DaoLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_52 .. :try_end_6e} :catchall_4f

    .line 111
    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 113
    return-void

    .line 114
    :goto_71
    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 116
    throw v1
.end method

.method public setListener(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listener:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 3
    return-void
.end method

.method public setListenerMainThread(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listenerMainThread:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 3
    return-void
.end method

.method public setMaxOperationCountToMerge(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    .line 3
    return-void
.end method

.method public setWaitForMergeMillis(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    .line 3
    return-void
.end method

.method public declared-synchronized waitForCompletion()V
    .registers 4

    monitor-enter p0

    .line 1
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->isCompleted()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_16

    if-nez v0, :cond_14

    .line 2
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_16

    goto :goto_1

    :catch_b
    move-exception v0

    .line 3
    :try_start_c
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "Interrupted while waiting for all operations to complete"

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_16

    .line 4
    :cond_14
    monitor-exit p0

    return-void

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
    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->isCompleted()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_15

    int-to-long v0, p1

    .line 6
    :try_start_8
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c
    .catchall {:try_start_8 .. :try_end_b} :catchall_1b

    goto :goto_15

    :catch_c
    move-exception p1

    .line 7
    :try_start_d
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Interrupted while waiting for all operations to complete"

    invoke-direct {v0, v1, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->isCompleted()Z

    move-result p1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1b

    monitor-exit p0

    return p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
