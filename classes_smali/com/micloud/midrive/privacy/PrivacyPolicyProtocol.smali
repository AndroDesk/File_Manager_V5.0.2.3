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
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static agree(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/miui/privacypolicy/PrivacyManager;->privacyAgree(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;->ensureOperationSuccess(I)V

    .line 8
    return-void
.end method

.method private static ensureOperationSuccess(I)V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq v0, p0, :cond_d

    .line 4
    const/4 v0, -0x7

    .line 5
    if-eq v0, p0, :cond_d

    .line 7
    const/4 v0, -0x6

    .line 8
    if-ne v0, p0, :cond_a

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    invoke-static {p0}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;->throwOperationException(I)V

    .line 14
    :cond_d
    :goto_d
    return-void
.end method

.method public static fetch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;
    .registers 4

    .line 1
    invoke-static {p0, p1, p2}, Lcom/miui/privacypolicy/PrivacyManager;->requestPrivacyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x2

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    .line 8
    const/4 p2, 0x0

    .line 9
    const-string v0, "PrivacySDK fetch"

    .line 11
    aput-object v0, p1, p2

    .line 13
    const/4 p2, 0x1

    .line 14
    aput-object p0, p1, p2

    .line 16
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 19
    :try_start_12
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;->ensureOperationSuccess(I)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_19} :catch_1b

    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :catch_1b
    move-exception p1

    .line 29
    :try_start_1c
    invoke-static {p0}, Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;->fromServerJSON(Ljava/lang/String;)Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;

    .line 32
    move-result-object p0
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_20} :catch_21

    .line 33
    return-object p0

    .line 34
    :catch_21
    new-instance p0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$BadResponseException;

    .line 36
    invoke-direct {p0, p1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$BadResponseException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    throw p0
.end method

.method public static revoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/miui/privacypolicy/PrivacyManager;->privacyRevoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol;->ensureOperationSuccess(I)V

    .line 8
    return-void
.end method

.method public static setPrivacyStatus(Landroid/content/Context;Z)V
    .registers 6

    .line 1
    if-eqz p1, :cond_5

    .line 3
    const-string p1, "ON"

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    const-string p1, "OFF"

    .line 8
    :goto_7
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    const-string v1, "bizType"

    .line 15
    const-string v2, "MICLOUD_DISK"

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "status"

    .line 22
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "setPrivacyStatus"

    .line 27
    new-instance v2, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 29
    const-string v3, "http://api.micloud.xiaomi.net/mic/user/privacy/status/set"

    .line 31
    invoke-direct {v2, v1, v3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    invoke-static {p0}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0, v2}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 41
    invoke-virtual {v2}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lorg/json/JSONObject;

    .line 47
    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    const/4 v2, 0x0

    .line 51
    const-string v3, "responseJson: "

    .line 53
    invoke-static {v3, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    aput-object v3, v0, v2

    .line 59
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 62
    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 65
    :try_start_40
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToMiDriveRevokeStatus(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_4b

    .line 75
    return-void

    .line 76
    :cond_4b
    new-instance p0, Lorg/json/JSONException;

    .line 78
    const-string p1, "get status failed."

    .line 80
    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_53} :catch_53

    .line 84
    :catch_53
    move-exception p0

    .line 85
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 87
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 90
    throw p1
.end method

.method private static throwOperationException(I)V
    .registers 3

    .line 1
    const/4 v0, -0x5

    .line 2
    if-eq p0, v0, :cond_37

    .line 4
    const/4 v0, -0x4

    .line 5
    if-eq p0, v0, :cond_2f

    .line 7
    const/4 v0, -0x3

    .line 8
    if-eq p0, v0, :cond_27

    .line 10
    const/4 v0, -0x2

    .line 11
    if-eq p0, v0, :cond_1f

    .line 13
    const/4 v0, -0x1

    .line 14
    if-eq p0, v0, :cond_17

    .line 16
    new-instance v0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;

    .line 18
    const-string v1, "UNKNOWN_FAILED_REASON"

    .line 20
    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    .line 23
    throw v0

    .line 24
    :cond_17
    new-instance v0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;

    .line 26
    const-string v1, "ERROR_NO_NETWORK"

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    .line 31
    throw v0

    .line 32
    :cond_1f
    new-instance v0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;

    .line 34
    const-string v1, "ERROR_SERVICE_NOT_RESPONSE"

    .line 36
    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    .line 39
    throw v0

    .line 40
    :cond_27
    new-instance v0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;

    .line 42
    const-string v1, "ERROR_PARESE_SERVICE_DATA"

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    .line 47
    throw v0

    .line 48
    :cond_2f
    new-instance v0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;

    .line 50
    const-string v1, "ERROR_INTERNATIONAL_REGION"

    .line 52
    invoke-direct {v0, p0, v1}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    .line 55
    throw v0

    .line 56
    :cond_37
    new-instance p0, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationCallFrequentException;

    .line 58
    invoke-direct {p0}, Lcom/micloud/midrive/privacy/PrivacyPolicyProtocol$OperationCallFrequentException;-><init>()V

    .line 61
    throw p0
.end method
