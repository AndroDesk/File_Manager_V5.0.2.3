.class public final Lcom/google/firebase/DataCollectionDefaultChange;
.super Ljava/lang/Object;
.source "DataCollectionDefaultChange.java"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field public final enabled:Z
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/google/firebase/DataCollectionDefaultChange;->enabled:Z

    .line 6
    return-void
.end method
