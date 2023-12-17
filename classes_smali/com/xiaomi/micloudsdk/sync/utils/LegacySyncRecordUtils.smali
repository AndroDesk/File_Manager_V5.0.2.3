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

    .line 1
    const-string v0, "content://com.miui.micloud/sync_result"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->SYNC_RESULT_URI:Landroid/net/Uri;

    .line 9
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

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->getErrorCode()I

    .line 4
    move-result p0

    .line 5
    packed-switch p0, :pswitch_data_16

    .line 8
    const/4 p0, -0x1

    .line 9
    return p0

    .line 10
    :pswitch_9  #0x3eb
    const/16 p0, 0x3eb

    .line 12
    return p0

    .line 13
    :pswitch_c  #0x3ea
    const/16 p0, 0x3ea

    .line 15
    return p0

    .line 16
    :pswitch_f  #0x3e9
    const/16 p0, 0x3e9

    .line 18
    return p0

    .line 19
    :pswitch_12  #0x3e8
    const/16 p0, 0x3e8

    .line 21
    return p0

    .line 22
    nop

    .line 23
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

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 3
    const/16 v1, -0x2711

    .line 5
    if-eq v0, v1, :cond_7

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    .line 10
    :goto_9
    return v0
.end method

.method public static getErrorCodeBySyncResult(Landroid/content/SyncResult;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_8

    .line 7
    const/4 p0, 0x2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p0, 0x1

    .line 10
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

    .line 1
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->recordSyncResult(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static recordSyncResultSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "SyncUtils"

    .line 3
    const-string v1, "recordSyncResultSuccess"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->recordSyncResult(Landroid/content/Context;Ljava/lang/String;I)V

    .line 12
    return-void
.end method
