.class public Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;
.super Ljava/lang/Object;
.source "Pdc4Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;
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

.field public reason:Ljava/lang/String;

.field public result:Ljava/lang/String;

.field public retryTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "reason"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

    const-string v0, "description"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    const-string v0, "code"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 6
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->convertErrorCode(I)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 7
    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->OK:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    if-ne v0, v1, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    const-string v0, "retriable"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 9
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-wide/32 v0, 0x493e0

    .line 10
    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    :cond_3b
    const-string v0, "data"

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    return-void
.end method
