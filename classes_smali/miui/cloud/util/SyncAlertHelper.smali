.class public Lmiui/cloud/util/SyncAlertHelper;
.super Ljava/lang/Object;
.source "SyncAlertHelper.java"


# static fields
.field private static final DAY:J = 0x5265c00L

.field private static final HOUR:J = 0x36ee80L

.field private static final MINUTE:J = 0xea60L

.field private static final SECOND:J = 0x3e8L

.field private static final TWO_WEEK:J = 0x48190800L

.field private static final WEEK:J = 0x240c8400L


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

.method public static handleSyncAlert(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lmiui/cloud/util/SyncAlertHelper;->startSyncAlertDialog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lmiui/cloud/util/SyncAlertRecordHelper;->recordTime(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static hasUnsyncedData(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    :try_start_0
    invoke-static {p0, p1}, Lmiui/cloud/sync/SyncInfoHelper;->getUnsyncedDataCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Lmiui/cloud/sync/SyncInfoUnavailableException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_a

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    :goto_a
    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isNeedAlert(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const-wide/32 v0, 0x48190800

    invoke-static {v0, v1, p0, p1}, Lmiui/cloud/util/SyncAlertRecordHelper;->within(JLandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/cloud/util/SyncAlertHelper;->isSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_20

    if-eqz v2, :cond_20

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    invoke-static {p0, p1, v2, v3}, Lmiui/cloud/util/SyncAlertRecordHelper;->recordTime(Landroid/content/Context;Ljava/lang/String;J)V

    return v1

    :cond_20
    invoke-static {p0, p1}, Lmiui/cloud/util/SyncAlertHelper;->hasUnsyncedData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_27

    return v1

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method private static isSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lmiui/cloud/util/SyncAutoSettingUtil;->getXiaomiGlobalSyncAutomatically()Z

    move-result v0

    invoke-static {p0, p1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_e

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static recordTime(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lmiui/cloud/util/SyncAlertRecordHelper;->recordTime(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static startSyncAlertDialog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    new-instance p1, Landroid/content/Intent;

    const-string v0, "action_sync_alert"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.cloudservice"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
