.class public Lcom/micloud/midrive/session/action/DBOperationResponse;
.super Ljava/lang/Object;
.source "DBOperationResponse.java"


# instance fields
.field public final isSuccess:Z

.field private transferId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 6
    return-void
.end method

.method public static buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/action/DBOperationResponse;-><init>(Z)V

    .line 7
    return-object v0
.end method

.method public static buildSuccessfulResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/action/DBOperationResponse;-><init>(Z)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public getTransferId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/action/DBOperationResponse;->transferId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setTransferId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/action/DBOperationResponse;->transferId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "DBOperationResponse{isSuccess="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", transferId=\'"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/session/action/DBOperationResponse;->transferId:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const/16 v1, 0x27

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    const/16 v1, 0x7d

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
