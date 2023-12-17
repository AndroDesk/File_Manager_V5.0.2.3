.class public Lmiuix/view/HapticCompat;
.super Ljava/lang/Object;
.source "HapticCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/view/HapticCompat$HapticVersion;,
        Lmiuix/view/HapticCompat$WeakReferenceHandler;
    }
.end annotation


# static fields
.field public static CURRENT_HAPTIC_VERSION:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "HapticCompat"

.field private static sProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/view/HapticFeedbackProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSingleThread:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "sys.haptic.version"

    .line 3
    const-string v1, "1.0"

    .line 5
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lmiuix/view/HapticCompat;->CURRENT_HAPTIC_VERSION:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sput-object v0, Lmiuix/view/HapticCompat;->sProviders:Ljava/util/List;

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lmiuix/view/HapticCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    .line 24
    const-string v0, "miuix.view.LinearVibrator"

    .line 26
    const-string v1, "miuix.view.ExtendedVibrator"

    .line 28
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lmiuix/view/HapticCompat;->loadProviders([Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkHapticVersion1FeedBackConstant(I)Z
    .registers 4

    .line 1
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_START:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p0, v0, :cond_b

    .line 6
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_END:I

    .line 8
    if-le p0, v2, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    return v1

    .line 12
    :cond_b
    :goto_b
    const/4 p0, 0x2

    .line 13
    new-array p0, p0, [Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object v0, p0, v2

    .line 22
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_END:I

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 28
    aput-object v0, p0, v1

    .line 30
    const-string v0, "Illegal haptic version 1 feedback constant, should be in range [0x%08x..0x%08x]"

    .line 32
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    const-string v0, "HapticCompat"

    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v2
.end method

.method private static checkHapticVersion2FeedBackConstant(I)Z
    .registers 4

    .line 1
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_START:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p0, v0, :cond_b

    .line 6
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_END:I

    .line 8
    if-le p0, v2, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    return v1

    .line 12
    :cond_b
    :goto_b
    const/4 p0, 0x2

    .line 13
    new-array p0, p0, [Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object v0, p0, v2

    .line 22
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_END:I

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 28
    aput-object v0, p0, v1

    .line 30
    const-string v0, "Illegal haptic version 2 feedback constant, should be in range [0x%08x..0x%08x]"

    .line 32
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    const-string v0, "HapticCompat"

    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v2
.end method

.method public static doesSupportHaptic(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lmiuix/view/HapticCompat;->CURRENT_HAPTIC_VERSION:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static varargs loadProviders([Ljava/lang/String;)V
    .registers 8

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_39

    .line 6
    aget-object v3, p0, v2

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v5, "loading provider: "

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v4

    .line 25
    const-string v5, "HapticCompat"

    .line 27
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v4, 0x1

    .line 31
    :try_start_1e
    const-class v6, Lmiuix/view/HapticCompat;

    .line 33
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 36
    move-result-object v6

    .line 37
    invoke-static {v3, v4, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_27} :catch_28

    .line 40
    goto :goto_36

    .line 41
    :catch_28
    move-exception v6

    .line 42
    new-array v4, v4, [Ljava/lang/Object;

    .line 44
    aput-object v3, v4, v1

    .line 46
    const-string v3, "load provider %s failed."

    .line 48
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    invoke-static {v5, v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :goto_36
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_3

    .line 58
    :cond_39
    return-void
.end method

.method public static obtainFeedBack(I)I
    .registers 4

    .line 1
    sget-object v0, Lmiuix/view/HapticCompat;->sProviders:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1d

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/view/HapticFeedbackProvider;

    .line 19
    instance-of v2, v1, Lmiuix/view/LinearVibrator;

    .line 21
    if-eqz v2, :cond_6

    .line 23
    check-cast v1, Lmiuix/view/LinearVibrator;

    .line 25
    invoke-virtual {v1, p0}, Lmiuix/view/LinearVibrator;->obtainFeedBack(I)I

    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1d
    const/4 p0, -0x1

    .line 31
    return p0
.end method

.method public static performHapticFeedback(Landroid/view/View;I)Z
    .registers 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "HapticCompat"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string p0, "performHapticFeedback: view is null!"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    const/high16 v2, 0x10000000

    const/4 v3, 0x1

    if-ge p1, v2, :cond_26

    new-array v2, v3, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "perform haptic: 0x%08x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result p0

    return p0

    .line 4
    :cond_26
    sget v4, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_END:I

    if-le p1, v4, :cond_43

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "illegal feedback constant, should be in range [0x%08x..0x%08x]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_43
    sget-object v0, Lmiuix/view/HapticCompat;->sProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/view/HapticFeedbackProvider;

    .line 7
    invoke-interface {v2, p0, p1}, Lmiuix/view/HapticFeedbackProvider;->performHapticFeedback(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_49

    return v3

    :cond_5c
    return v1
.end method

.method public static performHapticFeedback(Landroid/view/View;II)Z
    .registers 5

    const-string v0, "2.0"

    .line 8
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 9
    invoke-static {p1}, Lmiuix/view/HapticCompat;->checkHapticVersion2FeedBackConstant(I)Z

    move-result p2

    if-nez p2, :cond_10

    return v1

    .line 10
    :cond_10
    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_15
    const-string p1, "1.0"

    .line 11
    invoke-static {p1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 12
    invoke-static {p2}, Lmiuix/view/HapticCompat;->checkHapticVersion1FeedBackConstant(I)Z

    move-result p1

    if-nez p1, :cond_24

    return v1

    .line 13
    :cond_24
    invoke-static {p0, p2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_29
    const-string p0, "Unexpected haptic version: "

    .line 14
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 15
    sget-object p1, Lmiuix/view/HapticCompat;->CURRENT_HAPTIC_VERSION:Ljava/lang/String;

    const-string p2, "HapticCompat"

    .line 16
    invoke-static {p0, p1, p2}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static performHapticFeedbackAsync(Landroid/view/View;I)V
    .registers 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
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

    .line 2
    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    goto :goto_1d

    .line 3
    :cond_13
    sget-object v0, Lmiuix/view/HapticCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lmiuix/view/HapticCompat$WeakReferenceHandler;

    invoke-direct {v1, p0, p1}, Lmiuix/view/HapticCompat$WeakReferenceHandler;-><init>(Landroid/view/View;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1d
    return-void
.end method

.method public static performHapticFeedbackAsync(Landroid/view/View;II)V
    .registers 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "2.0"

    .line 4
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5
    invoke-static {p1}, Lmiuix/view/HapticCompat;->checkHapticVersion2FeedBackConstant(I)Z

    move-result p2

    if-nez p2, :cond_f

    return-void

    .line 6
    :cond_f
    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    return-void

    :cond_13
    const-string p1, "1.0"

    .line 7
    invoke-static {p1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 8
    invoke-static {p2}, Lmiuix/view/HapticCompat;->checkHapticVersion1FeedBackConstant(I)Z

    move-result p1

    if-nez p1, :cond_22

    return-void

    .line 9
    :cond_22
    invoke-static {p0, p2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    return-void

    :cond_26
    const-string p0, "Unexpected haptic version: "

    .line 10
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 11
    sget-object p1, Lmiuix/view/HapticCompat;->CURRENT_HAPTIC_VERSION:Ljava/lang/String;

    const-string p2, "HapticCompat"

    .line 12
    invoke-static {p0, p1, p2}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerProvider(Lmiuix/view/HapticFeedbackProvider;)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sget-object v0, Lmiuix/view/HapticCompat;->sProviders:Ljava/util/List;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public static supportLinearMotor(I)Z
    .registers 6

    .line 1
    const-string v0, "HapticCompat"

    .line 3
    const/high16 v1, 0x10000000

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ge p0, v1, :cond_1a

    .line 9
    new-array v1, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p0

    .line 15
    aput-object p0, v1, v3

    .line 17
    const-string p0, "perform haptic: 0x%08x"

    .line 19
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return v3

    .line 27
    :cond_1a
    sget v4, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_END:I

    .line 29
    if-le p0, v4, :cond_37

    .line 31
    const/4 p0, 0x2

    .line 32
    new-array p0, p0, [Ljava/lang/Object;

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v1

    .line 38
    aput-object v1, p0, v3

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v1

    .line 44
    aput-object v1, p0, v2

    .line 46
    const-string v1, "illegal feedback constant, should be in range [0x%08x..0x%08x]"

    .line 48
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v3

    .line 56
    :cond_37
    sget-object v0, Lmiuix/view/HapticCompat;->sProviders:Ljava/util/List;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v0

    .line 62
    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_56

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lmiuix/view/HapticFeedbackProvider;

    .line 74
    instance-of v4, v1, Lmiuix/view/LinearVibrator;

    .line 76
    if-eqz v4, :cond_3d

    .line 78
    check-cast v1, Lmiuix/view/LinearVibrator;

    .line 80
    invoke-virtual {v1, p0}, Lmiuix/view/LinearVibrator;->supportLinearMotor(I)Z

    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3d

    .line 86
    return v2

    .line 87
    :cond_56
    return v3
.end method
