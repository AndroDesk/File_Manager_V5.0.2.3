.class public Lmiui/cloud/util/SyncAutoSettingUtil;
.super Ljava/lang/Object;
.source "SyncAutoSettingUtil.java"


# static fields
.field private static final DEVICE_FEATURE_EXEMPT_MASTER_SYNC_AUTO:Ljava/lang/String; = "exempt_master_sync_auto"

.field private static final SYNC_AUTO_VERSION_KEY_SUFFIX:Ljava/lang/String; = "_sync_auto_version"

.field public static final SYNC_AUTO_VERSION_NOT_FOUND_DEFAULT:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncAutomaticallyVersion(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    .line 1
    invoke-static {p1}, Lmiui/cloud/util/SyncAutoSettingUtil;->makeSyncAutomaticallyVersionKey(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static getXiaomiGlobalSyncAutomatically()Z
    .registers 1

    .line 1
    const-string v0, "exempt_master_sync_auto"

    .line 3
    invoke-static {v0}, Lmiui/cloud/util/DeviceFeatureUtils;->hasDeviceFeature(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method private static makeSyncAutomaticallyVersionKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "_sync_auto_version"

    .line 3
    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static setSyncAutomaticallyVersion(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-static {p1}, Lmiui/cloud/util/SyncAutoSettingUtil;->makeSyncAutomaticallyVersionKey(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 12
    return-void
.end method
