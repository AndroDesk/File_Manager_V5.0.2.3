.class public Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LegacyClientCallbackAdapter"
.end annotation


# instance fields
.field private final synthetic zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getScopes()Ljava/util/Set;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    .line 17
    return-void

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_22

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 35
    :cond_22
    return-void
.end method
