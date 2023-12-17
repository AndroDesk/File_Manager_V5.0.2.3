.class public abstract Lcom/xiaomi/micloudsdk/request/RequestBase;
.super Ljava/lang/Object;
.source "RequestBase.java"


# static fields
.field private static final TAG_CONTENT:Ljava/lang/String; = "content"

.field private static final TAG_DATA:Ljava/lang/String; = "data"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addExtraParam(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getContentJSON()Lorg/json/JSONObject;
.end method

.method public getParamsMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/request/RequestBase;->getContentJSON()Lorg/json/JSONObject;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1e

    .line 12
    new-instance v2, Lorg/json/JSONObject;

    .line 14
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 17
    const-string v3, "content"

    .line 19
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const-string v2, "data"

    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/xiaomi/micloudsdk/request/RequestBase;->addExtraParam(Ljava/util/Map;)V

    .line 34
    return-object v0
.end method

.method public abstract useGet()Z
.end method
