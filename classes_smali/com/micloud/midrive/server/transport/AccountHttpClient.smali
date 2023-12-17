.class public Lcom/micloud/midrive/server/transport/AccountHttpClient;
.super Ljava/lang/Object;
.source "AccountHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;,
        Lcom/micloud/midrive/server/transport/AccountHttpClient$RequestAction;,
        Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;,
        Lcom/micloud/midrive/server/transport/AccountHttpClient$TransportClientException;,
        Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AccountHttpClient"

.field private static final sClient:Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/micloud/midrive/server/transport/AccountHttpClient$3;

    invoke-direct {v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient$3;-><init>()V

    sput-object v0, Lcom/micloud/midrive/server/transport/AccountHttpClient;->sClient:Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static execute(Lcom/micloud/midrive/server/transport/AccountHttpClient$RequestAction;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/AccountHttpClient$RequestAction;",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Lcom/micloud/midrive/server/transport/RequestHandler<",
            "Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p2

    const-string v2, ", PARAM="

    const-string v3, "URL="

    const-string v4, "AccountHttpClient"

    new-instance v5, Lcom/micloud/midrive/server/transport/RetryControl;

    invoke-direct {v5}, Lcom/micloud/midrive/server/transport/RetryControl;-><init>()V

    :goto_d
    invoke-virtual {v5}, Lcom/micloud/midrive/server/transport/RetryControl;->loopForRetry()Z

    move-result v0

    if-eqz v0, :cond_119

    :try_start_13
    invoke-static {}, Lcom/micloud/midrive/manager/NetworkManager;->get()Lcom/micloud/midrive/manager/NetworkManager;

    move-result-object v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_fe
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_17} :catch_f3
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_13 .. :try_end_17} :catch_e3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_13 .. :try_end_17} :catch_d8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_13 .. :try_end_17} :catch_cd
    .catch Lcom/micloud/midrive/server/transport/exception/RequestNetworkIOException; {:try_start_13 .. :try_end_17} :catch_c7
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException; {:try_start_13 .. :try_end_17} :catch_c1

    move-object/from16 v6, p1

    :try_start_19
    invoke-virtual {v0, v6}, Lcom/micloud/midrive/manager/NetworkManager;->acquireSpecificNetwork(Lcom/micloud/midrive/server/transport/Network;)V

    invoke-virtual {v5}, Lcom/micloud/midrive/server/transport/RetryControl;->getRetryCountDown()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/micloud/midrive/server/transport/RequestHandler;->getRequest(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;

    iget-object v8, v7, Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;->URL:Ljava/lang/String;

    iget-object v7, v7, Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;->params:Ljava/util/Map;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2a} :catch_bd
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_2a} :catch_b9
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_19 .. :try_end_2a} :catch_b5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_19 .. :try_end_2a} :catch_b1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_19 .. :try_end_2a} :catch_ad
    .catch Lcom/micloud/midrive/server/transport/exception/RequestNetworkIOException; {:try_start_19 .. :try_end_2a} :catch_a8
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException; {:try_start_19 .. :try_end_2a} :catch_a3

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object/from16 v12, p0

    :try_start_2f
    invoke-interface {v12, v8, v7}, Lcom/micloud/midrive/server/transport/AccountHttpClient$RequestAction;->doAction(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v4, v14, v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", RESP="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v9

    invoke-static {v14}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_2f .. :try_end_59} :catchall_6f

    if-eqz v13, :cond_67

    :try_start_5b
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v7}, Lcom/micloud/midrive/server/transport/RequestHandler;->onResponse(ILjava/lang/Object;)V

    invoke-virtual {v5}, Lcom/micloud/midrive/server/transport/RetryControl;->done()V

    goto :goto_d

    :cond_67
    new-instance v0, Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;

    const-string v7, "responseStr == null"

    invoke-direct {v0, v7}, Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_6f
    move-exception v0

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", ERROR="

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v9

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    throw v0
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_98} :catch_a0
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_98} :catch_9e
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_5b .. :try_end_98} :catch_9c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5b .. :try_end_98} :catch_9a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5b .. :try_end_98} :catch_98
    .catch Lcom/micloud/midrive/server/transport/exception/RequestNetworkIOException; {:try_start_5b .. :try_end_98} :catch_111
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException; {:try_start_5b .. :try_end_98} :catch_109

    :catch_98
    move-exception v0

    goto :goto_d2

    :catch_9a
    move-exception v0

    goto :goto_dd

    :catch_9c
    move-exception v0

    goto :goto_e8

    :catch_9e
    move-exception v0

    goto :goto_f8

    :catch_a0
    move-exception v0

    goto/16 :goto_103

    :catch_a3
    move-exception v0

    move-object/from16 v12, p0

    goto/16 :goto_10a

    :catch_a8
    move-exception v0

    move-object/from16 v12, p0

    goto/16 :goto_112

    :catch_ad
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_d2

    :catch_b1
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_dd

    :catch_b5
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_e8

    :catch_b9
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_f8

    :catch_bd
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_103

    :catch_c1
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v6, p1

    goto :goto_10a

    :catch_c7
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v6, p1

    goto :goto_112

    :catch_cd
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v6, p1

    :goto_d2
    :try_start_d2
    new-instance v7, Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;

    invoke-direct {v7, v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :catch_d8
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v6, p1

    :goto_dd
    new-instance v7, Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;

    invoke-direct {v7, v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :catch_e3
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v6, p1

    :goto_e8
    invoke-static {v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->throwCloudServerException(Lcom/xiaomi/micloudsdk/exception/CloudServerException;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v7, "never reach here"

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_f3
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v6, p1

    :goto_f8
    new-instance v7, Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;

    invoke-direct {v7, v0}, Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :catch_fe
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v6, p1

    :goto_103
    new-instance v7, Lcom/micloud/midrive/server/transport/exception/RequestNetworkIOException;

    invoke-direct {v7, v0}, Lcom/micloud/midrive/server/transport/exception/RequestNetworkIOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_109
    .catch Lcom/micloud/midrive/server/transport/exception/RequestNetworkIOException; {:try_start_d2 .. :try_end_109} :catch_111
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException; {:try_start_d2 .. :try_end_109} :catch_109

    :catch_109
    move-exception v0

    :goto_10a
    iget-wide v7, v0, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;->retryDelayHintMillis:J

    invoke-virtual {v5, v0, v7, v8}, Lcom/micloud/midrive/server/transport/RetryControl;->retry(Ljava/lang/Exception;J)V

    goto/16 :goto_d

    :catch_111
    move-exception v0

    :goto_112
    const-wide/16 v7, -0x1

    invoke-virtual {v5, v0, v7, v8}, Lcom/micloud/midrive/server/transport/RetryControl;->retry(Ljava/lang/Exception;J)V

    goto/16 :goto_d

    :cond_119
    return-void
.end method

.method public static get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Lcom/micloud/midrive/server/transport/RequestHandler<",
            "Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/micloud/midrive/server/transport/AccountHttpClient;->sClient:Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;

    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->getInner(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V

    return-void
.end method

.method public static getForTest(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Lcom/micloud/midrive/server/transport/RequestHandler<",
            "Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->getInner(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V

    return-void
.end method

.method private static getInner(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Lcom/micloud/midrive/server/transport/RequestHandler<",
            "Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/micloud/midrive/server/transport/AccountHttpClient$1;

    invoke-direct {v0, p2}, Lcom/micloud/midrive/server/transport/AccountHttpClient$1;-><init>(Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V

    invoke-static {v0, p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->execute(Lcom/micloud/midrive/server/transport/AccountHttpClient$RequestAction;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    return-void
.end method

.method public static post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Lcom/micloud/midrive/server/transport/RequestHandler<",
            "Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/micloud/midrive/server/transport/AccountHttpClient;->sClient:Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;

    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->postInner(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V

    return-void
.end method

.method public static postForTest(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Lcom/micloud/midrive/server/transport/RequestHandler<",
            "Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->postInner(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V

    return-void
.end method

.method private static postInner(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Lcom/micloud/midrive/server/transport/RequestHandler<",
            "Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/micloud/midrive/server/transport/AccountHttpClient$2;

    invoke-direct {v0, p2}, Lcom/micloud/midrive/server/transport/AccountHttpClient$2;-><init>(Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V

    invoke-static {v0, p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->execute(Lcom/micloud/midrive/server/transport/AccountHttpClient$RequestAction;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    return-void
.end method

.method private static throwCloudServerException(Lcom/xiaomi/micloudsdk/exception/CloudServerException;)V
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_23

    const/16 v1, 0x193

    if-eq v0, v1, :cond_23

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_1a

    new-instance v0, Lcom/micloud/midrive/server/transport/AccountHttpClient$TransportClientException;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/transport/AccountHttpClient$TransportClientException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1a
    new-instance v0, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;

    iget v1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;-><init>(Ljava/lang/Throwable;J)V

    throw v0

    :cond_23
    new-instance v0, Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
