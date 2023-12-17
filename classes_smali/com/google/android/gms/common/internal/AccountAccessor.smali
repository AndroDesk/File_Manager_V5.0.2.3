.class public Lcom/google/android/gms/common/internal/AccountAccessor;
.super Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;


# direct methods
.method public static getAccountBinderSafe(Lcom/google/android/gms/common/internal/IAccountAccessor;)Landroid/accounts/Account;
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    if-eqz p0, :cond_1f

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v0

    .line 7
    :try_start_6
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/IAccountAccessor;->getAccount()Landroid/accounts/Account;

    .line 10
    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_10
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    goto :goto_20

    .line 15
    :catchall_e
    move-exception p0

    .line 16
    goto :goto_1b

    .line 17
    :catch_10
    :try_start_10
    const-string p0, "AccountAccessor"

    .line 19
    const-string v2, "Remote account accessor probably died"

    .line 21
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_e

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    goto :goto_1f

    .line 28
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    throw p0

    .line 32
    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    .line 33
    :goto_20
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/NoSuchMethodError;

    .line 3
    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    .line 6
    throw p1
.end method

.method public final getAccount()Landroid/accounts/Account;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    .line 3
    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    .line 6
    throw v0
.end method
