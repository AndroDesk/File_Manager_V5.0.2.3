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
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleSyncAlert(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiui/cloud/util/SyncAlertHelper;->startSyncAlertDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1}, Lmiui/cloud/util/SyncAlertRecordHelper;->recordTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method private static hasUnsyncedData(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lmiui/cloud/sync/SyncInfoHelper;->getUnsyncedDataCount(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    move-result p0
    :try_end_4
    .catch Lmiui/cloud/sync/SyncInfoUnavailableException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    goto :goto_a

    .line 6
    :catch_5
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    const/4 p0, -0x1

    .line 11
    :goto_a
    if-eqz p0, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method public static isNeedAlert(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 1
    const-wide/32 v0, 0x48190800

    .line 4
    invoke-static {v0, v1, p0, p1}, Lmiui/cloud/util/SyncAlertRecordHelper;->within(JLandroid/content/Context;Ljava/lang/String;)Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return v1

    .line 12
    :cond_b
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p1}, Lmiui/cloud/util/SyncAlertHelper;->isSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 19
    move-result v2

    .line 20
    if-eqz v0, :cond_20

    .line 22
    if-eqz v2, :cond_20

    .line 24
    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    .line 29
    invoke-static {p0, p1, v2, v3}, Lmiui/cloud/util/SyncAlertRecordHelper;->recordTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 32
    return v1

    .line 33
    :cond_20
    invoke-static {p0, p1}, Lmiui/cloud/util/SyncAlertHelper;->hasUnsyncedData(Landroid/content/Context;Ljava/lang/String;)Z

    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_27

    .line 39
    return v1

    .line 40
    :cond_27
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method private static isSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {}, Lmiui/cloud/util/SyncAutoSettingUtil;->getXiaomiGlobalSyncAutomatically()Z

    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 8
    move-result p0

    .line 9
    if-eqz v0, :cond_e

    .line 11
    if-eqz p0, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method public static recordTime(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiui/cloud/util/SyncAlertRecordHelper;->recordTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static startSyncAlertDialog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 3
    const-string v0, "action_sync_alert"

    .line 5
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v0, "com.miui.cloudservice"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    return-void
.end method
