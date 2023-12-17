.class public Lcom/micloud/midrive/server/protocol/CloudRequestHandler;
.super Lcom/micloud/midrive/server/protocol/AbsRequestHandler;
.source "CloudRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/micloud/midrive/server/protocol/AbsRequestHandler<",
        "Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;->mAction:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;->mURL:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;->mParams:Ljava/util/Map;

    .line 10
    return-void
.end method


# virtual methods
.method public onGetRequest(I)Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;->mURL:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;->mParams:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "retry"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;

    invoke-direct {p1, v0, v1}, Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p1
.end method

.method public bridge synthetic onGetRequest(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;->onGetRequest(I)Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onProcessResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;->onProcessResponse(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public onProcessResponse(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;->mAction:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/micloud/midrive/server/protocol/CheckResponse;->checkServiceAvailable(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p1
.end method
