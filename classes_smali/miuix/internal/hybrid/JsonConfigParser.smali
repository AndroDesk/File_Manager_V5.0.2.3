.class public Lmiuix/internal/hybrid/JsonConfigParser;
.super Ljava/lang/Object;
.source "JsonConfigParser.java"

# interfaces
.implements Lmiuix/internal/hybrid/ConfigParser;


# static fields
.field private static final KEY_CONTENT:Ljava/lang/String; = "content"

.field private static final KEY_FEATURES:Ljava/lang/String; = "features"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_ORIGIN:Ljava/lang/String; = "origin"

.field private static final KEY_PARAMS:Ljava/lang/String; = "params"

.field private static final KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final KEY_SUBDOMAINS:Ljava/lang/String; = "subdomains"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_VENDOR:Ljava/lang/String; = "vendor"


# instance fields
.field private mJson:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/JsonConfigParser;->mJson:Lorg/json/JSONObject;

    .line 6
    return-void
.end method

.method private buildCompleteConfig(Lmiuix/internal/hybrid/Config;Ljava/util/Map;)Lmiuix/internal/hybrid/Config;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/internal/hybrid/Config;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lmiuix/internal/hybrid/Config;"
        }
    .end annotation

    return-object p1
.end method

.method public static createFromJSONObject(Lorg/json/JSONObject;)Lmiuix/internal/hybrid/JsonConfigParser;
    .registers 2

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/JsonConfigParser;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/internal/hybrid/JsonConfigParser;-><init>(Lorg/json/JSONObject;)V

    .line 6
    return-object v0
.end method

.method public static createFromString(Ljava/lang/String;)Lmiuix/internal/hybrid/JsonConfigParser;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_a

    .line 6
    invoke-static {v0}, Lmiuix/internal/hybrid/JsonConfigParser;->createFromJSONObject(Lorg/json/JSONObject;)Lmiuix/internal/hybrid/JsonConfigParser;

    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :catch_a
    move-exception p0

    .line 12
    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    .line 14
    const/16 v1, 0xc9

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, v1, p0}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    .line 23
    throw v0
.end method

.method private parseFeatures(Lmiuix/internal/hybrid/Config;Lorg/json/JSONObject;)V
    .registers 12

    .line 1
    const-string v0, "features"

    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_4b

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_a
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_4b

    .line 17
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Lmiuix/internal/hybrid/Feature;

    .line 23
    invoke-direct {v3}, Lmiuix/internal/hybrid/Feature;-><init>()V

    .line 26
    const-string v4, "name"

    .line 28
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v3, v5}, Lmiuix/internal/hybrid/Feature;->setName(Ljava/lang/String;)V

    .line 35
    const-string v5, "params"

    .line 37
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_45

    .line 43
    move v5, v0

    .line 44
    :goto_2b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 47
    move-result v6

    .line 48
    if-ge v5, v6, :cond_45

    .line 50
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v7

    .line 58
    const-string v8, "value"

    .line 60
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v3, v7, v6}, Lmiuix/internal/hybrid/Feature;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 69
    goto :goto_2b

    .line 70
    :cond_45
    invoke-virtual {p1, v3}, Lmiuix/internal/hybrid/Config;->addFeature(Lmiuix/internal/hybrid/Feature;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 75
    goto :goto_a

    .line 76
    :cond_4b
    return-void
.end method

.method private parsePermissions(Lmiuix/internal/hybrid/Config;Lorg/json/JSONObject;)V
    .registers 7

    .line 1
    const-string v0, "permissions"

    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_30

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_9
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_30

    .line 16
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lmiuix/internal/hybrid/Permission;

    .line 22
    invoke-direct {v2}, Lmiuix/internal/hybrid/Permission;-><init>()V

    .line 25
    const-string v3, "origin"

    .line 27
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Lmiuix/internal/hybrid/Permission;->setUri(Ljava/lang/String;)V

    .line 34
    const-string v3, "subdomains"

    .line 36
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 39
    move-result v1

    .line 40
    invoke-virtual {v2, v1}, Lmiuix/internal/hybrid/Permission;->setApplySubdomains(Z)V

    .line 43
    invoke-virtual {p1, v2}, Lmiuix/internal/hybrid/Config;->addPermission(Lmiuix/internal/hybrid/Permission;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_9

    .line 49
    :cond_30
    return-void
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lmiuix/internal/hybrid/Config;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lmiuix/internal/hybrid/Config;"
        }
    .end annotation

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/Config;

    .line 3
    invoke-direct {v0}, Lmiuix/internal/hybrid/Config;-><init>()V

    .line 6
    :try_start_5
    iget-object v1, p0, Lmiuix/internal/hybrid/JsonConfigParser;->mJson:Lorg/json/JSONObject;

    .line 8
    new-instance v2, Lmiuix/internal/hybrid/Security;

    .line 10
    invoke-direct {v2}, Lmiuix/internal/hybrid/Security;-><init>()V

    .line 13
    const-string v3, "signature"

    .line 15
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Lmiuix/internal/hybrid/Security;->setSignature(Ljava/lang/String;)V

    .line 22
    const-string v3, "timestamp"

    .line 24
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v2, v3, v4}, Lmiuix/internal/hybrid/Security;->setTimestamp(J)V

    .line 31
    invoke-virtual {v0, v2}, Lmiuix/internal/hybrid/Config;->setSecurity(Lmiuix/internal/hybrid/Security;)V

    .line 34
    const-string v2, "vendor"

    .line 36
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Lmiuix/internal/hybrid/Config;->setVendor(Ljava/lang/String;)V

    .line 43
    const-string v2, "content"

    .line 45
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lmiuix/internal/hybrid/Config;->setContent(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, v0, v1}, Lmiuix/internal/hybrid/JsonConfigParser;->parseFeatures(Lmiuix/internal/hybrid/Config;Lorg/json/JSONObject;)V

    .line 55
    invoke-direct {p0, v0, v1}, Lmiuix/internal/hybrid/JsonConfigParser;->parsePermissions(Lmiuix/internal/hybrid/Config;Lorg/json/JSONObject;)V
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_39} :catch_3e

    .line 58
    invoke-direct {p0, v0, p1}, Lmiuix/internal/hybrid/JsonConfigParser;->buildCompleteConfig(Lmiuix/internal/hybrid/Config;Ljava/util/Map;)Lmiuix/internal/hybrid/Config;

    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :catch_3e
    move-exception p1

    .line 64
    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    .line 66
    const/16 v1, 0xc9

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-direct {v0, v1, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    .line 75
    throw v0
.end method
