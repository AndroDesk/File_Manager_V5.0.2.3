.class public Lmiuix/autodensity/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AutoDensity"

.field private static sAutoDensityDebug:Ljava/lang/String;

.field private static volatile sDebugAutoDensityScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoDensityScaleInDebugMode()F
    .registers 1

    sget v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    return v0
.end method

.method public static initAutoDensityDebugEnable()V
    .registers 3

    const-string v0, "AutoDensity"

    :try_start_2
    const-string v1, "log.tag.autodensity.debug.enable"

    invoke-static {v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiuix/autodensity/DebugUtil;->sAutoDensityDebug:Ljava/lang/String;

    if-nez v1, :cond_17

    const-string v1, "0"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception v1

    const-string v2, "can not access property log.tag.autodensity.enable, undebugable"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""

    :cond_17
    :goto_17
    const-string v2, "autodensity debugEnable = "

    invoke-static {v2, v1, v0}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1c
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_26

    :catch_23
    const/4 v0, 0x0

    sput v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    :goto_26
    return-void
.end method

.method public static isDisableAutoDensityInDebugMode()Z
    .registers 2

    sget v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static printDensityLog(Ljava/lang/String;)V
    .registers 3

    sget v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_14

    sget-object v0, Lmiuix/autodensity/DebugUtil;->sAutoDensityDebug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "AutoDensity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method
