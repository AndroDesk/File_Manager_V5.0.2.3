.class public Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;
.super Ljava/lang/Object;
.source "TaskQueryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/query/TaskQueryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorInfo"
.end annotation


# instance fields
.field public final errCode:I

.field public final errMessage:Ljava/lang/String;

.field public final failedRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->errCode:I

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->errMessage:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->failedRecordList:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "ErrorInfo{errCode="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->errCode:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", errMessage=\'"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->errMessage:Ljava/lang/String;

    .line 19
    const/16 v2, 0x27

    .line 21
    const-string v3, ", failedRecordList="

    .line 23
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->failedRecordList:Ljava/util/List;

    .line 28
    if-eqz v1, :cond_1e

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const-string v1, ""

    .line 33
    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const/16 v1, 0x7d

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
