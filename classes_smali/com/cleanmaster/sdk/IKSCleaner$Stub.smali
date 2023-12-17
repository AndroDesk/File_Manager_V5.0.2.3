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
.field public static final TRANSACTION_GetDataVersion:I

.field public static final TRANSACTION_IsEnableAutoUpdate:I

.field public static final TRANSACTION_IsEnableNetworkAccess:I

.field public static final TRANSACTION_SetEnableAutoUpdate:I

.field public static final TRANSACTION_SetEnableNetworkAccess:I

.field public static final TRANSACTION_StartUpdateCheck:I

.field public static final TRANSACTION_StartUpdateData:I

.field public static final TRANSACTION_getCanDeleteResidualFilePaths:I

.field public static final TRANSACTION_getResidualFilePaths:I

.field public static final TRANSACTION_getVersion:I

.field public static final TRANSACTION_init:I

.field public static final TRANSACTION_pathCalcSize:I

.field public static final TRANSACTION_queryDirInfo:I

.field public static final TRANSACTION_scanAdDir:I

.field public static final TRANSACTION_scanAppPrivacyData:I

.field public static final TRANSACTION_scanBrowserPrivacyData:I

.field public static final TRANSACTION_scanCache:I

.field public static final TRANSACTION_scanCallPrivacyData:I

.field public static final TRANSACTION_scanHistoryPrivacyData:I

.field public static final TRANSACTION_scanPrivacyCache:I

.field public static final TRANSACTION_scanPrivacyData:I

.field public static final TRANSACTION_scanResidual:I

.field public static final TRANSACTION_scanSMSPrivacyData:I

.field public static final TRANSACTION_scanSysFixedFile:I

.field public static final TRANSACTION_scanSystemCache:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d85

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_GetDataVersion:I

    const v0, 0x92d87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_IsEnableAutoUpdate:I

    const v0, 0x92d81

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_IsEnableNetworkAccess:I

    const v0, 0x92d84

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_SetEnableAutoUpdate:I

    const v0, 0x92d80

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_SetEnableNetworkAccess:I

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_StartUpdateCheck:I

    const v0, 0x92d83

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_StartUpdateData:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_getCanDeleteResidualFilePaths:I

    const v0, 0x92d99

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_getResidualFilePaths:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_getVersion:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_init:I

    const v0, 0x92d98

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_pathCalcSize:I

    const v0, 0x92d8e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_queryDirInfo:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_scanAdDir:I

    const v0, 0x92d9d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_scanAppPrivacyData:I

    const v0, 0x92d9f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_scanBrowserPrivacyData:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_scanCache:I

    const v0, 0x92d9b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_scanCallPrivacyData:I

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_scanHistoryPrivacyData:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_scanPrivacyCache:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_scanPrivacyData:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_scanResidual:I

    const v0, 0x92d9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_scanSMSPrivacyData:I

    const v0, 0x92d8f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_scanSysFixedFile:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->TRANSACTION_scanSystemCache:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cleanmaster.sdk.IKSCleaner"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IKSCleaner;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.cleanmaster.sdk.IKSCleaner"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/cleanmaster/sdk/IKSCleaner;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/cleanmaster/sdk/IKSCleaner;

    return-object v0

    :cond_13
    new-instance v0, Lcom/cleanmaster/sdk/IKSCleaner$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cleanmaster/sdk/IKSCleaner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v0, 0x1

    const-string v1, "com.cleanmaster.sdk.IKSCleaner"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_195

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_19a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_1b  #0x19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cleanmaster/sdk/ISysFixedFileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ISysFixedFileCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanSysFixedFile(Lcom/cleanmaster/sdk/ISysFixedFileCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_194

    :pswitch_2b  #0x18
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/cleanmaster/sdk/IQueryInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IQueryInfoCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/IKSCleaner;->queryDirInfo(Ljava/util/List;Lcom/cleanmaster/sdk/IQueryInfoCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_194

    :pswitch_3f  #0x17
    invoke-interface {p0}, Lcom/cleanmaster/sdk/IKSCleaner;->IsEnableNetworkAccess()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_194

    :pswitch_4b  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_52

    move v1, v0

    :cond_52
    invoke-interface {p0, v1}, Lcom/cleanmaster/sdk/IKSCleaner;->SetEnableNetworkAccess(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_194

    :pswitch_5a  #0x15
    invoke-interface {p0}, Lcom/cleanmaster/sdk/IKSCleaner;->StartUpdateData()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_194

    :pswitch_62  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cleanmaster/sdk/ICmSdkUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->StartUpdateCheck(Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_194

    :pswitch_72  #0x13
    invoke-interface {p0}, Lcom/cleanmaster/sdk/IKSCleaner;->GetDataVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_194

    :pswitch_7e  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_85

    move v1, v0

    :cond_85
    invoke-interface {p0, v1}, Lcom/cleanmaster/sdk/IKSCleaner;->SetEnableAutoUpdate(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_194

    :pswitch_8d  #0x11
    invoke-interface {p0}, Lcom/cleanmaster/sdk/IKSCleaner;->IsEnableAutoUpdate()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_194

    :pswitch_99  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->getCanDeleteResidualFilePaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_194

    :pswitch_a9  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->getResidualFilePaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_194

    :pswitch_b9  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->pathCalcSize(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_194

    :pswitch_c9  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cleanmaster/sdk/ICallPrivacyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ICallPrivacyCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanCallPrivacyData(Lcom/cleanmaster/sdk/ICallPrivacyCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_194

    :pswitch_d9  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ISMSPrivacyCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanSMSPrivacyData(Lcom/cleanmaster/sdk/ISMSPrivacyCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_194

    :pswitch_e9  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cleanmaster/sdk/IAppPrivacyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IAppPrivacyCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanAppPrivacyData(Lcom/cleanmaster/sdk/IAppPrivacyCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_194

    :pswitch_f9  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cleanmaster/sdk/IHistoryPrivacyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IHistoryPrivacyCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanHistoryPrivacyData(Lcom/cleanmaster/sdk/IHistoryPrivacyCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_194

    :pswitch_109  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cleanmaster/sdk/IBrowserPrivacyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IBrowserPrivacyCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanBrowserPrivacyData(Lcom/cleanmaster/sdk/IBrowserPrivacyCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_194

    :pswitch_119  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cleanmaster/sdk/IPrivacyDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IPrivacyDataCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanPrivacyData(Lcom/cleanmaster/sdk/IPrivacyDataCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_194

    :pswitch_128  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cleanmaster/sdk/IAdDirCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IAdDirCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanAdDir(Lcom/cleanmaster/sdk/IAdDirCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_194

    :pswitch_137  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/cleanmaster/sdk/IResidualCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IResidualCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/IKSCleaner;->scanResidual(ILcom/cleanmaster/sdk/IResidualCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_194

    :pswitch_14a  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ISystemCacheCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanSystemCache(Lcom/cleanmaster/sdk/ISystemCacheCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_194

    :pswitch_159  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cleanmaster/sdk/ICacheCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ICacheCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->scanPrivacyCache(Lcom/cleanmaster/sdk/ICacheCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_194

    :pswitch_168  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/cleanmaster/sdk/ICacheCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ICacheCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/IKSCleaner;->scanCache(ILcom/cleanmaster/sdk/ICacheCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_194

    :pswitch_17b  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/IKSCleaner;->init(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_194

    :pswitch_18a  #0x1
    invoke-interface {p0}, Lcom/cleanmaster/sdk/IKSCleaner;->getVersion()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_194
    return v0

    :cond_195
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

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
