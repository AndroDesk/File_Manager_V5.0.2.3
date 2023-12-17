.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final API_NOT_CONNECTED:I

.field public static final CANCELED:I

.field public static final DEVELOPER_ERROR:I

.field public static final ERROR:I

.field public static final INTERNAL_ERROR:I

.field public static final INTERRUPTED:I

.field public static final INVALID_ACCOUNT:I

.field public static final NETWORK_ERROR:I

.field public static final RESOLUTION_REQUIRED:I

.field public static final SERVICE_DISABLED:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGN_IN_REQUIRED:I

.field public static final SUCCESS:I

.field public static final SUCCESS_CACHE:I

.field public static final TIMEOUT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->API_NOT_CONNECTED:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->CANCELED:I

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->DEVELOPER_ERROR:I

    const v0, 0x92d9b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->ERROR:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->INTERNAL_ERROR:I

    const v0, 0x92d98

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->INTERRUPTED:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->INVALID_ACCOUNT:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->NETWORK_ERROR:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->RESOLUTION_REQUIRED:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->SERVICE_DISABLED:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->SERVICE_VERSION_UPDATE_REQUIRED:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->SIGN_IN_REQUIRED:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->SUCCESS:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->SUCCESS_CACHE:I

    const v0, 0x92d99

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/api/CommonStatusCodes;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_48

    :pswitch_3  #0x1, 0x9, 0xb, 0xc
    const/16 v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "unknown status code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17  #0x12
    const-string p0, "DEAD_CLIENT"

    return-object p0

    :pswitch_1a  #0x11
    const-string p0, "API_NOT_CONNECTED"

    return-object p0

    :pswitch_1d  #0x10
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_20  #0xf
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_23  #0xe
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_26  #0xd
    const-string p0, "ERROR"

    return-object p0

    :pswitch_29  #0xa
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_2c  #0x8
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_2f  #0x7
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_32  #0x6
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_35  #0x5
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_38  #0x4
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_3b  #0x3
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_3e  #0x2
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_41  #0x0
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_44  #0xffffffff
    const-string p0, "SUCCESS_CACHE"

    return-object p0

    nop

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_44  #ffffffff
        :pswitch_41  #00000000
        :pswitch_3  #00000001
        :pswitch_3e  #00000002
        :pswitch_3b  #00000003
        :pswitch_38  #00000004
        :pswitch_35  #00000005
        :pswitch_32  #00000006
        :pswitch_2f  #00000007
        :pswitch_2c  #00000008
        :pswitch_3  #00000009
        :pswitch_29  #0000000a
        :pswitch_3  #0000000b
        :pswitch_3  #0000000c
        :pswitch_26  #0000000d
        :pswitch_23  #0000000e
        :pswitch_20  #0000000f
        :pswitch_1d  #00000010
        :pswitch_1a  #00000011
        :pswitch_17  #00000012
    .end packed-switch
.end method
