.class public Lcom/micloud/midrive/infos/LatestOperationInfo$Factory;
.super Ljava/lang/Object;
.source "LatestOperationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/LatestOperationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "LatestOperationInfo.Factory class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static create(Ljava/lang/String;)Lcom/micloud/midrive/infos/LatestOperationInfo;
    .registers 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p0, "count"

    .line 8
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 11
    move-result p0

    .line 12
    const-string v1, "record"

    .line 14
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/micloud/midrive/infos/OperationInfo$Factory;->create(Ljava/lang/String;)Lcom/micloud/midrive/infos/OperationInfo;

    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/micloud/midrive/infos/LatestOperationInfo;

    .line 28
    invoke-direct {v1, p0, v0}, Lcom/micloud/midrive/infos/LatestOperationInfo;-><init>(ILcom/micloud/midrive/infos/OperationInfo;)V

    .line 31
    return-object v1
.end method
