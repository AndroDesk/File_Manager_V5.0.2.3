.class public final Lcom/google/android/gms/common/internal/zzo;
.super Lcom/google/android/gms/internal/common/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzm;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 1
    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/zzk;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 8
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 11
    const/4 p1, 0x5

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/common/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 23
    return p2
.end method
