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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->errCode:I

    iput-object p2, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->errMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->failedRecordList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "ErrorInfo{errCode="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->errMessage:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", failedRecordList="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->failedRecordList:Ljava/util/List;

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    const-string v1, ""

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
