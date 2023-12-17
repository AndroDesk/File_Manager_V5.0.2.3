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

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/transport/AccountHttpClient$3;

    .line 3
    invoke-direct {v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient$3;-><init>()V

    .line 6
    sput-object v0, Lcom/micloud/midrive/server/transport/AccountHttpClient;->sClient:Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;

    .line 8
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

    .line 1
    move-object/from16 v1, p2

    .line 3
    const-string v2, ", PARAM="

    .line 5
    const-string v3, "URL="

    .line 7
    const-string v4, "AccountHttpClient"

    .line 9
    new-instance v5, Lcom/micloud/midrive/server/transport/RetryControl;

    .line 11
    invoke-direct {v5}, Lcom/micloud/midrive/server/transport/RetryControl;-><init>()V

    .line 14
    :goto_d
    invoke-virtual {v5}, Lcom/micloud/midrive/server/transport/RetryControl;->loopForRetry()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_119

    .line 20
    :try_start_13
    invoke-static {}, Lcom/micloud/midrive/manager/NetworkManager;->get()Lcom/micloud/midrive/manager/NetworkManager;

    .line 23
    move-result-object v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_fe
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_17} :catch_f3
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_13 .. :try_end_17} :catch_e3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_13 .. :try_end_17} :catch_d8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_13 .. :try_end_17} :catch_cd
    .catch Lcom/micloud/midrive/server/transport/exception/RequestNetworkIOException; {:try_start_13 .. :try_end_17} :catch_c7
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException; {:try_start_13 .. :try_end_17} :catch_c1

    .line 24
    move-object/from16 v6, p1

    .line 26
    :try_start_19
    invoke-virtual {v0, v6}, Lcom/micloud/midrive/manager/NetworkManager;->acquireSpecificNetwork(Lcom/micloud/midrive/server/transport/Network;)V

    .line 29
    invoke-virtual {v5}, Lcom/micloud/midrive/server/transport/RetryControl;->getRetryCountDown()I

    .line 32
    move-result v0

    .line 33
    invoke-interface {v1, v0}, Lcom/micloud/midrive/server/transport/RequestHandler;->getRequest(I)Ljava/lang/Object;

    .line 36
    move-result-object v7

    .line 37
    check-cast v7, Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;

    .line 39
    iget-object v8, v7, Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;->URL:Ljava/lang/String;

    .line 41
    iget-object v7, v7, Lcom/micloud/midrive/server/transport/AccountHttpClient$HttpRequest;->params:Ljava/util/Map;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2a} :catch_bd
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_2a} :catch_b9
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_19 .. :try_end_2a} :catch_b5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_19 .. :try_end_2a} :catch_b1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_19 .. :try_end_2a} :catch_ad
    .catch Lcom/micloud/midrive/server/transport/exception/RequestNetworkIOException; {:try_start_19 .. :try_end_2a} :catch_a8
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException; {:try_start_19 .. :try_end_2a} :catch_a3

    .line 43
    const/4 v9, 0x1

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x2

    .line 46
    move-object/from16 v12, p0

    .line 48
    :try_start_2f
    invoke-interface {v12, v8, v7}, Lcom/micloud/midrive/server/transport/AccountHttpClient$RequestAction;->doAction(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 51
    move-result-object v13

    .line 52
    new-array v14, v11, [Ljava/lang/Object;

    .line 54
    aput-object v4, v14, v10

    .line 56
    new-instance v15, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    const-string v10, ", RESP="

    .line 75
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v10

    .line 85
    aput-object v10, v14, v9

    .line 87
    invoke-static {v14}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_2f .. :try_end_59} :catchall_6f

    .line 90
    if-eqz v13, :cond_67

    .line 92
    :try_start_5b
    new-instance v7, Lorg/json/JSONObject;

    .line 94
    invoke-direct {v7, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-interface {v1, v0, v7}, Lcom/micloud/midrive/server/transport/RequestHandler;->onResponse(ILjava/lang/Object;)V

    .line 100
    invoke-virtual {v5}, Lcom/micloud/midrive/server/transport/RetryControl;->done()V

    .line 103
    goto :goto_d

    .line 104
    :cond_67
    new-instance v0, Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;

    .line 106
    const-string v7, "responseStr == null"

    .line 108
    invoke-direct {v0, v7}, Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;-><init>(Ljava/lang/String;)V

    .line 111
    throw v0

    .line 112
    :catchall_6f
    move-exception v0

    .line 113
    new-array v10, v11, [Ljava/lang/Object;

    .line 115
    const/4 v11, 0x0

    .line 116
    aput-object v4, v10, v11

    .line 118
    new-instance v11, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    const-string v7, ", ERROR="

    .line 137
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v7

    .line 147
    aput-object v7, v10, v9

    .line 149
    invoke-static {v10}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 152
    throw v0
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_98} :catch_a0
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_98} :catch_9e
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_5b .. :try_end_98} :catch_9c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5b .. :try_end_98} :catch_9a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5b .. :try_end_98} :catch_98
    .catch Lcom/micloud/midrive/server/transport/exception/RequestNetworkIOException; {:try_start_5b .. :try_end_98} :catch_111
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException; {:try_start_5b .. :try_end_98} :catch_109

    .line 153
    :catch_98
    move-exception v0

    .line 154
    goto :goto_d2

    .line 155
    :catch_9a
    move-exception v0

    .line 156
    goto :goto_dd

    .line 157
    :catch_9c
    move-exception v0

    .line 158
    goto :goto_e8

    .line 159
    :catch_9e
    move-exception v0

    .line 160
    goto :goto_f8

    .line 161
    :catch_a0
    move-exception v0

    .line 162
    goto/16 :goto_103

    .line 164
    :catch_a3
    move-exception v0

    .line 165
    move-object/from16 v12, p0

    .line 167
    goto/16 :goto_10a

    .line 169
    :catch_a8
    move-exception v0

    .line 170
    move-object/from16 v12, p0

    .line 172
    goto/16 :goto_112

    .line 174
    :catch_ad
    move-exception v0

    .line 175
    move-object/from16 v12, p0

    .line 177
    goto :goto_d2

    .line 178
    :catch_b1
    move-exception v0

    .line 179
    move-object/from16 v12, p0

    .line 181
    goto :goto_dd

    .line 182
    :catch_b5
    move-exception v0

    .line 183
    move-object/from16 v12, p0

    .line 185
    goto :goto_e8

    .line 186
    :catch_b9
    move-exception v0

    .line 187
    move-object/from16 v12, p0

    .line 189
    goto :goto_f8

    .line 190
    :catch_bd
    move-exception v0

    .line 191
    move-object/from16 v12, p0

    .line 193
    goto :goto_103

    .line 194
    :catch_c1
    move-exception v0

    .line 195
    move-object/from16 v12, p0

    .line 197
    move-object/from16 v6, p1

    .line 199
    goto :goto_10a

    .line 200
    :catch_c7
    move-exception v0

    .line 201
    move-object/from16 v12, p0

    .line 203
    move-object/from16 v6, p1

    .line 205
    goto :goto_112

    .line 206
    :catch_cd
    move-exception v0

    .line 207
    move-object/from16 v12, p0

    .line 209
    move-object/from16 v6, p1

    .line 211
    :goto_d2
    :try_start_d2
    new-instance v7, Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;

    .line 213
    invoke-direct {v7, v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;-><init>(Ljava/lang/Throwable;)V

    .line 216
    throw v7

    .line 217
    :catch_d8
    move-exception v0

    .line 218
    move-object/from16 v12, p0

    .line 220
    move-object/from16 v6, p1

    .line 222
    :goto_dd
    new-instance v7, Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;

    .line 224
    invoke-direct {v7, v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;-><init>(Ljava/lang/Throwable;)V

    .line 227
    throw v7

    .line 228
    :catch_e3
    move-exception v0

    .line 229
    move-object/from16 v12, p0

    .line 231
    move-object/from16 v6, p1

    .line 233
    :goto_e8
    invoke-static {v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->throwCloudServerException(Lcom/xiaomi/micloudsdk/exception/CloudServerException;)V

    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 238
    const-string v7, "never reach here"

    .line 240
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 243
    throw v0

    .line 244
    :catch_f3
    move-exception v0

    .line 245
    move-object/from16 v12, p0

    .line 247
    move-object/from16 v6, p1

    .line 249
    :goto_f8
    new-instance v7, Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;

    .line 251
    invoke-direct {v7, v0}, Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 254
    throw v7

    .line 255
    :catch_fe
    move-exception v0

    .line 256
    move-object/from16 v12, p0

    .line 258
    move-object/from16 v6, p1

    .line 260
    :goto_103
    new-instance v7, Lcom/micloud/midrive/server/transport/exception/RequestNetworkIOException;

    .line 262
    invoke-direct {v7, v0}, Lcom/micloud/midrive/server/transport/exception/RequestNetworkIOException;-><init>(Ljava/lang/Throwable;)V

    .line 265
    throw v7
    :try_end_109
    .catch Lcom/micloud/midrive/server/transport/exception/RequestNetworkIOException; {:try_start_d2 .. :try_end_109} :catch_111
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException; {:try_start_d2 .. :try_end_109} :catch_109

    .line 266
    :catch_109
    move-exception v0

    .line 267
    :goto_10a
    iget-wide v7, v0, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;->retryDelayHintMillis:J

    .line 269
    invoke-virtual {v5, v0, v7, v8}, Lcom/micloud/midrive/server/transport/RetryControl;->retry(Ljava/lang/Exception;J)V

    .line 272
    goto/16 :goto_d

    .line 274
    :catch_111
    move-exception v0

    .line 275
    :goto_112
    const-wide/16 v7, -0x1

    .line 277
    invoke-virtual {v5, v0, v7, v8}, Lcom/micloud/midrive/server/transport/RetryControl;->retry(Ljava/lang/Exception;J)V

    .line 280
    goto/16 :goto_d

    .line 282
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

    .line 1
    sget-object v0, Lcom/micloud/midrive/server/transport/AccountHttpClient;->sClient:Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;

    .line 3
    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->getInner(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V

    .line 6
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

    .line 1
    invoke-static {p0, p1, p2}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->getInner(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V

    .line 4
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

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/transport/AccountHttpClient$1;

    .line 3
    invoke-direct {v0, p2}, Lcom/micloud/midrive/server/transport/AccountHttpClient$1;-><init>(Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V

    .line 6
    invoke-static {v0, p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->execute(Lcom/micloud/midrive/server/transport/AccountHttpClient$RequestAction;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 9
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

    .line 1
    sget-object v0, Lcom/micloud/midrive/server/transport/AccountHttpClient;->sClient:Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;

    .line 3
    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->postInner(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V

    .line 6
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

    .line 1
    invoke-static {p0, p1, p2}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->postInner(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V

    .line 4
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

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/transport/AccountHttpClient$2;

    .line 3
    invoke-direct {v0, p2}, Lcom/micloud/midrive/server/transport/AccountHttpClient$2;-><init>(Lcom/micloud/midrive/server/transport/AccountHttpClient$IClient;)V

    .line 6
    invoke-static {v0, p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->execute(Lcom/micloud/midrive/server/transport/AccountHttpClient$RequestAction;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 9
    return-void
.end method

.method private static throwCloudServerException(Lcom/xiaomi/micloudsdk/exception/CloudServerException;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x191

    .line 7
    if-eq v0, v1, :cond_23

    .line 9
    const/16 v1, 0x193

    .line 11
    if-eq v0, v1, :cond_23

    .line 13
    const/16 v1, 0x1f4

    .line 15
    if-eq v0, v1, :cond_1a

    .line 17
    const/16 v1, 0x1f7

    .line 19
    if-eq v0, v1, :cond_1a

    .line 21
    new-instance v0, Lcom/micloud/midrive/server/transport/AccountHttpClient$TransportClientException;

    .line 23
    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/transport/AccountHttpClient$TransportClientException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    throw v0

    .line 27
    :cond_1a
    new-instance v0, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;

    .line 29
    iget v1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    .line 31
    int-to-long v1, v1

    .line 32
    invoke-direct {v0, p0, v1, v2}, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;-><init>(Ljava/lang/Throwable;J)V

    .line 35
    throw v0

    .line 36
    :cond_23
    new-instance v0, Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;

    .line 38
    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/transport/AccountHttpClient$TunnelException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    throw v0
.end method
