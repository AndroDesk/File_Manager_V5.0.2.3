.class public abstract Lcom/micloud/midrive/task/TransferBaseTask;
.super Lcom/micloud/midrive/task/RunOnNetworkTask;
.source "TransferBaseTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;,
        Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/micloud/midrive/infos/TransferFileBaseInfo;",
        ">",
        "Lcom/micloud/midrive/task/RunOnNetworkTask;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransferBaseTask"

.field private static final TRANSFER_PROGRESS_UPDATE_INTERVAL:J = 0x7d0L


# instance fields
.field private mLastProgressUpdateTimeMills:J

.field private mProgressChangeListener:Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

.field private mTaskProgressInfo:Lcom/micloud/midrive/infos/TaskProgressInfo;

.field private final mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;",
            "TT;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/RunOnNetworkTask;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;)V

    .line 4
    const-wide/16 v0, -0x7d1

    .line 6
    iput-wide v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mLastProgressUpdateTimeMills:J

    .line 8
    if-eqz p2, :cond_21

    .line 10
    iput-object p2, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 12
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->isWaitingNetworkStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Z

    .line 19
    move-result v5

    .line 20
    new-instance p1, Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 22
    invoke-interface {p2}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getSize()J

    .line 25
    move-result-wide v3

    .line 26
    move-object v0, p1

    .line 27
    move-wide v1, p3

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/micloud/midrive/infos/TaskProgressInfo;-><init>(JJZ)V

    .line 31
    iput-object p1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTaskProgressInfo:Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 33
    return-void

    .line 34
    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    .line 36
    const-string p2, "transferFileBaseInfo can not be null. "

    .line 38
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p1
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mProgressChangeListener:Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/infos/TransferFileBaseInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/task/TransferBaseTask;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mLastProgressUpdateTimeMills:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$202(Lcom/micloud/midrive/task/TransferBaseTask;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mLastProgressUpdateTimeMills:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$302(Lcom/micloud/midrive/task/TransferBaseTask;Lcom/micloud/midrive/infos/TaskProgressInfo;)Lcom/micloud/midrive/infos/TaskProgressInfo;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTaskProgressInfo:Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 3
    return-object p1
.end method

.method private performTransferDone()V
    .registers 4

    .line 1
    const-string v0, "performTransferDone: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 9
    invoke-interface {v1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    const-string v2, "TransferBaseTask"

    .line 25
    invoke-static {v2, v0, v1}, Lmiui/cloud/common/XLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 30
    invoke-virtual {p0, v0}, Lcom/micloud/midrive/task/TransferBaseTask;->onTransferDone(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V

    .line 33
    new-instance v0, Lcom/micloud/midrive/task/TransferBaseTask$2;

    .line 35
    invoke-direct {v0, p0}, Lcom/micloud/midrive/task/TransferBaseTask$2;-><init>(Lcom/micloud/midrive/task/TransferBaseTask;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/micloud/midrive/task/BaseTask;->postOnListenerThread(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method private performTransferStarted()V
    .registers 4

    .line 1
    const-string v0, "performTransferStarted: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 9
    invoke-interface {v1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    const-string v2, "TransferBaseTask"

    .line 25
    invoke-static {v2, v0, v1}, Lmiui/cloud/common/XLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance v0, Lcom/micloud/midrive/task/TransferBaseTask$1;

    .line 30
    invoke-direct {v0, p0}, Lcom/micloud/midrive/task/TransferBaseTask$1;-><init>(Lcom/micloud/midrive/task/TransferBaseTask;)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/micloud/midrive/task/BaseTask;->postOnListenerThread(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method private prepare()V
    .registers 4

    .line 1
    const-string v0, "prepare: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 9
    invoke-interface {v1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    const-string v2, "TransferBaseTask"

    .line 25
    invoke-static {v2, v0, v1}, Lmiui/cloud/common/XLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 30
    invoke-virtual {p0, v0}, Lcom/micloud/midrive/task/TransferBaseTask;->onPrepare(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V

    .line 33
    return-void
.end method

.method private transferFile(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 5

    .line 1
    const-string v0, "transferFile: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 9
    invoke-interface {v1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    const-string v2, "TransferBaseTask"

    .line 25
    invoke-static {v2, v0, v1}, Lmiui/cloud/common/XLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/micloud/midrive/task/TransferBaseTask;->onTransferFile(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/server/transport/Network;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getTaskProgressInfo()Lcom/micloud/midrive/infos/TaskProgressInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTaskProgressInfo:Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 3
    return-object v0
.end method

.method public getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 3
    return-object v0
.end method

.method public abstract onPrepare(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onTransferDone(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onTransferFile(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/server/transport/Network;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/micloud/midrive/server/transport/Network;",
            ")V"
        }
    .end annotation
.end method

.method public postOnProgressUpdate(JJ)V
    .registers 12

    .line 1
    new-instance v6, Lcom/micloud/midrive/task/TransferBaseTask$3;

    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-wide v2, p1

    .line 6
    move-wide v4, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/micloud/midrive/task/TransferBaseTask$3;-><init>(Lcom/micloud/midrive/task/TransferBaseTask;JJ)V

    .line 10
    invoke-virtual {p0, v6}, Lcom/micloud/midrive/task/BaseTask;->postOnListenerThread(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method

.method public runOnNetworkAtStep(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    .registers 4

    .line 1
    if-nez p2, :cond_5

    .line 3
    sget-object p1, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PERFORM_START:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 5
    return-object p1

    .line 6
    :cond_5
    sget-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PERFORM_START:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 8
    if-ne v0, p2, :cond_f

    .line 10
    invoke-direct {p0}, Lcom/micloud/midrive/task/TransferBaseTask;->performTransferStarted()V

    .line 13
    sget-object p1, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PREPARE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 15
    return-object p1

    .line 16
    :cond_f
    sget-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PREPARE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 18
    if-ne v0, p2, :cond_19

    .line 20
    invoke-direct {p0}, Lcom/micloud/midrive/task/TransferBaseTask;->prepare()V

    .line 23
    sget-object p1, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->TRANSFER_FILE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 25
    return-object p1

    .line 26
    :cond_19
    sget-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->TRANSFER_FILE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 28
    if-ne v0, p2, :cond_23

    .line 30
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/TransferBaseTask;->transferFile(Lcom/micloud/midrive/server/transport/Network;)V

    .line 33
    sget-object p1, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PERFORM_DONE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 35
    return-object p1

    .line 36
    :cond_23
    sget-object p1, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PERFORM_DONE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    .line 38
    if-ne p1, p2, :cond_2c

    .line 40
    invoke-direct {p0}, Lcom/micloud/midrive/task/TransferBaseTask;->performTransferDone()V

    .line 43
    const/4 p1, 0x0

    .line 44
    return-object p1

    .line 45
    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    const-string p2, "should not reach here"

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1
.end method

.method public setProgressChangeListener(Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->checkRunInListenerHandlerThread()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mProgressChangeListener:Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

    .line 6
    return-void
.end method
