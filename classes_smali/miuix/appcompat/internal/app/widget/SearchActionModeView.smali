.class public Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.super Landroid/widget/FrameLayout;
.source "SearchActionModeView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lmiuix/appcompat/internal/app/widget/ActionModeView;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x190


# instance fields
.field private mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mActionBarTopMargin:I

.field private mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mAnchorParentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateToVisible:Z

.field private mAnimateView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateViewTranslationYLength:I

.field private mAnimateViewTranslationYStart:I

.field private mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

.field private mAnimationCanceled:Z

.field private mAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/view/ActionModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationProgress:F

.field private mCancelBtnInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

.field private mContentOriginPaddingBottom:I

.field private mContentOriginPaddingTop:I

.field private mContentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private mCustomFrameLayout:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mDimView:Landroid/view/View;

.field private mExtraPadding:I

.field private mExtraPaddingApplyToAnchorByUser:Z

.field private mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

.field private mFirstLayout:Z

.field private mHasSetCustomView:Z

.field private mHorizontalPaddingDp:I

.field private mInActionMode:Z

.field private mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

.field private mInputPaddingRight:I

.field private mInputPaddingTop:I

.field private mInputView:Landroid/widget/EditText;

.field private mLocation:[I

.field private mOnBackClickListener:Landroid/view/View$OnClickListener;

.field private mOriginOverlayMode:Z

.field private mOriginalAnimateViewTranslationY:F

.field private mOriginalPaddingTop:I

.field private mOverlayView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mParentLocationY:I

.field private mPendingInsetTop:I

.field private mResultView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mResultViewOriginMarginBottom:I

.field private mResultViewOriginMarginTop:I

.field private mResultViewOriginPaddingBottom:I

.field private mResultViewOriginPaddingTop:I

.field private mResultViewSet:Z

.field private mSearchContainer:Landroid/view/ViewGroup;

.field private mSearchViewHeight:I

.field private mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mTextCancel:Landroid/widget/TextView;

.field private mTextLengthBeforeChanged:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 10
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCancelBtnInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [I

    .line 15
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLocation:[I

    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mFirstLayout:Z

    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    .line 23
    const v0, 0x7fffffff

    .line 26
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v0

    .line 36
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_view_default_height:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v0

    .line 48
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_mode_bg_padding_top:I

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingTop:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v0

    .line 60
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_mode_bg_padding:I

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingRight:I

    .line 68
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->getDefDimen(Landroid/content/Context;I)I

    .line 71
    move-result p1

    .line 72
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHorizontalPaddingDp:I

    .line 74
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    .line 76
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    .line 78
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingRight:I

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    .line 3
    return p0
.end method

.method public static synthetic access$1302(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    .line 3
    return p1
.end method

.method public static synthetic access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLocation:[I

    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    .line 3
    return p0
.end method

.method public static synthetic access$1800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    .line 3
    return p0
.end method

.method public static synthetic access$1900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingTop:I

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    .line 3
    return p0
.end method

.method public static synthetic access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingBottom:I

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    .line 3
    return p0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/ViewGroup;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    .line 3
    return p0
.end method

.method public static synthetic access$800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method private getContentView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_13

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/View;

    .line 19
    return-object v0

    .line 20
    :cond_13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_1f

    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move-object v0, v1

    .line 33
    :goto_20
    if-eqz v0, :cond_31

    .line 35
    const v1, 0x1020002

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 44
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 47
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    .line 49
    return-object v0

    .line 50
    :cond_31
    return-object v1
.end method

.method private resetLocationY()V
    .registers 2

    .line 1
    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    .line 6
    return-void
.end method

.method private shouldAnimateContent()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method private updateExtraPadding(F)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_14

    .line 16
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isExtraPaddingApplyToContentEnable()Z

    .line 19
    move-result v0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v0, v1

    .line 22
    :goto_15
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 24
    if-eqz v2, :cond_31

    .line 26
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->isEnable()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_31

    .line 32
    if-nez v0, :cond_25

    .line 34
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    .line 36
    if-eqz v0, :cond_31

    .line 38
    :cond_25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 40
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getExtraPaddingDp()I

    .line 43
    move-result v0

    .line 44
    int-to-float v0, v0

    .line 45
    mul-float/2addr v0, p1

    .line 46
    float-to-int p1, v0

    .line 47
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    .line 52
    :goto_33
    return-void
.end method

.method private updateOnPaddingTopChanged()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    .line 7
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    .line 9
    add-int/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 17
    move-result v3

    .line 18
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    .line 27
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    .line 29
    add-int/2addr v1, v2

    .line 30
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    return-void
.end method

.method private updateResultViewMargin(Z)V
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_f

    .line 9
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/View;

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move-object p1, v0

    .line 17
    :goto_10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 19
    if-eqz v1, :cond_1a

    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/View;

    .line 27
    :cond_1a
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_2b

    .line 30
    if-eqz p1, :cond_2b

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    move-result-object v2

    .line 40
    if-eq v0, v2, :cond_2b

    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v0, v1

    .line 45
    :goto_2c
    if-eqz v0, :cond_2f

    .line 47
    return-void

    .line 48
    :cond_2f
    if-eqz p1, :cond_51

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    move-result-object v0

    .line 54
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 56
    if-eqz v0, :cond_51

    .line 58
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    .line 60
    if-nez v0, :cond_51

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 68
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    .line 71
    move-result v2

    .line 72
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 74
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 82
    :cond_51
    return-void
.end method

.method private updateViewPadding(IF)V
    .registers 7

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHorizontalPaddingDp:I

    .line 3
    int-to-float v0, v0

    .line 4
    mul-float/2addr v0, p2

    .line 5
    float-to-int p2, v0

    .line 6
    add-int/2addr p2, p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 22
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCancelBtnInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 26
    iget v1, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 28
    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 30
    iget v3, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 32
    iget v0, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    .line 34
    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 37
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 42
    move-result p2

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object v0

    .line 49
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 51
    if-eqz v0, :cond_59

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v1

    .line 65
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_action_mode_cancel_text_margin_end:I

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 70
    move-result v1

    .line 71
    add-int/2addr v1, p1

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 75
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 83
    move-result p1

    .line 84
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 87
    move-result v0

    .line 88
    add-int/2addr v0, p1

    .line 89
    add-int/2addr p2, v0

    .line 90
    :cond_59
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    move-result-object p1

    .line 96
    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    if-eqz p1, :cond_7b

    .line 100
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 111
    move-result v0

    .line 112
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 115
    move-result p2

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 119
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    .line 121
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_7b
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 6
    if-nez v0, :cond_e

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1b

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_1b
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_5

    .line 4
    move p1, v0

    .line 5
    goto :goto_9

    .line 6
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result p1

    .line 10
    :goto_9
    if-nez p1, :cond_20

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 14
    if-eqz p1, :cond_12

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lmiuix/view/inputmethod/InputMethodHelper;->getInstance(Landroid/content/Context;)Lmiuix/view/inputmethod/InputMethodHelper;

    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 29
    invoke-virtual {p1, v0}, Lmiuix/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    .line 32
    goto :goto_2d

    .line 33
    :cond_20
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    .line 35
    if-nez p1, :cond_2d

    .line 37
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 39
    if-eqz p1, :cond_2d

    .line 41
    const/16 v0, 0x8

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method

.method public animateToVisibility(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->pollViews()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    .line 17
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    .line 19
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    .line 22
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    .line 24
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->makeAnimation()Landroid/animation/ObjectAnimator;

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 30
    if-eqz p1, :cond_34

    .line 32
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->createAnimationListeners()V

    .line 35
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    .line 37
    if-eqz v0, :cond_2d

    .line 39
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    const/4 v0, 0x0

    .line 47
    :goto_2e
    if-eqz v0, :cond_34

    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 53
    :cond_34
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->notifyAnimationStart(Z)V

    .line 56
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 58
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 61
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    .line 63
    if-nez p1, :cond_5b

    .line 65
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    move-result-object p1

    .line 74
    const-string v0, "input_method"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 82
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 87
    move-result-object v0

    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 92
    :cond_5b
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_8

    .line 5
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result p1

    .line 9
    :goto_8
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    .line 11
    return-void
.end method

.method public closeMode()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 14
    if-eqz v0, :cond_12

    .line 16
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    const/16 v1, 0x8

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_1b
    return-void
.end method

.method public createAnimationListeners()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 14
    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;

    .line 16
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->shouldAnimateContent()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_39

    .line 28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 30
    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;

    .line 32
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 40
    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;

    .line 42
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 50
    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;

    .line 52
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_39
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_49

    .line 64
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 66
    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;

    .line 68
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_49
    return-void
.end method

.method public finishAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 11
    :cond_a
    return-void
.end method

.method public getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    if-nez v0, :cond_58

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    .line 7
    if-eqz v0, :cond_f

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    if-eqz v0, :cond_31

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_31

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 33
    move-result v3

    .line 34
    sget v4, Lmiuix/appcompat/R$id;->action_bar_container:I

    .line 36
    if-ne v3, v4, :cond_2e

    .line 38
    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 40
    if-eqz v3, :cond_2e

    .line 42
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 44
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 46
    goto :goto_31

    .line 47
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_13

    .line 50
    :cond_31
    :goto_31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 52
    if-eqz v0, :cond_58

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 60
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 62
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarTopMargin:I

    .line 64
    if-lez v0, :cond_58

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 69
    move-result v0

    .line 70
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    .line 72
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    .line 74
    add-int/2addr v1, v2

    .line 75
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarTopMargin:I

    .line 77
    add-int/2addr v1, v2

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 81
    move-result v2

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 85
    move-result v3

    .line 86
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 89
    :cond_58
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 91
    return-object v0
.end method

.method public getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-nez v0, :cond_1c

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    .line 7
    if-eqz v0, :cond_f

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    if-eqz v0, :cond_1c

    .line 19
    sget v1, Lmiuix/appcompat/R$id;->action_bar:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 27
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 29
    :cond_1c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 31
    return-object v0
.end method

.method public getAnimationProgress()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationProgress:F

    .line 3
    return v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getDimView()Landroid/view/View;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 3
    if-nez v0, :cond_42

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_10

    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move-object v0, v1

    .line 18
    :goto_11
    if-eqz v0, :cond_42

    .line 20
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    move-result v2

    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 26
    :goto_19
    if-ltz v2, :cond_31

    .line 28
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 35
    move-result v3

    .line 36
    sget v4, Lmiuix/appcompat/R$id;->search_mask_vs:I

    .line 38
    if-ne v3, v4, :cond_2e

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/view/ViewStub;

    .line 46
    goto :goto_31

    .line 47
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    .line 49
    goto :goto_19

    .line 50
    :cond_31
    :goto_31
    if-eqz v1, :cond_3a

    .line 52
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 58
    goto :goto_42

    .line 59
    :cond_3a
    sget v1, Lmiuix/appcompat/R$id;->search_mask:I

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 67
    :cond_42
    :goto_42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 69
    if-eqz v0, :cond_4a

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_4a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 77
    return-object v0
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 3
    return-object v0
.end method

.method public getSplitActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    if-nez v0, :cond_31

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    .line 7
    if-eqz v0, :cond_f

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    if-eqz v0, :cond_31

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_31

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 33
    move-result v3

    .line 34
    sget v4, Lmiuix/appcompat/R$id;->split_action_bar:I

    .line 36
    if-ne v3, v4, :cond_2e

    .line 38
    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 40
    if-eqz v3, :cond_2e

    .line 42
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 44
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 46
    goto :goto_31

    .line 47
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_13

    .line 50
    :cond_31
    :goto_31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 52
    return-object v0
.end method

.method public getViewHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    .line 3
    return v0
.end method

.method public getViewPager()Lmiuix/viewpager/widget/ViewPager;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move-object v0, v1

    .line 14
    :goto_d
    if-eqz v0, :cond_24

    .line 16
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 22
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isFragmentViewPagerMode()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_24

    .line 28
    sget v1, Lmiuix/appcompat/R$id;->view_pager:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lmiuix/viewpager/widget/ViewPager;

    .line 36
    return-object v0

    .line 37
    :cond_24
    return-object v1
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    .line 4
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateResultViewMargin(Z)V

    .line 7
    return-void
.end method

.method public killMode()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->finishAnimation()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 21
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 23
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 25
    if-eqz v1, :cond_1f

    .line 27
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 30
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 32
    :cond_1f
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 34
    if-eqz v1, :cond_25

    .line 36
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 38
    :cond_25
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 40
    return-void
.end method

.method public makeAnimation()Landroid/animation/ObjectAnimator;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 11
    :cond_a
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 14
    fill-array-data v0, :array_30

    .line 17
    const-string v1, "AnimationProgress"

    .line 19
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_22

    .line 32
    const-wide/16 v1, 0x190

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    const-wide/16 v1, 0x0

    .line 37
    :goto_24
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 40
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->obtainInterpolator()Landroid/animation/TimeInterpolator;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 47
    return-object v0

    .line 48
    nop

    .line 49
    :array_30
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/view/ActionModeAnimationListener;

    .line 22
    invoke-interface {v1, p1}, Lmiuix/view/ActionModeAnimationListener;->onStop(Z)V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/view/ActionModeAnimationListener;

    .line 22
    invoke-interface {v1, p1}, Lmiuix/view/ActionModeAnimationListener;->onStart(Z)V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/view/ActionModeAnimationListener;

    .line 22
    invoke-interface {v1, p1, p2}, Lmiuix/view/ActionModeAnimationListener;->onUpdate(ZF)V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public obtainInterpolator()Landroid/animation/TimeInterpolator;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [F

    .line 6
    invoke-direct {v0, v1, v2}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[F)V

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [F

    .line 12
    fill-array-data v1, :array_16

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;->setFactors([F)V

    .line 18
    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :array_16
    .array-data 4
        0x3f7ae148  # 0.98f
        0x3f400000  # 0.75f
    .end array-data
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    .line 4
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    .line 3
    if-eqz p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 9
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    .line 11
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->notifyAnimationEnd(Z)V

    .line 14
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    .line 16
    if-eqz v0, :cond_2a

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lmiuix/view/inputmethod/InputMethodHelper;->getInstance(Landroid/content/Context;)Lmiuix/view/inputmethod/InputMethodHelper;

    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 39
    invoke-virtual {v0, v1}, Lmiuix/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    .line 42
    goto :goto_37

    .line 43
    :cond_2a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lmiuix/view/inputmethod/InputMethodHelper;->getInstance(Landroid/content/Context;)Lmiuix/view/inputmethod/InputMethodHelper;

    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 53
    invoke-virtual {v0, v1}, Lmiuix/view/inputmethod/InputMethodHelper;->hideKeyBoard(Landroid/widget/EditText;)V

    .line 56
    :goto_37
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    .line 58
    if-nez v0, :cond_69

    .line 60
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    .line 62
    if-eqz v0, :cond_46

    .line 64
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move-object v0, p1

    .line 72
    :goto_47
    if-eqz v0, :cond_51

    .line 74
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    .line 76
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 79
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestDispatchContentInset()V

    .line 82
    :cond_51
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 84
    if-eqz v0, :cond_5b

    .line 86
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/view/View;

    .line 92
    :cond_5b
    if-eqz p1, :cond_62

    .line 94
    const/high16 v0, 0x3f800000  # 1.0f

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 99
    :cond_62
    const/4 p1, 0x0

    .line 100
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 103
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->killMode()V

    .line 106
    :cond_69
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    .line 4
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    .line 6
    if-eqz p1, :cond_c

    .line 8
    const/high16 p1, 0x3f800000  # 1.0f

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 13
    :cond_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    move-result v0

    .line 9
    sget v1, Lmiuix/appcompat/R$id;->search_text_cancel:I

    .line 11
    if-eq v0, v1, :cond_14

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 16
    move-result v0

    .line 17
    sget v1, Lmiuix/appcompat/R$id;->search_mask:I

    .line 19
    if-ne v0, v1, :cond_19

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 23
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 26
    :cond_19
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetLocationY()V

    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mFirstLayout:Z

    .line 10
    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 6
    invoke-direct {v0, p0}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(Landroid/view/View;)V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 11
    sget v0, Lmiuix/appcompat/R$id;->search_text_cancel:I

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    .line 21
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 26
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    .line 28
    invoke-direct {v0, v1}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(Landroid/view/View;)V

    .line 31
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCancelBtnInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 33
    sget v0, Lmiuix/appcompat/R$id;->search_container:I

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/view/ViewGroup;

    .line 41
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {v0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 47
    const v0, 0x1020009

    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/EditText;

    .line 56
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 58
    const/4 v0, 0x1

    .line 59
    new-array v0, v0, [Landroid/view/View;

    .line 61
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    .line 63
    aput-object v2, v0, v1

    .line 65
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 72
    move-result-object v0

    .line 73
    new-array v2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 75
    const/high16 v3, 0x3f800000  # 1.0f

    .line 77
    invoke-interface {v0, v3, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 80
    move-result-object v0

    .line 81
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 83
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 85
    invoke-interface {v0, v2, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 88
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 90
    iget v0, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 92
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    .line 94
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_6f

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 103
    move-result v1

    .line 104
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 109
    move-result v0

    .line 110
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    .line 112
    :cond_6f
    return-void
.end method

.method public onFloatingModeChanged()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetLocationY()V

    .line 4
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 6
    if-eqz p1, :cond_12

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 11
    move-result p2

    .line 12
    int-to-float p4, p5

    .line 13
    add-float/2addr p2, p4

    .line 14
    int-to-float p3, p3

    .line 15
    sub-float/2addr p2, p3

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 19
    :cond_12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 21
    if-eqz p1, :cond_1c

    .line 23
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_2e

    .line 29
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    move-result-object p1

    .line 37
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 39
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    .line 42
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    .line 44
    invoke-direct {p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    .line 47
    :cond_2e
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public pollViews()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getSplitActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 10
    return-void
.end method

.method public rePaddingAndRelayout(Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    .line 3
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq v0, p1, :cond_9

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move v0, v1

    .line 11
    :goto_a
    if-eqz v0, :cond_3d

    .line 13
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    .line 15
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateOnPaddingTopChanged()V

    .line 18
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    .line 20
    if-nez p1, :cond_35

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;

    .line 24
    if-eqz p1, :cond_20

    .line 26
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/view/View;

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    :goto_21
    instance-of p1, p1, Lmiuix/core/view/NestedCoordinatorObserver;

    .line 36
    if-eqz p1, :cond_30

    .line 38
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    .line 40
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    .line 43
    move-result v0

    .line 44
    add-int/2addr v0, p1

    .line 45
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 48
    goto :goto_35

    .line 49
    :cond_30
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    .line 51
    invoke-virtual {p0, p1, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 54
    :cond_35
    :goto_35
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    .line 56
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateResultViewMargin(Z)V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 62
    :cond_3d
    return-void
.end method

.method public removeAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    :cond_a
    return-void
.end method

.method public resetCustomView()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    .line 3
    if-eqz v0, :cond_20

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 11
    if-eqz v1, :cond_18

    .line 13
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    .line 15
    if-eqz v2, :cond_13

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    :cond_13
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    .line 28
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    .line 33
    :cond_20
    return-void
.end method

.method public setAnchorApplyExtraPaddingByUser(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    .line 3
    if-eq v0, p1, :cond_18

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    move-result-object p1

    .line 15
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 17
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    .line 20
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    .line 22
    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    .line 25
    :cond_18
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_24

    .line 3
    sget v0, Lmiuix/appcompat/R$id;->search_mode_stub:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_24

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_24

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/view/View;

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;

    .line 37
    :cond_24
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_9

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    .line 10
    :cond_9
    return-void
.end method

.method public setAnimatedViewListener(Lmiuix/view/SearchActionMode$AnimatedViewListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 3
    return-void
.end method

.method public setAnimationProgress(F)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationProgress:F

    .line 3
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    .line 5
    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->notifyAnimationUpdate(ZF)V

    .line 8
    return-void
.end method

.method public setContentViewPadding(II)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 10
    move-result v1

    .line 11
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    .line 13
    add-int/2addr p1, v2

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 17
    move-result v2

    .line 18
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    .line 20
    add-int/2addr p2, v3

    .line 21
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 24
    :cond_17
    return-void
.end method

.method public setContentViewTranslation(F)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    :cond_9
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_3f

    .line 3
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    .line 5
    if-nez v0, :cond_3f

    .line 7
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    .line 9
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 11
    const/4 v0, -0x1

    .line 12
    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 15
    new-instance v0, Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 31
    sget v1, Lmiuix/appcompat/R$id;->searchActionMode_customFrameLayout:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 38
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 49
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    .line 52
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 54
    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    .line 64
    :cond_3f
    return-void
.end method

.method public setExtraPaddingPolicy(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 3
    if-eq v0, p1, :cond_18

    .line 5
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    move-result-object p1

    .line 15
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 17
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    .line 20
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    .line 22
    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    .line 25
    :cond_18
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 3
    return-void
.end method

.method public setOverlayModeView(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    .line 11
    move-result p1

    .line 12
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    .line 14
    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_35

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    instance-of v0, v0, Lmiuix/core/view/NestedContentInsetObserver;

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingTop:I

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingBottom:I

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object p1

    .line 37
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    if-eqz v0, :cond_32

    .line 41
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 43
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 45
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    .line 47
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 49
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    .line 51
    :cond_32
    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewSet:Z

    .line 54
    :cond_35
    return-void
.end method

.method public updateBackground(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_b

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    const/16 p1, 0xff

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 17
    :goto_10
    return-void
.end method
