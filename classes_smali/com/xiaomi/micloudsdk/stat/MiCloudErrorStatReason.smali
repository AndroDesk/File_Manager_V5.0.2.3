.class public Lcom/xiaomi/micloudsdk/stat/MiCloudErrorStatReason;
.super Ljava/lang/Object;
.source "MiCloudErrorStatReason.java"


# static fields
.field public static final ACTIVATED_FAIL:Ljava/lang/String; = "activated_fail"

.field public static final AUTH_TOKEN_ERROR:Ljava/lang/String; = "auth_token_error"

.field public static final BAD_REQUEST:Ljava/lang/String; = "sever_error_bad_request"

.field public static final CLOUD_SPACE_FULL:Ljava/lang/String; = "cloud_space_full"

.field public static final CTA_ERROR:Ljava/lang/String; = "cta_error"

.field public static final FORBIDDEN:Ljava/lang/String; = "sever_error_forbidden"

.field public static final GDPR_DENY:Ljava/lang/String; = "gdpr_deny"

.field public static final MASTERKEY_EXPIRED:Ljava/lang/String; = "masterkey_expired"

.field public static final MASTERKEY_NOT_EXIST:Ljava/lang/String; = "masterkey_not_exist"

.field public static final NOT_ACCEPTABLE:Ljava/lang/String; = "sever_error_not-acceptable"

.field public static final PAUSE_LIMIT:Ljava/lang/String; = "pause_limit"

.field public static final PERMISSION_LIMIT:Ljava/lang/String; = "permission_limit"

.field public static final SECURE_SPACE_LIMIT:Ljava/lang/String; = "secure_space_limit"

.field public static final SERVER_5XX_ERROR:Ljava/lang/String; = "server_5xx_error"

.field public static final SWITCH_OFF:Ljava/lang/String; = "switch_off"

.field public static final SYNC_HARD_ERROR:Ljava/lang/String; = "sync_hard_error"

.field public static final SYNC_SOFT_ERROR:Ljava/lang/String; = "sync_soft_error"

.field public static final SYNC_UNKNOWN_ERROR:Ljava/lang/String; = "sync_unknown_error"

.field public static final UNAUTHORIZED:Ljava/lang/String; = "sever_error_unauthorized"

.field public static final WLAN_ONLY_ERROR:Ljava/lang/String; = "wlan_only_error"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalExceptionReasonForStats(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/stat/MiCloudErrorStatReason;->getLocalExceptionReasonForStatsByCode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLocalExceptionReasonForStatsByCode(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xbb8

    if-eq p0, v0, :cond_29

    const/16 v0, 0xbb9

    if-eq p0, v0, :cond_26

    packed-switch p0, :pswitch_data_2c

    packed-switch p0, :pswitch_data_38

    const-string p0, "sync_unknown_error"

    goto :goto_2b

    :pswitch_11  #0x7d2
    const-string p0, "wlan_only_error"

    goto :goto_2b

    :pswitch_14  #0x7d1
    const-string p0, "cloud_space_full"

    goto :goto_2b

    :pswitch_17  #0x7d0
    const-string p0, "gdpr_deny"

    goto :goto_2b

    :pswitch_1a  #0x3eb
    const-string p0, "secure_space_limit"

    goto :goto_2b

    :pswitch_1d  #0x3ea
    const-string p0, "permission_limit"

    goto :goto_2b

    :pswitch_20  #0x3e9
    const-string p0, "activated_fail"

    goto :goto_2b

    :pswitch_23  #0x3e8
    const-string p0, "cta_error"

    goto :goto_2b

    :cond_26
    const-string p0, "masterkey_not_exist"

    goto :goto_2b

    :cond_29
    const-string p0, "masterkey_expired"

    :goto_2b
    return-object p0

    :pswitch_data_2c
    .packed-switch 0x3e8
        :pswitch_23  #000003e8
        :pswitch_20  #000003e9
        :pswitch_1d  #000003ea
        :pswitch_1a  #000003eb
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x7d0
        :pswitch_17  #000007d0
        :pswitch_14  #000007d1
        :pswitch_11  #000007d2
    .end packed-switch
.end method

.method public static getServerExceptionReasonForStats(Lcom/xiaomi/micloudsdk/exception/CloudServerException;)Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v1, -0x2711

    if-eq v0, v1, :cond_38

    const/16 v1, 0x193

    if-eq v0, v1, :cond_35

    const/16 v1, 0x196

    if-eq v0, v1, :cond_32

    const/16 v1, 0x190

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x191

    if-eq v0, v1, :cond_2c

    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    const v1, 0xcb23

    if-ne v0, v1, :cond_20

    const-string p0, "gdpr_deny"

    goto :goto_3e

    :cond_20
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->is5xxServerException()Z

    move-result p0

    if-eqz p0, :cond_29

    const-string p0, "server_5xx_error"

    goto :goto_3e

    :cond_29
    const-string p0, "sync_unknown_error"

    goto :goto_3e

    :cond_2c
    const-string p0, "sever_error_unauthorized"

    goto :goto_3e

    :cond_2f
    const-string p0, "sever_error_bad_request"

    goto :goto_3e

    :cond_32
    const-string p0, "sever_error_not-acceptable"

    goto :goto_3e

    :cond_35
    const-string p0, "sever_error_forbidden"

    goto :goto_3e

    :cond_38
    iget p0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/stat/MiCloudErrorStatReason;->getLocalExceptionReasonForStatsByCode(I)Ljava/lang/String;

    move-result-object p0

    :goto_3e
    return-object p0
.end method

.method public static getSyncResultErrorReasonForStats(Landroid/content/SyncResult;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "sync_hard_error"

    goto :goto_b

    :cond_9
    const-string p0, "sync_soft_error"

    :goto_b
    return-object p0
.end method
