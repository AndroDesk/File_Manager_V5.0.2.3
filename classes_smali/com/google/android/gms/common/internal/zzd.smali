.class public final Lcom/google/android/gms/common/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/common/internal/GetServiceRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 18

    .line 1
    move-object/from16 v0, p1

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    move v5, v2

    .line 10
    move v6, v5

    .line 11
    move v7, v6

    .line 12
    move v15, v7

    .line 13
    move-object v8, v3

    .line 14
    move-object v9, v8

    .line 15
    move-object v10, v9

    .line 16
    move-object v11, v10

    .line 17
    move-object v12, v11

    .line 18
    move-object v13, v12

    .line 19
    move-object v14, v13

    .line 20
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 23
    move-result v2

    .line 24
    if-ge v2, v1, :cond_73

    .line 26
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 29
    move-result v2

    .line 30
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 33
    move-result v3

    .line 34
    packed-switch v3, :pswitch_data_7e

    .line 37
    :pswitch_24  #0x9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 40
    goto :goto_13

    .line 41
    :pswitch_28  #0xc
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 44
    move-result v15

    .line 45
    goto :goto_13

    .line 46
    :pswitch_2d  #0xb
    sget-object v3, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    move-object v14, v2

    .line 53
    check-cast v14, [Lcom/google/android/gms/common/Feature;

    .line 55
    goto :goto_13

    .line 56
    :pswitch_37  #0xa
    sget-object v3, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    move-object v13, v2

    .line 63
    check-cast v13, [Lcom/google/android/gms/common/Feature;

    .line 65
    goto :goto_13

    .line 66
    :pswitch_41  #0x8
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 71
    move-result-object v2

    .line 72
    move-object v12, v2

    .line 73
    check-cast v12, Landroid/accounts/Account;

    .line 75
    goto :goto_13

    .line 76
    :pswitch_4b  #0x7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 79
    move-result-object v11

    .line 80
    goto :goto_13

    .line 81
    :pswitch_50  #0x6
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 83
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 86
    move-result-object v2

    .line 87
    move-object v10, v2

    .line 88
    check-cast v10, [Lcom/google/android/gms/common/api/Scope;

    .line 90
    goto :goto_13

    .line 91
    :pswitch_5a  #0x5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readIBinder(Landroid/os/Parcel;I)Landroid/os/IBinder;

    .line 94
    move-result-object v9

    .line 95
    goto :goto_13

    .line 96
    :pswitch_5f  #0x4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 99
    move-result-object v8

    .line 100
    goto :goto_13

    .line 101
    :pswitch_64  #0x3
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 104
    move-result v7

    .line 105
    goto :goto_13

    .line 106
    :pswitch_69  #0x2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 109
    move-result v6

    .line 110
    goto :goto_13

    .line 111
    :pswitch_6e  #0x1
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 114
    move-result v5

    .line 115
    goto :goto_13

    .line 116
    :cond_73
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 119
    new-instance v0, Lcom/google/android/gms/common/internal/GetServiceRequest;

    .line 121
    move-object v4, v0

    .line 122
    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;Z)V

    .line 125
    return-object v0

    .line 126
    nop

    .line 127
    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6e  #00000001
        :pswitch_69  #00000002
        :pswitch_64  #00000003
        :pswitch_5f  #00000004
        :pswitch_5a  #00000005
        :pswitch_50  #00000006
        :pswitch_4b  #00000007
        :pswitch_41  #00000008
        :pswitch_24  #00000009
        :pswitch_37  #0000000a
        :pswitch_2d  #0000000b
        :pswitch_28  #0000000c
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/common/internal/GetServiceRequest;

    .line 3
    return-object p1
.end method
