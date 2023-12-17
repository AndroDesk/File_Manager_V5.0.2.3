.class public Lcom/micloud/midrive/task/BaseTask$StopInfo;
.super Ljava/lang/Object;
.source "BaseTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/BaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopInfo"
.end annotation


# instance fields
.field public final error:Lcom/micloud/midrive/task/BaseTask$TaskException;

.field public final isInterrupted:Z

.field public final lastState:Lcom/micloud/midrive/task/BaseTask$TaskState;

.field public final lastStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/task/BaseTask$TaskState;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;Lcom/micloud/midrive/task/BaseTask$TaskException;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->lastState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->lastStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isInterrupted:Z

    .line 20
    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    instance-of v0, v0, Lcom/micloud/midrive/task/BaseTask$TaskInterruptedException;

    .line 7
    if-nez v0, :cond_f

    .line 9
    iget-boolean v0, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isInterrupted:Z

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 17
    :goto_10
    return v0
.end method

.method public isFailed()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isCancelled()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "StopInfo{lastState="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->lastState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", lastStep="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->lastStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", error="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", isInterrupted="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-boolean v1, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isInterrupted:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    const/16 v1, 0x7d

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
