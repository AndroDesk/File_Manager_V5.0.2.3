.class public abstract Lcom/cleanmaster/sdk/IKSCleaner$Stub;
.super Landroid/os/Binder;
.source "IKSCleaner.java"

# interfaces
.implements Lcom/cleanmaster/sdk/IKSCleaner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleanmaster/sdk/IKSCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/IKSCleaner$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_GetDataVersion:I = 0x13

.field public static final TRANSACTION_IsEnableAutoUpdate:I = 0x11

.field public static final TRANSACTION_IsEnableNetworkAccess:I = 0x17

.field public static final TRANSACTION_SetEnableAutoUpdate:I = 0x12

.field public static final TRANSACTION_SetEnableNetworkAccess:I = 0x16

.field public static final TRANSACTION_StartUpdateCheck:I = 0x14

.field public static final TRANSACTION_StartUpdateData:I = 0x15

.field public static final TRANSACTION_getCanDeleteResidualFilePaths:I = 0x10

.field public static final TRANSACTION_getResidualFilePaths:I = 0xf

.field public static final TRANSACTION_getVersion:I = 0x1

.field public static final TRANSACTION_init:I = 0x2

.field public static final TRANSACTION_pathCalcSize:I = 0xe

.field public static final TRANSACTION_queryDirInfo:I = 0x18

.field public static final TRANSACTION_scanAdDir:I = 0x7

.field public static final TRANSACTION_scanAppPrivacyData:I = 0xb

.field public static final TRANSACTION_scanBrowserPrivacyData:I = 0x9

.field public static final TRANSACTION_scanCache:I = 0x3

.field public static final TRANSACTION_scanCallPrivacyData:I = 0xd

.field public static final TRANSACTION_scanHistoryPrivacyData:I = 0xa

.field public static final TRANSACTION_scanPrivacyCache:I = 0x4

.field public static final TRANSACTION_scanPrivacyData:I = 0x8

.field public static final TRANSACTION_scanResidual:I = 0x6

.field public static final TRANSACTION_scanSMSPrivacyData:I = 0xc

.field public static final TRANSACTION_scanSysFixedFile:I = 0x19

.field public static final TRANSACTION_scanSystemCache:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.cleanmaster.sdk.IKSCleaner"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IKSCleaner;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.cleanmaster.sdk.IKSCleaner"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lcom/cleanmaster/sdk/IKSCleaner;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lcom/cleanmaster/sdk/IKSCleaner;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lcom/cleanmaster/sdk/IKSCleaner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "com.cleanmaster.sdk.IKSCleaner"

    .line 4
    if-lt p1, v0, :cond_d

    .line 6
    const v2, 0xffffff

    .line 9
    if-gt p1, v2, :cond_d

    .line 11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    :cond_d
    const v2, 0x5f4e5446

    .line 17
    if-eq p1, v2, :cond_195

    .line 19
    const/4 v1, 0x0

    .line 20
    packed-switch p1, :pswitch_data_19a

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :pswitch_1b  #0x19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/cleanmaster/sdk/ISysFixedFileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ISysFixedFileCallback;

    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanSysFixedFile(Lcom/cleanmaster/sdk/ISysFixedFileCallback;)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    goto/16 :goto_194

    .line 44
    :pswitch_2b  #0x18
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 51
    move-result-object p2

    .line 52
    invoke-static {p2}, Lcom/cleanmaster/sdk/IQueryInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IQueryInfoCallback;

    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/IKSCleaner;->queryDirInfo(Ljava/util/List;Lcom/cleanmaster/sdk/IQueryInfoCallback;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    goto/16 :goto_194

    .line 64
    :pswitch_3f  #0x17
    invoke-interface {p0}, Lcom/cleanmaster/sdk/IKSCleaner;->IsEnableNetworkAccess()Z

    .line 67
    move-result p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    goto/16 :goto_194

    .line 76
    :pswitch_4b  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_52

    .line 82
    move v1, v0

    .line 83
    :cond_52
    invoke-interface {p0, v1}, Lcom/cleanmaster/sdk/IKSCleaner;->SetEnableNetworkAccess(Z)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    goto/16 :goto_194

    .line 91
    :pswitch_5a  #0x15
    invoke-interface {p0}, Lcom/cleanmaster/sdk/IKSCleaner;->StartUpdateData()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    goto/16 :goto_194

    .line 99
    :pswitch_62  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/cleanmaster/sdk/ICmSdkUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;

    .line 106
    move-result-object p1

    .line 107
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->StartUpdateCheck(Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    goto/16 :goto_194

    .line 115
    :pswitch_72  #0x13
    invoke-interface {p0}, Lcom/cleanmaster/sdk/IKSCleaner;->GetDataVersion()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    goto/16 :goto_194

    .line 127
    :pswitch_7e  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_85

    .line 133
    move v1, v0

    .line 134
    :cond_85
    invoke-interface {p0, v1}, Lcom/cleanmaster/sdk/IKSCleaner;->SetEnableAutoUpdate(Z)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    goto/16 :goto_194

    .line 142
    :pswitch_8d  #0x11
    invoke-interface {p0}, Lcom/cleanmaster/sdk/IKSCleaner;->IsEnableAutoUpdate()Z

    .line 145
    move-result p1

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    goto/16 :goto_194

    .line 154
    :pswitch_99  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->getCanDeleteResidualFilePaths(Ljava/lang/String;)[Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 168
    goto/16 :goto_194

    .line 170
    :pswitch_a9  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->getResidualFilePaths(Ljava/lang/String;)[Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 184
    goto/16 :goto_194

    .line 186
    :pswitch_b9  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 190
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->pathCalcSize(Ljava/lang/String;)J

    .line 193
    move-result-wide p1

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 200
    goto/16 :goto_194

    .line 202
    :pswitch_c9  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 205
    move-result-object p1

    .line 206
    invoke-static {p1}, Lcom/cleanmaster/sdk/ICallPrivacyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ICallPrivacyCallback;

    .line 209
    move-result-object p1

    .line 210
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanCallPrivacyData(Lcom/cleanmaster/sdk/ICallPrivacyCallback;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto/16 :goto_194

    .line 218
    :pswitch_d9  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 221
    move-result-object p1

    .line 222
    invoke-static {p1}, Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ISMSPrivacyCallback;

    .line 225
    move-result-object p1

    .line 226
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanSMSPrivacyData(Lcom/cleanmaster/sdk/ISMSPrivacyCallback;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto/16 :goto_194

    .line 234
    :pswitch_e9  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 237
    move-result-object p1

    .line 238
    invoke-static {p1}, Lcom/cleanmaster/sdk/IAppPrivacyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IAppPrivacyCallback;

    .line 241
    move-result-object p1

    .line 242
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanAppPrivacyData(Lcom/cleanmaster/sdk/IAppPrivacyCallback;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    goto/16 :goto_194

    .line 250
    :pswitch_f9  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 253
    move-result-object p1

    .line 254
    invoke-static {p1}, Lcom/cleanmaster/sdk/IHistoryPrivacyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IHistoryPrivacyCallback;

    .line 257
    move-result-object p1

    .line 258
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanHistoryPrivacyData(Lcom/cleanmaster/sdk/IHistoryPrivacyCallback;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_194

    .line 266
    :pswitch_109  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 269
    move-result-object p1

    .line 270
    invoke-static {p1}, Lcom/cleanmaster/sdk/IBrowserPrivacyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IBrowserPrivacyCallback;

    .line 273
    move-result-object p1

    .line 274
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanBrowserPrivacyData(Lcom/cleanmaster/sdk/IBrowserPrivacyCallback;)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    goto/16 :goto_194

    .line 282
    :pswitch_119  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 285
    move-result-object p1

    .line 286
    invoke-static {p1}, Lcom/cleanmaster/sdk/IPrivacyDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IPrivacyDataCallback;

    .line 289
    move-result-object p1

    .line 290
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanPrivacyData(Lcom/cleanmaster/sdk/IPrivacyDataCallback;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto :goto_194

    .line 297
    :pswitch_128  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 300
    move-result-object p1

    .line 301
    invoke-static {p1}, Lcom/cleanmaster/sdk/IAdDirCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IAdDirCallback;

    .line 304
    move-result-object p1

    .line 305
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanAdDir(Lcom/cleanmaster/sdk/IAdDirCallback;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto :goto_194

    .line 312
    :pswitch_137  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 315
    move-result p1

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 319
    move-result-object p2

    .line 320
    invoke-static {p2}, Lcom/cleanmaster/sdk/IResidualCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IResidualCallback;

    .line 323
    move-result-object p2

    .line 324
    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/IKSCleaner;->scanResidual(ILcom/cleanmaster/sdk/IResidualCallback;)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto :goto_194

    .line 331
    :pswitch_14a  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 334
    move-result-object p1

    .line 335
    invoke-static {p1}, Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ISystemCacheCallback;

    .line 338
    move-result-object p1

    .line 339
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanSystemCache(Lcom/cleanmaster/sdk/ISystemCacheCallback;)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto :goto_194

    .line 346
    :pswitch_159  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 349
    move-result-object p1

    .line 350
    invoke-static {p1}, Lcom/cleanmaster/sdk/ICacheCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ICacheCallback;

    .line 353
    move-result-object p1

    .line 354
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanPrivacyCache(Lcom/cleanmaster/sdk/ICacheCallback;)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    goto :goto_194

    .line 361
    :pswitch_168  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 364
    move-result p1

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 368
    move-result-object p2

    .line 369
    invoke-static {p2}, Lcom/cleanmaster/sdk/ICacheCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ICacheCallback;

    .line 372
    move-result-object p2

    .line 373
    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/IKSCleaner;->scanCache(ILcom/cleanmaster/sdk/ICacheCallback;)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    goto :goto_194

    .line 380
    :pswitch_17b  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 383
    move-result-object p1

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 387
    move-result-object p2

    .line 388
    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/IKSCleaner;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    goto :goto_194

    .line 395
    :pswitch_18a  #0x1
    invoke-interface {p0}, Lcom/cleanmaster/sdk/IKSCleaner;->getVersion()I

    .line 398
    move-result p1

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    :goto_194
    return v0

    .line 406
    :cond_195
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    return v0

    .line 410
    nop

    .line 411
    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_18a  #00000001
        :pswitch_17b  #00000002
        :pswitch_168  #00000003
        :pswitch_159  #00000004
        :pswitch_14a  #00000005
        :pswitch_137  #00000006
        :pswitch_128  #00000007
        :pswitch_119  #00000008
        :pswitch_109  #00000009
        :pswitch_f9  #0000000a
        :pswitch_e9  #0000000b
        :pswitch_d9  #0000000c
        :pswitch_c9  #0000000d
        :pswitch_b9  #0000000e
        :pswitch_a9  #0000000f
        :pswitch_99  #00000010
        :pswitch_8d  #00000011
        :pswitch_7e  #00000012
        :pswitch_72  #00000013
        :pswitch_62  #00000014
        :pswitch_5a  #00000015
        :pswitch_4b  #00000016
        :pswitch_3f  #00000017
        :pswitch_2b  #00000018
        :pswitch_1b  #00000019
    .end packed-switch
.end method
