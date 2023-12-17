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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/internal/hybrid/JsonConfigParser;->mJson:Lorg/json/JSONObject;

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

    new-instance v0, Lmiuix/internal/hybrid/JsonConfigParser;

    invoke-direct {v0, p0}, Lmiuix/internal/hybrid/JsonConfigParser;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static createFromString(Ljava/lang/String;)Lmiuix/internal/hybrid/JsonConfigParser;
    .registers 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_a

    invoke-static {v0}, Lmiuix/internal/hybrid/JsonConfigParser;->createFromJSONObject(Lorg/json/JSONObject;)Lmiuix/internal/hybrid/JsonConfigParser;

    move-result-object p0

    return-object p0

    :catch_a
    move-exception p0

    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    const/16 v1, 0xc9

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private parseFeatures(Lmiuix/internal/hybrid/Config;Lorg/json/JSONObject;)V
    .registers 12

    const-string v0, "features"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_4b

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4b

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lmiuix/internal/hybrid/Feature;

    invoke-direct {v3}, Lmiuix/internal/hybrid/Feature;-><init>()V

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmiuix/internal/hybrid/Feature;->setName(Ljava/lang/String;)V

    const-string v5, "params"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_45

    move v5, v0

    :goto_2b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_45

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lmiuix/internal/hybrid/Feature;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_45
    invoke-virtual {p1, v3}, Lmiuix/internal/hybrid/Config;->addFeature(Lmiuix/internal/hybrid/Feature;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_4b
    return-void
.end method

.method private parsePermissions(Lmiuix/internal/hybrid/Config;Lorg/json/JSONObject;)V
    .registers 7

    const-string v0, "permissions"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_30

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lmiuix/internal/hybrid/Permission;

    invoke-direct {v2}, Lmiuix/internal/hybrid/Permission;-><init>()V

    const-string v3, "origin"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/internal/hybrid/Permission;->setUri(Ljava/lang/String;)V

    const-string v3, "subdomains"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lmiuix/internal/hybrid/Permission;->setApplySubdomains(Z)V

    invoke-virtual {p1, v2}, Lmiuix/internal/hybrid/Config;->addPermission(Lmiuix/internal/hybrid/Permission;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

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

    new-instance v0, Lmiuix/internal/hybrid/Config;

    invoke-direct {v0}, Lmiuix/internal/hybrid/Config;-><init>()V

    :try_start_5
    iget-object v1, p0, Lmiuix/internal/hybrid/JsonConfigParser;->mJson:Lorg/json/JSONObject;

    new-instance v2, Lmiuix/internal/hybrid/Security;

    invoke-direct {v2}, Lmiuix/internal/hybrid/Security;-><init>()V

    const-string v3, "signature"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/internal/hybrid/Security;->setSignature(Ljava/lang/String;)V

    const-string v3, "timestamp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lmiuix/internal/hybrid/Security;->setTimestamp(J)V

    invoke-virtual {v0, v2}, Lmiuix/internal/hybrid/Config;->setSecurity(Lmiuix/internal/hybrid/Security;)V

    const-string v2, "vendor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/internal/hybrid/Config;->setVendor(Ljava/lang/String;)V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/internal/hybrid/Config;->setContent(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lmiuix/internal/hybrid/JsonConfigParser;->parseFeatures(Lmiuix/internal/hybrid/Config;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0, v1}, Lmiuix/internal/hybrid/JsonConfigParser;->parsePermissions(Lmiuix/internal/hybrid/Config;Lorg/json/JSONObject;)V
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_39} :catch_3e

    invoke-direct {p0, v0, p1}, Lmiuix/internal/hybrid/JsonConfigParser;->buildCompleteConfig(Lmiuix/internal/hybrid/Config;Ljava/util/Map;)Lmiuix/internal/hybrid/Config;

    move-result-object p1

    return-object p1

    :catch_3e
    move-exception p1

    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    const/16 v1, 0xc9

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
