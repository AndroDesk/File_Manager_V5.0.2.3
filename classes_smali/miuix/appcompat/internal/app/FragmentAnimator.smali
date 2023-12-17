.class public Lmiuix/appcompat/internal/app/FragmentAnimator;
.super Landroid/animation/ValueAnimator;
.source "FragmentAnimator.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final DIM_ALPHA:F = 0.15f

.field private static final DURATION:J = 0x1f4L

.field private static final ENTER_OFFSET:F = 1.0f

.field private static final EXIT_OFFSET:F = -0.25f

.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final USE_DIM:Z


# instance fields
.field private mFromDim:I

.field private mFromXDelta:F

.field private mFromXValue:F

.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mToDim:I

.field private mToXDelta:F

.field private mToXValue:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    sput-boolean v0, Lmiuix/appcompat/internal/app/FragmentAnimator;->USE_DIM:Z

    .line 9
    new-instance v0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 11
    invoke-direct {v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    .line 14
    const v1, 0x3f733333  # 0.95f

    .line 17
    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 20
    move-result-object v0

    .line 21
    const v1, 0x3f4ccccd  # 0.8f

    .line 24
    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lmiuix/appcompat/internal/app/FragmentAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;ZZ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 4
    const/high16 p1, 0x42190000  # 38.25f

    .line 6
    const/high16 v0, -0x41800000  # -0.25f

    .line 8
    const/high16 v1, 0x3f800000  # 1.0f

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p2, :cond_20

    .line 13
    if-eqz p3, :cond_12

    .line 15
    invoke-direct {p0, v1, v2}, Lmiuix/appcompat/internal/app/FragmentAnimator;->initValues(FF)V

    .line 18
    goto :goto_33

    .line 19
    :cond_12
    invoke-direct {p0, v2, v0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->initValues(FF)V

    .line 22
    sget-boolean p2, Lmiuix/appcompat/internal/app/FragmentAnimator;->USE_DIM:Z

    .line 24
    if-eqz p2, :cond_33

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToDim:I

    .line 32
    goto :goto_33

    .line 33
    :cond_20
    if-eqz p3, :cond_30

    .line 35
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/FragmentAnimator;->initValues(FF)V

    .line 38
    sget-boolean p2, Lmiuix/appcompat/internal/app/FragmentAnimator;->USE_DIM:Z

    .line 40
    if-eqz p2, :cond_33

    .line 42
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromDim:I

    .line 48
    goto :goto_33

    .line 49
    :cond_30
    invoke-direct {p0, v2, v1}, Lmiuix/appcompat/internal/app/FragmentAnimator;->initValues(FF)V

    .line 52
    :cond_33
    :goto_33
    invoke-virtual {p0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    const/4 p1, 0x2

    .line 59
    new-array p1, p1, [F

    .line 61
    fill-array-data p1, :array_4e

    .line 64
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 67
    sget-object p1, Lmiuix/appcompat/internal/app/FragmentAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 69
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    const-wide/16 p1, 0x1f4

    .line 74
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    return-void

    .line 78
    nop

    .line 79
    :array_4e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private clearForeground(Landroid/view/View;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    return-void
.end method

.method private initValues(FF)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXValue:F

    .line 3
    iput p2, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToXValue:F

    .line 5
    return-void
.end method

.method private setForegroundDim(Landroid/view/View;I)V
    .registers 5

    .line 1
    const/16 v0, 0xff

    .line 3
    if-gez p2, :cond_6

    .line 5
    const/4 p2, 0x0

    .line 6
    goto :goto_9

    .line 7
    :cond_6
    if-le p2, v0, :cond_9

    .line 9
    move p2, v0

    .line 10
    :cond_9
    :goto_9
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_19

    .line 16
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 18
    const/high16 v1, -0x1000000

    .line 20
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    :cond_19
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 29
    return-void
.end method

.method private updateTargetParams()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/View;

    .line 7
    if-eqz v1, :cond_f

    .line 9
    check-cast v0, Landroid/view/View;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXValue:F

    .line 19
    int-to-float v0, v0

    .line 20
    mul-float/2addr v1, v0

    .line 21
    iput v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXDelta:F

    .line 23
    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToXValue:F

    .line 25
    mul-float/2addr v1, v0

    .line 26
    iput v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToXDelta:F

    .line 28
    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    instance-of p1, p1, Landroid/view/View;

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/View;

    .line 16
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 23
    iget v0, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromDim:I

    .line 25
    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToDim:I

    .line 27
    if-eq v0, v1, :cond_1f

    .line 29
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/FragmentAnimator;->clearForeground(Landroid/view/View;)V

    .line 32
    :cond_1f
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    instance-of p1, p1, Landroid/view/View;

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/View;

    .line 16
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->updateTargetParams()V

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 22
    iget v0, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXDelta:F

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 27
    iget v0, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromDim:I

    .line 29
    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToDim:I

    .line 31
    if-eq v0, v1, :cond_23

    .line 33
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->setForegroundDim(Landroid/view/View;I)V

    .line 36
    :cond_23
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroid/view/View;

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/View;

    .line 16
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Float;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 25
    move-result p1

    .line 26
    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXDelta:F

    .line 28
    iget v2, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToXDelta:F

    .line 30
    cmpl-float v3, v1, v2

    .line 32
    if-eqz v3, :cond_25

    .line 34
    invoke-static {v2, v1, p1, v1}, Lf0/e;->a(FFFF)F

    .line 37
    move-result v1

    .line 38
    :cond_25
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 41
    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromDim:I

    .line 43
    iget v2, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToDim:I

    .line 45
    if-eq v1, v2, :cond_3a

    .line 47
    int-to-float v3, v1

    .line 48
    sub-int/2addr v2, v1

    .line 49
    int-to-float v1, v2

    .line 50
    mul-float/2addr v1, p1

    .line 51
    add-float/2addr v1, v3

    .line 52
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 55
    move-result p1

    .line 56
    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/FragmentAnimator;->setForegroundDim(Landroid/view/View;I)V

    .line 59
    :cond_3a
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->updateTargetParams()V

    .line 4
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_c

    .line 10
    invoke-virtual {p0, p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 13
    :cond_c
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_24

    .line 7
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_f

    .line 13
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 16
    :cond_f
    instance-of v1, v0, Landroid/view/View;

    .line 18
    if-eqz v1, :cond_18

    .line 20
    check-cast v0, Landroid/view/View;

    .line 22
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 25
    :cond_18
    if-nez p1, :cond_1c

    .line 27
    const/4 p1, 0x0

    .line 28
    goto :goto_22

    .line 29
    :cond_1c
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    move-object p1, v0

    .line 35
    :goto_22
    iput-object p1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    .line 37
    :cond_24
    return-void
.end method
