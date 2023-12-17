.class final Lcom/google/android/gms/security/zza;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzix:Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/security/zza;->val$context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/security/zza;->zzix:Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;

    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    return-void
.end method

.method private final varargs zza([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/security/zza;->val$context:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_5
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_5} :catch_13
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_5} :catch_b

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :catch_b
    move-exception p1

    .line 13
    iget p1, p1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :catch_13
    move-exception p1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I

    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/security/zza;->zza([Ljava/lang/Void;)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_e

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/security/zza;->zzix:Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;->onProviderInstalled()V

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-static {}, Lcom/google/android/gms/security/ProviderInstaller;->zzal()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/security/zza;->val$context:Landroid/content/Context;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v2

    .line 25
    const-string v3, "pi"

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/security/zza;->zzix:Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result p1

    .line 37
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;->onProviderInstallFailed(ILandroid/content/Intent;)V

    .line 40
    return-void
.end method
