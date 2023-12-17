.class public Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lm0/t;
.implements Lmiuix/appcompat/app/IMenuState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field public mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field public mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

.field private mAnimating:Z

.field private mBaseContentInsets:Landroid/graphics/Rect;

.field private mBaseInnerInsets:Landroid/graphics/Rect;

.field private mBottomExtraInset:I

.field private mBottomMenuExtraInset:I

.field private mBottomMenuMode:I

.field private mBottomMenuModeConfig:I

.field private final mBottomMenuVisibleHeight:[I

.field private mCallback:Landroid/view/Window$Callback;

.field private mContentAutoFitSystemWindow:Z

.field private mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

.field private mContentInsetStateCallback:Lmiuix/appcompat/app/IContentInsetState;

.field private mContentInsets:Landroid/graphics/Rect;

.field private mContentMask:Landroid/view/View;

.field private mContentMaskInsets:Landroid/graphics/Rect;

.field public mContentView:Landroid/view/View;

.field private mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

.field private mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

.field private mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

.field private mContextMenuPopupWindowHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

.field public final mCoordinatedScrollViewSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCorrectNestedScrollMotionEventEnabled:Z

.field private final mCurrentContentInset:Landroid/graphics/Rect;

.field private mDeviceType:I

.field private mExtraPaddingApplyToContentEnable:Z

.field private mExtraPaddingEnable:Z

.field private mExtraPaddingHorizontal:I

.field private mExtraPaddingObserver:Lmiuix/appcompat/app/ExtraPaddingObserver;

.field private mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

.field private mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

.field private mInflateLayout:Landroid/view/View;

.field private mInnerInsets:Landroid/graphics/Rect;

.field private mInsetTopInMiuixFloating:I

.field private mIsFloatingTheme:Z

.field private mIsFloatingWindow:Z

.field private mIsInSearchMode:Z

.field private mIsMiuixFloating:Z

.field private mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastDispatchContentInset:Landroid/graphics/Rect;

.field private mLastInnerInsets:Landroid/graphics/Rect;

.field private mLifecycleOwner:Landroidx/lifecycle/m;

.field private final mOffsetInWindow:[I

.field private mOnStatusBarChangeListener:Lmiuix/appcompat/app/OnStatusBarChangeListener;

.field private final mOriginalInset:Landroid/graphics/Rect;

.field private mOverlayMode:Z

.field private mRequestFitSystemWindow:Z

.field private mRootSubDecor:Z

.field public mSplitAnimContentMask:Landroid/view/ViewStub;

.field private mSqueezeContentByIme:Z

.field private final mThemeCompatSystemInset:Landroid/graphics/Rect;

.field private mTranslucentStatus:I

.field private mWindowInfo:Lmiuix/core/util/WindowBaseInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLifecycleOwner:Landroidx/lifecycle/m;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    .line 8
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 9
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 10
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 11
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 12
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 13
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 14
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    .line 15
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    .line 16
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    .line 17
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 18
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOriginalInset:Landroid/graphics/Rect;

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 19
    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuVisibleHeight:[I

    .line 20
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    .line 21
    new-instance v4, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-direct {v4, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    .line 22
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    .line 23
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 24
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCorrectNestedScrollMotionEventEnabled:Z

    .line 25
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    new-array v0, v3, [I

    .line 26
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    .line 27
    invoke-static {p1}, Lmiuix/smooth/SmoothCornerHelper;->init(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-direct {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 29
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    .line 30
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->initExtraPaddingPolicy()V

    .line 31
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 32
    sget p3, Lmiuix/appcompat/R$styleable;->Window_isMiuixFloatingTheme:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    .line 33
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 34
    sget p3, Lmiuix/appcompat/R$styleable;->Window_contentAutoFitSystemWindow:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz p3, :cond_b3

    .line 35
    sget p3, Lmiuix/appcompat/R$styleable;->Window_contentHeaderBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 36
    :cond_b3
    sget p3, Lmiuix/appcompat/R$styleable;->Window_windowExtraPaddingHorizontalEnable:I

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 37
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingEnable(Z)V

    .line 38
    sget p3, Lmiuix/appcompat/R$styleable;->Window_windowExtraPaddingApplyToContentEnable:I

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 39
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingApplyToContentEnable(Z)V

    .line 40
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    sget p2, Lmiuix/appcompat/R$attr;->bottomMenuMode:I

    invoke-static {p1, p2, v1}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuModeConfig:I

    .line 42
    sget p2, Lmiuix/appcompat/R$attr;->squeezeContentByIme:I

    invoke-static {p1, p2, v1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->lambda$onConfigurationChanged$0()V

    return-void
.end method

.method public static synthetic access$202(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Lmiuix/appcompat/app/ActionBar;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dismissContextMenu()V

    .line 4
    return-void
.end method

.method private adjustNestedScrollMotionEventCoordinate(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCorrectNestedScrollMotionEventEnabled:Z

    .line 7
    if-nez v0, :cond_12

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsetStateCallback:Lmiuix/appcompat/app/IContentInsetState;

    .line 11
    if-eqz p1, :cond_11

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    .line 15
    invoke-interface {p1, v0}, Lmiuix/appcompat/app/IContentInsetState;->onDispatchNestedScrollOffset([I)V

    .line 18
    :cond_11
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    .line 21
    const/4 v1, 0x1

    .line 22
    aget v0, v0, v1

    .line 24
    neg-int v0, v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 28
    return-void
.end method

.method private applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p3, :cond_13

    .line 10
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 12
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 14
    if-eq p3, v1, :cond_13

    .line 16
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 18
    move p3, v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p3, 0x0

    .line 21
    :goto_14
    if-eqz p4, :cond_1f

    .line 23
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 25
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 27
    if-eq p4, v1, :cond_1f

    .line 29
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 31
    move p3, v0

    .line 32
    :cond_1f
    if-eqz p5, :cond_2a

    .line 34
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 36
    iget p5, p2, Landroid/graphics/Rect;->right:I

    .line 38
    if-eq p4, p5, :cond_2a

    .line 40
    iput p5, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 42
    move p3, v0

    .line 43
    :cond_2a
    if-eqz p6, :cond_35

    .line 45
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 47
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 49
    if-eq p4, p2, :cond_35

    .line 51
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v0, p3

    .line 55
    :goto_36
    return v0
.end method

.method private computeFitSystemInsets(ZZILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p5, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    const/4 p4, 0x0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    if-eqz p1, :cond_12

    .line 13
    :cond_c
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    .line 15
    if-nez p1, :cond_12

    .line 17
    iput p4, p5, Landroid/graphics/Rect;->top:I

    .line 19
    :cond_12
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 21
    if-nez p1, :cond_25

    .line 23
    if-eqz p2, :cond_19

    .line 25
    goto :goto_25

    .line 26
    :cond_19
    iget p1, p5, Landroid/graphics/Rect;->bottom:I

    .line 28
    if-eqz p1, :cond_27

    .line 30
    sub-int/2addr p1, p3

    .line 31
    iput p1, p5, Landroid/graphics/Rect;->bottom:I

    .line 33
    if-gez p1, :cond_27

    .line 35
    iput p4, p5, Landroid/graphics/Rect;->bottom:I

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    :goto_25
    iput p4, p5, Landroid/graphics/Rect;->bottom:I

    .line 40
    :cond_27
    :goto_27
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    .line 42
    if-eqz p1, :cond_33

    .line 44
    if-lez p3, :cond_33

    .line 46
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOriginalInset:Landroid/graphics/Rect;

    .line 48
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 50
    iput p1, p5, Landroid/graphics/Rect;->bottom:I

    .line 52
    :cond_33
    return-void
.end method

.method private createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    .line 7
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    .line 10
    return-object v0

    .line 11
    :cond_a
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    .line 13
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    .line 16
    return-object v0
.end method

.method private dismissContextMenu()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 11
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 13
    :cond_c
    return-void
.end method

.method private dispatchContentInset(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    if-eqz v0, :cond_12

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 16
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->notifyContentInset()V

    .line 19
    :cond_12
    return-void
.end method

.method private getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/ViewGroup;

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    instance-of v0, p1, Landroid/app/Activity;

    .line 18
    if-eqz v0, :cond_16

    .line 20
    check-cast p1, Landroid/app/Activity;

    .line 22
    return-object p1

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method private getAdjustView(Landroid/view/View;)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_14

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    return-object p1

    .line 18
    :cond_11
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 20
    return-object p1

    .line 21
    :cond_14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 23
    return-object p1
.end method

.method private initExtraPaddingPolicy()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    .line 3
    invoke-direct {v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;-><init>()V

    .line 6
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    .line 8
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->createDefault(I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 14
    return-void
.end method

.method private internalShowContextMenu(Landroid/view/View;FF)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 3
    if-nez v0, :cond_15

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 16
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clear()V

    .line 25
    :goto_18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, p1, v1, p2, p3}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;FF)Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 34
    move-result-object p2

    .line 35
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 37
    if-eqz p2, :cond_2d

    .line 39
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    .line 41
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 44
    const/4 p1, 0x1

    .line 45
    return p1

    .line 46
    :cond_2d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method private isBackPressed(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x4

    .line 7
    if-ne v0, v2, :cond_f

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    move-result p1

    .line 13
    if-ne p1, v1, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    :goto_10
    return v1
.end method

.method private isBottomAnimating()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimating:Z

    .line 3
    return v0
.end method

.method private isCutoutToLeftEdge()Z
    .registers 7

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$j;->a(Landroid/view/View;)Lm0/r0;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_46

    .line 10
    iget-object v0, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 12
    invoke-virtual {v0}, Lm0/r0$k;->e()Lm0/d;

    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_35

    .line 19
    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_34

    .line 25
    const/4 v3, 0x0

    .line 26
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    const/16 v5, 0x1d

    .line 30
    if-lt v4, v5, :cond_2b

    .line 32
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lf1/x;->d(Landroid/view/Display;)Landroid/view/DisplayCutout;

    .line 43
    move-result-object v3

    .line 44
    :cond_2b
    if-eqz v3, :cond_34

    .line 46
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 49
    move-result v0

    .line 50
    if-lez v0, :cond_34

    .line 52
    move v1, v2

    .line 53
    :cond_34
    return v1

    .line 54
    :cond_35
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v4, 0x1c

    .line 58
    if-lt v3, v4, :cond_42

    .line 60
    iget-object v0, v0, Lm0/d;->a:Landroid/view/DisplayCutout;

    .line 62
    invoke-static {v0}, Lm0/d$a;->d(Landroid/view/DisplayCutout;)I

    .line 65
    move-result v0

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v0, v1

    .line 68
    :goto_43
    if-lez v0, :cond_46

    .line 70
    move v1, v2

    .line 71
    :cond_46
    return v1
.end method

.method private isLayoutHideNavigation()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0x200

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method private synthetic lambda$onConfigurationChanged$0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->refreshBottomMenu()V

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->refreshBottomMenu()V

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 17
    if-eqz v0, :cond_2c

    .line 19
    const/4 v0, 0x1

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLifecycleOwner:Landroidx/lifecycle/m;

    .line 22
    if-eqz v1, :cond_25

    .line 24
    invoke-interface {v1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    :cond_25
    if-nez v0, :cond_2c

    .line 40
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 42
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->close()V

    .line 45
    :cond_2c
    return-void
.end method

.method private notifyContentInset()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 3
    if-eqz v0, :cond_18

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 7
    if-eqz v0, :cond_f

    .line 9
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 11
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateContentInsetForNestedObserver(Landroid/graphics/Rect;)V

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsetStateCallback:Lmiuix/appcompat/app/IContentInsetState;

    .line 18
    if-eqz v0, :cond_18

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    .line 22
    invoke-interface {v0, v1}, Lmiuix/appcompat/app/IContentInsetState;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 25
    :cond_18
    return-void
.end method

.method private pullChildren()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 3
    if-nez v0, :cond_72

    .line 5
    const v0, 0x1020002

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 14
    sget v0, Lmiuix/appcompat/R$id;->action_bar_container:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 22
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 24
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_38

    .line 29
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 31
    if-eqz v1, :cond_38

    .line 33
    if-eqz v0, :cond_38

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    sget v1, Lmiuix/appcompat/R$attr;->windowActionBar:I

    .line 41
    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_38

    .line 47
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 49
    const/16 v1, 0x8

    .line 51
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 57
    :cond_38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 59
    if-eqz v0, :cond_72

    .line 61
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 63
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setOverlayMode(Z)V

    .line 66
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 68
    sget v1, Lmiuix/appcompat/R$id;->action_bar:I

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 76
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 78
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    .line 80
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBottomMenuMode(I)V

    .line 83
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    .line 85
    if-eqz v0, :cond_5b

    .line 87
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 89
    if-eqz v0, :cond_5b

    .line 91
    const/4 v2, 0x1

    .line 92
    :cond_5b
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    .line 94
    if-eqz v2, :cond_6b

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object v0

    .line 100
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_top_offset:I

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetTopInMiuixFloating:I

    .line 108
    :cond_6b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 110
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    .line 112
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setMiuixFloatingOnInit(Z)V

    .line 115
    :cond_72
    return-void
.end method


# virtual methods
.method public animateContentMarginBottomByBottomMenu(I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    .line 12
    :cond_b
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 16
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 18
    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 20
    iput p1, v3, Landroid/graphics/Rect;->bottom:I

    .line 22
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 24
    iput p1, v3, Landroid/graphics/Rect;->right:I

    .line 26
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 28
    iput p1, v3, Landroid/graphics/Rect;->left:I

    .line 30
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x1

    .line 35
    const/4 v7, 0x1

    .line 36
    move-object v1, p0

    .line 37
    invoke-direct/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 40
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 45
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    .line 3
    if-eqz v0, :cond_1e

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 7
    if-eqz v0, :cond_1e

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 16
    move-result v2

    .line 17
    sub-int/2addr v1, v2

    .line 18
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 20
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    :cond_1e
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 34
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isBackPressed(Landroid/view/KeyEvent;)Z

    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_31

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 18
    if-eqz p1, :cond_26

    .line 20
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 22
    if-eqz p1, :cond_1d

    .line 24
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->hideOverflowMenu()Z

    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_32

    .line 30
    :cond_1d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 32
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 38
    goto :goto_32

    .line 39
    :cond_26
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 41
    if-eqz p1, :cond_31

    .line 43
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideOverflowMenu()Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_31

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v1, v0

    .line 51
    :cond_32
    :goto_32
    return v1
.end method

.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 12

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    .line 4
    move-result v2

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    .line 8
    move-result v6

    .line 9
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOriginalInset:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 19
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 24
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 26
    invoke-static {p0}, Lm0/g0$j;->a(Landroid/view/View;)Lm0/r0;

    .line 29
    move-result-object v1

    .line 30
    const/4 v7, 0x0

    .line 31
    if-eqz v1, :cond_51

    .line 33
    const/4 v3, 0x7

    .line 34
    invoke-virtual {v1, v3}, Lm0/r0;->a(I)Lf0/f;

    .line 37
    move-result-object v4

    .line 38
    iget v4, v4, Lf0/f;->b:I

    .line 40
    invoke-virtual {v1, v3}, Lm0/r0;->a(I)Lf0/f;

    .line 43
    move-result-object v3

    .line 44
    iget v3, v3, Lf0/f;->d:I

    .line 46
    const/16 v4, 0x8

    .line 48
    invoke-virtual {v1, v4}, Lm0/r0;->a(I)Lf0/f;

    .line 51
    move-result-object v5

    .line 52
    iget v5, v5, Lf0/f;->d:I

    .line 54
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 56
    const/4 v9, 0x6

    .line 57
    invoke-virtual {v1, v9}, Lm0/r0;->a(I)Lf0/f;

    .line 60
    move-result-object v9

    .line 61
    iget v9, v9, Lf0/f;->d:I

    .line 63
    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 65
    iget-boolean v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    .line 67
    if-eqz v8, :cond_53

    .line 69
    invoke-virtual {v1, v4}, Lm0/r0;->a(I)Lf0/f;

    .line 72
    move-result-object v1

    .line 73
    iget v1, v1, Lf0/f;->d:I

    .line 75
    if-lez v1, :cond_53

    .line 77
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 79
    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 81
    goto :goto_53

    .line 82
    :cond_51
    move v3, v7

    .line 83
    move v5, v3

    .line 84
    :cond_53
    :goto_53
    if-nez v2, :cond_59

    .line 86
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 88
    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 90
    :cond_59
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiuix/appcompat/app/OnStatusBarChangeListener;

    .line 92
    if-eqz v1, :cond_62

    .line 94
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 96
    invoke-interface {v1, v0}, Lmiuix/appcompat/app/OnStatusBarChangeListener;->onStatusBarHeightChange(I)V

    .line 99
    :cond_62
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    .line 101
    if-eqz v0, :cond_7e

    .line 103
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 105
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetTopInMiuixFloating:I

    .line 107
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 109
    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 111
    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 113
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 115
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 117
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 119
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 121
    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 123
    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 125
    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 127
    :cond_7e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 129
    const/16 v1, 0x1c

    .line 131
    const/4 v8, 0x1

    .line 132
    if-lt v0, v1, :cond_c5

    .line 134
    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_9b

    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_9b

    .line 146
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 149
    move-result-object v0

    .line 150
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 152
    if-ne v0, v8, :cond_9b

    .line 154
    move v0, v8

    .line 155
    goto :goto_9c

    .line 156
    :cond_9b
    move v0, v7

    .line 157
    :goto_9c
    if-nez v0, :cond_ae

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 162
    move-result-object v0

    .line 163
    const v1, 0x1010586

    .line 166
    invoke-static {v0, v1, v7}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    .line 169
    move-result v0

    .line 170
    if-ne v0, v8, :cond_ad

    .line 172
    move v0, v8

    .line 173
    goto :goto_ae

    .line 174
    :cond_ad
    move v0, v7

    .line 175
    :cond_ae
    :goto_ae
    if-eqz v0, :cond_c5

    .line 177
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 179
    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 181
    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 183
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isCutoutToLeftEdge()Z

    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_c1

    .line 189
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 191
    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 193
    goto :goto_c5

    .line 194
    :cond_c1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 196
    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 198
    :cond_c5
    :goto_c5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 200
    if-eqz v0, :cond_cc

    .line 202
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateCurrentContentInsetInOverlayMode()V

    .line 205
    :cond_cc
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    .line 208
    move-result v0

    .line 209
    if-nez v0, :cond_de

    .line 211
    if-eqz v2, :cond_da

    .line 213
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 215
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 217
    if-eq v0, v3, :cond_de

    .line 219
    :cond_da
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 221
    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 223
    :cond_de
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 225
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 227
    move-object v0, p0

    .line 228
    move v1, v6

    .line 229
    move v3, v5

    .line 230
    move-object v5, v9

    .line 231
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->computeFitSystemInsets(ZZILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 234
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 236
    if-eqz v0, :cond_11a

    .line 238
    if-eqz v6, :cond_f4

    .line 240
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 242
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 245
    :cond_f4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 247
    instance-of v1, v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    .line 249
    if-eqz v1, :cond_101

    .line 251
    check-cast v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    .line 253
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 255
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/SearchActionModeImpl;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 258
    :cond_101
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 260
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 262
    const/4 v3, 0x1

    .line 263
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_110

    .line 269
    if-nez v6, :cond_110

    .line 271
    move v4, v8

    .line 272
    goto :goto_111

    .line 273
    :cond_110
    move v4, v7

    .line 274
    :goto_111
    const/4 v5, 0x1

    .line 275
    const/4 v6, 0x0

    .line 276
    move-object v0, p0

    .line 277
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 280
    move-result v0

    .line 281
    move v9, v0

    .line 282
    goto :goto_11b

    .line 283
    :cond_11a
    move v9, v7

    .line 284
    :goto_11b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 286
    if-eqz v0, :cond_124

    .line 288
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 290
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setPendingInset(Landroid/graphics/Rect;)V

    .line 293
    :cond_124
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 295
    if-eqz v0, :cond_16f

    .line 297
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 299
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 302
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    .line 304
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 306
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 309
    new-instance v0, Landroid/graphics/Rect;

    .line 311
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 314
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 316
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 319
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 321
    if-eqz v1, :cond_144

    .line 323
    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 325
    :cond_144
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    .line 327
    if-eqz v0, :cond_161

    .line 329
    new-instance v2, Landroid/graphics/Rect;

    .line 331
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 333
    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 336
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 338
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 340
    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 342
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 344
    const/4 v3, 0x1

    .line 345
    const/4 v4, 0x0

    .line 346
    const/4 v5, 0x1

    .line 347
    const/4 v6, 0x1

    .line 348
    move-object v0, p0

    .line 349
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 352
    move-result v0

    .line 353
    goto :goto_16e

    .line 354
    :cond_161
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 356
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 358
    const/4 v3, 0x1

    .line 359
    const/4 v4, 0x0

    .line 360
    const/4 v5, 0x1

    .line 361
    const/4 v6, 0x0

    .line 362
    move-object v0, p0

    .line 363
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 366
    move-result v0

    .line 367
    :goto_16e
    or-int/2addr v9, v0

    .line 368
    :cond_16f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 370
    if-eqz v0, :cond_178

    .line 372
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 374
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setPendingInset(Landroid/graphics/Rect;)V

    .line 377
    :cond_178
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 379
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 381
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 384
    move-result v0

    .line 385
    if-nez v0, :cond_18a

    .line 387
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 389
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 391
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 394
    move v9, v8

    .line 395
    :cond_18a
    if-eqz v9, :cond_18f

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 400
    :cond_18f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 402
    if-nez v0, :cond_199

    .line 404
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 406
    if-nez v0, :cond_199

    .line 408
    move v0, v8

    .line 409
    goto :goto_19a

    .line 410
    :cond_199
    move v0, v7

    .line 411
    :goto_19a
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_1a3

    .line 417
    if-nez v0, :cond_1a3

    .line 419
    move v7, v8

    .line 420
    :cond_1a3
    return v7
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 3
    return-object v0
.end method

.method public getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    return-object v0
.end method

.method public getBaseInnerInsets()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 3
    return-object v0
.end method

.method public getBottomInset()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getInsetHeight()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public getBottomMenuCustomViewTranslationY()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getBottomMenuCustomViewOffset()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getBottomMenuMode()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    .line 3
    return v0
.end method

.method public getCallback()Landroid/view/Window$Callback;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    .line 3
    return-object v0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    .line 3
    return-object v0
.end method

.method public getContentMask()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V

    .line 7
    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getDeviceType()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    .line 3
    return v0
.end method

.method public getExtraHorizontalPadding()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingHorizontal:I

    .line 3
    return v0
.end method

.method public getExtraHorizontalPaddingLevel()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getLevel()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getInnerInsets()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 3
    return-object v0
.end method

.method public hideBottomMenu(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuExtraInset(I)V

    .line 9
    if-eqz p1, :cond_10

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 13
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHideWithAnimation(Z)V

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 19
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHide(Z)V

    .line 22
    :cond_15
    :goto_15
    return-void
.end method

.method public hideBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideBottomMenuCustomView()V

    .line 8
    :cond_7
    return-void
.end method

.method public hideContentMask()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSplitAnimContentMask:Landroid/view/ViewStub;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInflateLayout:Landroid/view/View;

    .line 7
    const/16 v1, 0x8

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_13
    return-void
.end method

.method public isExtraHorizontalPaddingEnable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->isEnable()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isExtraPaddingApplyToContentEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    .line 3
    return v0
.end method

.method public isInOverlayMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 3
    return v0
.end method

.method public isRootSubDecor()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    .line 3
    return v0
.end method

.method public isTranslucentStatus()Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 4
    move-result v0

    .line 5
    and-int/lit16 v1, v0, 0x100

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_c

    .line 11
    move v1, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v1, v3

    .line 14
    :goto_d
    and-int/lit16 v0, v0, 0x400

    .line 16
    if-eqz v0, :cond_13

    .line 18
    move v0, v2

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v0, v3

    .line 21
    :goto_14
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    .line 23
    if-eqz v4, :cond_1a

    .line 25
    move v4, v2

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v4, v3

    .line 28
    :goto_1b
    iget-boolean v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    .line 30
    if-eqz v5, :cond_26

    .line 32
    if-nez v0, :cond_25

    .line 34
    if-eqz v4, :cond_24

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v2, v3

    .line 38
    :cond_25
    :goto_25
    return v2

    .line 39
    :cond_26
    if-eqz v1, :cond_2a

    .line 41
    if-nez v0, :cond_2e

    .line 43
    :cond_2a
    if-eqz v4, :cond_2d

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move v2, v3

    .line 47
    :cond_2e
    :goto_2e
    return v2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v2, 0x1c

    .line 9
    if-lt v1, v2, :cond_1a

    .line 11
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1a

    .line 17
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1a

    .line 23
    invoke-static {p1}, Landroidx/appcompat/widget/y;->l(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 26
    move-result-object v0

    .line 27
    :cond_1a
    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    .line 14
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 17
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->updateDensity(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    .line 28
    move-result p1

    .line 29
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    .line 31
    if-eq v0, p1, :cond_25

    .line 33
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    .line 35
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->initExtraPaddingPolicy()V

    .line 38
    :cond_25
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 40
    invoke-virtual {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->onConfigurationChanged()V

    .line 43
    new-instance p1, Lmiuix/appcompat/internal/app/widget/d;

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-direct {p1, p0, v0}, Lmiuix/appcompat/internal/app/widget/d;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;I)V

    .line 49
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 54
    if-eqz p1, :cond_42

    .line 56
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->isContextMenuPopupWindowShowing()Z

    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_42

    .line 62
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 64
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->refreshContextMenuPopupWindow()V

    .line 67
    :cond_42
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setContentInsetStateCallback(Lmiuix/appcompat/app/IContentInsetState;)V

    .line 8
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingObserver(Lmiuix/appcompat/app/ExtraPaddingObserver;)V

    .line 11
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    .line 13
    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 7
    return-void
.end method

.method public onFloatingModeChanged(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    .line 12
    if-eq v1, v0, :cond_37

    .line 14
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 16
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    .line 18
    if-eqz p1, :cond_1f

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object p1

    .line 24
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_top_offset:I

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetTopInMiuixFloating:I

    .line 32
    :cond_1f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 34
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    .line 36
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->onFloatingModeChanged(Z)V

    .line 39
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 41
    if-eqz p1, :cond_31

    .line 43
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 45
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    .line 47
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->onFloatingModeChanged(Z)V

    .line 50
    :cond_31
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 56
    :cond_37
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateCurrentContentInsetInOverlayMode()V

    .line 11
    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 13
    if-eqz p1, :cond_3f

    .line 15
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->isEnable()Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_3f

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 28
    move-result-object p1

    .line 29
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 31
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 33
    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getExtraPaddingDp()I

    .line 36
    move-result p2

    .line 37
    int-to-float p2, p2

    .line 38
    mul-float/2addr p2, p1

    .line 39
    float-to-int p1, p2

    .line 40
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingHorizontal:I

    .line 42
    if-eq p1, p2, :cond_34

    .line 44
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingHorizontal:I

    .line 46
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Lmiuix/appcompat/app/ExtraPaddingObserver;

    .line 48
    if-eqz p2, :cond_34

    .line 50
    invoke-interface {p2, p1}, Lmiuix/appcompat/app/ExtraPaddingObserver;->onExtraPaddingChanged(I)V

    .line 53
    :cond_34
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    .line 55
    if-eqz p1, :cond_3f

    .line 57
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 59
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 61
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->applyExtraPadding(Landroid/view/View;)V

    .line 64
    :cond_3f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 66
    if-eqz p1, :cond_4c

    .line 68
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    .line 70
    if-nez p2, :cond_4c

    .line 72
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 74
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateCoordinateOffsetView()V

    .line 77
    :cond_4c
    return-void
.end method

.method public onMeasure(II)V
    .registers 26

    .line 1
    move-object/from16 v7, p0

    .line 3
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 5
    move/from16 v1, p1

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getWidthMeasureSpec(I)I

    .line 10
    move-result v8

    .line 11
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 13
    move/from16 v1, p2

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getHeightMeasureSpec(I)I

    .line 18
    move-result v9

    .line 19
    iget-object v10, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 21
    iget-object v11, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 23
    const/4 v12, 0x0

    .line 24
    move v6, v12

    .line 25
    move v13, v6

    .line 26
    move v14, v13

    .line 27
    move v15, v14

    .line 28
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    move-result v0

    .line 32
    const/16 v1, 0x8

    .line 34
    if-ge v6, v0, :cond_6e

    .line 36
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    move-result-object v5

    .line 40
    if-eq v5, v10, :cond_6b

    .line 42
    if-eq v5, v11, :cond_6b

    .line 44
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 47
    move-result v0

    .line 48
    if-ne v0, v1, :cond_32

    .line 50
    goto :goto_6b

    .line 51
    :cond_32
    const/4 v3, 0x0

    .line 52
    const/16 v16, 0x0

    .line 54
    move-object/from16 v0, p0

    .line 56
    move-object v1, v5

    .line 57
    move v2, v8

    .line 58
    move v4, v9

    .line 59
    move-object/from16 v17, v5

    .line 61
    move/from16 v5, v16

    .line 63
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 66
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    .line 75
    move-result v1

    .line 76
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 78
    add-int/2addr v1, v2

    .line 79
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 81
    add-int/2addr v1, v2

    .line 82
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    .line 85
    move-result v13

    .line 86
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    .line 89
    move-result v1

    .line 90
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 92
    add-int/2addr v1, v2

    .line 93
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 95
    add-int/2addr v1, v0

    .line 96
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 99
    move-result v14

    .line 100
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredState()I

    .line 103
    move-result v0

    .line 104
    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 107
    move-result v15

    .line 108
    :cond_6b
    :goto_6b
    add-int/lit8 v6, v6, 0x1

    .line 110
    goto :goto_1b

    .line 111
    :cond_6e
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 113
    if-eqz v0, :cond_7f

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 118
    move-result v0

    .line 119
    if-eq v0, v1, :cond_7f

    .line 121
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 126
    move-result v0

    .line 127
    goto :goto_80

    .line 128
    :cond_7f
    move v0, v12

    .line 129
    :goto_80
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomInset()I

    .line 132
    move-result v1

    .line 133
    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 135
    if-eqz v2, :cond_90

    .line 137
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_90

    .line 143
    move v2, v1

    .line 144
    goto :goto_91

    .line 145
    :cond_90
    move v2, v12

    .line 146
    :goto_91
    iget-object v3, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 148
    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 150
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 153
    iget-object v3, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 155
    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 157
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 160
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    .line 163
    move-result v3

    .line 164
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_af

    .line 170
    if-lez v0, :cond_af

    .line 172
    iget-object v5, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 174
    iput v12, v5, Landroid/graphics/Rect;->top:I

    .line 176
    :cond_af
    iget-boolean v5, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 178
    if-nez v5, :cond_c0

    .line 180
    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 182
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 184
    add-int/2addr v5, v0

    .line 185
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 187
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 189
    add-int/2addr v0, v2

    .line 190
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 192
    goto :goto_d7

    .line 193
    :cond_c0
    if-eqz v4, :cond_c9

    .line 195
    if-lez v0, :cond_d0

    .line 197
    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 199
    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 201
    goto :goto_d0

    .line 202
    :cond_c9
    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 204
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 206
    add-int/2addr v5, v0

    .line 207
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 209
    :cond_d0
    :goto_d0
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 211
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 213
    add-int/2addr v4, v2

    .line 214
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 216
    :goto_d7
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    .line 218
    if-eqz v0, :cond_df

    .line 220
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 222
    if-nez v0, :cond_fa

    .line 224
    :cond_df
    if-eqz v3, :cond_fa

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 233
    move-result-object v0

    .line 234
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 236
    const/4 v2, 0x2

    .line 237
    if-ne v0, v2, :cond_f4

    .line 239
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 241
    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 243
    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 245
    :cond_f4
    if-nez v1, :cond_fa

    .line 247
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 249
    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 251
    :cond_fa
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isBottomAnimating()Z

    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_10f

    .line 257
    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 259
    const/4 v3, 0x1

    .line 260
    const/4 v4, 0x1

    .line 261
    const/4 v5, 0x1

    .line 262
    const/4 v6, 0x1

    .line 263
    move-object/from16 v0, p0

    .line 265
    move-object v1, v10

    .line 266
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 269
    const/4 v0, 0x0

    .line 270
    iput-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    .line 272
    :cond_10f
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 274
    if-nez v0, :cond_11e

    .line 276
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    .line 279
    move-result v0

    .line 280
    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    .line 283
    move-result v1

    .line 284
    invoke-virtual {v10, v0, v12, v1, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 287
    :cond_11e
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 289
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 291
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_12c

    .line 297
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    .line 299
    if-eqz v0, :cond_13a

    .line 301
    :cond_12c
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 303
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 305
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 308
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 310
    invoke-super {v7, v0}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 313
    iput-boolean v12, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    .line 315
    :cond_13a
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    .line 318
    move-result v0

    .line 319
    const/4 v6, 0x1

    .line 320
    if-eqz v0, :cond_17e

    .line 322
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    .line 324
    if-eqz v0, :cond_17e

    .line 326
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 328
    if-eqz v0, :cond_15a

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    .line 333
    move-result v1

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    .line 337
    move-result v2

    .line 338
    sub-int/2addr v1, v2

    .line 339
    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 341
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 343
    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 346
    goto :goto_17e

    .line 347
    :cond_15a
    const v0, 0x1020002

    .line 350
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Landroid/view/ViewGroup;

    .line 356
    if-eqz v0, :cond_17e

    .line 358
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 361
    move-result v1

    .line 362
    if-ne v1, v6, :cond_17e

    .line 364
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 367
    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 371
    move-result v1

    .line 372
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 375
    move-result v2

    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 379
    move-result v3

    .line 380
    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 383
    :cond_17e
    :goto_17e
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 385
    if-eqz v0, :cond_1d3

    .line 387
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->isEnable()Z

    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_1d3

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 400
    move-result-object v0

    .line 401
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 403
    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 406
    move-result v1

    .line 407
    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 410
    move-result v20

    .line 411
    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mWindowInfo:Lmiuix/core/util/WindowBaseInfo;

    .line 413
    if-eqz v2, :cond_1b7

    .line 415
    iget-object v3, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 417
    iget-object v2, v2, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 419
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 421
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 423
    iget-boolean v5, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    .line 425
    move-object/from16 v16, v3

    .line 427
    move/from16 v17, v4

    .line 429
    move/from16 v18, v2

    .line 431
    move/from16 v19, v1

    .line 433
    move/from16 v21, v0

    .line 435
    move/from16 v22, v5

    .line 437
    invoke-virtual/range {v16 .. v22}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->onContainerSizeChanged(IIIIFZ)V

    .line 440
    :cond_1b7
    iget-boolean v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    .line 442
    if-eqz v2, :cond_1d3

    .line 444
    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 447
    move-result v2

    .line 448
    int-to-float v1, v1

    .line 449
    iget-object v3, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 451
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getExtraPaddingDp()I

    .line 454
    move-result v3

    .line 455
    int-to-float v3, v3

    .line 456
    mul-float/2addr v3, v0

    .line 457
    const/high16 v0, 0x40000000  # 2.0f

    .line 459
    mul-float/2addr v3, v0

    .line 460
    sub-float/2addr v1, v3

    .line 461
    float-to-int v0, v1

    .line 462
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 465
    move-result v0

    .line 466
    move v2, v0

    .line 467
    goto :goto_1d4

    .line 468
    :cond_1d3
    move v2, v8

    .line 469
    :goto_1d4
    const/4 v3, 0x0

    .line 470
    const/4 v5, 0x0

    .line 471
    move-object/from16 v0, p0

    .line 473
    move-object v1, v10

    .line 474
    move v4, v9

    .line 475
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 478
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 481
    move-result-object v0

    .line 482
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 484
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 487
    move-result v1

    .line 488
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 490
    add-int/2addr v1, v2

    .line 491
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 493
    add-int/2addr v1, v2

    .line 494
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    .line 497
    move-result v12

    .line 498
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 501
    move-result v1

    .line 502
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 504
    add-int/2addr v1, v2

    .line 505
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 507
    add-int/2addr v1, v0

    .line 508
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 511
    move-result v13

    .line 512
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    .line 515
    move-result v0

    .line 516
    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 519
    move-result v10

    .line 520
    if-eqz v11, :cond_225

    .line 522
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 525
    move-result v0

    .line 526
    if-nez v0, :cond_225

    .line 528
    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    .line 530
    const/4 v3, 0x1

    .line 531
    const/4 v4, 0x0

    .line 532
    const/4 v5, 0x1

    .line 533
    const/4 v14, 0x1

    .line 534
    move-object/from16 v0, p0

    .line 536
    move-object v1, v11

    .line 537
    move v15, v6

    .line 538
    move v6, v14

    .line 539
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 542
    const/4 v3, 0x0

    .line 543
    const/4 v5, 0x0

    .line 544
    move v2, v8

    .line 545
    move v4, v9

    .line 546
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 549
    goto :goto_226

    .line 550
    :cond_225
    move v15, v6

    .line 551
    :goto_226
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 554
    move-result v0

    .line 555
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 558
    move-result v1

    .line 559
    add-int/2addr v1, v0

    .line 560
    add-int/2addr v1, v12

    .line 561
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 564
    move-result v0

    .line 565
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 568
    move-result v2

    .line 569
    add-int/2addr v2, v0

    .line 570
    add-int/2addr v2, v13

    .line 571
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 574
    move-result v0

    .line 575
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 578
    move-result v0

    .line 579
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 582
    move-result v2

    .line 583
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 586
    move-result v1

    .line 587
    invoke-static {v1, v8, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 590
    move-result v1

    .line 591
    shl-int/lit8 v2, v10, 0x10

    .line 593
    invoke-static {v0, v9, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 596
    move-result v0

    .line 597
    invoke-virtual {v7, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 600
    new-instance v0, Lmiuix/appcompat/internal/app/widget/d;

    .line 602
    invoke-direct {v0, v7, v15}, Lmiuix/appcompat/internal/app/widget/d;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;I)V

    .line 605
    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 608
    return-void
.end method

.method public onMenuStateChanged(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuVisibleHeight:[I

    .line 3
    aput p1, v0, p2

    .line 5
    const/4 p1, 0x0

    .line 6
    aget p1, v0, p1

    .line 8
    const/4 p2, 0x1

    .line 9
    aget p2, v0, p2

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result p1

    .line 15
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 17
    if-eqz p2, :cond_35

    .line 19
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1f

    .line 25
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 27
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 29
    if-gt p1, p2, :cond_1f

    .line 31
    move p1, p2

    .line 32
    :cond_1f
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    .line 34
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    .line 36
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 39
    move-result p1

    .line 40
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    .line 42
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 45
    move-result p1

    .line 46
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 48
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    .line 50
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchContentInset(Landroid/graphics/Rect;)V

    .line 53
    goto :goto_38

    .line 54
    :cond_35
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->animateContentMarginBottomByBottomMenu(I)V

    .line 57
    :goto_38
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 16

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    .line 10
    const/4 v8, 0x1

    .line 11
    const/4 v9, 0x0

    .line 12
    aput v9, v7, v8

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 16
    if-eqz v1, :cond_1d

    .line 18
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    .line 20
    if-nez v2, :cond_1d

    .line 22
    move-object v2, p1

    .line 23
    move v3, p2

    .line 24
    move v4, p3

    .line 25
    move-object v5, p4

    .line 26
    move v6, p5

    .line 27
    invoke-virtual/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    .line 30
    :cond_1d
    if-lez p3, :cond_49

    .line 32
    aget p2, p4, v8

    .line 34
    sub-int p5, p3, p2

    .line 36
    if-lez p5, :cond_49

    .line 38
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 40
    if-eqz p5, :cond_49

    .line 42
    instance-of v1, p5, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 44
    if-eqz v1, :cond_49

    .line 46
    sub-int/2addr p3, p2

    .line 47
    check-cast p5, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 49
    invoke-virtual {p5, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getTopOffsetForCoordinateView(Landroid/view/View;)I

    .line 52
    move-result p2

    .line 53
    const/4 p5, -0x1

    .line 54
    if-eq p2, p5, :cond_49

    .line 56
    sub-int/2addr p2, p3

    .line 57
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 59
    check-cast p3, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 61
    invoke-static {v9, p2}, Ljava/lang/Math;->max(II)I

    .line 64
    move-result p2

    .line 65
    invoke-virtual {p3, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateTopOffsetOnNestedPreScroll(Landroid/view/View;I)I

    .line 68
    move-result p1

    .line 69
    aget p2, p4, v8

    .line 71
    add-int/2addr p2, p1

    .line 72
    aput p2, p4, v8

    .line 74
    :cond_49
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->adjustNestedScrollMotionEventCoordinate(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 19

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    .line 5
    move-result-object v10

    .line 6
    if-nez v10, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    const/4 v1, 0x1

    .line 10
    if-gez p5, :cond_2b

    .line 12
    aget v2, p7, v1

    .line 14
    sub-int v3, p5, v2

    .line 16
    if-gtz v3, :cond_2b

    .line 18
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 20
    if-eqz v3, :cond_2b

    .line 22
    instance-of v4, v3, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 24
    if-eqz v4, :cond_2b

    .line 26
    sub-int v2, p5, v2

    .line 28
    check-cast v3, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 30
    move-object v4, p1

    .line 31
    invoke-virtual {v3, p1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateTopOffsetOnNestedScroll(Landroid/view/View;I)I

    .line 34
    move-result v2

    .line 35
    sub-int v3, p5, v2

    .line 37
    aget v5, p7, v1

    .line 39
    add-int/2addr v5, v2

    .line 40
    aput v5, p7, v1

    .line 42
    move v6, v3

    .line 43
    goto :goto_2e

    .line 44
    :cond_2b
    move-object v4, p1

    .line 45
    move/from16 v6, p5

    .line 47
    :goto_2e
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    .line 49
    const/4 v2, 0x0

    .line 50
    aput v2, v9, v1

    .line 52
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 54
    if-eqz v1, :cond_46

    .line 56
    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    .line 58
    if-nez v2, :cond_46

    .line 60
    move-object v2, p1

    .line 61
    move v3, p2

    .line 62
    move v4, p3

    .line 63
    move v5, p4

    .line 64
    move/from16 v7, p6

    .line 66
    move-object/from16 v8, p7

    .line 68
    invoke-virtual/range {v1 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    .line 71
    :cond_46
    invoke-direct {p0, v10}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->adjustNestedScrollMotionEventCoordinate(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 15
    :cond_e
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 7

    .line 1
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 11
    if-eqz v0, :cond_13

    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_13

    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_13
    return v1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onStopNestedScroll(Landroid/view/View;I)V

    .line 15
    :cond_e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_8
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    .line 11
    return p1
.end method

.method public registerCoordinatedScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method

.method public removeBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeBottomMenuCustomView()V

    .line 8
    :cond_7
    return-void
.end method

.method public requestDispatchContentInset()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->notifyContentInset()V

    .line 4
    return-void
.end method

.method public requestFitSystemWindows()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->requestFitSystemWindows()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    .line 7
    return-void
.end method

.method public setActionBar(Lmiuix/appcompat/app/ActionBar;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 3
    if-eqz p1, :cond_b

    .line 5
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 9
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setExtraPaddingPolicy(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;)V

    .line 12
    :cond_b
    return-void
.end method

.method public setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    if-eqz p1, :cond_17

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 7
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 12
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    .line 14
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setBottomMenuMode(I)V

    .line 17
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setPendingInset(Landroid/graphics/Rect;)V

    .line 24
    :cond_17
    return-void
.end method

.method public setAnimating(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimating:Z

    .line 3
    return-void
.end method

.method public setBottomExtraInset(I)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    .line 3
    if-eq v0, p1, :cond_2e

    .line 5
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomInset()I

    .line 10
    move-result p1

    .line 11
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    .line 13
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result p1

    .line 17
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1d

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 25
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 27
    if-gt p1, v0, :cond_1d

    .line 29
    move p1, v0

    .line 30
    :cond_1d
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    .line 32
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result p1

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    .line 38
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 40
    if-eq v1, p1, :cond_2e

    .line 42
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 44
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchContentInset(Landroid/graphics/Rect;)V

    .line 47
    :cond_2e
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBottomMenuCustomView(Landroid/view/View;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBottomMenuCustomViewTranslationYWithPx(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setBottomMenuExtraInset(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    .line 3
    return-void
.end method

.method public setBottomMenuMode(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuModeConfig:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuModeConfig:I

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateBottomMenuMode()V

    .line 10
    :cond_9
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    .line 3
    return-void
.end method

.method public setContentInsetStateCallback(Lmiuix/appcompat/app/IContentInsetState;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsetStateCallback:Lmiuix/appcompat/app/IContentInsetState;

    .line 3
    return-void
.end method

.method public setContentMask(Landroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 3
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isOled()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_21

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 11
    if-eqz p1, :cond_21

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p1

    .line 21
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_window_content_mask_oled:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 34
    :cond_21
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setCorrectNestedScrollMotionEventEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCorrectNestedScrollMotionEventEnabled:Z

    .line 3
    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    .line 3
    if-eq v0, p1, :cond_10

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 9
    if-eqz v0, :cond_10

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->setEnable(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    :cond_10
    return-void
.end method

.method public setExtraHorizontalPaddingLevel(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setExtraPaddingApplyToContentEnable(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_9
    return-void
.end method

.method public setExtraPaddingObserver(Lmiuix/appcompat/app/ExtraPaddingObserver;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Lmiuix/appcompat/app/ExtraPaddingObserver;

    .line 3
    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLifecycleOwner:Landroidx/lifecycle/m;

    .line 3
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiuix/appcompat/app/OnStatusBarChangeListener;

    .line 3
    return-void
.end method

.method public setOverlayMode(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setOverlayMode(Z)V

    .line 10
    :cond_9
    return-void
.end method

.method public setRootSubDecor(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    .line 3
    return-void
.end method

.method public setSplitActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 8
    return-void
.end method

.method public setTranslucentStatus(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 10
    :cond_9
    return-void
.end method

.method public showBottomMenu(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-eqz v0, :cond_16

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuExtraInset(I)V

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eqz p1, :cond_11

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 14
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHideWithAnimation(Z)V

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 20
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHide(Z)V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method

.method public showBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showBottomMenuCustomView()V

    .line 8
    :cond_7
    return-void
.end method

.method public showContentMask(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSplitAnimContentMask:Landroid/view/ViewStub;

    .line 3
    if-nez v0, :cond_14

    .line 5
    sget v0, Lmiuix/appcompat/R$id;->split_anim_content_mask:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewStub;

    .line 13
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSplitAnimContentMask:Landroid/view/ViewStub;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInflateLayout:Landroid/view/View;

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInflateLayout:Landroid/view/View;

    .line 23
    sget v1, Lmiuix/appcompat/R$id;->image_bg:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 42
    move-result v2

    .line 43
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 50
    move-result v3

    .line 51
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 53
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 56
    move-result-object v2

    .line 57
    new-instance v3, Landroid/graphics/Canvas;

    .line 59
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 69
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    const/16 v4, 0x1f

    .line 73
    if-lt v3, v4, :cond_58

    .line 75
    int-to-float p1, p1

    .line 76
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 78
    invoke-static {p1, p1, v1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 88
    goto :goto_5f

    .line 89
    :cond_58
    invoke-static {v1, v2, p1}, Lmiuix/graphics/BitmapFactory;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    :goto_5f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInflateLayout:Landroid/view/View;

    .line 98
    const/high16 v0, 0x3f800000  # 1.0f

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 103
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 106
    move-result-object p1

    .line 107
    const/4 v0, 0x4

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInflateLayout:Landroid/view/View;

    .line 113
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-nez v0, :cond_15

    .line 4
    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_18

    .line 6
    :cond_15
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clear()V

    .line 7
    :goto_18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_2d

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_2d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->internalShowContextMenu(Landroid/view/View;FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v1

    .line 2
    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 4
    :cond_13
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 6
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    :cond_27
    if-eqz v1, :cond_2b

    .line 8
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 9
    :cond_2b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 11
    :cond_3e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 13
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuExtraInset(I)V

    .line 14
    :cond_57
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHideWithAnimation(Z)V

    .line 15
    :cond_5d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    instance-of p1, p1, Lmiuix/view/SearchActionMode;

    if-eqz p1, :cond_6a

    .line 16
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz p1, :cond_6a

    .line 17
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateCurrentContentInsetInOverlayMode()V

    .line 18
    :cond_6a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method public startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 19
    instance-of v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_16

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_b

    .line 21
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 22
    :cond_b
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1

    .line 24
    :cond_16
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public unregisterCoordinatedScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method

.method public updateBottomMenuMode()V
    .registers 8

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuModeConfig:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    move-result-object v1

    .line 15
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 17
    const/4 v2, 0x3

    .line 18
    const/16 v3, 0x29e

    .line 20
    const/high16 v4, 0x3f800000  # 1.0f

    .line 22
    const/4 v5, 0x2

    .line 23
    if-nez v0, :cond_3c

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    mul-float/2addr v0, v4

    .line 31
    div-float/2addr v0, v1

    .line 32
    float-to-int v0, v0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v6

    .line 37
    invoke-static {v6}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 40
    move-result-object v6

    .line 41
    iget v6, v6, Landroid/graphics/Point;->x:I

    .line 43
    int-to-float v6, v6

    .line 44
    mul-float/2addr v6, v4

    .line 45
    div-float/2addr v6, v1

    .line 46
    float-to-int v1, v6

    .line 47
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    .line 49
    if-ne v4, v5, :cond_3a

    .line 51
    const/16 v4, 0x19a

    .line 53
    if-le v0, v4, :cond_3a

    .line 55
    if-le v1, v3, :cond_3a

    .line 57
    :goto_38
    move v0, v2

    .line 58
    goto :goto_54

    .line 59
    :cond_3a
    move v0, v5

    .line 60
    goto :goto_54

    .line 61
    :cond_3c
    const/4 v6, 0x1

    .line 62
    if-ne v0, v6, :cond_54

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 71
    move-result-object v0

    .line 72
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 74
    int-to-float v0, v0

    .line 75
    mul-float/2addr v0, v4

    .line 76
    div-float/2addr v0, v1

    .line 77
    float-to-int v0, v0

    .line 78
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    .line 80
    if-ne v1, v5, :cond_3a

    .line 82
    if-le v0, v3, :cond_3a

    .line 84
    goto :goto_38

    .line 85
    :cond_54
    :goto_54
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    .line 87
    if-eq v0, v1, :cond_74

    .line 89
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    .line 91
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 93
    if-eqz v1, :cond_66

    .line 95
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setBottomMenuMode(I)V

    .line 98
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 100
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->refreshBottomMenu()V

    .line 103
    :cond_66
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 105
    if-eqz v0, :cond_74

    .line 107
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    .line 109
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBottomMenuMode(I)V

    .line 112
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 114
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->refreshBottomMenu()V

    .line 117
    :cond_74
    return-void
.end method

.method public updateCurrentContentInsetInOverlayMode()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_3b

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 15
    if-eqz v0, :cond_3b

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 20
    move-result v0

    .line 21
    const/16 v2, 0x8

    .line 23
    if-eq v0, v2, :cond_3b

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 27
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 29
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getTopViewHeight()I

    .line 32
    move-result v0

    .line 33
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 35
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 37
    add-int/2addr v0, v2

    .line 38
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    .line 40
    if-eqz v2, :cond_2c

    .line 42
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetTopInMiuixFloating:I

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v2, v1

    .line 46
    :goto_2d
    add-int/2addr v0, v2

    .line 47
    int-to-float v0, v0

    .line 48
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 53
    move-result v2

    .line 54
    add-float/2addr v2, v0

    .line 55
    float-to-int v0, v2

    .line 56
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 59
    move-result v1

    .line 60
    :cond_3b
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomInset()I

    .line 63
    move-result v0

    .line 64
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    .line 66
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 69
    move-result v0

    .line 70
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    .line 72
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 75
    move-result v0

    .line 76
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_5c

    .line 82
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 84
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 86
    if-ge v1, v2, :cond_5c

    .line 88
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    .line 90
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 92
    goto :goto_60

    .line 93
    :cond_5c
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    .line 95
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 97
    :goto_60
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_71

    .line 103
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 105
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 107
    if-ge v0, v1, :cond_71

    .line 109
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    .line 111
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 113
    goto :goto_75

    .line 114
    :cond_71
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    .line 116
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 118
    :goto_75
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    .line 120
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 122
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 124
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 126
    if-ge v1, v3, :cond_81

    .line 128
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 130
    :cond_81
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 132
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 134
    if-ge v1, v2, :cond_89

    .line 136
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 138
    :cond_89
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchContentInset(Landroid/graphics/Rect;)V

    .line 141
    return-void
.end method
