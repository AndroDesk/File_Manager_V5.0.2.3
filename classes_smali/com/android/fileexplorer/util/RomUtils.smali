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

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isShowMIUILiteLayout()Z

    move-result v0

    sput-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeMiDriveTab()Z
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isNotSupportMidrive()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isMidriveClosed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isAllMiuiLite()Z
    .registers 1

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result v0

    return v0
.end method

.method private static isMidriveClosed()Z
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getExtendOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isMiuiLiteV2()Z
    .registers 1

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v0, :cond_19

    :cond_a
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isMiuiMiddle()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method public static isMiuiMiddle()Z
    .registers 1

    invoke-static {}, Lmiuix/device/DeviceUtils;->isSupportPrune()Z

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    move-result v0

    return v0
.end method

.method public static isMiuiSystem()Z
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/util/RomUtils;->sIsMiuiSystem:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    const-string v0, "ro.miui.ui.version.code"

    const-string v1, ""

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/util/RomUtils;->sIsMiuiSystem:Ljava/lang/Boolean;

    :cond_18
    sget-object v0, Lcom/android/fileexplorer/util/RomUtils;->sIsMiuiSystem:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isNotSupportMidrive()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private static isShowMIUILiteLayout()Z
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isAllMiuiLite()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isMiuiMiddle()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
