.class public final Lcom/google/android/gms/common/stats/zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/common/stats/WakeLockEvent;",
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
    .registers 28

    .line 1
    move-object/from16 v0, p1

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 6
    move-result v1

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    move-wide v9, v2

    .line 13
    move-wide/from16 v16, v9

    .line 15
    move-wide/from16 v22, v16

    .line 17
    move v8, v4

    .line 18
    move v11, v8

    .line 19
    move v13, v11

    .line 20
    move/from16 v18, v13

    .line 22
    move/from16 v25, v18

    .line 24
    move-object v12, v5

    .line 25
    move-object v14, v12

    .line 26
    move-object v15, v14

    .line 27
    move-object/from16 v19, v15

    .line 29
    move-object/from16 v20, v19

    .line 31
    move-object/from16 v24, v20

    .line 33
    move/from16 v21, v6

    .line 35
    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 38
    move-result v2

    .line 39
    if-ge v2, v1, :cond_82

    .line 41
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 48
    move-result v3

    .line 49
    packed-switch v3, :pswitch_data_8c

    .line 52
    :pswitch_33  #0x3, 0x7, 0x9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 55
    goto :goto_22

    .line 56
    :pswitch_37  #0x12
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 59
    move-result v25

    .line 60
    goto :goto_22

    .line 61
    :pswitch_3c  #0x11
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 64
    move-result-object v24

    .line 65
    goto :goto_22

    .line 66
    :pswitch_41  #0x10
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 69
    move-result-wide v22

    .line 70
    goto :goto_22

    .line 71
    :pswitch_46  #0xf
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readFloat(Landroid/os/Parcel;I)F

    .line 74
    move-result v21

    .line 75
    goto :goto_22

    .line 76
    :pswitch_4b  #0xe
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 79
    move-result v18

    .line 80
    goto :goto_22

    .line 81
    :pswitch_50  #0xd
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 84
    move-result-object v20

    .line 85
    goto :goto_22

    .line 86
    :pswitch_55  #0xc
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 89
    move-result-object v15

    .line 90
    goto :goto_22

    .line 91
    :pswitch_5a  #0xb
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 94
    move-result v11

    .line 95
    goto :goto_22

    .line 96
    :pswitch_5f  #0xa
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 99
    move-result-object v19

    .line 100
    goto :goto_22

    .line 101
    :pswitch_64  #0x8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 104
    move-result-wide v16

    .line 105
    goto :goto_22

    .line 106
    :pswitch_69  #0x6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 109
    move-result-object v14

    .line 110
    goto :goto_22

    .line 111
    :pswitch_6e  #0x5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 114
    move-result v13

    .line 115
    goto :goto_22

    .line 116
    :pswitch_73  #0x4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 119
    move-result-object v12

    .line 120
    goto :goto_22

    .line 121
    :pswitch_78  #0x2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 124
    move-result-wide v9

    .line 125
    goto :goto_22

    .line 126
    :pswitch_7d  #0x1
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 129
    move-result v8

    .line 130
    goto :goto_22

    .line 131
    :cond_82
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 134
    new-instance v0, Lcom/google/android/gms/common/stats/WakeLockEvent;

    .line 136
    move-object v7, v0

    .line 137
    invoke-direct/range {v7 .. v25}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V

    .line 140
    return-object v0

    .line 141
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7d  #00000001
        :pswitch_78  #00000002
        :pswitch_33  #00000003
        :pswitch_73  #00000004
        :pswitch_6e  #00000005
        :pswitch_69  #00000006
        :pswitch_33  #00000007
        :pswitch_64  #00000008
        :pswitch_33  #00000009
        :pswitch_5f  #0000000a
        :pswitch_5a  #0000000b
        :pswitch_55  #0000000c
        :pswitch_50  #0000000d
        :pswitch_4b  #0000000e
        :pswitch_46  #0000000f
        :pswitch_41  #00000010
        :pswitch_3c  #00000011
        :pswitch_37  #00000012
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/common/stats/WakeLockEvent;

    .line 3
    return-object p1
.end method
