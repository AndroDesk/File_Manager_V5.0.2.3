.class public Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
.super Ljava/lang/Object;
.source "FeaturesSettingsData.java"


# instance fields
.field public final collectReports:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;->collectReports:Z

    .line 6
    return-void
.end method
