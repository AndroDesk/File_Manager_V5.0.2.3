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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;",
            "TT;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/RunOnNetworkTask;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;)V

    const-wide/16 v0, -0x7d1

    iput-wide v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mLastProgressUpdateTimeMills:J

    if-eqz p2, :cond_21

    iput-object p2, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    move-result-object p1

    invoke-static {p1}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->isWaitingNetworkStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Z

    move-result v5

    new-instance p1, Lcom/micloud/midrive/infos/TaskProgressInfo;

    invoke-interface {p2}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getSize()J

    move-result-wide v3

    move-object v0, p1

    move-wide v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/micloud/midrive/infos/TaskProgressInfo;-><init>(JJZ)V

    iput-object p1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTaskProgressInfo:Lcom/micloud/midrive/infos/TaskProgressInfo;

    return-void

    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "transferFileBaseInfo can not be null. "

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mProgressChangeListener:Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/infos/TransferFileBaseInfo;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/task/TransferBaseTask;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mLastProgressUpdateTimeMills:J

    return-wide v0
.end method

.method public static synthetic access$202(Lcom/micloud/midrive/task/TransferBaseTask;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mLastProgressUpdateTimeMills:J

    return-wide p1
.end method

.method public static synthetic access$302(Lcom/micloud/midrive/task/TransferBaseTask;Lcom/micloud/midrive/infos/TaskProgressInfo;)Lcom/micloud/midrive/infos/TaskProgressInfo;
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTaskProgressInfo:Lcom/micloud/midrive/infos/TaskProgressInfo;

    return-object p1
.end method

.method private performTransferDone()V
    .registers 4

    const-string v0, "performTransferDone: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-interface {v1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TransferBaseTask"

    invoke-static {v2, v0, v1}, Lmiui/cloud/common/XLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-virtual {p0, v0}, Lcom/micloud/midrive/task/TransferBaseTask;->onTransferDone(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V

    new-instance v0, Lcom/micloud/midrive/task/TransferBaseTask$2;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/task/TransferBaseTask$2;-><init>(Lcom/micloud/midrive/task/TransferBaseTask;)V

    invoke-virtual {p0, v0}, Lcom/micloud/midrive/task/BaseTask;->postOnListenerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private performTransferStarted()V
    .registers 4

    const-string v0, "performTransferStarted: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-interface {v1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TransferBaseTask"

    invoke-static {v2, v0, v1}, Lmiui/cloud/common/XLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/micloud/midrive/task/TransferBaseTask$1;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/task/TransferBaseTask$1;-><init>(Lcom/micloud/midrive/task/TransferBaseTask;)V

    invoke-virtual {p0, v0}, Lcom/micloud/midrive/task/BaseTask;->postOnListenerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private prepare()V
    .registers 4

    const-string v0, "prepare: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-interface {v1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TransferBaseTask"

    invoke-static {v2, v0, v1}, Lmiui/cloud/common/XLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-virtual {p0, v0}, Lcom/micloud/midrive/task/TransferBaseTask;->onPrepare(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V

    return-void
.end method

.method private transferFile(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 5

    const-string v0, "transferFile: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-interface {v1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TransferBaseTask"

    invoke-static {v2, v0, v1}, Lmiui/cloud/common/XLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-virtual {p0, v0, p1}, Lcom/micloud/midrive/task/TransferBaseTask;->onTransferFile(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/server/transport/Network;)V

    return-void
.end method


# virtual methods
.method public getTaskProgressInfo()Lcom/micloud/midrive/infos/TaskProgressInfo;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTaskProgressInfo:Lcom/micloud/midrive/infos/TaskProgressInfo;

    return-object v0
.end method

.method public getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mTransferFileBaseInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

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

    new-instance v6, Lcom/micloud/midrive/task/TransferBaseTask$3;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/micloud/midrive/task/TransferBaseTask$3;-><init>(Lcom/micloud/midrive/task/TransferBaseTask;JJ)V

    invoke-virtual {p0, v6}, Lcom/micloud/midrive/task/BaseTask;->postOnListenerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runOnNetworkAtStep(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    .registers 4

    if-nez p2, :cond_5

    sget-object p1, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PERFORM_START:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    return-object p1

    :cond_5
    sget-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PERFORM_START:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    if-ne v0, p2, :cond_f

    invoke-direct {p0}, Lcom/micloud/midrive/task/TransferBaseTask;->performTransferStarted()V

    sget-object p1, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PREPARE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    return-object p1

    :cond_f
    sget-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PREPARE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    if-ne v0, p2, :cond_19

    invoke-direct {p0}, Lcom/micloud/midrive/task/TransferBaseTask;->prepare()V

    sget-object p1, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->TRANSFER_FILE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    return-object p1

    :cond_19
    sget-object v0, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->TRANSFER_FILE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    if-ne v0, p2, :cond_23

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/TransferBaseTask;->transferFile(Lcom/micloud/midrive/server/transport/Network;)V

    sget-object p1, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PERFORM_DONE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    return-object p1

    :cond_23
    sget-object p1, Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;->PERFORM_DONE:Lcom/micloud/midrive/task/TransferBaseTask$TransferTaskStep;

    if-ne p1, p2, :cond_2c

    invoke-direct {p0}, Lcom/micloud/midrive/task/TransferBaseTask;->performTransferDone()V

    const/4 p1, 0x0

    return-object p1

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should not reach here"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProgressChangeListener(Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;)V
    .registers 2

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->checkRunInListenerHandlerThread()V

    iput-object p1, p0, Lcom/micloud/midrive/task/TransferBaseTask;->mProgressChangeListener:Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

    return-void
.end method
