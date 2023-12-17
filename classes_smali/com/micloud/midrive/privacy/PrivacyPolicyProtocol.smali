.class public Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;
.super Ljava/lang/Object;
.source "PrivacyPolicyProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$BadResponseException;,
        Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationCallFrequentException;,
        Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;
    }
.end annotation


# static fields
.field private static final REVOKE_STATUS_OFF:Ljava/lang/String; = "OFF"

.field private static final REVOKE_STATUS_ON:Ljava/lang/String; = "ON"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static agree(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/miui/privacypolicy/PrivacyManager;->privacyAgree(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;->ensureOperationSuccess(I)V

    return-void
.end method

.method private static ensureOperationSuccess(I)V
    .registers 2

    const/4 v0, 0x1

    if-eq v0, p0, :cond_d

    const/4 v0, -0x7

    if-eq v0, p0, :cond_d

    const/4 v0, -0x6

    if-ne v0, p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-static {p0}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;->throwOperationException(I)V

    :cond_d
    :goto_d
    return-void
.end method

.method public static fetch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/miui/privacypolicy/PrivacyManager;->requestPrivacyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "PrivacySDK fetch"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    aput-object p0, p1, p2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    :try_start_12
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;->ensureOperationSuccess(I)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_19} :catch_1b

    const/4 p0, 0x0

    return-object p0

    :catch_1b
    move-exception p1

    :try_start_1c
    invoke-static {p0}, Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;->fromServerJSON(Ljava/lang/String;)Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;

    move-result-object p0
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    new-instance p0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$BadResponseException;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static revoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/miui/privacypolicy/PrivacyManager;->privacyRevoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;->ensureOperationSuccess(I)V

    return-void
.end method

.method public static setPrivacyStatus(Landroid/content/Context;Z)V
    .registers 6

    if-eqz p1, :cond_5

    const-string p1, "ON"

    goto :goto_7

    :cond_5
    const-string p1, "OFF"

    :goto_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "bizType"

    const-string v2, "MICLOUD_DISK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setPrivacyStatus"

    new-instance v2, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v3, "http://api.micloud.xiaomi.net/mic/user/privacy/status/set"

    invoke-direct {v2, v1, v3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {v2}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "responseJson: "

    invoke-static {v3, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_40
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToMiDriveRevokeStatus(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4b

    return-void

    :cond_4b
    new-instance p0, Lorg/json/JSONException;

    const-string p1, "get status failed."

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_53} :catch_53

    :catch_53
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static throwOperationException(I)V
    .registers 3

    const/4 v0, -0x5

    if-eq p0, v0, :cond_37

    const/4 v0, -0x4

    if-eq p0, v0, :cond_2f

    const/4 v0, -0x3

    if-eq p0, v0, :cond_27

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, -0x1

    if-eq p0, v0, :cond_17

    new-instance v0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;

    const-string v1, "UNKNOWN_FAILED_REASON"

    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;

    const-string v1, "ERROR_NO_NETWORK"

    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;

    const-string v1, "ERROR_SERVICE_NOT_RESPONSE"

    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;

    const-string v1, "ERROR_PARESE_SERVICE_DATA"

    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;

    const-string v1, "ERROR_INTERNATIONAL_REGION"

    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_37
    new-instance p0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationCallFrequentException;

    invoke-direct {p0}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationCallFrequentException;-><init>()V

    throw p0
.end method
