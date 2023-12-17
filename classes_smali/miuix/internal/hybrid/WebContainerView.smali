.class public Lmiuix/internal/hybrid/WebContainerView;
.super Landroid/widget/FrameLayout;
.source "WebContainerView.java"


# instance fields
.field private mIsPulling:Z

.field private mLastX:F

.field private mLastY:F

.field private mPullable:Z

.field private mTouchSlop:I

.field private mWebView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mIsPulling:Z

    .line 7
    sget-object v1, Lmiuix/hybrid/R$styleable;->HybridViewStyle:[I

    .line 9
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p1

    .line 13
    sget p2, Lmiuix/hybrid/R$styleable;->HybridViewStyle_hybridPullable:I

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 19
    move-result p2

    .line 20
    iput-boolean p2, p0, Lmiuix/internal/hybrid/WebContainerView;->mPullable:Z

    .line 22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mTouchSlop:I

    .line 39
    return-void
.end method

.method private springBack()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v0, v0, v1

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v1

    .line 22
    const v2, 0x10e0001

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 28
    move-result v1

    .line 29
    int-to-long v1, v1

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 36
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mWebView:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5c

    .line 6
    iget-boolean v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mPullable:Z

    .line 8
    if-nez v0, :cond_a

    .line 10
    goto :goto_5c

    .line 11
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 18
    move-result v2

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 22
    move-result p1

    .line 23
    const/4 v3, 0x3

    .line 24
    if-eq v0, v3, :cond_5a

    .line 26
    const/4 v3, 0x1

    .line 27
    if-ne v0, v3, :cond_1d

    .line 29
    goto :goto_5a

    .line 30
    :cond_1d
    if-eqz v0, :cond_55

    .line 32
    const/4 v4, 0x2

    .line 33
    if-eq v0, v4, :cond_23

    .line 35
    goto :goto_59

    .line 36
    :cond_23
    iget-boolean v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mIsPulling:Z

    .line 38
    if-eqz v0, :cond_28

    .line 40
    return v3

    .line 41
    :cond_28
    iget v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastX:F

    .line 43
    sub-float/2addr v0, v2

    .line 44
    iget v4, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastY:F

    .line 46
    sub-float/2addr v4, p1

    .line 47
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 50
    move-result v0

    .line 51
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 54
    move-result v5

    .line 55
    iput v2, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastX:F

    .line 57
    iput p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastY:F

    .line 59
    iget-object p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mWebView:Landroid/view/View;

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_59

    .line 67
    const/4 p1, 0x0

    .line 68
    cmpg-float p1, v4, p1

    .line 70
    if-gez p1, :cond_59

    .line 72
    cmpl-float p1, v5, v0

    .line 74
    if-lez p1, :cond_59

    .line 76
    iget p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mTouchSlop:I

    .line 78
    int-to-float p1, p1

    .line 79
    cmpl-float p1, v5, p1

    .line 81
    if-lez p1, :cond_59

    .line 83
    iput-boolean v3, p0, Lmiuix/internal/hybrid/WebContainerView;->mIsPulling:Z

    .line 85
    return v3

    .line 86
    :cond_55
    iput v2, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastX:F

    .line 88
    iput p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastY:F

    .line 90
    :cond_59
    :goto_59
    return v1

    .line 91
    :cond_5a
    :goto_5a
    iput-boolean v1, p0, Lmiuix/internal/hybrid/WebContainerView;->mIsPulling:Z

    .line 93
    :cond_5c
    :goto_5c
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mPullable:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_38

    .line 6
    iget-boolean v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mIsPulling:Z

    .line 8
    if-nez v0, :cond_a

    .line 10
    goto :goto_38

    .line 11
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_36

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq p1, v2, :cond_30

    .line 24
    const/4 v2, 0x2

    .line 25
    if-eq p1, v2, :cond_1e

    .line 27
    const/4 v0, 0x3

    .line 28
    if-eq p1, v0, :cond_30

    .line 30
    goto :goto_38

    .line 31
    :cond_1e
    iget p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastY:F

    .line 33
    sub-float p1, v0, p1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 38
    move-result v2

    .line 39
    const/high16 v3, 0x3f000000  # 0.5f

    .line 41
    mul-float/2addr p1, v3

    .line 42
    add-float/2addr p1, v2

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 46
    iput v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastY:F

    .line 48
    goto :goto_38

    .line 49
    :cond_30
    iput-boolean v1, p0, Lmiuix/internal/hybrid/WebContainerView;->mIsPulling:Z

    .line 51
    invoke-direct {p0}, Lmiuix/internal/hybrid/WebContainerView;->springBack()V

    .line 54
    goto :goto_38

    .line 55
    :cond_36
    iput v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastY:F

    .line 57
    :cond_38
    :goto_38
    return v1
.end method

.method public setWebView(Landroid/view/View;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_18

    .line 3
    iget-object v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mWebView:Landroid/view/View;

    .line 5
    if-ne v0, p1, :cond_7

    .line 7
    goto :goto_18

    .line 8
    :cond_7
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13
    :cond_c
    iput-object p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mWebView:Landroid/view/View;

    .line 15
    const/4 v0, 0x0

    .line 16
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 25
    :cond_18
    :goto_18
    return-void
.end method
