.class public abstract Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;
.super Ljava/lang/Object;
.source "CrashlyticsReportWithSessionId.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/AutoValue_CrashlyticsReportWithSessionId;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/AutoValue_CrashlyticsReportWithSessionId;-><init>(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;Ljava/lang/String;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getReport()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method
