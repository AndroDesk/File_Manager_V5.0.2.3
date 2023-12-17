.class public Lmiuix/appcompat/internal/view/ColorTransitionTextView;
.super Landroid/widget/TextView;
.source "ColorTransitionTextView.java"


# instance fields
.field private hasTransitedColor:Z

.field private mAnimateColor:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mNormalColor:I

.field private mOriginColor:Landroid/content/res/ColorStateList;

.field private mTransitedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->hasTransitedColor:Z

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->setupColors()V

    .line 10
    return-void
.end method

.method public static synthetic access$002(Lmiuix/appcompat/internal/view/ColorTransitionTextView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimateColor:I

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mTransitedColor:I

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    .line 3
    return p0
.end method

.method private setupColors()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    .line 7
    sget-object v1, Landroid/widget/TextView;->ENABLED_STATE_SET:[I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v2

    .line 13
    sget v3, Lmiuix/appcompat/R$color;->miuix_appcompat_action_bar_title_text_color_light:I

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    .line 25
    iget-object v1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    .line 27
    sget-object v2, Landroid/widget/TextView;->ENABLED_SELECTED_STATE_SET:[I

    .line 29
    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mTransitedColor:I

    .line 35
    iget v1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    .line 37
    if-eq v1, v0, :cond_29

    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->hasTransitedColor:Z

    .line 42
    :cond_29
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->hasTransitedColor:Z

    .line 3
    if-eqz v0, :cond_18

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 7
    if-eqz v0, :cond_18

    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_18

    .line 16
    :cond_f
    iget v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimateColor:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 24
    return-void

    .line 25
    :cond_18
    :goto_18
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 28
    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->setupColors()V

    .line 7
    return-void
.end method

.method public startColorTransition(ZZ)V
    .registers 7

    .line 1
    if-nez p2, :cond_13

    .line 3
    if-eqz p1, :cond_a

    .line 5
    iget p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mTransitedColor:I

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    goto :goto_f

    .line 11
    :cond_a
    iget p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    :goto_f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 22
    if-nez p2, :cond_1f

    .line 24
    new-instance p2, Landroid/animation/ValueAnimator;

    .line 26
    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 29
    iput-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 31
    goto :goto_22

    .line 32
    :cond_1f
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    :goto_22
    const/4 p2, 0x1

    .line 36
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x2

    .line 38
    if-eqz p1, :cond_39

    .line 40
    iget-object v2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 42
    new-array v1, v1, [I

    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 47
    move-result v3

    .line 48
    aput v3, v1, v0

    .line 50
    iget v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mTransitedColor:I

    .line 52
    aput v0, v1, p2

    .line 54
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 57
    goto :goto_4a

    .line 58
    :cond_39
    iget-object v2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 60
    new-array v1, v1, [I

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 65
    move-result v3

    .line 66
    aput v3, v1, v0

    .line 68
    iget v0, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I

    .line 70
    aput v0, v1, p2

    .line 72
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 75
    :goto_4a
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 77
    const-wide/16 v0, 0x32

    .line 79
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 84
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 86
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 89
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 94
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 96
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 99
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 102
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 104
    new-instance v0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$1;

    .line 106
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView$1;-><init>(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)V

    .line 109
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 112
    iget-object p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 114
    new-instance v0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;

    .line 116
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;-><init>(Lmiuix/appcompat/internal/view/ColorTransitionTextView;Z)V

    .line 119
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 122
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 124
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 127
    return-void
.end method
