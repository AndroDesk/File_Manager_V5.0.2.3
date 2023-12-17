.class public Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
.super Ljava/lang/Object;
.source "SessionSettingsData.java"


# instance fields
.field public final maxCompleteSessionsCount:I

.field public final maxCustomExceptionEvents:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCustomExceptionEvents:I

    .line 6
    iput p2, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCompleteSessionsCount:I

    .line 8
    return-void
.end method
