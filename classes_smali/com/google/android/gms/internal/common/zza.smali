.class public Lcom/google/android/gms/internal/common/zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final zza:Landroid/os/IBinder;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/common/zza;->zzb:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method

.method public final zza()Landroid/os/Parcel;
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/common/zza;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zza(ILandroid/os/Parcel;)Landroid/os/Parcel;
    .registers 6

    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_11
    move-exception p1

    goto :goto_18

    :catch_13
    move-exception p1

    .line 7
    :try_start_14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8
    throw p1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_11

    .line 9
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final zzb(ILandroid/os/Parcel;)V
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_14

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 17
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 28
    throw p1
.end method

.method public final zzc(ILandroid/os/Parcel;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-interface {p1, v0, p2, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 17
    throw p1
.end method
