.class public interface abstract Lcom/google/android/gms/common/internal/constants/ListAppsActivityContract;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final ACTION_APPS:Ljava/lang/String; = "com.google.android.gms.plus.action.MANAGE_APPS"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final EXTRA_PRESELECTED_FILTER:Ljava/lang/String; = "com.google.android.gms.extras.PRESELECTED_FILTER"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PRESELECTED_FILTER_FITNESS_APPS:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/internal/constants/ListAppsActivityContract;->PRESELECTED_FILTER_FITNESS_APPS:I

    return-void
.end method
