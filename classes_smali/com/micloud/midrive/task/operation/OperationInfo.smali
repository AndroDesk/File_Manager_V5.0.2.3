.class public Lcom/micloud/midrive/task/operation/OperationInfo;
.super Ljava/lang/Object;
.source "OperationInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;
    }
.end annotation


# instance fields
.field public final currentTime:J

.field public final expireTime:J

.field public final interval:J

.field public final operationType:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

.field public final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJLcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->taskId:Ljava/lang/String;

    .line 6
    iput-wide p2, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->currentTime:J

    .line 8
    iput-wide p4, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->expireTime:J

    .line 10
    iput-wide p6, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->interval:J

    .line 12
    iput-object p8, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->operationType:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 14
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "OperationInfo{taskId=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->taskId:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", currentTime="

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-wide v1, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->currentTime:J

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", expireTime="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-wide v1, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->expireTime:J

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", interval="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-wide v1, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->interval:J

    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", operationType="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->operationType:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const/16 v1, 0x7d

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
