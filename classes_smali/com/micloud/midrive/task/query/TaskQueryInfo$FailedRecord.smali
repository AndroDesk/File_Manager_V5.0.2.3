.class public Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;
.super Ljava/lang/Object;
.source "TaskQueryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/query/TaskQueryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailedRecord"
.end annotation


# instance fields
.field public final errCode:I

.field public final fileId:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->errCode:I

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->name:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->fileId:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->label:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->type:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "FailedRecord{errCode="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->errCode:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", name=\'"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->name:Ljava/lang/String;

    .line 19
    const/16 v2, 0x27

    .line 21
    const-string v3, ", fileId=\'"

    .line 23
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->fileId:Ljava/lang/String;

    .line 28
    const-string v3, ", label=\'"

    .line 30
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->label:Ljava/lang/String;

    .line 35
    const-string v3, ", type=\'"

    .line 37
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->type:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    const/16 v1, 0x7d

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
