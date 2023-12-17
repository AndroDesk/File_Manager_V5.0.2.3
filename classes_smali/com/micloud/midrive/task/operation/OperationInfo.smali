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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJLcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->taskId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->currentTime:J

    iput-wide p4, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->expireTime:J

    iput-wide p6, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->interval:J

    iput-object p8, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->operationType:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "OperationInfo{taskId=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->taskId:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", currentTime="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v1, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->currentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->expireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", operationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/task/operation/OperationInfo;->operationType:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
