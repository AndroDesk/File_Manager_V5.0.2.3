.class public Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;
.super Ljava/lang/Object;
.source "DefaultSettingsSpiCall.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall;


# static fields
.field public static final ACCEPT_JSON_VALUE:Ljava/lang/String; = "application/json"

.field public static final ANDROID_CLIENT_TYPE:Ljava/lang/String; = "android"

.field public static final BUILD_VERSION_PARAM:Ljava/lang/String; = "build_version"

.field public static final CRASHLYTICS_USER_AGENT:Ljava/lang/String; = "Crashlytics Android SDK/"

.field public static final DISPLAY_VERSION_PARAM:Ljava/lang/String; = "display_version"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_CLIENT_TYPE:Ljava/lang/String; = "X-CRASHLYTICS-API-CLIENT-TYPE"

.field public static final HEADER_CLIENT_VERSION:Ljava/lang/String; = "X-CRASHLYTICS-API-CLIENT-VERSION"

.field public static final HEADER_DEVICE_MODEL:Ljava/lang/String; = "X-CRASHLYTICS-DEVICE-MODEL"

.field public static final HEADER_GOOGLE_APP_ID:Ljava/lang/String; = "X-CRASHLYTICS-GOOGLE-APP-ID"

.field public static final HEADER_INSTALLATION_ID:Ljava/lang/String; = "X-CRASHLYTICS-INSTALLATION-ID"

.field public static final HEADER_OS_BUILD_VERSION:Ljava/lang/String; = "X-CRASHLYTICS-OS-BUILD-VERSION"

.field public static final HEADER_OS_DISPLAY_VERSION:Ljava/lang/String; = "X-CRASHLYTICS-OS-DISPLAY-VERSION"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final INSTANCE_PARAM:Ljava/lang/String; = "instance"

.field public static final SOURCE_PARAM:Ljava/lang/String; = "source"


# instance fields
.field private final logger:Lcom/google/firebase/crashlytics/internal/Logger;

.field private final requestFactory:Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;-><init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Lcom/google/firebase/crashlytics/internal/Logger;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Lcom/google/firebase/crashlytics/internal/Logger;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    .line 3
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->requestFactory:Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->url:Ljava/lang/String;

    return-void

    .line 6
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applyHeadersTo(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;
    .registers 5

    .line 1
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->googleAppId:Ljava/lang/String;

    .line 3
    const-string v1, "X-CRASHLYTICS-GOOGLE-APP-ID"

    .line 5
    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    .line 10
    const-string v1, "android"

    .line 12
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->getVersion()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    .line 21
    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "Accept"

    .line 26
    const-string v1, "application/json"

    .line 28
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->deviceModel:Ljava/lang/String;

    .line 33
    const-string v1, "X-CRASHLYTICS-DEVICE-MODEL"

    .line 35
    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->osBuildVersion:Ljava/lang/String;

    .line 40
    const-string v1, "X-CRASHLYTICS-OS-BUILD-VERSION"

    .line 42
    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->osDisplayVersion:Ljava/lang/String;

    .line 47
    const-string v1, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    .line 49
    invoke-direct {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p2, p2, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->installIdProvider:Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider;

    .line 54
    invoke-interface {p2}, Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider;->getCrashlyticsInstallId()Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    const-string v0, "X-CRASHLYTICS-INSTALLATION-ID"

    .line 60
    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object p1
.end method

.method private applyNonNullHeader(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    if-eqz p3, :cond_5

    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    .line 6
    :cond_5
    return-void
.end method

.method private getJsonObjectFrom(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    return-object v0

    .line 7
    :catch_6
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    .line 10
    const-string v2, "Failed to parse settings JSON from "

    .line 12
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->url:Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v2, "Settings response "

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 50
    const/4 p1, 0x0

    .line 51
    return-object p1
.end method

.method private getQueryParamsFor(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;",
            ")",
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
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->buildVersion:Ljava/lang/String;

    .line 8
    const-string v2, "build_version"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->displayVersion:Ljava/lang/String;

    .line 15
    const-string v2, "display_version"

    .line 17
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->source:I

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const-string v2, "source"

    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;->instanceId:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2b

    .line 39
    const-string v1, "instance"

    .line 41
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2b
    return-object v0
.end method


# virtual methods
.method public createHttpGetRequest(Ljava/util/Map;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->requestFactory:Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->url:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;->buildHttpGetRequest(Ljava/lang/String;Ljava/util/Map;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    .line 8
    move-result-object p1

    .line 9
    const-string v0, "Crashlytics Android SDK/"

    .line 11
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->getVersion()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "User-Agent"

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    .line 31
    move-result-object p1

    .line 32
    const-string v0, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    .line 34
    const-string v1, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public handleResponse(Lcom/google/firebase/crashlytics/internal/network/HttpResponse;)Lorg/json/JSONObject;
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v3, "Settings result was: "

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->requestWasSuccessful(I)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_29

    .line 33
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->body()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->getJsonObjectFrom(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 40
    move-result-object p1

    .line 41
    goto :goto_3e

    .line 42
    :cond_29
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    .line 44
    const-string v0, "Failed to retrieve settings from "

    .line 46
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->url:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;)V

    .line 62
    const/4 p1, 0x0

    .line 63
    :goto_3e
    return-object p1
.end method

.method public invoke(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;Z)Lorg/json/JSONObject;
    .registers 6

    .line 1
    if-eqz p2, :cond_4f

    .line 3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->getQueryParamsFor(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Ljava/util/Map;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->createHttpGetRequest(Ljava/util/Map;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->applyHeadersTo(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Lcom/google/firebase/crashlytics/internal/settings/model/SettingsRequest;)Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v2, "Requesting settings from "

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->url:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v2, "Settings query params were: "

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->execute()Lcom/google/firebase/crashlytics/internal/network/HttpResponse;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->handleResponse(Lcom/google/firebase/crashlytics/internal/network/HttpResponse;)Lorg/json/JSONObject;

    .line 68
    move-result-object p1
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_44} :catch_45

    .line 69
    goto :goto_4e

    .line 70
    :catch_45
    move-exception p1

    .line 71
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall;->logger:Lcom/google/firebase/crashlytics/internal/Logger;

    .line 73
    const-string v0, "Settings request failed."

    .line 75
    invoke-virtual {p2, v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    const/4 p1, 0x0

    .line 79
    :goto_4e
    return-object p1

    .line 80
    :cond_4f
    new-instance p1, Ljava/lang/RuntimeException;

    .line 82
    const-string p2, "An invalid data collection token was used."

    .line 84
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1
.end method

.method public requestWasSuccessful(I)Z
    .registers 3

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_13

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_13

    const/16 v0, 0xca

    if-eq p1, v0, :cond_13

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method
