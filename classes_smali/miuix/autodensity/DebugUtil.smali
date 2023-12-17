.class public Lmiuix/autodensity/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AutoDensity"

.field private static sAutoDensityDebug:Ljava/lang/String;

.field private static volatile sDebugAutoDensityScale:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoDensityScaleInDebugMode()F
    .registers 1

    .line 1
    sget v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    .line 3
    return v0
.end method

.method public static initAutoDensityDebugEnable()V
    .registers 3

    .line 1
    const-string v0, "AutoDensity"

    .line 3
    :try_start_2
    const-string v1, "log.tag.autodensity.debug.enable"

    .line 5
    invoke-static {v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lmiuix/autodensity/DebugUtil;->sAutoDensityDebug:Ljava/lang/String;

    .line 11
    if-nez v1, :cond_17

    .line 13
    const-string v1, "0"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    .line 15
    goto :goto_17

    .line 16
    :catch_f
    move-exception v1

    .line 17
    const-string v2, "can not access property log.tag.autodensity.enable, undebugable"

    .line 19
    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    const-string v1, ""

    .line 24
    :cond_17
    :goto_17
    const-string v2, "autodensity debugEnable = "

    .line 26
    invoke-static {v2, v1, v0}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :try_start_1c
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 32
    move-result v0

    .line 33
    sput v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_22} :catch_23

    .line 35
    goto :goto_26

    .line 36
    :catch_23
    const/4 v0, 0x0

    .line 37
    sput v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    .line 39
    :goto_26
    return-void
.end method

.method public static isDisableAutoDensityInDebugMode()Z
    .registers 2

    .line 1
    sget v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, v0, v1

    .line 6
    if-gez v0, :cond_9

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

.method public static printDensityLog(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-ltz v0, :cond_14

    .line 8
    sget-object v0, Lmiuix/autodensity/DebugUtil;->sAutoDensityDebug:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_14

    .line 16
    const-string v0, "AutoDensity"

    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_14
    return-void
.end method
