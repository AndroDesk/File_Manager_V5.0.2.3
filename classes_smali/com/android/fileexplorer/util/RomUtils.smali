.class public Lcom/android/fileexplorer/util/RomUtils;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field public static ANDROID_T:I = 0xd

.field public static IS_SHOW_MIUI_LITE_LAYOUT:Z

.field private static sIsMiuiSystem:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isShowMIUILiteLayout()Z

    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeMiDriveTab()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isNotSupportMidrive()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isMidriveClosed()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 17
    :goto_10
    return v0
.end method

.method public static isAllMiuiLite()Z
    .registers 1

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static isMidriveClosed()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getExtendOpen()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public static isMiuiLiteV2()Z
    .registers 1

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 9
    if-eqz v0, :cond_19

    .line 11
    :cond_a
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_19

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isMiuiMiddle()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_17

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 27
    :goto_1a
    return v0
.end method

.method public static isMiuiMiddle()Z
    .registers 1

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->isSupportPrune()Z

    .line 4
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static isMiuiSystem()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/RomUtils;->sIsMiuiSystem:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_18

    .line 5
    const-string v0, "ro.miui.ui.version.code"

    .line 7
    const-string v1, ""

    .line 9
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    xor-int/lit8 v0, v0, 0x1

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/fileexplorer/util/RomUtils;->sIsMiuiSystem:Ljava/lang/Boolean;

    .line 25
    :cond_18
    sget-object v0, Lcom/android/fileexplorer/util/RomUtils;->sIsMiuiSystem:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public static isNotSupportMidrive()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_d

    .line 7
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method private static isShowMIUILiteLayout()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isAllMiuiLite()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isMiuiMiddle()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 17
    :goto_10
    return v0
.end method
