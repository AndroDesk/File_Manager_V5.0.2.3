.class public Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;
.super Ljava/lang/Object;
.source "SettingsJsonParser.java"


# instance fields
.field private final currentTimeProvider:Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;->currentTimeProvider:Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;

    .line 6
    return-void
.end method

.method private static getJsonTransformForVersion(I)Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonTransform;
    .registers 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_9

    .line 4
    new-instance p0, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;

    .line 6
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;-><init>()V

    .line 9
    return-object p0

    .line 10
    :cond_9
    new-instance p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;

    .line 12
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;-><init>()V

    .line 15
    return-object p0
.end method


# virtual methods
.method public parseSettingsJson(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;
    .registers 4

    .line 1
    const-string v0, "settings_version"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;->getJsonTransformForVersion(I)Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonTransform;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonParser;->currentTimeProvider:Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;

    .line 13
    invoke-interface {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonTransform;->buildFromJson(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
