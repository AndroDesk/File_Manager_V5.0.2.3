.class public Lmiui/cloud/util/SyncAutoSettingUtil;
.super Ljava/lang/Object;
.source "SyncAutoSettingUtil.java"


# static fields
.field private static final DEVICE_FEATURE_EXEMPT_MASTER_SYNC_AUTO:Ljava/lang/String; = "exempt_master_sync_auto"

.field private static final SYNC_AUTO_VERSION_KEY_SUFFIX:Ljava/lang/String; = "_sync_auto_version"

.field public static final SYNC_AUTO_VERSION_NOT_FOUND_DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/util/SyncAutoSettingUtil;->SYNC_AUTO_VERSION_NOT_FOUND_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncAutomaticallyVersion(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    invoke-static {p1}, Lmiui/cloud/util/SyncAutoSettingUtil;->makeSyncAutomaticallyVersionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getXiaomiGlobalSyncAutomatically()Z
    .registers 1

    const-string v0, "exempt_master_sync_auto"

    invoke-static {v0}, Lmiui/cloud/util/DeviceFeatureUtils;->hasDeviceFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method private static makeSyncAutomaticallyVersionKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "_sync_auto_version"

    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setSyncAutomaticallyVersion(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p1}, Lmiui/cloud/util/SyncAutoSettingUtil;->makeSyncAutomaticallyVersionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
