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

    .line 1
    const-string v0, "MIUI Haptic Implementation not found."

    .line 3
    const-string v1, "miui.util.HapticFeedbackUtil"

    .line 5
    const-string v2, "HapticCompat"

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    :try_start_8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    move-result-object v5

    .line 13
    const-string v6, "miui.view.MiuiHapticFeedbackConstants"

    .line 15
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    move-result-object v6

    .line 19
    const-string v7, "isSupportLinearMotorVibrate"

    .line 21
    new-array v8, v3, [Ljava/lang/Class;

    .line 23
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 25
    aput-object v9, v8, v4

    .line 27
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object v5

    .line 31
    if-eqz v5, :cond_30

    .line 33
    const-string v5, "FLAG_MIUI_HAPTIC_VERSION"

    .line 35
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 38
    move-result-object v5

    .line 39
    if-eqz v5, :cond_2e

    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 45
    move-result v5

    .line 46
    goto :goto_4b

    .line 47
    :cond_2e
    move v5, v4

    .line 48
    goto :goto_4b

    .line 49
    :cond_30
    invoke-static {}, Lmiuix/view/PlatformConstants;->checkVersion()I

    .line 52
    move-result v5
    :try_end_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_34} :catch_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_34} :catch_44
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_34} :catch_42
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_34} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_34} :catch_35

    .line 53
    goto :goto_4b

    .line 54
    :catch_35
    move-exception v5

    .line 55
    goto :goto_38

    .line 56
    :catch_37
    move-exception v5

    .line 57
    :goto_38
    const-string v6, "error when getting FLAG_MIUI_HAPTIC_VERSION."

    .line 59
    invoke-static {v2, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    invoke-static {}, Lmiuix/view/PlatformConstants;->checkVersion()I

    .line 65
    move-result v5

    .line 66
    goto :goto_4b

    .line 67
    :catch_42
    move-exception v5

    .line 68
    goto :goto_47

    .line 69
    :catch_44
    move-exception v5

    .line 70
    goto :goto_47

    .line 71
    :catch_46
    move-exception v5

    .line 72
    :goto_47
    invoke-static {v2, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    const/4 v5, -0x1

    .line 76
    :goto_4b
    sput v5, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 78
    new-array v3, v3, [Ljava/lang/Object;

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v5

    .line 84
    aput-object v5, v3, v4

    .line 86
    const-string v5, "Platform version: %d."

    .line 88
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :try_start_5e
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 98
    move-result-object v1

    .line 99
    const-string v3, "getCurVersion"

    .line 101
    new-array v5, v4, [Ljava/lang/Class;

    .line 103
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    move-result-object v3

    .line 107
    new-array v4, v4, [Ljava/lang/Object;

    .line 109
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Ljava/lang/Double;

    .line 115
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 118
    move-result-wide v3

    .line 119
    sput-wide v3, Lmiuix/view/PlatformConstants;->romHapticVersion:D
    :try_end_78
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5e .. :try_end_78} :catch_87
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5e .. :try_end_78} :catch_85
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5e .. :try_end_78} :catch_7f
    .catch Ljava/lang/IllegalAccessException; {:try_start_5e .. :try_end_78} :catch_79

    .line 121
    goto :goto_8b

    .line 122
    :catch_79
    const-string v0, "have no access to the definition of getCurVersion()"

    .line 124
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    goto :goto_8b

    .line 128
    :catch_7f
    const-string v0, "method getCurVersion() called using Reflection failed"

    .line 130
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    goto :goto_8b

    .line 134
    :catch_85
    move-exception v1

    .line 135
    goto :goto_88

    .line 136
    :catch_87
    move-exception v1

    .line 137
    :goto_88
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    :goto_8b
    const-string v0, "Rom haptic version: "

    .line 142
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    move-result-object v0

    .line 146
    sget-wide v3, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    .line 148
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVersion()I
    .registers 1

    .line 1
    const v0, 0x1000000f

    .line 4
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_b

    .line 10
    const/4 v0, 0x5

    .line 11
    return v0

    .line 12
    :cond_b
    const v0, 0x1000000e

    .line 15
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const/4 v0, 0x4

    .line 22
    return v0

    .line 23
    :cond_16
    const v0, 0x1000000d

    .line 26
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_21

    .line 32
    const/4 v0, 0x3

    .line 33
    return v0

    .line 34
    :cond_21
    const v0, 0x1000000c

    .line 37
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2c

    .line 43
    const/4 v0, 0x2

    .line 44
    return v0

    .line 45
    :cond_2c
    const v0, 0x10000009

    .line 48
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_37

    .line 54
    const/4 v0, 0x1

    .line 55
    return v0

    .line 56
    :cond_37
    const/4 v0, 0x0

    .line 57
    return v0
.end method
