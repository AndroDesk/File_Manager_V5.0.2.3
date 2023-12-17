.class public Lcom/micloud/midrive/task/query/TaskQueryInfo;
.super Ljava/lang/Object;
.source "TaskQueryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;,
        Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;
    }
.end annotation


# static fields
.field public static final FAILED:Ljava/lang/String; = "FAILED"

.field public static final RUNNING:Ljava/lang/String; = "RUNNING"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"


# instance fields
.field public final currentTime:J

.field public final errorInfo:Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;

.field public final operateType:Ljava/lang/String;

.field public final progress:I

.field public final status:Ljava/lang/String;

.field public final taskId:Ljava/lang/String;

.field public final taskResult:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IJLcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->status:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->operateType:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->taskId:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->taskResult:Lorg/json/JSONObject;

    .line 12
    iput p5, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->progress:I

    .line 14
    iput-wide p6, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->currentTime:J

    .line 16
    iput-object p8, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->errorInfo:Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "TaskQueryInfo{status=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->status:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", operateType=\'"

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->operateType:Ljava/lang/String;

    .line 18
    const-string v3, ", taskId=\'"

    .line 20
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->taskId:Ljava/lang/String;

    .line 25
    const-string v3, ", progress="

    .line 27
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 30
    iget v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->progress:I

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", currentTime="

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-wide v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->currentTime:J

    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ", errorInfo="

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->errorInfo:Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const/16 v1, 0x7d

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method
