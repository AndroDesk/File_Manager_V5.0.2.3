.class public abstract Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Builder;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Application$Builder;

    .line 3
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Application$Builder;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getDevelopmentPlatform()Ljava/lang/String;
.end method

.method public abstract getDevelopmentPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getDisplayVersion()Ljava/lang/String;
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getInstallationUuid()Ljava/lang/String;
.end method

.method public abstract getOrganization()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract toBuilder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Builder;
.end method

.method public withOrganizationId(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;->getOrganization()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization;->toBuilder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization$Builder;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization;->builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization$Builder;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;->toBuilder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Builder;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization$Builder;->setClsId(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization$Builder;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Builder;->setOrganization(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Builder;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
