.class public Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"

# interfaces
.implements Lmiuix/view/BlurableWidget;
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;
    }
.end annotation


# static fields
.field private static final BG_EMBEDED_TABS_IDX:I = 0x1

.field private static final BG_LENGTH:I = 0x3

.field private static final BG_NORMAL_IDX:I = 0x0

.field private static final BG_STACKED_IDX:I = 0x2


# instance fields
.field private mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field private mActionBarHeightGap:I

.field private mActionBarHeightTotalGap:I

.field public mActionBarTransitionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/ActionBarTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundArray:[Landroid/graphics/drawable/Drawable;

.field private mBackgroundBackup:Landroid/graphics/drawable/Drawable;

.field private final mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

.field public mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

.field private mCoordinatedOffsetYInSearchModeAnimation:I

.field private mCurBarExpandState:I

.field private mCurBarResizable:Z

.field private mCurContextBarExpandState:I

.field private mCurContextBarResizable:Z

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mCustomBackground:Z

.field private mCustomViewAutoFitSystemWindow:Z

.field private mDrawBackground:Z

.field private mHeightMaxMeasureSpec:I

.field private mHideListener:Landroid/animation/AnimatorListenerAdapter;

.field private mInternalApplyBgBlur:Z

.field private mInternalApplySpiltBgBlur:Z

.field private mIsInActionMode:Z

.field private mIsInWideMode:Z

.field private mIsMiuixFloating:Z

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mLastActionBarResizingProcess:F

.field private mLastToState:I

.field private mNowShowing:Z

.field private mOverlayMode:Z

.field private mPendingInsets:Landroid/graphics/Rect;

.field private mRequestAnimation:Z

.field private mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field private mShowListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSplitBackgroundBackup:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;

.field private mTabContainerPaddingTop:I

.field private mUserApplyBgBlur:Ljava/lang/Boolean;

.field private mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mNowShowing:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplyBgBlur:Z

    .line 5
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 7
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 8
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 9
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 10
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    const/4 v3, -0x1

    .line 11
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    const/4 v3, 0x0

    .line 12
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    .line 13
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastToState:I

    .line 14
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    .line 15
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 16
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    .line 17
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    .line 18
    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;

    invoke-direct {v3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHideListener:Landroid/animation/AnimatorListenerAdapter;

    .line 19
    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$2;

    invoke-direct {v3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    .line 20
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    sget-object v2, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 22
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_background:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v1

    .line 23
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_actionBarEmbededTabsBackground:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v3, v0

    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_actionBarStackedBackground:I

    .line 24
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    .line 25
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_customViewAutoFitSystemWindow:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomViewAutoFitSystemWindow:Z

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lmiuix/appcompat/R$id;->split_action_bar:I

    if-ne v2, v3, :cond_7c

    .line 27
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 28
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_backgroundSplit:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 29
    :cond_7c
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez p2, :cond_86

    .line 31
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 32
    :cond_86
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->resizeSplitMaxHeight()V

    .line 33
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p2, :cond_93

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_9c

    :goto_91
    move p2, v0

    goto :goto_9d

    .line 34
    :cond_93
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_9c

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_9c

    goto :goto_91

    :cond_9c
    move p2, v1

    .line 35
    :goto_9d
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 36
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    .line 37
    new-instance p2, Lmiuix/view/MiuiBlurUiHelper;

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    invoke-direct {p2, p1, p0, v1, v0}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    return-void
.end method

.method public static synthetic access$002(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Ljava/lang/Boolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 3
    return-object p0
.end method

.method public static synthetic access$602(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    .line 3
    return p1
.end method

.method public static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    return-object p0
.end method

.method private applyInsetsTopByMargin(Landroid/view/View;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_1b

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1b

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 17
    if-eqz v1, :cond_15

    .line 19
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v1, 0x0

    .line 23
    :goto_16
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    :cond_1b
    return-void
.end method

.method private getActionMenuViewCollapseHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_21

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_21

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    cmpl-float v1, v1, v2

    .line 17
    if-eqz v1, :cond_21

    .line 19
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_21

    .line 25
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 28
    move-result p1

    .line 29
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_21
    return v0
.end method

.method private getActionMenuViewInsetHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_28

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_28

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    cmpl-float v1, v1, v2

    .line 17
    if-eqz v1, :cond_28

    .line 19
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_28

    .line 25
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 33
    move-result p1

    .line 34
    sub-float/2addr v1, p1

    .line 35
    float-to-int p1, v1

    .line 36
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_28
    return v0
.end method

.method private onMeasureSplit(II)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall",
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x80000000

    .line 7
    if-ne v0, v1, :cond_12

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    move-result p1

    .line 13
    const/high16 v0, 0x40000000  # 2.0f

    .line 15
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 18
    move-result p1

    .line 19
    :cond_12
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eq v0, v1, :cond_18

    .line 24
    move p2, v0

    .line 25
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    move-result p1

    .line 32
    const/4 p2, 0x0

    .line 33
    move v0, p2

    .line 34
    move v1, v0

    .line 35
    :goto_22
    if-ge v0, p1, :cond_33

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    move-result v2

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 48
    move-result v1

    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 51
    goto :goto_22

    .line 52
    :cond_33
    if-nez v1, :cond_39

    .line 54
    invoke-virtual {p0, p2, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 57
    goto :goto_58

    .line 58
    :cond_39
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 60
    if-eqz p1, :cond_58

    .line 62
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->hasOnlyCustomView()Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_58

    .line 68
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 70
    instance-of p2, p1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 72
    if-eqz p2, :cond_58

    .line 74
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 76
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_58

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 85
    move-result p1

    .line 86
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 89
    :cond_58
    :goto_58
    return-void
.end method

.method private resizeSplitMaxHeight()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 3
    if-eqz v0, :cond_2b

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Lmiuix/appcompat/R$attr;->actionBarSplitMaxPercentageHeight:I

    .line 11
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2b

    .line 17
    iget v1, v0, Landroid/util/TypedValue;->type:I

    .line 19
    const/4 v2, 0x6

    .line 20
    if-ne v1, v2, :cond_2b

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lmiuix/core/util/WindowUtils;->getWindowHeight(Landroid/content/Context;)I

    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    invoke-virtual {v0, v1, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 34
    move-result v0

    .line 35
    float-to-int v0, v0

    .line 36
    const/high16 v1, -0x80000000

    .line 38
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    .line 44
    :cond_2b
    return-void
.end method

.method private selectDrawable()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    .line 3
    if-nez v0, :cond_3c

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 7
    if-nez v0, :cond_3c

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 11
    if-eqz v0, :cond_3c

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 15
    if-eqz v1, :cond_3c

    .line 17
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    .line 19
    if-eqz v1, :cond_3c

    .line 21
    array-length v1, v1

    .line 22
    const/4 v2, 0x3

    .line 23
    if-ge v1, v2, :cond_19

    .line 25
    goto :goto_3c

    .line 26
    :cond_19
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_34

    .line 33
    const/4 v1, 0x1

    .line 34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 36
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 39
    move-result v0

    .line 40
    and-int/lit8 v2, v0, 0x2

    .line 42
    if-nez v2, :cond_33

    .line 44
    and-int/lit8 v2, v0, 0x4

    .line 46
    if-nez v2, :cond_33

    .line 48
    and-int/lit8 v0, v0, 0x10

    .line 50
    if-eqz v0, :cond_34

    .line 52
    :cond_33
    const/4 v1, 0x2

    .line 53
    :cond_34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    .line 55
    aget-object v0, v0, v1

    .line 57
    if-eqz v0, :cond_3c

    .line 59
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 61
    :cond_3c
    :goto_3c
    return-void
.end method


# virtual methods
.method public addActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method

.method public applyBlur(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    .line 11
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mRequestAnimation:Z

    .line 6
    if-eqz p1, :cond_12

    .line 8
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$4;

    .line 10
    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mRequestAnimation:Z

    .line 19
    :cond_12
    return-void
.end method

.method public drawableStateChanged()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_16

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_16

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 23
    :cond_16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 25
    if-eqz v0, :cond_29

    .line 27
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_29

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 42
    :cond_29
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 44
    if-eqz v0, :cond_3c

    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3c

    .line 52
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 61
    :cond_3c
    return-void
.end method

.method public finishActionMode()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsInActionMode:Z

    .line 4
    return-void
.end method

.method public getActionBarCoordinateListener()Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    .line 3
    return-object v0
.end method

.method public getCollapsedHeight()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_17

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 10
    const/16 v2, 0x8

    .line 12
    if-eq v0, v2, :cond_17

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_17

    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v0, v1

    .line 25
    :goto_18
    if-eqz v0, :cond_2c

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 35
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 37
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    .line 40
    move-result v1

    .line 41
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 43
    :goto_2a
    add-int/2addr v1, v0

    .line 44
    return v1

    .line 45
    :cond_2c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 47
    if-eqz v0, :cond_3f

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 57
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    .line 60
    move-result v1

    .line 61
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 63
    goto :goto_2a

    .line 64
    :cond_3f
    return v1
.end method

.method public getExpandedHeight()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_17

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 10
    const/16 v2, 0x8

    .line 12
    if-eq v0, v2, :cond_17

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_17

    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v0, v1

    .line 25
    :goto_18
    if-eqz v0, :cond_2c

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 35
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 37
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandedHeight()I

    .line 40
    move-result v1

    .line 41
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 43
    :goto_2a
    add-int/2addr v1, v0

    .line 44
    return v1

    .line 45
    :cond_2c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 47
    if-eqz v0, :cond_3f

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 57
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandedHeight()I

    .line 60
    move-result v1

    .line 61
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 63
    goto :goto_2a

    .line 64
    :cond_3f
    return v1
.end method

.method public getInsetHeight()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 9
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewInsetHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    .line 12
    move-result v0

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 19
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewInsetHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    .line 22
    move-result v1

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public getPendingInsets()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 3
    return-object v0
.end method

.method public getPrimaryBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getSplitCollapsedHeight()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 9
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewCollapseHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    .line 12
    move-result v0

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 19
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewCollapseHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    .line 22
    move-result v1

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public getTabContainer()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public hide(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mNowShowing:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mNowShowing:Z

    .line 9
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 11
    if-eqz v1, :cond_f

    .line 13
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 16
    :cond_f
    if-eqz p1, :cond_53

    .line 18
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 20
    if-eqz p1, :cond_53

    .line 22
    const/4 p1, 0x2

    .line 23
    new-array p1, p1, [F

    .line 25
    const/4 v1, 0x0

    .line 26
    aput v1, p1, v0

    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    aput v1, p1, v0

    .line 36
    const-string v0, "TranslationY"

    .line 38
    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 44
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_41

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v0

    .line 58
    const/high16 v1, 0x10e0000

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 63
    move-result v0

    .line 64
    int-to-long v0, v0

    .line 65
    goto :goto_43

    .line 66
    :cond_41
    const-wide/16 v0, 0x0

    .line 68
    :goto_43
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 71
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 73
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHideListener:Landroid/animation/AnimatorListenerAdapter;

    .line 75
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 80
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 83
    goto :goto_58

    .line 84
    :cond_53
    const/16 p1, 0x8

    .line 86
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 89
    :goto_58
    return-void
.end method

.method public isApplyBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEnableBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isMiuixFloating()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    .line 3
    return v0
.end method

.method public isSupportBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isSupportBlur()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onActionModeMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    if-eqz p1, :cond_1a

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1a

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 13
    if-eqz v0, :cond_13

    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result v0

    .line 19
    goto :goto_17

    .line 20
    :cond_13
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    .line 23
    move-result v0

    .line 24
    :goto_17
    invoke-interface {p1, v0}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    .line 27
    :cond_1a
    return-void
.end method

.method public onActionModeMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    if-ne v0, p1, :cond_7

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 8
    :cond_7
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->resizeSplitMaxHeight()V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 9
    if-eqz p1, :cond_d

    .line 11
    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    .line 14
    :cond_d
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarCoordinateListener(Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;)V

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_1d

    .line 14
    :cond_d
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 16
    if-eqz v0, :cond_12

    .line 18
    goto :goto_1d

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 21
    if-eqz v0, :cond_1d

    .line 23
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    .line 25
    if-eqz v1, :cond_1d

    .line 27
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    sget v0, Lmiuix/appcompat/R$id;->action_bar:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 14
    sget v0, Lmiuix/appcompat/R$id;->action_context_bar:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 22
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 26
    if-eqz v0, :cond_30

    .line 28
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    .line 30
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->bindActionBarTransitionListeners(Ljava/util/List;)V

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 35
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 41
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 43
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    .line 46
    move-result v0

    .line 47
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 49
    :cond_30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 51
    if-eqz v0, :cond_49

    .line 53
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 59
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 61
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    .line 64
    move-result v0

    .line 65
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 67
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 69
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 71
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 74
    :cond_49
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 3
    if-eqz p1, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_6
    const/4 p1, 0x1

    .line 8
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 3
    if-nez v0, :cond_d

    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 p1, 0x1

    .line 15
    :goto_e
    return p1
.end method

.method public onLayout(ZIIII)V
    .registers 12

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    move-result p3

    .line 12
    int-to-float p3, p3

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p5

    .line 17
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p5

    .line 21
    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    move-result-object p5

    .line 25
    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    .line 27
    div-float/2addr p3, p5

    .line 28
    float-to-int p3, p3

    .line 29
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 31
    const/4 v0, 0x0

    .line 32
    if-eqz p5, :cond_8a

    .line 34
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 37
    move-result p5

    .line 38
    const/16 v1, 0x8

    .line 40
    if-eq p5, v1, :cond_8a

    .line 42
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 44
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    move-result p5

    .line 48
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 50
    if-eqz v1, :cond_59

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_59

    .line 58
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 63
    move-result v1

    .line 64
    if-lez v1, :cond_59

    .line 66
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 71
    move-result v2

    .line 72
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    .line 74
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 76
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 79
    move-result v4

    .line 80
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 82
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 85
    move-result v5

    .line 86
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    goto :goto_83

    .line 90
    :cond_59
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 92
    if-eqz v1, :cond_60

    .line 94
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    move v1, v0

    .line 98
    :goto_61
    add-int/2addr p5, v1

    .line 99
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 104
    move-result v2

    .line 105
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 107
    if-eqz v3, :cond_72

    .line 109
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 111
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    .line 113
    add-int/2addr v3, v4

    .line 114
    goto :goto_74

    .line 115
    :cond_72
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    .line 117
    :goto_74
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 119
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 122
    move-result v4

    .line 123
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 125
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 128
    move-result v5

    .line 129
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 132
    :goto_83
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 134
    sub-int p5, p1, p5

    .line 136
    invoke-virtual {v1, p2, p5, p4, p1}, Landroid/view/View;->layout(IIII)V

    .line 139
    :cond_8a
    iget-boolean p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 141
    const/4 v1, 0x1

    .line 142
    if-eqz p5, :cond_9f

    .line 144
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 146
    if-eqz p1, :cond_ac

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 151
    move-result p2

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 155
    move-result p4

    .line 156
    invoke-virtual {p1, v0, v0, p2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    goto :goto_aa

    .line 160
    :cond_9f
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->selectDrawable()V

    .line 163
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 165
    if-eqz p5, :cond_ac

    .line 167
    sub-int/2addr p4, p2

    .line 168
    invoke-virtual {p5, v0, v0, p4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 171
    :goto_aa
    move p1, v1

    .line 172
    goto :goto_ad

    .line 173
    :cond_ac
    move p1, v0

    .line 174
    :goto_ad
    const/16 p2, 0x29e

    .line 176
    if-le p3, p2, :cond_b3

    .line 178
    move p2, v1

    .line 179
    goto :goto_b4

    .line 180
    :cond_b3
    move p2, v0

    .line 181
    :goto_b4
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsInWideMode:Z

    .line 183
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 185
    if-eqz p2, :cond_d8

    .line 187
    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsInActionMode:Z

    .line 189
    if-eqz p3, :cond_d8

    .line 191
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 194
    move-result p2

    .line 195
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 197
    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    .line 200
    move-result p3

    .line 201
    sub-int/2addr p2, p3

    .line 202
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 204
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 206
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandedHeight()I

    .line 209
    move-result p2

    .line 210
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 212
    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    .line 215
    move-result p3

    .line 216
    goto :goto_f5

    .line 217
    :cond_d8
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 219
    if-eqz p2, :cond_f7

    .line 221
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 224
    move-result p2

    .line 225
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 227
    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    .line 230
    move-result p3

    .line 231
    sub-int/2addr p2, p3

    .line 232
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 234
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 236
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandedHeight()I

    .line 239
    move-result p2

    .line 240
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 242
    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    .line 245
    move-result p3

    .line 246
    :goto_f5
    sub-int/2addr p2, p3

    .line 247
    goto :goto_f8

    .line 248
    :cond_f7
    move p2, v0

    .line 249
    :goto_f8
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 251
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 254
    move-result p3

    .line 255
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 257
    const/high16 p4, 0x3f800000  # 1.0f

    .line 259
    if-nez p2, :cond_106

    .line 261
    move p3, p4

    .line 262
    goto :goto_10c

    .line 263
    :cond_106
    sub-int p3, p2, p3

    .line 265
    int-to-float p3, p3

    .line 266
    mul-float/2addr p3, p4

    .line 267
    int-to-float p5, p2

    .line 268
    div-float/2addr p3, p5

    .line 269
    :goto_10c
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    .line 271
    invoke-static {p4, p3}, Ljava/lang/Math;->min(FF)F

    .line 274
    move-result p2

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 278
    move-result p3

    .line 279
    const/4 p4, 0x0

    .line 280
    cmpg-float p3, p3, p4

    .line 282
    if-gez p3, :cond_11c

    .line 284
    move p2, p4

    .line 285
    :cond_11c
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    .line 287
    sub-float/2addr p3, p2

    .line 288
    cmpl-float p4, p3, p4

    .line 290
    if-lez p4, :cond_124

    .line 292
    goto :goto_125

    .line 293
    :cond_124
    move v1, v0

    .line 294
    :goto_125
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastToState:I

    .line 296
    iget-boolean p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    .line 298
    if-eqz p4, :cond_139

    .line 300
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    .line 302
    if-eqz p4, :cond_139

    .line 304
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 306
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinatedOffsetYInSearchModeAnimation:I

    .line 308
    add-int/2addr p5, v2

    .line 309
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    .line 311
    invoke-interface {p4, v1, p2, p5, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;->onActionBarResizing(IFII)V

    .line 314
    :cond_139
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 316
    if-eqz p4, :cond_141

    .line 318
    invoke-virtual {p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandStateOnLayout()Z

    .line 321
    move-result v0

    .line 322
    :cond_141
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    .line 324
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 327
    move-result-object p4

    .line 328
    :cond_147
    :goto_147
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    move-result p5

    .line 332
    if-eqz p5, :cond_167

    .line 334
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    move-result-object p5

    .line 338
    check-cast p5, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 340
    invoke-interface {p5, p3, p2}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onActionBarMove(FF)V

    .line 343
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastToState:I

    .line 345
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 347
    invoke-interface {p5, v1, p2, v2}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onActionBarResizing(IFI)V

    .line 350
    if-eqz v0, :cond_147

    .line 352
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 354
    iget v1, v1, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 356
    invoke-interface {p5, v1}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onExpandStateChanged(I)V

    .line 359
    goto :goto_147

    .line 360
    :cond_167
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    .line 362
    if-eqz p1, :cond_16e

    .line 364
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 367
    :cond_16e
    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onMeasureSplit(II)V

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 11
    if-eqz v0, :cond_21

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 16
    move-result v1

    .line 17
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    .line 19
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 24
    move-result v3

    .line 25
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    move-result v4

    .line 31
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    :cond_21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 36
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 41
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Landroid/view/View;)V

    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 47
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 49
    const/16 v0, 0x8

    .line 51
    const/4 v1, 0x1

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz p1, :cond_46

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 58
    move-result p1

    .line 59
    if-eq p1, v0, :cond_46

    .line 61
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 66
    move-result p1

    .line 67
    if-lez p1, :cond_46

    .line 69
    move p1, v1

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move p1, v2

    .line 72
    :goto_47
    if-eqz p1, :cond_69

    .line 74
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 76
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 84
    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isCollapsed()Z

    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_5c

    .line 90
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 92
    goto :goto_6a

    .line 93
    :cond_5c
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 98
    move-result v4

    .line 99
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 101
    add-int/2addr v4, v5

    .line 102
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 104
    add-int/2addr v3, v4

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    move v3, v2

    .line 107
    :goto_6a
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 109
    if-eqz v4, :cond_7d

    .line 111
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 114
    move-result v4

    .line 115
    if-eq v4, v0, :cond_7d

    .line 117
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 119
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 122
    move-result v4

    .line 123
    if-lez v4, :cond_7d

    .line 125
    goto :goto_7e

    .line 126
    :cond_7d
    move v1, v2

    .line 127
    :goto_7e
    if-eqz v1, :cond_95

    .line 129
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 131
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 139
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 142
    move-result v4

    .line 143
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 145
    add-int/2addr v4, v5

    .line 146
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 148
    add-int/2addr v4, v1

    .line 149
    goto :goto_96

    .line 150
    :cond_95
    move v4, v2

    .line 151
    :goto_96
    if-gtz v3, :cond_9a

    .line 153
    if-lez v4, :cond_a5

    .line 155
    :cond_9a
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 158
    move-result v1

    .line 159
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 162
    move-result v4

    .line 163
    invoke-virtual {p0, v1, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 166
    :cond_a5
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 168
    if-eqz v1, :cond_d8

    .line 170
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 173
    move-result v1

    .line 174
    if-eq v1, v0, :cond_d8

    .line 176
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 179
    move-result v0

    .line 180
    const/high16 v1, -0x80000000

    .line 182
    if-ne v0, v1, :cond_d8

    .line 184
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 187
    move-result p2

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 191
    move-result v0

    .line 192
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 194
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 197
    move-result v1

    .line 198
    add-int/2addr v1, v3

    .line 199
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 202
    move-result p2

    .line 203
    if-nez p1, :cond_d3

    .line 205
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 207
    if-eqz p1, :cond_d3

    .line 209
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 211
    goto :goto_d4

    .line 212
    :cond_d3
    move p1, v2

    .line 213
    :goto_d4
    add-int/2addr p2, p1

    .line 214
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 217
    :cond_d8
    move p1, v2

    .line 218
    move p2, p1

    .line 219
    :goto_da
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 222
    move-result v0

    .line 223
    if-ge p1, v0, :cond_fb

    .line 225
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_f8

    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 238
    move-result v1

    .line 239
    if-lez v1, :cond_f8

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 244
    move-result v0

    .line 245
    if-lez v0, :cond_f8

    .line 247
    add-int/lit8 p2, p2, 0x1

    .line 249
    :cond_f8
    add-int/lit8 p1, p1, 0x1

    .line 251
    goto :goto_da

    .line 252
    :cond_fb
    if-nez p2, :cond_100

    .line 254
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 257
    :cond_100
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .registers 16

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    const/16 v1, 0x8

    .line 5
    if-eqz v0, :cond_18

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_18

    .line 13
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 15
    move-object v3, p1

    .line 16
    move v4, p2

    .line 17
    move v5, p3

    .line 18
    move-object v6, p4

    .line 19
    move v7, p5

    .line 20
    move-object v8, p6

    .line 21
    invoke-virtual/range {v2 .. v8}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    .line 24
    goto :goto_2d

    .line 25
    :cond_18
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 27
    if-nez v0, :cond_2d

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 32
    move-result v0

    .line 33
    if-eq v0, v1, :cond_2d

    .line 35
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 37
    move-object v3, p1

    .line 38
    move v4, p2

    .line 39
    move v5, p3

    .line 40
    move-object v6, p4

    .line 41
    move v7, p5

    .line 42
    move-object v8, p6

    .line 43
    invoke-virtual/range {v2 .. v8}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    .line 46
    :cond_2d
    :goto_2d
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    .line 48
    if-eqz p1, :cond_57

    .line 50
    if-lez p3, :cond_57

    .line 52
    const/4 p1, 0x1

    .line 53
    aget p2, p4, p1

    .line 55
    sub-int/2addr p3, p2

    .line 56
    if-lez p3, :cond_57

    .line 58
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarBlurByNestedScrolled(Z)V

    .line 61
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 63
    if-nez p1, :cond_57

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 68
    move-result p1

    .line 69
    if-ne p1, v1, :cond_57

    .line 71
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 73
    const/4 p2, 0x0

    .line 74
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 77
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    .line 79
    if-eqz p1, :cond_57

    .line 81
    const/high16 p3, 0x3f800000  # 1.0f

    .line 83
    iget p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    .line 85
    invoke-interface {p1, p2, p3, p2, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;->onActionBarResizing(IFII)V

    .line 88
    :cond_57
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .registers 22

    .line 1
    move-object v0, p0

    .line 2
    const/4 v10, 0x1

    .line 3
    aget v11, p7, v10

    .line 5
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 7
    const/16 v12, 0x8

    .line 9
    if-eqz v1, :cond_24

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_24

    .line 17
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 19
    move-object v2, p1

    .line 20
    move v3, p2

    .line 21
    move/from16 v4, p3

    .line 23
    move/from16 v5, p4

    .line 25
    move/from16 v6, p5

    .line 27
    move/from16 v7, p6

    .line 29
    move-object/from16 v8, p7

    .line 31
    move-object/from16 v9, p8

    .line 33
    invoke-virtual/range {v1 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    .line 36
    goto :goto_41

    .line 37
    :cond_24
    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 39
    if-nez v1, :cond_41

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 44
    move-result v1

    .line 45
    if-eq v1, v12, :cond_41

    .line 47
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 49
    move-object v2, p1

    .line 50
    move v3, p2

    .line 51
    move/from16 v4, p3

    .line 53
    move/from16 v5, p4

    .line 55
    move/from16 v6, p5

    .line 57
    move/from16 v7, p6

    .line 59
    move-object/from16 v8, p7

    .line 61
    move-object/from16 v9, p8

    .line 63
    invoke-virtual/range {v1 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    .line 66
    :cond_41
    :goto_41
    aget v1, p7, v10

    .line 68
    sub-int/2addr v1, v11

    .line 69
    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    .line 71
    if-eqz v2, :cond_69

    .line 73
    if-gez p5, :cond_69

    .line 75
    if-gtz v1, :cond_69

    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarBlurByNestedScrolled(Z)V

    .line 81
    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 83
    if-nez v1, :cond_69

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 88
    move-result v1

    .line 89
    if-ne v1, v12, :cond_69

    .line 91
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 93
    invoke-virtual {v1, v10}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 96
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    .line 98
    if-eqz v1, :cond_69

    .line 100
    const/4 v2, 0x0

    .line 101
    iget v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    .line 103
    invoke-interface {v1, v10, v2, v3, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;->onActionBarResizing(IFII)V

    .line 106
    :cond_69
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_10

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 16
    goto :goto_21

    .line 17
    :cond_10
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 19
    if-nez v0, :cond_21

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 24
    move-result v0

    .line 25
    const/16 v1, 0x8

    .line 27
    if-eq v0, v1, :cond_21

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 31
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onPageScrolled(IFZZ)V

    .line 12
    :cond_b
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method

.method public onResidentActionMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    if-eqz p1, :cond_28

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_28

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    .line 14
    move-result v0

    .line 15
    invoke-interface {p1, v0}, Lmiuix/view/BlurableWidget;->setSupportBlur(Z)V

    .line 18
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    .line 21
    move-result v0

    .line 22
    invoke-interface {p1, v0}, Lmiuix/view/BlurableWidget;->setEnableBlur(Z)V

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 27
    if-eqz v0, :cond_21

    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result v0

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    .line 37
    move-result v0

    .line 38
    :goto_25
    invoke-interface {p1, v0}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    .line 41
    :cond_28
    return-void
.end method

.method public onResidentActionMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    if-ne v0, p1, :cond_7

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 8
    :cond_7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    .line 1
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userActionBarApplyBlur:I

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v0, v2, :cond_13

    .line 17
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 19
    goto :goto_20

    .line 20
    :cond_13
    if-nez v0, :cond_1a

    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    if-ne v0, v3, :cond_20

    .line 29
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 33
    :cond_20
    :goto_20
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userSplitActionBarApplyBlur:I

    .line 35
    if-ne v0, v2, :cond_27

    .line 37
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 39
    goto :goto_34

    .line 40
    :cond_27
    if-nez v0, :cond_2e

    .line 42
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 46
    goto :goto_34

    .line 47
    :cond_2e
    if-ne v0, v3, :cond_34

    .line 49
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 53
    :cond_34
    :goto_34
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarSupportBlur:Z

    .line 55
    if-eqz v0, :cond_3b

    .line 57
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setSupportBlur(Z)V

    .line 60
    :cond_3b
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarEnableBlur:Z

    .line 62
    if-eqz v0, :cond_42

    .line 64
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setEnableBlur(Z)V

    .line 67
    :cond_42
    iget-boolean p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarApplyBlur:Z

    .line 69
    if-eqz p1, :cond_4f

    .line 71
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_4f

    .line 77
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    .line 80
    :cond_4f
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    .line 7
    invoke-direct {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, -0x1

    .line 15
    if-nez v0, :cond_12

    .line 17
    move v0, v4

    .line 18
    goto :goto_1b

    .line 19
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1a

    .line 25
    move v0, v2

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v0, v3

    .line 28
    :goto_1b
    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userActionBarApplyBlur:I

    .line 30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 32
    if-nez v0, :cond_23

    .line 34
    move v2, v4

    .line 35
    goto :goto_2b

    .line 36
    :cond_23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2a

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v2, v3

    .line 44
    :goto_2b
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userSplitActionBarApplyBlur:I

    .line 46
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    .line 49
    move-result v0

    .line 50
    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarSupportBlur:Z

    .line 52
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    .line 55
    move-result v0

    .line 56
    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarEnableBlur:Z

    .line 58
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isApplyBlur()Z

    .line 61
    move-result v0

    .line 62
    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarApplyBlur:Z

    .line 64
    return-object v1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_11

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 20
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_10

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 13
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onStopNestedScroll(Landroid/view/View;I)V

    .line 16
    goto :goto_21

    .line 17
    :cond_10
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 19
    if-nez v0, :cond_21

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 24
    move-result v0

    .line 25
    const/16 v1, 0x8

    .line 27
    if-eq v0, v1, :cond_21

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 31
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onStopNestedScroll(Landroid/view/View;I)V

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public onWindowHide()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 18
    :cond_11
    return-void
.end method

.method public onWindowShow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 18
    :cond_11
    return-void
.end method

.method public removeActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method

.method public resetActionBarBlurConfig()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 4
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplyBgBlur:Z

    .line 6
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    .line 9
    return-void
.end method

.method public setActionBarBlur(Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    if-nez p1, :cond_12

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 13
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplyBgBlur:Z

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 21
    if-eqz v0, :cond_20

    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result v1

    .line 31
    if-eq v0, v1, :cond_29

    .line 33
    :cond_20
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    .line 42
    :cond_29
    return-void
.end method

.method public setActionBarBlurByNestedScrolled(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplyBgBlur:Z

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    .line 11
    return-void
.end method

.method public setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    if-eqz p1, :cond_19

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 7
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 12
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 18
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 20
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 26
    :cond_19
    return-void
.end method

.method public setActionBarCoordinateListener(Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    .line 3
    return-void
.end method

.method public setAlpha(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    return-void
.end method

.method public setCoordinatedOffsetYInSearchModeAnimation(I)V
    .registers 6

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinatedOffsetYInSearchModeAnimation:I

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastToState:I

    .line 9
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    .line 11
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 13
    add-int/2addr v3, p1

    .line 14
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    .line 16
    invoke-interface {v0, v1, v2, v3, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;->onActionBarResizing(IFII)V

    .line 19
    :cond_12
    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    .line 6
    return-void
.end method

.method public setIsMiuixFloating(Z)V
    .registers 5

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2e

    .line 8
    if-eqz p1, :cond_22

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 18
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 26
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 31
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 34
    goto :goto_2e

    .line 35
    :cond_22
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 37
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 40
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 42
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 44
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 47
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 49
    if-eqz v0, :cond_59

    .line 51
    if-eqz p1, :cond_4d

    .line 53
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 59
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 61
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    .line 64
    move-result p1

    .line 65
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 67
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 69
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 72
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 74
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 77
    goto :goto_59

    .line 78
    :cond_4d
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 80
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 83
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 85
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 87
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 90
    :cond_59
    :goto_59
    return-void
.end method

.method public setMiuixFloatingOnInit(Z)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_21

    .line 8
    if-eqz p1, :cond_21

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 23
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 28
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 34
    :cond_21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 36
    if-eqz v0, :cond_3f

    .line 38
    if-eqz p1, :cond_3f

    .line 40
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    .line 43
    move-result p1

    .line 44
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 46
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 48
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 51
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 53
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 56
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 58
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    .line 61
    move-result p1

    .line 62
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 64
    :cond_3f
    return-void
.end method

.method public setOverlayMode(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    .line 3
    return-void
.end method

.method public setPendingInsets(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 3
    if-nez v0, :cond_26

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 7
    if-nez v0, :cond_f

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    .line 11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 18
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_26

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 26
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 29
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 31
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Landroid/view/View;)V

    .line 34
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 36
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Landroid/view/View;)V

    .line 39
    :cond_26
    return-void
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_14

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p0, v1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    move-object v1, v0

    .line 21
    :cond_14
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 23
    const/4 v0, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz p1, :cond_2b

    .line 27
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 30
    if-nez v1, :cond_23

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 35
    goto :goto_28

    .line 36
    :cond_23
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 41
    :goto_28
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    .line 43
    goto :goto_2d

    .line 44
    :cond_2b
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    .line 46
    :goto_2d
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 48
    if-eqz p1, :cond_36

    .line 50
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 52
    if-nez p1, :cond_3f

    .line 54
    goto :goto_40

    .line 55
    :cond_36
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 57
    if-nez p1, :cond_3f

    .line 59
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 61
    if-nez p1, :cond_3f

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v0, v2

    .line 65
    :goto_40
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 71
    return-void
.end method

.method public setSplitActionBarBlur(Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 10
    if-eqz v0, :cond_17

    .line 12
    if-eqz p1, :cond_12

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result v1

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    .line 21
    :goto_14
    invoke-interface {v0, v1}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 26
    if-eqz v0, :cond_27

    .line 28
    if-eqz p1, :cond_22

    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result p1

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    .line 37
    :goto_24
    invoke-interface {v0, p1}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    .line 40
    :cond_27
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_d
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 21
    :cond_14
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 23
    const/4 v0, 0x1

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz p1, :cond_1f

    .line 27
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 29
    if-nez p1, :cond_28

    .line 31
    goto :goto_29

    .line 32
    :cond_1f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 34
    if-nez p1, :cond_28

    .line 36
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 38
    if-nez p1, :cond_28

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move v0, v1

    .line 42
    :goto_29
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 48
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_d
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 21
    :cond_14
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 23
    const/4 v0, 0x1

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz p1, :cond_1f

    .line 27
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 29
    if-nez p1, :cond_28

    .line 31
    goto :goto_29

    .line 32
    :cond_1f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 34
    if-nez p1, :cond_28

    .line 36
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 38
    if-nez p1, :cond_28

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move v0, v1

    .line 42
    :goto_29
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 45
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 47
    if-eqz p1, :cond_35

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_35
    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    .line 6
    return-void
.end method

.method public setTabContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_7
    if-eqz p1, :cond_21

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, -0x1

    .line 18
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    const/4 v1, -0x2

    .line 21
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    .line 33
    goto :goto_29

    .line 34
    :cond_21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 36
    if-eqz v0, :cond_29

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    :cond_29
    :goto_29
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 44
    return-void
.end method

.method public setTransitioning(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 3
    if-eqz p1, :cond_7

    .line 5
    const/high16 p1, 0x60000

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const/high16 p1, 0x40000

    .line 10
    :goto_9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 13
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move p1, v0

    .line 10
    :goto_9
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v1, :cond_10

    .line 14
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 17
    :cond_10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 19
    if-eqz v1, :cond_17

    .line 21
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 24
    :cond_17
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 26
    if-eqz v1, :cond_1e

    .line 28
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 31
    :cond_1e
    return-void
.end method

.method public show(Z)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mNowShowing:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mNowShowing:Z

    .line 9
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 11
    if-eqz v1, :cond_f

    .line 13
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz p1, :cond_5d

    .line 23
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 25
    if-eqz p1, :cond_60

    .line 27
    const/4 p1, 0x2

    .line 28
    new-array p1, p1, [F

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 33
    move-result v3

    .line 34
    int-to-float v3, v3

    .line 35
    aput v3, p1, v1

    .line 37
    aput v2, p1, v0

    .line 39
    const-string v0, "TranslationY"

    .line 41
    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 47
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_44

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v0

    .line 61
    const/high16 v1, 0x10e0000

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 66
    move-result v0

    .line 67
    int-to-long v0, v0

    .line 68
    goto :goto_46

    .line 69
    :cond_44
    const-wide/16 v0, 0x0

    .line 71
    :goto_46
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 74
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 76
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    .line 78
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 83
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 86
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 88
    if-eqz p1, :cond_60

    .line 90
    invoke-virtual {p1}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 93
    goto :goto_60

    .line 94
    :cond_5d
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 97
    :cond_60
    :goto_60
    return-void
.end method

.method public startActionMode()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsInActionMode:Z

    .line 4
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public updateBackground(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_6

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    .line 6
    goto :goto_9

    .line 7
    :cond_6
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    .line 10
    :goto_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->updateBackground(Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 19
    if-eqz v0, :cond_17

    .line 21
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setApplyBgBlur(Z)V

    .line 24
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    if-ne p1, v0, :cond_8

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 7
    if-eqz v0, :cond_1e

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 11
    if-ne p1, v0, :cond_10

    .line 13
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsStacked:Z

    .line 15
    if-nez v0, :cond_1e

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 19
    if-ne p1, v0, :cond_18

    .line 21
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 23
    if-nez v0, :cond_1e

    .line 25
    :cond_18
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_20

    .line 31
    :cond_1e
    const/4 p1, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    :goto_21
    return p1
.end method
