.class public Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;
.super Ljava/lang/Object;
.source "PrivacyPolicyInfo.java"


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "policyName"

.field private static final KEY_TRANSLATION:Ljava/lang/String; = "translation"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field public final name:Ljava/lang/String;

.field public final translation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final version:Ljava/lang/String;


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;->name:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;->version:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;->translation:Ljava/util/Map;

    .line 10
    return-void
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;->fromJSONInternal(Ljava/lang/String;)Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;

    .line 4
    move-result-object p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p0

    .line 6
    :catch_5
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    throw v0
.end method

.method private static fromJSONInternal(Ljava/lang/String;)Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;
    .registers 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p0, "policyName"

    .line 8
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    const-string v1, "version"

    .line 14
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Ljava/util/HashMap;

    .line 20
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 23
    const-string v3, "translation"

    .line 25
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_36

    .line 31
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 34
    move-result-object v3

    .line 35
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_36

    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    goto :goto_22

    .line 55
    :cond_36
    new-instance v0, Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;

    .line 57
    invoke-direct {v0, p0, v1, v2}, Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    return-object v0
.end method

.method public static fromServerJSON(Ljava/lang/String;)Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;->fromJSONInternal(Ljava/lang/String;)Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .registers 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_5
    const-string v1, "policyName"

    .line 8
    iget-object v2, p0, Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;->name:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "version"

    .line 15
    iget-object v2, p0, Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;->version:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    new-instance v1, Lorg/json/JSONObject;

    .line 22
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 25
    iget-object v2, p0, Lcom/micloud/midrive/privacy/PrivacyPolicyInfo;->translation:Ljava/util/Map;

    .line 27
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v2

    .line 35
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3c

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/String;

    .line 53
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    goto :goto_22

    .line 61
    :cond_3c
    const-string v2, "translation"

    .line 63
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_41} :catch_42

    .line 66
    return-object v0

    .line 67
    :catch_42
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 70
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 73
    throw v1
.end method
