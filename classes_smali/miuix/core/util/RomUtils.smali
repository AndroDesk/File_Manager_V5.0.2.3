.class public Lmiuix/core/util/RomUtils;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field private static MIUI_VERSION_CODE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiuiVersion()I
    .registers 2

    sget v0, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersionNoCache()I

    move-result v0

    sput v0, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    :cond_b
    sget v0, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    return v0
.end method

.method public static getMiuiVersionNoCache()I
    .registers 2

    const-string v0, "ro.miui.ui.version.code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isInternationalBuild()Z
    .registers 1

    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public static isMiproFontSupported()Z
    .registers 2

    invoke-static {}, Lmiuix/core/util/RomUtils;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    invoke-static {}, Lmiuix/core/util/RomUtils;->isMiuiXISdkSupported()Z

    move-result v0

    return v0
.end method

.method public static isMiuiRom()Z
    .registers 1

    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isMiuiXIIISdkSupported()Z
    .registers 2

    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0xd

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isMiuiXIISdkSupported()Z
    .registers 2

    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isMiuiXIIV2SdkSupported()Z
    .registers 2

    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isMiuiXISdkSupported()Z
    .registers 2

    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isMiuiXIVSdkSupported()Z
    .registers 2

    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isMiuiXSdkSupported()Z
    .registers 2

    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isMiuiXVSdkSupported()Z
    .registers 2

    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
