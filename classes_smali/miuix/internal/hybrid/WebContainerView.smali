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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mIsPulling:Z

    sget-object v1, Lmiuix/hybrid/R$styleable;->HybridViewStyle:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/hybrid/R$styleable;->HybridViewStyle_hybridPullable:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/internal/hybrid/WebContainerView;->mPullable:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mTouchSlop:I

    return-void
.end method

.method private springBack()V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mWebView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mPullable:Z

    if-nez v0, :cond_a

    goto :goto_5c

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5a

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1d

    goto :goto_5a

    :cond_1d
    if-eqz v0, :cond_55

    const/4 v4, 0x2

    if-eq v0, v4, :cond_23

    goto :goto_59

    :cond_23
    iget-boolean v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mIsPulling:Z

    if-eqz v0, :cond_28

    return v3

    :cond_28
    iget v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastX:F

    sub-float/2addr v0, v2

    iget v4, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastY:F

    sub-float/2addr v4, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v2, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastX:F

    iput p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastY:F

    iget-object p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mWebView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-nez p1, :cond_59

    const/4 p1, 0x0

    cmpg-float p1, v4, p1

    if-gez p1, :cond_59

    cmpl-float p1, v5, v0

    if-lez p1, :cond_59

    iget p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mTouchSlop:I

    int-to-float p1, p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_59

    iput-boolean v3, p0, Lmiuix/internal/hybrid/WebContainerView;->mIsPulling:Z

    return v3

    :cond_55
    iput v2, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastX:F

    iput p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastY:F

    :cond_59
    :goto_59
    return v1

    :cond_5a
    :goto_5a
    iput-boolean v1, p0, Lmiuix/internal/hybrid/WebContainerView;->mIsPulling:Z

    :cond_5c
    :goto_5c
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-boolean v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mPullable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mIsPulling:Z

    if-nez v0, :cond_a

    goto :goto_38

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_36

    const/4 v2, 0x1

    if-eq p1, v2, :cond_30

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_30

    goto :goto_38

    :cond_1e
    iget p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastY:F

    sub-float p1, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float/2addr p1, v3

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    iput v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastY:F

    goto :goto_38

    :cond_30
    iput-boolean v1, p0, Lmiuix/internal/hybrid/WebContainerView;->mIsPulling:Z

    invoke-direct {p0}, Lmiuix/internal/hybrid/WebContainerView;->springBack()V

    goto :goto_38

    :cond_36
    iput v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mLastY:F

    :cond_38
    :goto_38
    return v1
.end method

.method public setWebView(Landroid/view/View;)V
    .registers 5

    if-eqz p1, :cond_18

    iget-object v0, p0, Lmiuix/internal/hybrid/WebContainerView;->mWebView:Landroid/view/View;

    if-ne v0, p1, :cond_7

    goto :goto_18

    :cond_7
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_c
    iput-object p1, p0, Lmiuix/internal/hybrid/WebContainerView;->mWebView:Landroid/view/View;

    const/4 v0, 0x0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    :goto_18
    return-void
.end method
