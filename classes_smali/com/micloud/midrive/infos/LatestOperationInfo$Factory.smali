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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LatestOperationInfo.Factory class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/lang/String;)Lcom/micloud/midrive/infos/LatestOperationInfo;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "count"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "record"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/infos/OperationInfo$Factory;->create(Ljava/lang/String;)Lcom/micloud/midrive/infos/OperationInfo;

    move-result-object v0

    new-instance v1, Lcom/micloud/midrive/infos/LatestOperationInfo;

    invoke-direct {v1, p0, v0}, Lcom/micloud/midrive/infos/LatestOperationInfo;-><init>(ILcom/micloud/midrive/infos/OperationInfo;)V

    return-object v1
.end method
