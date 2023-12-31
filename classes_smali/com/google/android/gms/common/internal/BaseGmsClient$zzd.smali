.class public final Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;
.super Lcom/google/android/gms/common/internal/IGmsCallbacks$zza;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation


# instance fields
.field private zzcw:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzcx:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/IGmsCallbacks$zza;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcw:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 6
    iput p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcx:I

    .line 8
    return-void
.end method


# virtual methods
.method public final onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcw:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcw:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 10
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcx:I

    .line 12
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcw:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 18
    return-void
.end method

.method public final zza(ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zza(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzb;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcw:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcw:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/zzb;)V

    .line 5
    iget-object p3, p3, Lcom/google/android/gms/common/internal/zzb;->zzda:Landroid/os/Bundle;

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method
