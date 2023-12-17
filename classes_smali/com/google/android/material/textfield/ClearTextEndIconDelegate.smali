.class Lcom/google/android/material/textfield/ClearTextEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "ClearTextEndIconDelegate.java"


# static fields
.field private static final ANIMATION_FADE_DURATION:I = 0x64

.field private static final ANIMATION_SCALE_DURATION:I = 0x96

.field private static final ANIMATION_SCALE_FROM_VALUE:F = 0.8f


# instance fields
.field private final clearTextEndIconTextWatcher:Landroid/text/TextWatcher;

.field private final clearTextOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field private final endIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

.field private iconInAnim:Landroid/animation/AnimatorSet;

.field private iconOutAnim:Landroid/animation/ValueAnimator;

.field private final onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 4
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;

    .line 6
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 9
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->clearTextEndIconTextWatcher:Landroid/text/TextWatcher;

    .line 11
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$2;

    .line 13
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$2;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 16
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 18
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$3;

    .line 20
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$3;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 23
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->clearTextOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 25
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$4;

    .line 27
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$4;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 30
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->endIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 32
    return-void
.end method

.method public static synthetic access$000(Landroid/text/Editable;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->hasText(Landroid/text/Editable;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)Landroid/view/View$OnFocusChangeListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)Landroid/text/TextWatcher;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->clearTextEndIconTextWatcher:Landroid/text/TextWatcher;

    .line 3
    return-object p0
.end method

.method private animateIcon(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isEndIconVisible()Z

    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    if-eqz p1, :cond_1f

    .line 14
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    .line 16
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 21
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 24
    if-eqz v0, :cond_30

    .line 26
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 28
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 31
    goto :goto_30

    .line 32
    :cond_1f
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 34
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 37
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    .line 39
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 42
    if-eqz v0, :cond_30

    .line 44
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    .line 46
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 49
    :cond_30
    :goto_30
    return-void
.end method

.method private varargs getAlphaAnimator([F)Landroid/animation/ValueAnimator;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    const-wide/16 v0, 0x64

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$8;

    .line 17
    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$8;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    return-object p1
.end method

.method private getScaleAnimator()Landroid/animation/ValueAnimator;
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_1e

    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 13
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    const-wide/16 v1, 0x96

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$9;

    .line 23
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$9;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :array_1e
    .array-data 4
        0x3f4ccccd  # 0.8f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static hasText(Landroid/text/Editable;)Z
    .registers 1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result p0

    .line 5
    if-lez p0, :cond_8

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p0, 0x0

    .line 10
    :goto_9
    return p0
.end method

.method private initAnimators()V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->getScaleAnimator()Landroid/animation/ValueAnimator;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [F

    .line 8
    fill-array-data v2, :array_3e

    .line 11
    invoke-direct {p0, v2}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->getAlphaAnimator([F)Landroid/animation/ValueAnimator;

    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 17
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 20
    iput-object v3, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 22
    new-array v4, v1, [Landroid/animation/Animator;

    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v0, v4, v5

    .line 27
    const/4 v0, 0x1

    .line 28
    aput-object v2, v4, v0

    .line 30
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 35
    new-instance v2, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$6;

    .line 37
    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$6;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 40
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    new-array v0, v1, [F

    .line 45
    fill-array-data v0, :array_46

    .line 48
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->getAlphaAnimator([F)Landroid/animation/ValueAnimator;

    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    .line 54
    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$7;

    .line 56
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$7;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    return-void

    .line 63
    :array_3e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    .line 71
    :array_46
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public initialize()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->context:Landroid/content/Context;

    .line 5
    sget v2, Lcom/google/android/material/R$drawable;->mtrl_ic_cancel:I

    .line 7
    invoke-static {v1, v2}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v1

    .line 20
    sget v2, Lcom/google/android/material/R$string;->clear_text_end_icon_content_description:I

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 31
    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$5;

    .line 33
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$5;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 41
    iget-object v1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->clearTextOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 48
    iget-object v1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->endIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V

    .line 53
    invoke-direct {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->initAnimators()V

    .line 56
    return-void
.end method

.method public onSuffixVisibilityChanged(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    .line 13
    return-void
.end method
