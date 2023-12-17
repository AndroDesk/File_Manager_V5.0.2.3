.class public Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;
.super Ljava/lang/Object;
.source "LegacySyncRecordUtils.java"


# static fields
.field private static final CODE_ACTIVATED_FAIL:I = 0x3e9

.field private static final CODE_AUTH_TOKEN_ERROR:I = 0x64

.field private static final CODE_NETWORK_DISALLOWED:I = 0x3e8

.field private static final CODE_PERMISSION_LIMIT:I = 0x3ea

.field private static final CODE_SECURE_SPACE_LIMIT:I = 0x3eb

.field private static final CODE_SYNC_HARD_ERROR:I = 0x2

.field private static final CODE_SYNC_SOFT_ERROR:I = 0x1

.field private static final CODE_SYNC_SUCCESS:I = 0x0

.field private static final CODE_SYNC_UNKNOWN:I = -0x1

.field private static final PARAM_SYNC_RESULT_AUTHORITY:Ljava/lang/String; = "authority"

.field private static final PARAM_SYNC_RESULT_CODE:Ljava/lang/String; = "code"

.field private static final SYNC_RESULT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SyncUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.miui.micloud/sync_result"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->SYNC_RESULT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthTokenErrorLegacyCode()I
    .registers 1

    const/16 v0, 0x64

    return v0
.end method

.method public static getErrorCodeByLocalException(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;)I
    .registers 1

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->getErrorCode()I

    move-result p0

    packed-switch p0, :pswitch_data_16

    const/4 p0, -0x1

    return p0

    :pswitch_9  #0x3eb
    const/16 p0, 0x3eb

    return p0

    :pswitch_c  #0x3ea
    const/16 p0, 0x3ea

    return p0

    :pswitch_f  #0x3e9
    const/16 p0, 0x3e9

    return p0

    :pswitch_12  #0x3e8
    const/16 p0, 0x3e8

    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x3e8
        :pswitch_12  #000003e8
        :pswitch_f  #000003e9
        :pswitch_c  #000003ea
        :pswitch_9  #000003eb
    .end packed-switch
.end method

.method public static getErrorCodeByServerException(Lcom/xiaomi/micloudsdk/exception/CloudServerException;)I
    .registers 3

    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v1, -0x2711

    if-eq v0, v1, :cond_7

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    :goto_9
    return v0
.end method

.method public static getErrorCodeBySyncResult(Landroid/content/SyncResult;)I
    .registers 1

    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static getPauseLimitErrorLegacyCode()I
    .registers 1

    const/4 v0, -0x1

    return v0
.end method

.method public static getSyncSwitchOffErrorLegacyCode()I
    .registers 1

    const/4 v0, -0x1

    return v0
.end method

.method public static recordSyncResult(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->recordSyncResult(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static recordSyncResultSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "SyncUtils"

    const-string v1, "recordSyncResultSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->recordSyncResult(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
