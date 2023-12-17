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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IJLcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->status:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->operateType:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->taskId:Ljava/lang/String;

    iput-object p4, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->taskResult:Lorg/json/JSONObject;

    iput p5, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->progress:I

    iput-wide p6, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->currentTime:J

    iput-object p8, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->errorInfo:Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "TaskQueryInfo{status=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->status:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", operateType=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->operateType:Ljava/lang/String;

    const-string v3, ", taskId=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->taskId:Ljava/lang/String;

    const-string v3, ", progress="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->currentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", errorInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;->errorInfo:Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
