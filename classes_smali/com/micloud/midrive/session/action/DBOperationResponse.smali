.class public Lcom/micloud/midrive/session/action/DBOperationResponse;
.super Ljava/lang/Object;
.source "DBOperationResponse.java"


# instance fields
.field public final isSuccess:Z

.field private transferId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    return-void
.end method

.method public static buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 2

    new-instance v0, Lcom/micloud/midrive/session/action/DBOperationResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/action/DBOperationResponse;-><init>(Z)V

    return-object v0
.end method

.method public static buildSuccessfulResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 2

    new-instance v0, Lcom/micloud/midrive/session/action/DBOperationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/action/DBOperationResponse;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public getTransferId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/action/DBOperationResponse;->transferId:Ljava/lang/String;

    return-object v0
.end method

.method public setTransferId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/action/DBOperationResponse;->transferId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "DBOperationResponse{isSuccess="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", transferId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/session/action/DBOperationResponse;->transferId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
