.class Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;
.super Ljava/lang/Object;
.source "DefaultSettingsJsonTransform.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonTransform;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAppDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
    .registers 8

    .line 1
    const-string v0, "status"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v2

    .line 7
    const-string v0, "url"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    const-string v0, "reports_url"

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v4

    .line 19
    const-string v0, "ndk_reports_url"

    .line 21
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v5

    .line 25
    const-string v0, "update_required"

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 31
    move-result v6

    .line 32
    new-instance p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 34
    move-object v1, p0

    .line 35
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return-object p0
.end method

.method private static buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
    .registers 3

    .line 1
    const-string v0, "collect_reports"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 7
    move-result p0

    .line 8
    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    .line 10
    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;-><init>(Z)V

    .line 13
    return-object v0
.end method

.method private static buildSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
    .registers 3

    .line 1
    const-string v0, "max_custom_exception_events"

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 8
    move-result p0

    .line 9
    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;-><init>(II)V

    .line 15
    return-object v0
.end method

.method public static defaultSettings(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;)Lcom/google/firebase/crashlytics/internal/settings/model/Settings;
    .registers 10

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->buildSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    .line 9
    move-result-object v5

    .line 10
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    .line 13
    move-result-object v6

    .line 14
    const-wide/16 v1, 0xe10

    .line 16
    invoke-static {p0, v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->getExpiresAtFrom(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;JLorg/json/JSONObject;)J

    .line 19
    move-result-wide v2

    .line 20
    new-instance p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/16 v8, 0xe10

    .line 26
    move-object v1, p0

    .line 27
    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;-><init>(JLcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;II)V

    .line 30
    return-object p0
.end method

.method private static getExpiresAtFrom(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;JLorg/json/JSONObject;)J
    .registers 8

    .line 1
    const-string v0, "expires_at"

    .line 3
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_d

    .line 9
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 12
    move-result-wide p0

    .line 13
    goto :goto_16

    .line 14
    :cond_d
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, 0x3e8

    .line 20
    mul-long/2addr p1, v2

    .line 21
    add-long p0, p1, v0

    .line 23
    :goto_16
    return-wide p0
.end method

.method private toAppJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->status:Ljava/lang/String;

    .line 8
    const-string v2, "status"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->url:Ljava/lang/String;

    .line 16
    const-string v2, "url"

    .line 18
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->reportsUrl:Ljava/lang/String;

    .line 24
    const-string v2, "reports_url"

    .line 26
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->ndkReportsUrl:Ljava/lang/String;

    .line 32
    const-string v2, "ndk_reports_url"

    .line 34
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    move-result-object v0

    .line 38
    iget-boolean p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->updateRequired:Z

    .line 40
    const-string v1, "update_required"

    .line 42
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method private toFeaturesJson(Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-boolean p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;->collectReports:Z

    .line 8
    const-string v1, "collect_reports"

    .line 10
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method private toSessionJson(Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;)Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCustomExceptionEvents:I

    .line 8
    const-string v2, "max_custom_exception_events"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    move-result-object v0

    .line 14
    iget p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCompleteSessionsCount:I

    .line 16
    const-string v1, "max_complete_sessions_count"

    .line 18
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method


# virtual methods
.method public buildFromJson(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;
    .registers 13

    .line 1
    const-string v0, "settings_version"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 7
    move-result v8

    .line 8
    const-string v0, "cache_duration"

    .line 10
    const/16 v1, 0xe10

    .line 12
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 15
    move-result v9

    .line 16
    const-string v0, "app"

    .line 18
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->buildAppDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 25
    move-result-object v5

    .line 26
    const-string v0, "session"

    .line 28
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->buildSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    .line 35
    move-result-object v6

    .line 36
    const-string v0, "features"

    .line 38
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    .line 45
    move-result-object v7

    .line 46
    int-to-long v0, v9

    .line 47
    invoke-static {p1, v0, v1, p2}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->getExpiresAtFrom(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;JLorg/json/JSONObject;)J

    .line 50
    move-result-wide v3

    .line 51
    new-instance p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;

    .line 53
    move-object v2, p1

    .line 54
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;-><init>(JLcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;II)V

    .line 57
    return-object p1
.end method

.method public toJson(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;)Lorg/json/JSONObject;
    .registers 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-wide v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->expiresAtMillis:J

    .line 8
    const-string v3, "expires_at"

    .line 10
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    move-result-object v0

    .line 14
    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->cacheDuration:I

    .line 16
    const-string v2, "cache_duration"

    .line 18
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    move-result-object v0

    .line 22
    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->settingsVersion:I

    .line 24
    const-string v2, "settings_version"

    .line 26
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->featuresData:Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    .line 32
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->toFeaturesJson(Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;)Lorg/json/JSONObject;

    .line 35
    move-result-object v1

    .line 36
    const-string v2, "features"

    .line 38
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 44
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->toAppJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;

    .line 47
    move-result-object v1

    .line 48
    const-string v2, "app"

    .line 50
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    move-result-object v0

    .line 54
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->sessionData:Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    .line 56
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->toSessionJson(Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;)Lorg/json/JSONObject;

    .line 59
    move-result-object p1

    .line 60
    const-string v1, "session"

    .line 62
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method
