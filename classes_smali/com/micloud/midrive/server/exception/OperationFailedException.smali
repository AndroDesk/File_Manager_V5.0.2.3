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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/micloud/midrive/server/exception/RemoteServiceException;-><init>()V

    iput p1, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    iput-object p2, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->action:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->result:Ljava/lang/String;

    iput-object p4, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->reason:Ljava/lang/String;

    iput-object p5, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->action:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", result=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->result:Ljava/lang/String;

    const-string v3, ", reason=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->reason:Ljava/lang/String;

    const-string v3, ", description=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
