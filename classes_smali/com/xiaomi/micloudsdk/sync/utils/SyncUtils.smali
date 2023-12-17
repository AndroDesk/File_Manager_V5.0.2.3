.class public Lcom/xiaomi/micloudsdk/sync/utils/SyncUtils;
.super Ljava/lang/Object;
.source "SyncUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SyncUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isForceSync(Landroid/os/Bundle;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->SYNC_EXTRAS_FORCE:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static final isIgnoreBatteryLow(Landroid/os/Bundle;)Z
    .registers 4

    .line 1
    const-string v0, "micloud_ignore_battery_low"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    sget-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->SYNC_EXTRAS_FORCE:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_11

    .line 16
    if-eqz v0, :cond_12

    .line 18
    :cond_11
    const/4 v1, 0x1

    .line 19
    :cond_12
    return v1
.end method

.method public static final isIgnoreTemperature(Landroid/os/Bundle;)Z
    .registers 4

    .line 1
    const-string v0, "micloud_ignore_temperature"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    sget-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->SYNC_EXTRAS_FORCE:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_11

    .line 16
    if-eqz v0, :cond_12

    .line 18
    :cond_11
    const/4 v1, 0x1

    .line 19
    :cond_12
    return v1
.end method

.method public static final isIgnoreWifiSettings(Landroid/os/Bundle;)Z
    .registers 4

    .line 1
    const-string v0, "micloud_ignore_wifi_settings"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    sget-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->SYNC_EXTRAS_FORCE:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_11

    .line 16
    if-eqz v0, :cond_12

    .line 18
    :cond_11
    const/4 v1, 0x1

    .line 19
    :cond_12
    return v1
.end method
