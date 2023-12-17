.class public Lcom/micloud/midrive/server/exception/OperationFailedException;
.super Lcom/micloud/midrive/server/exception/RemoteServiceException;
.source "OperationFailedException.java"


# instance fields
.field public final action:Ljava/lang/String;

.field public final code:I

.field public final description:Ljava/lang/String;

.field public final reason:Ljava/lang/String;

.field public final result:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/server/exception/RemoteServiceException;-><init>()V

    .line 4
    iput p1, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->action:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->result:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->reason:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->description:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "{code="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v1, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", action=\'"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->action:Ljava/lang/String;

    .line 34
    const/16 v2, 0x27

    .line 36
    const-string v3, ", result=\'"

    .line 38
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->result:Ljava/lang/String;

    .line 43
    const-string v3, ", reason=\'"

    .line 45
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->reason:Ljava/lang/String;

    .line 50
    const-string v3, ", description=\'"

    .line 52
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->description:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    const/16 v1, 0x7d

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
