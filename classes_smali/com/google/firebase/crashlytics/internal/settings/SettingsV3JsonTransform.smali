.class Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;
.super Ljava/lang/Object;
.source "SettingsV3JsonTransform.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonTransform;


# static fields
.field private static final CRASHLYTICS_APP_URL:Ljava/lang/String; = "https://update.crashlytics.com/spi/v1/platforms/android/apps"

.field private static final CRASHLYTICS_APP_URL_FORMAT:Ljava/lang/String; = "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s"

.field private static final NDK_REPORTS_URL_FORMAT:Ljava/lang/String; = "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps"

.field private static final REPORTS_URL_FORMAT:Ljava/lang/String; = "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAppDataFrom(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
    .registers 13

    .line 1
    const-string v0, "status"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v2

    .line 7
    const-string v0, "new"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    const-string v1, "bundle_id"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v6

    .line 19
    const-string v1, "org_id"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v7

    .line 25
    const/4 p0, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_1f

    .line 29
    const-string v0, "https://update.crashlytics.com/spi/v1/platforms/android/apps"

    .line 31
    goto :goto_2b

    .line 32
    :cond_1f
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 34
    new-array v3, p0, [Ljava/lang/Object;

    .line 36
    aput-object v6, v3, v1

    .line 38
    const-string v4, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s"

    .line 40
    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    :goto_2b
    move-object v3, v0

    .line 45
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 47
    new-array v4, p0, [Ljava/lang/Object;

    .line 49
    aput-object v6, v4, v1

    .line 51
    const-string v5, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports"

    .line 53
    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    new-array p0, p0, [Ljava/lang/Object;

    .line 59
    aput-object v6, p0, v1

    .line 61
    const-string v5, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps"

    .line 63
    invoke-static {v0, v5, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    const-string p0, "update_required"

    .line 69
    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 72
    move-result v8

    .line 73
    const-string p0, "report_upload_variant"

    .line 75
    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 78
    move-result v9

    .line 79
    const-string p0, "native_report_upload_variant"

    .line 81
    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 84
    move-result v10

    .line 85
    new-instance p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 87
    move-object v1, p0

    .line 88
    invoke-direct/range {v1 .. v10}, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 91
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

.method private static defaultSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    .line 3
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;-><init>(II)V

    .line 9
    return-object v0
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
    iget-boolean v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->updateRequired:Z

    .line 16
    const-string v2, "update_required"

    .line 18
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 21
    move-result-object v0

    .line 22
    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->reportUploadVariant:I

    .line 24
    const-string v2, "report_upload_variant"

    .line 26
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    move-result-object v0

    .line 30
    iget p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->nativeReportUploadVariant:I

    .line 32
    const-string v1, "native_report_upload_variant"

    .line 34
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method private toFabricJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->bundleId:Ljava/lang/String;

    .line 8
    const-string v2, "bundle_id"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    move-result-object v0

    .line 14
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->organizationId:Ljava/lang/String;

    .line 16
    const-string v1, "org_id"

    .line 18
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    move-result-object p1

    .line 22
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
    const-string v0, "fabric"

    .line 18
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "app"

    .line 24
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->buildAppDataFrom(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 31
    move-result-object v5

    .line 32
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->defaultSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    .line 35
    move-result-object v6

    .line 36
    const-string v0, "features"

    .line 38
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    .line 45
    move-result-object v7

    .line 46
    int-to-long v0, v9

    .line 47
    invoke-static {p1, v0, v1, p2}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->getExpiresAtFrom(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;JLorg/json/JSONObject;)J

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
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->toFeaturesJson(Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;)Lorg/json/JSONObject;

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
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->toAppJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;

    .line 47
    move-result-object v1

    .line 48
    const-string v2, "app"

    .line 50
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    move-result-object v0

    .line 54
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 56
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->toFabricJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;

    .line 59
    move-result-object p1

    .line 60
    const-string v1, "fabric"

    .line 62
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method
