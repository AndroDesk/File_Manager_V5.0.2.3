.class public abstract Lcom/cleanmaster/sdk/IPrivacyDataCallback$Stub;
.super Landroid/os/Binder;
.source "IPrivacyDataCallback.java"

# interfaces
.implements Lcom/cleanmaster/sdk/IPrivacyDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleanmaster/sdk/IPrivacyDataCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/IPrivacyDataCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onFindAppPrivacyItem:I = 0x5

.field public static final TRANSACTION_onFindBrowserPrivacyItem:I = 0x3

.field public static final TRANSACTION_onFindCallPrimePrivacyData:I = 0x9

.field public static final TRANSACTION_onFindCallPrivacyItem:I = 0x8

.field public static final TRANSACTION_onFindHistoryPrivacyItem:I = 0x4

.field public static final TRANSACTION_onFindSMSPrimePrivacyData:I = 0x7

.field public static final TRANSACTION_onFindSMSPrivacyItem:I = 0x6

.field public static final TRANSACTION_onPrivacyDataScanFinish:I = 0xa

.field public static final TRANSACTION_onScanItem:I = 0x2

.field public static final TRANSACTION_onStartScan:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.cleanmaster.sdk.IPrivacyDataCallback"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IPrivacyDataCallback;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.cleanmaster.sdk.IPrivacyDataCallback"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lcom/cleanmaster/sdk/IPrivacyDataCallback;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lcom/cleanmaster/sdk/IPrivacyDataCallback;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lcom/cleanmaster/sdk/IPrivacyDataCallback$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lcom/cleanmaster/sdk/IPrivacyDataCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17

    .line 1
    move-object v8, p0

    .line 2
    move v0, p1

    .line 3
    move-object v9, p3

    .line 4
    const/4 v10, 0x1

    .line 5
    const-string v1, "com.cleanmaster.sdk.IPrivacyDataCallback"

    .line 7
    if-lt v0, v10, :cond_12

    .line 9
    const v2, 0xffffff

    .line 12
    if-gt v0, v2, :cond_12

    .line 14
    move-object v2, p2

    .line 15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move-object v2, p2

    .line 20
    :goto_13
    const v3, 0x5f4e5446

    .line 23
    if-eq v0, v3, :cond_12b

    .line 25
    packed-switch v0, :pswitch_data_130

    .line 28
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :pswitch_20  #0xa
    invoke-interface {p0}, Lcom/cleanmaster/sdk/IPrivacyDataCallback;->onPrivacyDataScanFinish()V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    goto/16 :goto_12a

    .line 41
    :pswitch_28  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 44
    move-result v0

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 52
    move-result v2

    .line 53
    invoke-interface {p0, v0, v1, v2}, Lcom/cleanmaster/sdk/IPrivacyDataCallback;->onFindCallPrimePrivacyData(ILjava/lang/String;I)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    goto/16 :goto_12a

    .line 61
    :pswitch_3c  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 64
    move-result v1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 76
    move-result v5

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 84
    move-result-object v7

    .line 85
    move-object v0, p0

    .line 86
    move-object v2, v3

    .line 87
    move-object v3, v4

    .line 88
    move v4, v5

    .line 89
    move-object v5, v6

    .line 90
    move-object v6, v7

    .line 91
    invoke-interface/range {v0 .. v6}, Lcom/cleanmaster/sdk/IPrivacyDataCallback;->onFindCallPrivacyItem(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    goto/16 :goto_12a

    .line 99
    :pswitch_62  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 102
    move-result v0

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 110
    move-result v2

    .line 111
    invoke-interface {p0, v0, v1, v2}, Lcom/cleanmaster/sdk/IPrivacyDataCallback;->onFindSMSPrimePrivacyData(ILjava/lang/String;I)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    goto/16 :goto_12a

    .line 119
    :pswitch_76  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 122
    move-result v1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 134
    move-result v5

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 138
    move-result v6

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 146
    move-result-object v11

    .line 147
    move-object v0, p0

    .line 148
    move-object v2, v3

    .line 149
    move-object v3, v4

    .line 150
    move v4, v5

    .line 151
    move v5, v6

    .line 152
    move-object v6, v7

    .line 153
    move-object v7, v11

    .line 154
    invoke-interface/range {v0 .. v7}, Lcom/cleanmaster/sdk/IPrivacyDataCallback;->onFindSMSPrivacyItem(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto/16 :goto_12a

    .line 162
    :pswitch_a1  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 165
    move-result v1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_b5

    .line 180
    move v5, v10

    .line 181
    goto :goto_b7

    .line 182
    :cond_b5
    const/4 v0, 0x0

    .line 183
    move v5, v0

    .line 184
    :goto_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 187
    move-result-object v6

    .line 188
    move-object v0, p0

    .line 189
    move-object v2, v3

    .line 190
    move-object v3, v4

    .line 191
    move v4, v5

    .line 192
    move-object v5, v6

    .line 193
    invoke-interface/range {v0 .. v5}, Lcom/cleanmaster/sdk/IPrivacyDataCallback;->onFindAppPrivacyItem(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto/16 :goto_12a

    .line 201
    :pswitch_c8  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 204
    move-result v1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 216
    move-result v5

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 220
    move-result-object v6

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 224
    move-result-object v7

    .line 225
    move-object v0, p0

    .line 226
    move-object v2, v3

    .line 227
    move-object v3, v4

    .line 228
    move v4, v5

    .line 229
    move-object v5, v6

    .line 230
    move-object v6, v7

    .line 231
    invoke-interface/range {v0 .. v6}, Lcom/cleanmaster/sdk/IPrivacyDataCallback;->onFindHistoryPrivacyItem(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_12a

    .line 238
    :pswitch_ed  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 241
    move-result v1

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 253
    move-result v5

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 257
    move-result-object v6

    .line 258
    move-object v0, p0

    .line 259
    move-object v2, v3

    .line 260
    move-object v3, v4

    .line 261
    move v4, v5

    .line 262
    move-object v5, v6

    .line 263
    invoke-interface/range {v0 .. v5}, Lcom/cleanmaster/sdk/IPrivacyDataCallback;->onFindBrowserPrivacyItem(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    goto :goto_12a

    .line 270
    :pswitch_10d  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 277
    move-result v1

    .line 278
    invoke-interface {p0, v0, v1}, Lcom/cleanmaster/sdk/IPrivacyDataCallback;->onScanItem(Ljava/lang/String;I)Z

    .line 281
    move-result v0

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    goto :goto_12a

    .line 289
    :pswitch_120  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 292
    move-result v0

    .line 293
    invoke-interface {p0, v0}, Lcom/cleanmaster/sdk/IPrivacyDataCallback;->onStartScan(I)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    :goto_12a
    return v10

    .line 300
    :cond_12b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    return v10

    .line 304
    nop

    .line 305
    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_120  #00000001
        :pswitch_10d  #00000002
        :pswitch_ed  #00000003
        :pswitch_c8  #00000004
        :pswitch_a1  #00000005
        :pswitch_76  #00000006
        :pswitch_62  #00000007
        :pswitch_3c  #00000008
        :pswitch_28  #00000009
        :pswitch_20  #0000000a
    .end packed-switch
.end method
