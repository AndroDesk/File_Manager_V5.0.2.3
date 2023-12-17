.class public Lcom/android/fileexplorer/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static final DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field private static final MIRROR_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.mirror"

.field private static final TAG:Ljava/lang/String; = "DeviceUtils"

.field private static final UI_MODE_PC_YES:I = 0x2000

.field private static final VERSION_ALPHA:Ljava/lang/String; = "alpha"

.field private static final VERSION_DEVELOPMENT:Ljava/lang/String; = "development"

.field private static VERSION_NAME:Ljava/lang/String; = ""

.field private static final VERSION_STABLE:Ljava/lang/String; = "stable"

.field private static final VERSION_UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayNavigationFragment(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/responsive/map/ResponsiveStateManager;->getInstance()Lmiuix/responsive/map/ResponsiveStateManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lmiuix/responsive/map/ResponsiveStateManager;->getScreenMode(Landroid/content/Context;)I

    .line 8
    move-result p0

    .line 9
    const/16 v0, 0x1007

    .line 11
    if-eq p0, v0, :cond_17

    .line 13
    const/16 v0, 0x1004

    .line 15
    if-eq p0, v0, :cond_17

    .line 17
    const/16 v0, 0x2003

    .line 19
    if-ne p0, v0, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    :goto_17
    const/4 p0, 0x1

    .line 25
    :goto_18
    return p0
.end method

.method public static generateKey()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "SNu+35ITBX2TI7"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getPart2()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "izf"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "+"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "xo1lXnPycW"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "/F17rwoaiZyyrL"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public static getIMEI()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "phone"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 17
    if-eqz v0, :cond_17

    .line 19
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    :goto_18
    if-eqz v0, :cond_1b

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    const-string v0, ""

    .line 30
    :goto_1d
    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .registers 8

    .line 1
    const-string v0, ""

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 7
    move-result-object v2

    .line 8
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v2

    .line 16
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_68

    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/net/NetworkInterface;

    .line 28
    const-string v4, "wlan0"

    .line 30
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_28

    .line 40
    goto :goto_f

    .line 41
    :cond_28
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    .line 44
    move-result-object v3

    .line 45
    if-nez v3, :cond_30

    .line 47
    move-object v1, v0

    .line 48
    goto :goto_f

    .line 49
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    array-length v5, v3

    .line 55
    const/4 v6, 0x0

    .line 56
    :goto_37
    if-ge v6, v5, :cond_4c

    .line 58
    aget-byte v7, v3, v6

    .line 60
    and-int/lit16 v7, v7, 0xff

    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v7, ":"

    .line 71
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v6, v6, 0x1

    .line 76
    goto :goto_37

    .line 77
    :cond_4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 80
    move-result v3

    .line 81
    if-lez v3, :cond_5b

    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 86
    move-result v3

    .line 87
    add-int/lit8 v3, v3, -0x1

    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 92
    :cond_5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 99
    move-result-object v1
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_63} :catch_64

    .line 100
    goto :goto_f

    .line 101
    :catch_64
    move-exception v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    :cond_68
    const-string v2, "02:00:00:00:00:00"

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_71

    .line 113
    goto :goto_72

    .line 114
    :cond_71
    move-object v0, v1

    .line 115
    :goto_72
    return-object v0
.end method

.method public static getMiUiType()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static getMiUiVersion()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "ro.build.version.incremental"

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getMiUiVersionCode()J
    .registers 3

    .line 1
    const-string v0, "ro.miui.version.code_time"

    .line 3
    const-wide/16 v1, -0x1

    .line 5
    invoke-static {v0, v1, v2}, Lmiuix/core/util/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/DeviceUtils;->VERSION_NAME:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2e

    .line 9
    :try_start_8
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 40
    sput-object v0, Lcom/android/fileexplorer/util/DeviceUtils;->VERSION_NAME:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_2a

    .line 42
    goto :goto_2e

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    :cond_2e
    :goto_2e
    sget-object v0, Lcom/android/fileexplorer/util/DeviceUtils;->VERSION_NAME:Ljava/lang/String;

    .line 49
    return-object v0
.end method

.method public static hasWidgetOperation()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_GLOBAL:Z

    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 5
    return v0
.end method

.method public static isAndroidQAndLater()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public static isEventFromMirror(Landroid/view/InputEvent;)Z
    .registers 7

    .line 1
    const-string v0, "DeviceUtils"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Lcom/xiaomi/mirror/MirrorManagerImpl;->get(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorManagerImpl;

    .line 15
    move-result-object v2
    :try_end_f
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_f} :catch_3f

    .line 16
    if-eqz v2, :cond_3e

    .line 18
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    .line 21
    move-result-object v3

    .line 22
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->isFloatWindowShow(Landroid/content/Context;)Z

    .line 33
    move-result v3

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v5, "isEventFromMirror isFloatingWindow"

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-nez v3, :cond_3d

    .line 56
    invoke-virtual {v2, p0}, Lcom/xiaomi/mirror/MirrorManagerImpl;->isEventFromMirror(Landroid/view/InputEvent;)Z

    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3e

    .line 62
    :cond_3d
    const/4 v1, 0x1

    .line 63
    :cond_3e
    return v1

    .line 64
    :catch_3f
    move-exception p0

    .line 65
    const-string v2, "isEventFromMirror get MirrorManagerImpl error: "

    .line 67
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v1
.end method

.method public static isExceptDevices()Ljava/lang/Boolean;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 19
    and-int/lit16 v0, v0, 0x2000

    .line 21
    if-eqz v0, :cond_18

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public static isFoldDevice()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return v0
.end method

.method public static isFolderDeviceInnerDisplay(Landroid/content/Context;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    return v0

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 19
    move-result-object p0

    .line 20
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 22
    and-int/lit8 p0, p0, 0xf

    .line 24
    const/4 v1, 0x3

    .line 25
    if-lt p0, v1, :cond_1b

    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_1b
    return v0
.end method

.method public static isFolderDeviceOrPadNavFragment(Landroid/content/Context;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isFolderDeviceInnerDisplay(Landroid/content/Context;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_14

    .line 11
    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 13
    if-eqz v1, :cond_15

    .line 15
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->displayNavigationFragment(Landroid/content/Context;)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_15

    .line 21
    :cond_14
    const/4 v0, 0x1

    .line 22
    :cond_15
    return v0
.end method

.method public static isInMirrorMode(Landroid/content/Context;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 7
    if-eqz v1, :cond_a

    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_a
    instance-of v1, p0, Landroid/content/ContextWrapper;

    .line 13
    if-eqz v1, :cond_17

    .line 15
    check-cast p0, Landroid/content/ContextWrapper;

    .line 17
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 20
    move-result-object p0

    .line 21
    instance-of p0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 23
    return p0

    .line 24
    :cond_17
    return v0
.end method

.method public static isLargeScreen()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->getGlobalNavigator()Lmiuix/navigator/Navigator;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->getGlobalNavigator()Lmiuix/navigator/Navigator;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 16
    move-result-object v0

    .line 17
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 19
    if-ne v0, v2, :cond_15

    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_15
    return v1
.end method

.method public static isLargeScreenDevice(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->getGlobalNavigator()Lmiuix/navigator/Navigator;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isFolderDeviceOrPadNavFragment(Landroid/content/Context;)Z

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    invoke-static {}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->getGlobalNavigator()Lmiuix/navigator/Navigator;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 19
    move-result-object p0

    .line 20
    sget-object v0, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 22
    if-ne p0, v0, :cond_19

    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p0, 0x0

    .line 27
    :goto_1a
    return p0
.end method

.method public static isLargeScreenDeviceAndLandscapeDisplay(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-static {p0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->isLandscape(Landroid/content/Context;)Z

    .line 10
    move-result p0

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

.method public static isNeedTriggerDrag()Ljava/lang/Boolean;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 19
    and-int/lit16 v0, v0, 0x2000

    .line 21
    if-nez v0, :cond_2b

    .line 23
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isPortHalfLayout()Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2b

    .line 29
    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_Layout()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2b

    .line 35
    invoke-static {}, Lcom/android/fileexplorer/util/ActivityCompat;->isInFreeFormWindow()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_29

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    const/4 v0, 0x0

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    .line 45
    :goto_2c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public static isNightMode()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 15
    and-int/lit8 v0, v0, 0x30

    .line 17
    const/16 v1, 0x20

    .line 19
    if-ne v0, v1, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    return v0
.end method

.method public static isPad()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    return v0
.end method

.method public static isPadAndLandscapeDisplay(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-static {p0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->isLandscape(Landroid/content/Context;)Z

    .line 10
    move-result p0

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

.method public static isPhone()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_e

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public static isRestrictGetIMEI()Z
    .registers 2

    .line 1
    const-string v0, "ro.miui.restrict_imei"

    .line 3
    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "1"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static isSupportCancelTransferFile(Landroid/content/Context;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object p0

    .line 9
    const-string v1, "com.xiaomi.mirror"

    .line 11
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 14
    move-result-object p0

    .line 15
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_16

    .line 17
    const/16 v1, 0x4e29

    .line 19
    if-le p0, v1, :cond_15

    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_15
    return v0

    .line 23
    :catch_16
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    return v0
.end method
