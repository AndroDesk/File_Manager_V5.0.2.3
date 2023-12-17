.class public Lcom/micloud/midrive/infos/PageOfOperationInfo$Factory;
.super Ljava/lang/Object;
.source "PageOfOperationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/PageOfOperationInfo;
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
    const-string v1, "PageOfOperationInfo.Factory class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static create(Ljava/lang/String;)Lcom/micloud/midrive/infos/PageOfOperationInfo;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p0, "hasMore"

    .line 8
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 11
    move-result p0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    const-string v2, "list"

    .line 19
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_17
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 27
    move-result v3

    .line 28
    if-ge v2, v3, :cond_2f

    .line 30
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Lcom/micloud/midrive/infos/OperationInfo$Factory;->create(Ljava/lang/String;)Lcom/micloud/midrive/infos/OperationInfo;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_17

    .line 48
    :cond_2f
    new-instance v0, Lcom/micloud/midrive/infos/PageOfOperationInfo;

    .line 50
    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/infos/PageOfOperationInfo;-><init>(ZLjava/util/List;)V

    .line 53
    return-object v0
.end method
