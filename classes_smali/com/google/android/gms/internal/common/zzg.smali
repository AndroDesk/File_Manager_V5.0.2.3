.class public final Lcom/google/android/gms/internal/common/zzg;
.super Ljava/lang/Object;


# static fields
.field private static volatile zziy:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/common/zzg;->zzam()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    sput-boolean v0, Lcom/google/android/gms/internal/common/zzg;->zziy:Z

    .line 9
    return-void
.end method

.method public static getDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static zzam()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method
