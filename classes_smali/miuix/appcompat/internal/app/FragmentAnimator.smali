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

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lmiuix/appcompat/internal/app/FragmentAnimator;->USE_DIM:Z

    new-instance v0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    const v1, 0x3f733333  # 0.95f

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    const v1, 0x3f4ccccd  # 0.8f

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/internal/app/FragmentAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;ZZ)V
    .registers 7

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/high16 p1, 0x42190000  # 38.25f

    const/high16 v0, -0x41800000  # -0.25f

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_20

    if-eqz p3, :cond_12

    invoke-direct {p0, v1, v2}, Lmiuix/appcompat/internal/app/FragmentAnimator;->initValues(FF)V

    goto :goto_33

    :cond_12
    invoke-direct {p0, v2, v0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->initValues(FF)V

    sget-boolean p2, Lmiuix/appcompat/internal/app/FragmentAnimator;->USE_DIM:Z

    if-eqz p2, :cond_33

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToDim:I

    goto :goto_33

    :cond_20
    if-eqz p3, :cond_30

    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/FragmentAnimator;->initValues(FF)V

    sget-boolean p2, Lmiuix/appcompat/internal/app/FragmentAnimator;->USE_DIM:Z

    if-eqz p2, :cond_33

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromDim:I

    goto :goto_33

    :cond_30
    invoke-direct {p0, v2, v1}, Lmiuix/appcompat/internal/app/FragmentAnimator;->initValues(FF)V

    :cond_33
    :goto_33
    invoke-virtual {p0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_4e

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    sget-object p1, Lmiuix/appcompat/internal/app/FragmentAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_4e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private clearForeground(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initValues(FF)V
    .registers 3

    iput p1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXValue:F

    iput p2, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToXValue:F

    return-void
.end method

.method private setForegroundDim(Landroid/view/View;I)V
    .registers 5

    const/16 v0, 0xff

    if-gez p2, :cond_6

    const/4 p2, 0x0

    goto :goto_9

    :cond_6
    if-le p2, v0, :cond_9

    move p2, v0

    :cond_9
    :goto_9
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_19
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private updateTargetParams()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXValue:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iput v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXDelta:F

    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToXValue:F

    mul-float/2addr v1, v0

    iput v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToXDelta:F

    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromDim:I

    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToDim:I

    if-eq v0, v1, :cond_1f

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/FragmentAnimator;->clearForeground(Landroid/view/View;)V

    :cond_1f
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->updateTargetParams()V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget v0, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXDelta:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromDim:I

    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToDim:I

    if-eq v0, v1, :cond_23

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->setForegroundDim(Landroid/view/View;I)V

    :cond_23
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXDelta:F

    iget v2, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToXDelta:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_25

    invoke-static {v2, v1, p1, v1}, Lf0/e;->a(FFFF)F

    move-result v1

    :cond_25
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromDim:I

    iget v2, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToDim:I

    if-eq v1, v2, :cond_3a

    int-to-float v3, v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/FragmentAnimator;->setForegroundDim(Landroid/view/View;I)V

    :cond_3a
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->updateTargetParams()V

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_c
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_24

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_18

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_18
    if-nez p1, :cond_1c

    const/4 p1, 0x0

    goto :goto_22

    :cond_1c
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_22
    iput-object p1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    :cond_24
    return-void
.end method
