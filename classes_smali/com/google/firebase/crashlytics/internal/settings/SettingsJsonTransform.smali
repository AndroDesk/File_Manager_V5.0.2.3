.class interface abstract Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonTransform;
.super Ljava/lang/Object;
.source "SettingsJsonTransform.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract buildFromJson(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;
.end method

.method public abstract toJson(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;)Lorg/json/JSONObject;
.end method
