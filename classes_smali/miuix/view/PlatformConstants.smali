.class public Lmiuix/view/PlatformConstants;
.super Ljava/lang/Object;
.source "PlatformConstants.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final VERSION:I

.field public static romHapticVersion:D = 1.0


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const-string v0, "MIUI Haptic Implementation not found."

    const-string v1, "miui.util.HapticFeedbackUtil"

    const-string v2, "HapticCompat"

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "miui.view.MiuiHapticFeedbackConstants"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "isSupportLinearMotorVibrate"

    new-array v8, v3, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_30

    const-string v5, "FLAG_MIUI_HAPTIC_VERSION"

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_2e

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    goto :goto_4b

    :cond_2e
    move v5, v4

    goto :goto_4b

    :cond_30
    invoke-static {}, Lmiuix/view/PlatformConstants;->checkVersion()I

    move-result v5
    :try_end_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_34} :catch_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_34} :catch_44
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_34} :catch_42
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_34} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_34} :catch_35

    goto :goto_4b

    :catch_35
    move-exception v5

    goto :goto_38

    :catch_37
    move-exception v5

    :goto_38
    const-string v6, "error when getting FLAG_MIUI_HAPTIC_VERSION."

    invoke-static {v2, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lmiuix/view/PlatformConstants;->checkVersion()I

    move-result v5

    goto :goto_4b

    :catch_42
    move-exception v5

    goto :goto_47

    :catch_44
    move-exception v5

    goto :goto_47

    :catch_46
    move-exception v5

    :goto_47
    invoke-static {v2, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, -0x1

    :goto_4b
    sput v5, Lmiuix/view/PlatformConstants;->VERSION:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "Platform version: %d."

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5e
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getCurVersion"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sput-wide v3, Lmiuix/view/PlatformConstants;->romHapticVersion:D
    :try_end_78
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5e .. :try_end_78} :catch_87
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5e .. :try_end_78} :catch_85
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5e .. :try_end_78} :catch_7f
    .catch Ljava/lang/IllegalAccessException; {:try_start_5e .. :try_end_78} :catch_79

    goto :goto_8b

    :catch_79
    const-string v0, "have no access to the definition of getCurVersion()"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :catch_7f
    const-string v0, "method getCurVersion() called using Reflection failed"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :catch_85
    move-exception v1

    goto :goto_88

    :catch_87
    move-exception v1

    :goto_88
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8b
    const-string v0, "Rom haptic version: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v3, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVersion()I
    .registers 1

    const v0, 0x1000000f

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    return v0

    :cond_b
    const v0, 0x1000000e

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x4

    return v0

    :cond_16
    const v0, 0x1000000d

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x3

    return v0

    :cond_21
    const v0, 0x1000000c

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x2

    return v0

    :cond_2c
    const v0, 0x10000009

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    return v0

    :cond_37
    const/4 v0, 0x0

    return v0
.end method
