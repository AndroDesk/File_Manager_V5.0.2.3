.class public Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;
.super Ljava/lang/Object;
.source "SettingsData.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/model/Settings;


# instance fields
.field public final appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

.field public final cacheDuration:I

.field public final expiresAtMillis:J

.field public final featuresData:Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

.field public final sessionData:Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

.field public final settingsVersion:I


# direct methods
.method public constructor <init>(JLcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;II)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->expiresAtMillis:J

    .line 6
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 8
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->sessionData:Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    .line 10
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->featuresData:Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    .line 12
    iput p6, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->settingsVersion:I

    .line 14
    iput p7, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->cacheDuration:I

    .line 16
    return-void
.end method


# virtual methods
.method public getAppSettingsData()Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 3
    return-object v0
.end method

.method public getCacheDuration()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->cacheDuration:I

    .line 3
    return v0
.end method

.method public getExpiresAtMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->expiresAtMillis:J

    .line 3
    return-wide v0
.end method

.method public getFeaturesData()Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->featuresData:Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    .line 3
    return-object v0
.end method

.method public getSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->sessionData:Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    .line 3
    return-object v0
.end method

.method public getSettingsVersion()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->settingsVersion:I

    .line 3
    return v0
.end method

.method public isExpired(J)Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->expiresAtMillis:J

    .line 3
    cmp-long p1, v0, p1

    .line 5
    if-gez p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    return p1
.end method
