.class public interface abstract Lcom/google/firebase/crashlytics/internal/settings/model/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getCacheDuration()I
.end method

.method public abstract getExpiresAtMillis()J
.end method

.method public abstract getFeaturesData()Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
.end method

.method public abstract getSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
.end method

.method public abstract getSettingsVersion()I
.end method

.method public abstract isExpired(J)Z
.end method
