.class public Lmiuix/util/HapticFeedbackCompat;
.super Ljava/lang/Object;
.source "HapticFeedbackCompat.java"


# static fields
.field private static final PHYSICAL_EMULATION_REASON:Ljava/lang/String; = "USAGE_PHYSICAL_EMULATION"

.field private static final RTP_MIN_VALUE:I = 0x0

.field private static final RTP_V1_MAX_VALUE:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "HapticFeedbackCompat"

.field private static mAvailable:Z

.field private static mCanCheckExtHaptic:Z

.field private static mCanStop:Z

.field private static mExtHapticAlways:Z

.field private static mIsSupportExtHapticWithReason:Z

.field private static mIsSupportHapticWithReason:Z

.field private static mPerformExtHapticFeedbackThreeParamsMethodExist:Z

.field private static mPerformExtHapticFeedbackTwoParamsMethodExist:Z

.field private static mPerformHapticFeedbackFourParamsMethod1Exist:Z

.field private static mPerformHapticFeedbackFourParamsMethod2Exist:Z

.field private static final sSingleThread:Ljava/util/concurrent/Executor;


# instance fields
.field private hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    const-class v0, Ljava/lang/String;

    const-string v1, "HapticFeedbackCompat"

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lmiuix/util/HapticFeedbackCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    sget v2, Lmiuix/view/PlatformConstants;->VERSION:I

    const-string v3, "performHapticFeedback"

    const-string v4, "performExtHapticFeedback"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v2, v8, :cond_95

    :try_start_16
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v2

    sput-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1d

    goto :goto_25

    :catchall_1d
    move-exception v2

    const-string v9, "MIUI Haptic Implementation is not available"

    invoke-static {v1, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    :goto_25
    sget-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-eqz v2, :cond_95

    :try_start_29
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    aput-object v0, v9, v6

    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_3d

    goto :goto_45

    :catchall_3d
    move-exception v2

    const-string v9, "Not support haptic with reason"

    invoke-static {v1, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    :goto_45
    :try_start_45
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    const-string v9, "isSupportExtHapticFeedback"

    new-array v10, v8, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_55

    goto :goto_57

    :catchall_55
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    :goto_57
    :try_start_57
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    new-array v9, v6, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    invoke-virtual {v2, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z
    :try_end_68
    .catchall {:try_start_57 .. :try_end_68} :catchall_69

    goto :goto_6b

    :catchall_69
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    :goto_6b
    :try_start_6b
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    const-string v9, "stop"

    new-array v10, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_77

    goto :goto_79

    :catchall_77
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z

    :goto_79
    :try_start_79
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    aput-object v0, v9, v6

    invoke-virtual {v2, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z
    :try_end_8c
    .catchall {:try_start_79 .. :try_end_8c} :catchall_8d

    goto :goto_95

    :catchall_8d
    move-exception v2

    const-string v9, "Not support ext haptic with reason"

    invoke-static {v1, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z

    :cond_95
    :goto_95
    sget-wide v1, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v9, 0x3ff3333333333333L  # 1.2

    cmpl-double v1, v1, v9

    if-ltz v1, :cond_fb

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_fb

    :try_start_a6
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    new-array v2, v6, [Ljava/lang/Class;

    const-class v9, Landroid/os/VibrationAttributes;

    aput-object v9, v2, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v2, v8

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mPerformExtHapticFeedbackTwoParamsMethodExist:Z
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b7} :catch_b7

    :catch_b7
    :try_start_b7
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v9, Landroid/os/VibrationAttributes;

    aput-object v9, v2, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v2, v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v2, v6

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mPerformExtHapticFeedbackThreeParamsMethodExist:Z
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_cc} :catch_cc

    :catch_cc
    const/4 v1, 0x4

    :try_start_cd
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    new-array v4, v1, [Ljava/lang/Class;

    const-class v9, Landroid/os/VibrationAttributes;

    aput-object v9, v4, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v4, v8

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v4, v6

    aput-object v9, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mPerformHapticFeedbackFourParamsMethod1Exist:Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_e4} :catch_e4

    :catch_e4
    :try_start_e4
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Landroid/os/VibrationAttributes;

    aput-object v4, v1, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v8

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v6

    aput-object v0, v1, v5

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mPerformHapticFeedbackFourParamsMethod2Exist:Z
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_fb} :catch_fb

    :catch_fb
    :cond_fb
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const-string v1, "HapticFeedbackCompat"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_10

    const-string p1, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-nez v0, :cond_1a

    const-string p1, "linear motor is not supported in this platform."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method


# virtual methods
.method public isSupportExtHapticFeedback(I)Z
    .registers 5

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    sget-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    if-eqz v2, :cond_e

    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_e
    if-ltz p1, :cond_15

    const/16 v0, 0xa0

    if-gt p1, v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public performEmulationExtHaptic(ID)Z
    .registers 5

    const-string v0, "USAGE_PHYSICAL_EMULATION"

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(IDLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public performEmulationHaptic(ID)Z
    .registers 5

    const-string v0, "USAGE_PHYSICAL_EMULATION"

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IDLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public performExtHapticFeedback(I)Z
    .registers 3

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public performExtHapticFeedback(IDLjava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_d

    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IDLjava/lang/String;)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public performExtHapticFeedback(II)Z
    .registers 8

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_19

    sget-wide v1, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v3, 0x3ff199999999999aL  # 1.1

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_14

    invoke-virtual {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(II)Z

    move-result p1

    return p1

    :cond_14
    invoke-virtual {v0, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public performExtHapticFeedback(IIZ)Z
    .registers 8

    sget-wide v0, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v2, 0x3ff199999999999aL  # 1.1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_16

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IIZ)Z

    move-result p1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1

    :cond_16
    invoke-virtual {p0, p2, p3}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(IZ)Z

    move-result p1

    return p1
.end method

.method public performExtHapticFeedback(IZ)Z
    .registers 5

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_15

    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    if-eqz v1, :cond_10

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IZ)Z

    move-result p1

    return p1

    :cond_10
    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public performExtHapticFeedback(Landroid/net/Uri;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public performExtHapticFeedback(Landroid/net/Uri;Z)Z
    .registers 5

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_15

    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    if-eqz v1, :cond_10

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;Z)Z

    move-result p1

    return p1

    :cond_10
    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public performExtHapticFeedback(Landroid/os/VibrationAttributes;I)Z
    .registers 8

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_25

    :try_start_4
    sget-wide v1, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v3, 0x3ff3333333333333L  # 1.2

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_18

    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mPerformExtHapticFeedbackTwoParamsMethodExist:Z

    if-eqz v1, :cond_18

    invoke-virtual {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/os/VibrationAttributes;I)Z

    move-result p1

    return p1

    :cond_18
    invoke-virtual {v0, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    return p1

    :catch_1d
    move-exception p1

    const-string p2, "HapticFeedbackCompat"

    const-string v0, "Failed to perform ext haptic!"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method public performExtHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    sget-wide v1, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v3, 0x3ff3333333333333L  # 1.2

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1a

    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mPerformExtHapticFeedbackThreeParamsMethodExist:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v1, :cond_19

    invoke-virtual {v1, p1, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z

    move-result p1

    return p1

    :cond_19
    return v0

    :cond_1a
    invoke-virtual {p0, p2, p3}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(IZ)Z

    move-result p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    return p1

    :catch_1f
    move-exception p1

    const-string p2, "HapticFeedbackCompat"

    const-string p3, "Failed to perform ext haptic!"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public performHapticFeedback(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(Landroid/os/VibrationAttributes;I)Z

    move-result p1

    return p1
.end method

.method public performHapticFeedback(IDLjava/lang/String;)Z
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(Landroid/os/VibrationAttributes;IDLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public performHapticFeedback(II)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(Landroid/os/VibrationAttributes;II)Z

    move-result p1

    return p1
.end method

.method public performHapticFeedback(IIZ)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(Landroid/os/VibrationAttributes;IIZ)Z

    move-result p1

    return p1
.end method

.method public performHapticFeedback(IZ)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z

    move-result p1

    return p1
.end method

.method public performHapticFeedback(Landroid/os/VibrationAttributes;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z

    move-result p1

    return p1
.end method

.method public performHapticFeedback(Landroid/os/VibrationAttributes;IDLjava/lang/String;)Z
    .registers 13

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_37

    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    if-eqz v0, :cond_37

    invoke-static {p2}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result v3

    const/4 p2, -0x1

    if-eq v3, p2, :cond_37

    :try_start_f
    sget-wide v0, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v4, 0x3ff3333333333333L  # 1.2

    cmpl-double p2, v0, v4

    if-ltz p2, :cond_28

    sget-boolean p2, Lmiuix/util/HapticFeedbackCompat;->mPerformHapticFeedbackFourParamsMethod2Exist:Z

    if-eqz p2, :cond_28

    iget-object v1, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    move-object v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;IDLjava/lang/String;)Z

    move-result p1

    return p1

    :cond_28
    iget-object p1, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p1, v3, p3, p4, p5}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IDLjava/lang/String;)Z

    move-result p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2e} :catch_2f

    return p1

    :catch_2f
    move-exception p1

    const-string p2, "HapticFeedbackCompat"

    const-string p3, "Failed to perform haptic!"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_37
    const/4 p1, 0x0

    return p1
.end method

.method public performHapticFeedback(Landroid/os/VibrationAttributes;II)Z
    .registers 10

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    invoke-static {p2}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_31

    :try_start_c
    sget-wide v2, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v4, 0x3ff3333333333333L  # 1.2

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_22

    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mPerformHapticFeedbackFourParamsMethod1Exist:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1, p2, v1, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;IZI)Z

    move-result p1

    return p1

    :cond_22
    iget-object p1, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p1, p2, v1, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZI)Z

    move-result p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_28} :catch_29

    return p1

    :catch_29
    move-exception p1

    const-string p2, "HapticFeedbackCompat"

    const-string p3, "Failed to perform haptic!"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    return v1
.end method

.method public performHapticFeedback(Landroid/os/VibrationAttributes;IIZ)Z
    .registers 10

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_30

    invoke-static {p2}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    :try_start_b
    sget-wide v1, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v3, 0x3ff3333333333333L  # 1.2

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_21

    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mPerformHapticFeedbackFourParamsMethod1Exist:Z

    if-eqz v1, :cond_21

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1, p2, p4, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;IZI)Z

    move-result p1

    return p1

    :cond_21
    iget-object p1, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p1, v0, p4, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZI)Z

    move-result p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_28

    return p1

    :catch_28
    move-exception p1

    const-string p2, "HapticFeedbackCompat"

    const-string p3, "Failed to perform haptic!"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public performHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z
    .registers 8

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_30

    invoke-static {p2}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_30

    :try_start_b
    sget-wide v0, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v2, 0x3ff3333333333333L  # 1.2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_21

    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mPerformExtHapticFeedbackThreeParamsMethodExist:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z

    move-result p1

    return p1

    :cond_21
    iget-object p1, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p1, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_28

    return p1

    :catch_28
    move-exception p1

    const-string p2, "HapticFeedbackCompat"

    const-string p3, "Failed to perform haptic!"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public performHapticFeedbackAsync(I)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(I)Z

    goto :goto_1d

    :cond_13
    sget-object v0, Lmiuix/util/HapticFeedbackCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lmiuix/util/HapticFeedbackCompat$1;

    invoke-direct {v1, p0, p1}, Lmiuix/util/HapticFeedbackCompat$1;-><init>(Lmiuix/util/HapticFeedbackCompat;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1d
    return-void
.end method

.method public release()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->release()V

    :cond_7
    return-void
.end method

.method public stop()V
    .registers 3

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_f

    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->stop()V

    goto :goto_f

    :cond_c
    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->release()V

    :cond_f
    :goto_f
    return-void
.end method

.method public supportKeyboardIntensity()Z
    .registers 3

    const-string v0, "sys.haptic.intensityforkeyboard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public supportLinearMotor()Z
    .registers 2

    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    return v0
.end method

.method public supportLinearMotorWithReason()Z
    .registers 2

    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    return v0
.end method
