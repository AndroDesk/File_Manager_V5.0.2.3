.class public Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;
.super Ljava/lang/Object;
.source "PadDialogAnim.java"

# interfaces
.implements Lmiuix/appcompat/widget/dialoganim/IDialogAnim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;,
        Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;,
        Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;
    }
.end annotation


# static fields
.field private static final DAMPING_SHOW:F = 0.8f

.field private static final DISMISS_DURATION:I = 0xc8

.field private static final RESPONSE_SHOW:F = 0.3f

.field private static final SCALE_FACTOR:F = 30.0f

.field private static final SCALE_FULL:F = 1.0f

.field private static final SCALE_SMALl:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "PhoneDialogAnim"

.field private static final TAG_HIDE:Ljava/lang/String; = "hide"

.field private static final TAG_SHOW:Ljava/lang/String; = "show"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dismissPanel(Landroid/view/View;Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;)V
    .registers 12

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [F

    .line 6
    fill-array-data v2, :array_50

    .line 9
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;->getScale(Landroid/view/View;)F

    .line 16
    move-result v2

    .line 17
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 19
    new-array v4, v1, [F

    .line 21
    const/4 v5, 0x0

    .line 22
    const/high16 v6, 0x3f800000  # 1.0f

    .line 24
    aput v6, v4, v5

    .line 26
    const/4 v7, 0x1

    .line 27
    aput v2, v4, v7

    .line 29
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 35
    new-array v8, v1, [F

    .line 37
    aput v6, v8, v5

    .line 39
    aput v2, v8, v7

    .line 41
    invoke-static {v4, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 44
    move-result-object v2

    .line 45
    const/4 v4, 0x3

    .line 46
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    .line 48
    aput-object v0, v4, v5

    .line 50
    aput-object v3, v4, v7

    .line 52
    aput-object v2, v4, v1

    .line 54
    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 57
    move-result-object p1

    .line 58
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 60
    const/high16 v1, 0x3fc00000  # 1.5f

    .line 62
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    const-wide/16 v0, 0xc8

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 79
    return-void

    .line 80
    nop

    :array_50
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private executeShowAnimAndroidUIThread(Landroid/view/View;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .registers 12

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [F

    .line 6
    fill-array-data v2, :array_54

    .line 9
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;->getScale(Landroid/view/View;)F

    .line 16
    move-result v2

    .line 17
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 19
    new-array v4, v1, [F

    .line 21
    const/4 v5, 0x0

    .line 22
    aput v2, v4, v5

    .line 24
    const/4 v6, 0x1

    .line 25
    const/high16 v7, 0x3f800000  # 1.0f

    .line 27
    aput v7, v4, v6

    .line 29
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 35
    new-array v8, v1, [F

    .line 37
    aput v2, v8, v5

    .line 39
    aput v7, v8, v6

    .line 41
    invoke-static {v4, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 44
    move-result-object v2

    .line 45
    const/4 v4, 0x3

    .line 46
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    .line 48
    aput-object v0, v4, v5

    .line 50
    aput-object v3, v4, v6

    .line 52
    aput-object v2, v4, v1

    .line 54
    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 60
    const/high16 v2, 0x3fc00000  # 1.5f

    .line 62
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    new-instance v1, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;

    .line 70
    invoke-direct {v1, p0, p2, p1}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    const-wide/16 p1, 0x12c

    .line 78
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 81
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 84
    return-void

    .line 85
    :array_54
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private getScale(Landroid/view/View;)F
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 8
    move-result p1

    .line 9
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 12
    move-result p1

    .line 13
    int-to-float p1, p1

    .line 14
    const/high16 v0, 0x42700000  # 60.0f

    .line 16
    div-float/2addr v0, p1

    .line 17
    const/high16 p1, 0x3f800000  # 1.0f

    .line 19
    sub-float/2addr p1, v0

    .line 20
    const v0, 0x3f4ccccd  # 0.8f

    .line 23
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method private getState(ZZLandroid/view/View;)Lmiuix/animation/controller/AnimState;
    .registers 7

    .line 1
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 6
    const/high16 v1, 0x3f800000  # 1.0f

    .line 8
    if-eqz p1, :cond_10

    .line 10
    if-eqz p2, :cond_17

    .line 12
    invoke-direct {p0, p3}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;->getScale(Landroid/view/View;)F

    .line 15
    move-result v1

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    if-eqz p2, :cond_13

    .line 19
    goto :goto_17

    .line 20
    :cond_13
    invoke-direct {p0, p3}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;->getScale(Landroid/view/View;)F

    .line 23
    move-result v1

    .line 24
    :cond_17
    :goto_17
    if-eqz p1, :cond_1b

    .line 26
    xor-int/lit8 p2, p2, 0x1

    .line 28
    :cond_1b
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 30
    float-to-double v1, v1

    .line 31
    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 34
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 36
    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 39
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 41
    int-to-double p2, p2

    .line 42
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 45
    return-object v0
.end method


# virtual methods
.method public cancelAnimator()V
    .registers 1

    return-void
.end method

.method public executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "hide"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;

    .line 16
    invoke-direct {v0, p0, p3, p1}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;Landroid/view/View;)V

    .line 19
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;->dismissPanel(Landroid/view/View;Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;)V

    .line 22
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->dismiss(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object p3

    .line 5
    const-string v0, "show"

    .line 7
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p3

    .line 11
    if-eqz p3, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 17
    move-result p3

    .line 18
    const/high16 v0, 0x3f800000  # 1.0f

    .line 20
    cmpl-float p3, p3, v0

    .line 22
    if-eqz p3, :cond_1d

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 30
    :cond_1d
    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_27

    .line 36
    invoke-direct {p0, p1, p4}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;->executeShowAnimAndroidUIThread(Landroid/view/View;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    .line 39
    goto :goto_69

    .line 40
    :cond_27
    new-instance p3, Lmiuix/animation/base/AnimConfig;

    .line 42
    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 45
    const/4 v0, -0x2

    .line 46
    const/4 v1, 0x2

    .line 47
    new-array v1, v1, [F

    .line 49
    fill-array-data v1, :array_6e

    .line 52
    invoke-static {v0, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p3, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 59
    const/4 v0, 0x1

    .line 60
    new-array v1, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 62
    new-instance v2, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;

    .line 64
    invoke-direct {v2, p0, p4, p1}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View;)V

    .line 67
    const/4 p4, 0x0

    .line 68
    aput-object v2, v1, p4

    .line 70
    invoke-virtual {p3, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 73
    new-array v1, v0, [Landroid/view/View;

    .line 75
    aput-object p1, v1, p4

    .line 77
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 84
    move-result-object v1

    .line 85
    const-wide/16 v2, 0x1

    .line 87
    invoke-interface {v1, v2, v3}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    .line 90
    move-result-object v1

    .line 91
    invoke-direct {p0, v0, v0, p1}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;->getState(ZZLandroid/view/View;)Lmiuix/animation/controller/AnimState;

    .line 94
    move-result-object v2

    .line 95
    invoke-direct {p0, v0, p4, p1}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;->getState(ZZLandroid/view/View;)Lmiuix/animation/controller/AnimState;

    .line 98
    move-result-object p1

    .line 99
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 101
    aput-object p3, v0, p4

    .line 103
    invoke-interface {v1, v2, p1, v0}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 106
    :goto_69
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->show(Landroid/view/View;)V

    .line 109
    return-void

    .line 110
    nop

    .line 111
    :array_6e
    .array-data 4
        0x3f4ccccd  # 0.8f
        0x3e99999a  # 0.3f
    .end array-data
.end method
