.class public Lcom/xiaomi/micloudsdk/CloudHttpClient;
.super Lcom/xiaomi/micloudsdk/request/CloudHttpClient;
.source "CloudHttpClient.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 4
    return-void
.end method

.method public static newInstance()Lcom/xiaomi/micloudsdk/CloudHttpClient;
    .registers 2

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/CloudHttpClient;

    .line 3
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->initClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/xiaomi/micloudsdk/CloudHttpClient;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 10
    return-object v0
.end method
