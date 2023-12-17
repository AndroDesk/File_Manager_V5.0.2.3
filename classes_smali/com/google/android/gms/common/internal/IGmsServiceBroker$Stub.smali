.class public abstract Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/common/internal/IGmsServiceBroker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IGmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 1
    const v0, 0xffffff

    .line 4
    if-le p1, v0, :cond_a

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_a
    const-string p4, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 13
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 19
    move-result-object p4

    .line 20
    const/4 v0, 0x0

    .line 21
    if-nez p4, :cond_18

    .line 23
    move-object v1, v0

    .line 24
    goto :goto_2a

    .line 25
    :cond_18
    const-string v1, "com.google.android.gms.common.internal.IGmsCallbacks"

    .line 27
    invoke-interface {p4, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 30
    move-result-object v1

    .line 31
    instance-of v2, v1, Lcom/google/android/gms/common/internal/IGmsCallbacks;

    .line 33
    if-eqz v2, :cond_25

    .line 35
    check-cast v1, Lcom/google/android/gms/common/internal/IGmsCallbacks;

    .line 37
    goto :goto_2a

    .line 38
    :cond_25
    new-instance v1, Lcom/google/android/gms/common/internal/zzl;

    .line 40
    invoke-direct {v1, p4}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/os/IBinder;)V

    .line 43
    :goto_2a
    const/16 p4, 0x2e

    .line 45
    const/4 v2, 0x1

    .line 46
    if-ne p1, p4, :cond_45

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3e

    .line 54
    sget-object p1, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/google/android/gms/common/internal/GetServiceRequest;

    .line 63
    :cond_3e
    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v2

    .line 70
    :cond_45
    const/16 p3, 0x2f

    .line 72
    if-ne p1, p3, :cond_5a

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_54

    .line 80
    sget-object p1, Lcom/google/android/gms/common/internal/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 82
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 85
    :cond_54
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 87
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 90
    throw p1

    .line 91
    :cond_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 94
    const/4 p3, 0x4

    .line 95
    if-eq p1, p3, :cond_63

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 100
    :cond_63
    if-eq p1, v2, :cond_e3

    .line 102
    const/4 p3, 0x2

    .line 103
    if-eq p1, p3, :cond_d7

    .line 105
    const/16 p3, 0x17

    .line 107
    if-eq p1, p3, :cond_d7

    .line 109
    const/16 p3, 0x19

    .line 111
    if-eq p1, p3, :cond_d7

    .line 113
    const/16 p3, 0x1b

    .line 115
    if-eq p1, p3, :cond_d7

    .line 117
    const/16 p3, 0x1e

    .line 119
    if-eq p1, p3, :cond_c5

    .line 121
    const/16 p3, 0x22

    .line 123
    if-eq p1, p3, :cond_c1

    .line 125
    const/16 p3, 0x29

    .line 127
    if-eq p1, p3, :cond_d7

    .line 129
    const/16 p3, 0x2b

    .line 131
    if-eq p1, p3, :cond_d7

    .line 133
    const/16 p3, 0x25

    .line 135
    if-eq p1, p3, :cond_d7

    .line 137
    const/16 p3, 0x26

    .line 139
    if-eq p1, p3, :cond_d7

    .line 141
    packed-switch p1, :pswitch_data_fe

    .line 144
    goto :goto_f7

    .line 145
    :pswitch_90  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_f7

    .line 154
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 156
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 159
    goto :goto_f7

    .line 160
    :pswitch_9f  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 166
    goto :goto_f7

    .line 167
    :pswitch_a6  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_f7

    .line 188
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 190
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 193
    goto :goto_f7

    .line 194
    :cond_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 197
    goto :goto_f7

    .line 198
    :cond_c5
    :pswitch_c5  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_f7

    .line 210
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 212
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 215
    goto :goto_f7

    .line 216
    :cond_d7
    :pswitch_d7  #0x5, 0x6, 0x7, 0x8, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_f7

    .line 222
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 224
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 227
    goto :goto_f7

    .line 228
    :cond_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_f7

    .line 243
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 245
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 248
    :cond_f7
    :goto_f7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 250
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 253
    throw p1

    .line 254
    nop

    .line 255
    :pswitch_data_fe
    .packed-switch 0x5
        :pswitch_d7  #00000005
        :pswitch_d7  #00000006
        :pswitch_d7  #00000007
        :pswitch_d7  #00000008
        :pswitch_a6  #00000009
        :pswitch_9f  #0000000a
        :pswitch_d7  #0000000b
        :pswitch_d7  #0000000c
        :pswitch_d7  #0000000d
        :pswitch_d7  #0000000e
        :pswitch_d7  #0000000f
        :pswitch_d7  #00000010
        :pswitch_d7  #00000011
        :pswitch_d7  #00000012
        :pswitch_90  #00000013
        :pswitch_c5  #00000014
    .end packed-switch
.end method
