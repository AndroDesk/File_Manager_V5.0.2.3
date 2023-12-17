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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/BaseTask$TaskState;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;Lcom/micloud/midrive/task/BaseTask$TaskException;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->lastState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    iput-object p2, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->lastStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    iput-object p3, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isInterrupted:Z

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    if-eqz v0, :cond_f

    instance-of v0, v0, Lcom/micloud/midrive/task/BaseTask$TaskInterruptedException;

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isInterrupted:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isFailed()Z
    .registers 2

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isCancelled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "StopInfo{lastState="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->lastState:Lcom/micloud/midrive/task/BaseTask$TaskState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->lastStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInterrupted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isInterrupted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
