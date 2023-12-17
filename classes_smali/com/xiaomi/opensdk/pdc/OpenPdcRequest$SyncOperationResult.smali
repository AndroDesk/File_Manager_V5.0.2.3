.class public Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;
.super Ljava/lang/Object;
.source "OpenPdcRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncOperationResult"
.end annotation


# instance fields
.field public code:I

.field public data:Lorg/json/JSONObject;

.field public description:Ljava/lang/String;

.field public errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field public isSuccess:Z

.field public responseCode:I

.field public result:Ljava/lang/String;

.field public retryTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->responseCode:I

    if-eqz p2, :cond_48

    const-string v0, "reason"

    .line 4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    const-string v0, "description"

    .line 5
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    const/4 v0, -0x1

    const-string v1, "code"

    .line 6
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 7
    invoke-static {p1, v0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->access$000(II)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 8
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->OK:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    if-ne p1, v0, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    iput-boolean p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    const-string p1, "retriable"

    .line 9
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 10
    sget-object p1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-wide/32 v0, 0x493e0

    .line 11
    iput-wide v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    :cond_40
    const-string p1, "data"

    .line 12
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    :cond_48
    return-void
.end method
