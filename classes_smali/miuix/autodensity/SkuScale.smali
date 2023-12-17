.class public Lmiuix/autodensity/SkuScale;
.super Ljava/lang/Object;
.source "SkuScale.java"


# static fields
.field private static final PRIMARY_SCALE:Ljava/lang/String;

.field private static final SECONDARY_SCALE:Ljava/lang/String;

.field private static sPrimaryScaleValue:F

.field private static sSecondaryScaleValue:F


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "ro.miui.density.primaryscale"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lmiuix/autodensity/SkuScale;->PRIMARY_SCALE:Ljava/lang/String;

    .line 10
    const-string v2, "ro.miui.density.secondaryscale"

    .line 12
    invoke-static {v2, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lmiuix/autodensity/SkuScale;->SECONDARY_SCALE:Ljava/lang/String;

    .line 18
    const/4 v2, 0x0

    .line 19
    sput v2, Lmiuix/autodensity/SkuScale;->sPrimaryScaleValue:F

    .line 21
    sput v2, Lmiuix/autodensity/SkuScale;->sSecondaryScaleValue:F

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_22

    .line 29
    invoke-static {v0}, Lmiuix/autodensity/SkuScale;->parseSkuScale(Ljava/lang/String;)F

    .line 32
    move-result v0

    .line 33
    sput v0, Lmiuix/autodensity/SkuScale;->sPrimaryScaleValue:F

    .line 35
    :cond_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2e

    .line 41
    invoke-static {v1}, Lmiuix/autodensity/SkuScale;->parseSkuScale(Ljava/lang/String;)F

    .line 44
    move-result v0

    .line 45
    sput v0, Lmiuix/autodensity/SkuScale;->sSecondaryScaleValue:F

    .line 47
    :cond_2e
    sget v0, Lmiuix/autodensity/SkuScale;->sSecondaryScaleValue:F

    .line 49
    cmpl-float v0, v0, v2

    .line 51
    if-nez v0, :cond_38

    .line 53
    sget v0, Lmiuix/autodensity/SkuScale;->sPrimaryScaleValue:F

    .line 55
    sput v0, Lmiuix/autodensity/SkuScale;->sSecondaryScaleValue:F

    .line 57
    :cond_38
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSkuScale(Landroid/content/Context;)F
    .registers 3

    .line 1
    sget v0, Lmiuix/autodensity/SkuScale;->sPrimaryScaleValue:F

    .line 3
    sget-boolean v1, Lmiuix/os/Build;->IS_FOLDABLE:Z

    .line 5
    if-eqz v1, :cond_10

    .line 7
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenShortEdge(Landroid/content/Context;)I

    .line 10
    move-result p0

    .line 11
    const/16 v1, 0x29e

    .line 13
    if-le p0, v1, :cond_10

    .line 15
    sget v0, Lmiuix/autodensity/SkuScale;->sSecondaryScaleValue:F

    .line 17
    :cond_10
    return v0
.end method

.method public static hasSkuScale()Z
    .registers 2

    .line 1
    sget v0, Lmiuix/autodensity/SkuScale;->sPrimaryScaleValue:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-eqz v0, :cond_9

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method private static parseSkuScale(Ljava/lang/String;)F
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 4
    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    goto :goto_e

    .line 6
    :catch_5
    move-exception p0

    .line 7
    const-string v0, "AutoDensity"

    .line 9
    const-string v1, "catch error: sku scale is not a number"

    .line 11
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    const/4 p0, 0x0

    .line 15
    :goto_e
    return p0
.end method
