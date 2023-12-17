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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->errCode:I

    iput-object p2, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->fileId:Ljava/lang/String;

    iput-object p4, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->label:Ljava/lang/String;

    iput-object p5, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "FailedRecord{errCode="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->name:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", fileId=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->fileId:Ljava/lang/String;

    const-string v3, ", label=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->label:Ljava/lang/String;

    const-string v3, ", type=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
