.class public abstract Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;
.super Lcom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lcom/google/android/gms/dynamic/IFragmentWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/IFragmentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/android/gms/dynamic/IFragmentWrapper;

    .line 13
    if-eqz v1, :cond_11

    .line 15
    check-cast v0, Lcom/google/android/gms/dynamic/IFragmentWrapper;

    .line 17
    return-object v0

    .line 18
    :cond_11
    new-instance v0, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub$zza;

    .line 20
    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub$zza;-><init>(Landroid/os/IBinder;)V

    .line 23
    return-object v0
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    .line 1
    packed-switch p1, :pswitch_data_148

    .line 4
    const/4 p1, 0x0

    .line 5
    return p1

    .line 6
    :pswitch_5  #0x1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    goto/16 :goto_146

    .line 22
    :pswitch_15  #0x1a
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/content/Intent;

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 33
    move-result p2

    .line 34
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->startActivityForResult(Landroid/content/Intent;I)V

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    goto/16 :goto_146

    .line 42
    :pswitch_29  #0x19
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/content/Intent;

    .line 50
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    goto/16 :goto_146

    .line 58
    :pswitch_39  #0x18
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    .line 61
    move-result p1

    .line 62
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->setUserVisibleHint(Z)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    goto/16 :goto_146

    .line 70
    :pswitch_45  #0x17
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    .line 73
    move-result p1

    .line 74
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->setRetainInstance(Z)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    goto/16 :goto_146

    .line 82
    :pswitch_51  #0x16
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    .line 85
    move-result p1

    .line 86
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->setMenuVisibility(Z)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    goto/16 :goto_146

    .line 94
    :pswitch_5d  #0x15
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    .line 97
    move-result p1

    .line 98
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->setHasOptionsMenu(Z)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    goto/16 :goto_146

    .line 106
    :pswitch_69  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 113
    move-result-object p1

    .line 114
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    goto/16 :goto_146

    .line 122
    :pswitch_79  #0x13
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->isVisible()Z

    .line 125
    move-result p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 132
    goto/16 :goto_146

    .line 134
    :pswitch_85  #0x12
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->isResumed()Z

    .line 137
    move-result p1

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 144
    goto/16 :goto_146

    .line 146
    :pswitch_91  #0x11
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->isRemoving()Z

    .line 149
    move-result p1

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 156
    goto/16 :goto_146

    .line 158
    :pswitch_9d  #0x10
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->isInLayout()Z

    .line 161
    move-result p1

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 168
    goto/16 :goto_146

    .line 170
    :pswitch_a9  #0xf
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->isHidden()Z

    .line 173
    move-result p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 180
    goto/16 :goto_146

    .line 182
    :pswitch_b5  #0xe
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->isDetached()Z

    .line 185
    move-result p1

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 192
    goto/16 :goto_146

    .line 194
    :pswitch_c1  #0xd
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->isAdded()Z

    .line 197
    move-result p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 204
    goto/16 :goto_146

    .line 206
    :pswitch_cd  #0xc
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzai()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 216
    goto/16 :goto_146

    .line 218
    :pswitch_d9  #0xb
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->getUserVisibleHint()Z

    .line 221
    move-result p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 228
    goto :goto_146

    .line 229
    :pswitch_e4  #0xa
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->getTargetRequestCode()I

    .line 232
    move-result p1

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    goto :goto_146

    .line 240
    :pswitch_ef  #0x9
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzah()Lcom/google/android/gms/dynamic/IFragmentWrapper;

    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 250
    goto :goto_146

    .line 251
    :pswitch_fa  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->getTag()Ljava/lang/String;

    .line 254
    move-result-object p1

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    goto :goto_146

    .line 262
    :pswitch_105  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->getRetainInstance()Z

    .line 265
    move-result p1

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 272
    goto :goto_146

    .line 273
    :pswitch_110  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzag()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 283
    goto :goto_146

    .line 284
    :pswitch_11b  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzaf()Lcom/google/android/gms/dynamic/IFragmentWrapper;

    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 294
    goto :goto_146

    .line 295
    :pswitch_126  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->getId()I

    .line 298
    move-result p1

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    goto :goto_146

    .line 306
    :pswitch_131  #0x3
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->getArguments()Landroid/os/Bundle;

    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 316
    goto :goto_146

    .line 317
    :pswitch_13c  #0x2
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper;->zzae()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 327
    :goto_146
    const/4 p1, 0x1

    .line 328
    return p1

    .line 329
    :pswitch_data_148
    .packed-switch 0x2
        :pswitch_13c  #00000002
        :pswitch_131  #00000003
        :pswitch_126  #00000004
        :pswitch_11b  #00000005
        :pswitch_110  #00000006
        :pswitch_105  #00000007
        :pswitch_fa  #00000008
        :pswitch_ef  #00000009
        :pswitch_e4  #0000000a
        :pswitch_d9  #0000000b
        :pswitch_cd  #0000000c
        :pswitch_c1  #0000000d
        :pswitch_b5  #0000000e
        :pswitch_a9  #0000000f
        :pswitch_9d  #00000010
        :pswitch_91  #00000011
        :pswitch_85  #00000012
        :pswitch_79  #00000013
        :pswitch_69  #00000014
        :pswitch_5d  #00000015
        :pswitch_51  #00000016
        :pswitch_45  #00000017
        :pswitch_39  #00000018
        :pswitch_29  #00000019
        :pswitch_15  #0000001a
        :pswitch_5  #0000001b
    .end packed-switch
.end method
