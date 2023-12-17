.class public abstract Lcom/google/android/gms/common/internal/IGmsCallbacks$zza;
.super Lcom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lcom/google/android/gms/common/internal/IGmsCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IGmsCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    .line 1
    const/4 p4, 0x1

    .line 2
    if-eq p1, p4, :cond_2f

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1f

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_b

    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 15
    move-result p1

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/google/android/gms/common/internal/zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/google/android/gms/common/internal/zzb;

    .line 28
    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/gms/common/internal/IGmsCallbacks;->zza(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzb;)V

    .line 31
    goto :goto_42

    .line 32
    :cond_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 35
    move-result p1

    .line 36
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Landroid/os/Bundle;

    .line 44
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/common/internal/IGmsCallbacks;->zza(ILandroid/os/Bundle;)V

    .line 47
    goto :goto_42

    .line 48
    :cond_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 51
    move-result p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Landroid/os/Bundle;

    .line 64
    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/gms/common/internal/IGmsCallbacks;->onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 67
    :goto_42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return p4
.end method
