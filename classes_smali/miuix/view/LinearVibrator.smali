.class Lmiuix/view/LinearVibrator;
.super Ljava/lang/Object;
.source "LinearVibrator.java"

# interfaces
.implements Lmiuix/view/HapticFeedbackProvider;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearVibrator"


# instance fields
.field private final mIds:Landroidx/collection/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/g<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lmiuix/view/LinearVibrator;->initialize()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/g;

    invoke-direct {v0}, Landroidx/collection/g;-><init>()V

    iput-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    invoke-direct {p0}, Lmiuix/view/LinearVibrator;->buildIds()V

    return-void
.end method

.method private buildIds()V
    .registers 5

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    const/high16 v2, 0x10000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    const v2, 0x10000001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK:I

    const v2, 0x10000002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    const v2, 0x10000003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_HEAVY:I

    const v2, 0x10000004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    const v2, 0x10000005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_LIGHT:I

    const v2, 0x10000006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_LONG_PRESS:I

    const v2, 0x10000007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    const v2, 0x10000008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    const v2, 0x10000009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_91

    return-void

    :cond_91
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_PICK_UP:I

    const v3, 0x1000000a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    const v3, 0x1000000b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_TRIGGER_DRAWER:I

    const v3, 0x1000000c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    const/4 v1, 0x3

    if-ge v0, v1, :cond_bf

    return-void

    :cond_bf
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK_LIGHT:I

    const v3, 0x1000000d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    const/4 v1, 0x4

    if-ge v0, v1, :cond_d1

    return-void

    :cond_d1
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    const v3, 0x1000000e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    const/4 v1, 0x5

    if-ge v0, v1, :cond_e3

    return-void

    :cond_e3
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_SPATIAL:I

    const v2, 0x1000000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_TIME:I

    const v2, 0x10000010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_LARGE:I

    const v2, 0x10000011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    const v2, 0x10000012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    const v2, 0x10000013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    const v2, 0x10000014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    const v2, 0x10000015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_KEYBOARD:I

    const v2, 0x10000016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    const v2, 0x10000017

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    const v2, 0x10000018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private static initialize()V
    .registers 3

    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const-string v1, "LinearVibrator"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_d

    const-string v0, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    :try_start_d
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_12

    goto :goto_19

    :catchall_12
    move-exception v0

    const-string v2, "MIUI Haptic Implementation is not available"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_21

    const-string v0, "linear motor is not supported in this platform."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    new-instance v0, Lmiuix/view/LinearVibrator;

    invoke-direct {v0}, Lmiuix/view/LinearVibrator;-><init>()V

    invoke-static {v0}, Lmiuix/view/HapticCompat;->registerProvider(Lmiuix/view/HapticFeedbackProvider;)V

    const-string v0, "setup LinearVibrator success."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public obtainFeedBack(I)I
    .registers 3

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    invoke-virtual {v0, p1}, Landroidx/collection/g;->d(I)I

    move-result p1

    if-ltz p1, :cond_15

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    invoke-virtual {v0, p1}, Landroidx/collection/g;->h(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public performHapticFeedback(Landroid/view/View;I)Z
    .registers 8

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    invoke-virtual {v0, p2}, Landroidx/collection/g;->d(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "LinearVibrator"

    const/4 v4, 0x0

    if-gez v0, :cond_2e

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p2}, Lmiuix/view/HapticFeedbackConstants;->nameOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    sget p2, Lmiuix/view/PlatformConstants;->VERSION:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "feedback(0x%08x-%s) is not found in current platform(v%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2e
    iget-object p2, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    invoke-virtual {p2, v0}, Landroidx/collection/g;->h(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v0

    if-nez v0, :cond_5a

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    sget p2, Lmiuix/view/PlatformConstants;->VERSION:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "unsupported feedback: 0x%08x. platform version: %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5a
    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result p1

    return p1
.end method

.method public supportLinearMotor(I)Z
    .registers 8

    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    invoke-virtual {v0, p1}, Landroidx/collection/g;->d(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "LinearVibrator"

    const/4 v4, 0x0

    if-gez v0, :cond_2e

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {p1}, Lmiuix/view/HapticFeedbackConstants;->nameOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    sget p1, Lmiuix/view/PlatformConstants;->VERSION:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "feedback(0x%08x-%s) is not found in current platform(v%d)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2e
    iget-object p1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    invoke-virtual {p1, v0}, Landroidx/collection/g;->h(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v0

    if-nez v0, :cond_5a

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    sget p1, Lmiuix/view/PlatformConstants;->VERSION:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "unsupported feedback: 0x%08x. platform version: %d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5a
    invoke-static {p1}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result p1

    return p1
.end method
