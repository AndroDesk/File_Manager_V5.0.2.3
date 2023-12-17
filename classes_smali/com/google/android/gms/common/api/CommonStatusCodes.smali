.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final API_NOT_CONNECTED:I = 0x11

.field public static final CANCELED:I = 0x10

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final ERROR:I = 0xd

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TIMEOUT:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3

    .line 1
    packed-switch p0, :pswitch_data_48

    .line 4
    :pswitch_3  #0x1, 0x9, 0xb, 0xc
    const/16 v0, 0x20

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    const-string v0, "unknown status code: "

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_17  #0x12
    const-string p0, "DEAD_CLIENT"

    .line 26
    return-object p0

    .line 27
    :pswitch_1a  #0x11
    const-string p0, "API_NOT_CONNECTED"

    .line 29
    return-object p0

    .line 30
    :pswitch_1d  #0x10
    const-string p0, "CANCELED"

    .line 32
    return-object p0

    .line 33
    :pswitch_20  #0xf
    const-string p0, "TIMEOUT"

    .line 35
    return-object p0

    .line 36
    :pswitch_23  #0xe
    const-string p0, "INTERRUPTED"

    .line 38
    return-object p0

    .line 39
    :pswitch_26  #0xd
    const-string p0, "ERROR"

    .line 41
    return-object p0

    .line 42
    :pswitch_29  #0xa
    const-string p0, "DEVELOPER_ERROR"

    .line 44
    return-object p0

    .line 45
    :pswitch_2c  #0x8
    const-string p0, "INTERNAL_ERROR"

    .line 47
    return-object p0

    .line 48
    :pswitch_2f  #0x7
    const-string p0, "NETWORK_ERROR"

    .line 50
    return-object p0

    .line 51
    :pswitch_32  #0x6
    const-string p0, "RESOLUTION_REQUIRED"

    .line 53
    return-object p0

    .line 54
    :pswitch_35  #0x5
    const-string p0, "INVALID_ACCOUNT"

    .line 56
    return-object p0

    .line 57
    :pswitch_38  #0x4
    const-string p0, "SIGN_IN_REQUIRED"

    .line 59
    return-object p0

    .line 60
    :pswitch_3b  #0x3
    const-string p0, "SERVICE_DISABLED"

    .line 62
    return-object p0

    .line 63
    :pswitch_3e  #0x2
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    .line 65
    return-object p0

    .line 66
    :pswitch_41  #0x0
    const-string p0, "SUCCESS"

    .line 68
    return-object p0

    .line 69
    :pswitch_44  #0xffffffff
    const-string p0, "SUCCESS_CACHE"

    .line 71
    return-object p0

    .line 72
    nop

    .line 73
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
