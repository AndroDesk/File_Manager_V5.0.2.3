.class public Lmiuix/core/util/RomUtils;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field private static MIUI_VERSION_CODE:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getMiuiVersion()I
    .registers 2

    .line 1
    sget v0, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_b

    .line 6
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersionNoCache()I

    .line 9
    move-result v0

    .line 10
    sput v0, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    .line 12
    :cond_b
    sget v0, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    .line 14
    return v0
.end method

.method public static getMiuiVersionNoCache()I
    .registers 2

    .line 1
    const-string v0, "ro.miui.ui.version.code"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static isInternationalBuild()Z
    .registers 1

    .line 1
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 3
    return v0
.end method

.method public static isMiproFontSupported()Z
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/core/util/RomUtils;->isInternationalBuild()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    .line 10
    move-result v0

    .line 11
    const/16 v1, 0xe

    .line 13
    if-ge v0, v1, :cond_10

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_10
    invoke-static {}, Lmiuix/core/util/RomUtils;->isMiuiXISdkSupported()Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public static isMiuiRom()Z
    .registers 1

    .line 1
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_8

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

.method public static isMiuiXIIISdkSupported()Z
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xd

    .line 7
    if-lt v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public static isMiuiXIISdkSupported()Z
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 7
    if-lt v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public static isMiuiXIIV2SdkSupported()Z
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xb

    .line 7
    if-lt v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public static isMiuiXISdkSupported()Z
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 7
    if-lt v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public static isMiuiXIVSdkSupported()Z
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xe

    .line 7
    if-lt v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public static isMiuiXSdkSupported()Z
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 7
    if-lt v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public static isMiuiXVSdkSupported()Z
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xf

    .line 7
    if-lt v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method
