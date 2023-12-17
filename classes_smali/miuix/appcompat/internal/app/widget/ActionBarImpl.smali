.class public Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.super Lmiuix/appcompat/app/ActionBar;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;,
        Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;
    }
.end annotation


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field public static final IS_COMPLY_WITH_THEME:Z = true

.field private static final MAX_ACTION_MENU_ITEM_COUNT_UNSET:I = -0x1

.field private static final UNINITIALIZED_OFFSET:Ljava/lang/Integer;

.field private static sTabListenerWrapper:Landroidx/appcompat/app/a$e;


# instance fields
.field private isSelectingTab:Z

.field private mActionBarHeightTotalGap:I

.field private mActionBarHeightTotalGapOnShow:I

.field private mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;

.field public mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

.field private mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

.field private mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mContainerAnim:Lmiuix/animation/IStateStyle;

.field private mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private final mContainerViewAnimationListener:Lmiuix/animation/listener/TransitionListener;

.field private mContentInset:Landroid/graphics/Rect;

.field private mContentInsetTop:I

.field private mContentMask:Landroid/view/View;

.field private mContentMaskOnClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field private final mCoordinateOffsetViewSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurWindowVisibility:I

.field private mCurrentAccessibilityImportant:I

.field private mCurrentActionBarHeightGap:I

.field private mCurrentActionBarHeightGapOnShow:I

.field private mCurrentExpandState:I

.field private mCurrentResizable:Z

.field private mDisplayHomeAsUpSet:Z

.field private mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field private mIsContainerAnimationRunning:Z

.field private mIsWindowInfoChanged:Z

.field private mMaxActionMenuItemCount:I

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final mNestedContentInsetObserverSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lmiuix/core/view/NestedContentInsetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

.field private mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

.field private mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

.field private mSelectedTab:Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field private mShowingForMode:Z

.field private mSplitMenuView:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

.field private mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mSpliterAnim:Lmiuix/animation/IStateStyle;

.field private mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTranslationY:F

.field private mThemedContext:Landroid/content/Context;

.field private mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$1;

    .line 3
    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->sTabListenerWrapper:Landroidx/appcompat/app/a$e;

    .line 8
    const/4 v0, -0x1

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->UNINITIALIZED_OFFSET:Ljava/lang/Integer;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;Landroid/view/ViewGroup;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Lmiuix/appcompat/app/ActionBar;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isSelectingTab:Z

    const/4 v1, -0x1

    .line 53
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 55
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurWindowVisibility:I

    const/4 v2, 0x1

    .line 56
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 57
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

    .line 58
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z

    .line 59
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMaxActionMenuItemCount:I

    .line 60
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInsetTop:I

    .line 61
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    .line 62
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I

    .line 63
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGapOnShow:I

    .line 64
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGapOnShow:I

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F

    .line 66
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerViewAnimationListener:Lmiuix/animation/listener/TransitionListener;

    .line 67
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 24
    invoke-direct {p0}, Lmiuix/appcompat/app/ActionBar;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isSelectingTab:Z

    const/4 v1, -0x1

    .line 29
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 31
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurWindowVisibility:I

    const/4 v2, 0x1

    .line 32
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 33
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

    .line 34
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z

    .line 35
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMaxActionMenuItemCount:I

    .line 36
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInsetTop:I

    .line 37
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    .line 38
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I

    .line 39
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGapOnShow:I

    .line 40
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGapOnShow:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F

    .line 42
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerViewAnimationListener:Lmiuix/animation/listener/TransitionListener;

    .line 43
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_6f

    :cond_6e
    const/4 p1, 0x0

    :goto_6f
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/ViewGroup;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/ActionBar;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isSelectingTab:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 8
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurWindowVisibility:I

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 10
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

    .line 11
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z

    .line 12
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMaxActionMenuItemCount:I

    .line 13
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInsetTop:I

    .line 14
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    .line 15
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I

    .line 16
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGapOnShow:I

    .line 17
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGapOnShow:I

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F

    .line 19
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerViewAnimationListener:Lmiuix/animation/listener/TransitionListener;

    .line 20
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 22
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 23
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;IFII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->lambda$createActionBarCoordinateListener$1(IFII)V

    return-void
.end method

.method public static synthetic access$1002(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I

    .line 3
    return p1
.end method

.method public static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGapOnShow:I

    .line 3
    return p0
.end method

.method public static synthetic access$1202(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    .line 3
    return p1
.end method

.method public static synthetic access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGapOnShow:I

    .line 3
    return p0
.end method

.method public static synthetic access$1402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1500()Landroidx/appcompat/app/a$e;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->sTabListenerWrapper:Landroidx/appcompat/app/a$e;

    .line 3
    return-object v0
.end method

.method public static synthetic access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitMenuView:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsWindowInfoChanged:Z

    .line 3
    return p0
.end method

.method public static synthetic access$402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsWindowInfoChanged:Z

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->applyActionBarStrategy(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    return-object p0
.end method

.method private addContentMask()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    sget v1, Lmiuix/appcompat/R$id;->content_mask_vs:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/ViewStub;

    .line 11
    if-eqz v0, :cond_11

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_19

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 20
    sget v1, Lmiuix/appcompat/R$id;->content_mask:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    :goto_19
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 28
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setContentMask(Landroid/view/View;)V

    .line 31
    return-void
.end method

.method private applyActionBarStrategy(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getExpandState()I

    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    .line 12
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 14
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 16
    invoke-direct {p0, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getActionBarSpec(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/app/strategy/ActionBarSpec;

    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1, p0, v2}, Lmiuix/appcompat/app/strategy/IActionBarStrategy;->config(Lmiuix/appcompat/app/ActionBar;Lmiuix/appcompat/app/strategy/ActionBarSpec;)Lmiuix/appcompat/app/strategy/ActionBarConfig;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz p1, :cond_4a

    .line 28
    if-eqz v1, :cond_4a

    .line 30
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isUserSetExpandState()Z

    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_27

    .line 36
    iget-boolean v4, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->overrideUserExpandStateConfig:Z

    .line 38
    if-eqz v4, :cond_3b

    .line 40
    :cond_27
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_31

    .line 46
    iget-boolean v4, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 48
    if-nez v4, :cond_36

    .line 50
    :cond_31
    iget v4, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 52
    invoke-virtual {p1, v4, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(IZZ)V

    .line 55
    :cond_36
    iget-boolean v4, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 57
    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 60
    :cond_3b
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isUserSetEndActionMenuItemLimit()Z

    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_45

    .line 66
    iget-boolean v4, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->overrideUserEndMenuConfig:Z

    .line 68
    if-eqz v4, :cond_4a

    .line 70
    :cond_45
    iget v4, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    .line 72
    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndActionMenuItemLimit(I)V

    .line 75
    :cond_4a
    if-eqz p2, :cond_6c

    .line 77
    if-eqz v1, :cond_6c

    .line 79
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isUserSetExpandState()Z

    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_58

    .line 85
    iget-boolean p1, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->overrideUserExpandStateConfig:Z

    .line 87
    if-eqz p1, :cond_6c

    .line 89
    :cond_58
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_62

    .line 95
    iget-boolean p1, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 97
    if-nez p1, :cond_67

    .line 99
    :cond_62
    iget p1, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 101
    invoke-virtual {p2, p1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(IZZ)V

    .line 104
    :cond_67
    iget-boolean p1, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 106
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 109
    :cond_6c
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getExpandState()I

    .line 112
    move-result p1

    .line 113
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    .line 115
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isResizable()Z

    .line 118
    move-result p1

    .line 119
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    .line 121
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    .line 123
    if-ne p1, v3, :cond_c5

    .line 125
    if-eq v0, p1, :cond_c5

    .line 127
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    .line 129
    if-eqz p1, :cond_c5

    .line 131
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 133
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 136
    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 140
    move-result-object p1

    .line 141
    :goto_8c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    move-result p2

    .line 145
    if-eqz p2, :cond_a6

    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    move-result-object p2

    .line 151
    check-cast p2, Landroid/view/View;

    .line 153
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 155
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    .line 157
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    goto :goto_8c

    .line 167
    :cond_a6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    .line 169
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 172
    move-result-object p1

    .line 173
    :goto_ac
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    move-result p2

    .line 177
    if-eqz p2, :cond_be

    .line 179
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    move-result-object p2

    .line 183
    check-cast p2, Lmiuix/core/view/NestedContentInsetObserver;

    .line 185
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    .line 187
    invoke-interface {p2, v0}, Lmiuix/core/view/NestedContentInsetObserver;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 190
    goto :goto_ac

    .line 191
    :cond_be
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 193
    if-eqz p1, :cond_c5

    .line 195
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarBlurByNestedScrolled(Z)V

    .line 198
    :cond_c5
    return-void
.end method

.method public static synthetic b(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->lambda$setActionBarStrategy$0()V

    return-void
.end method

.method private static checkShowingFlags(ZZZ)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    return v0

    :cond_4
    if-nez p0, :cond_a

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    return v0

    :cond_a
    :goto_a
    const/4 p0, 0x0

    return p0
.end method

.method private cleanupTabs()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSelectedTab:Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->selectTab(Landroidx/appcompat/app/a$d;)V

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 16
    if-eqz v0, :cond_14

    .line 18
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 28
    :cond_1b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 30
    if-eqz v0, :cond_22

    .line 32
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->removeAllTabs()V

    .line 35
    :cond_22
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 37
    if-eqz v0, :cond_29

    .line 39
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->removeAllTabs()V

    .line 42
    :cond_29
    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    .line 45
    return-void
.end method

.method private configureTab(Landroidx/appcompat/app/a$d;I)V
    .registers 4

    .line 1
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->getCallback()Landroidx/appcompat/app/a$e;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_27

    .line 9
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result p1

    .line 23
    :goto_16
    add-int/lit8 p2, p2, 0x1

    .line 25
    if-ge p2, p1, :cond_26

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 35
    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 38
    goto :goto_16

    .line 39
    :cond_26
    return-void

    .line 40
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    const-string p2, "Action Bar Tab must have a Callback"

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1
.end method

.method private createActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 1
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 9
    invoke-direct {v0, v1, p1}, Lmiuix/appcompat/internal/view/SearchActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    new-instance v0, Lmiuix/appcompat/internal/view/EditActionModeImpl;

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 17
    invoke-direct {v0, v1, p1}, Lmiuix/appcompat/internal/view/EditActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 20
    :goto_13
    return-object v0
.end method

.method private createContextView(ZZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    sget v1, Lmiuix/appcompat/R$id;->split_action_bar_vs:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/ViewStub;

    .line 11
    if-eqz v0, :cond_13

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 19
    goto :goto_1d

    .line 20
    :cond_13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 22
    sget v1, Lmiuix/appcompat/R$id;->split_action_bar:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 30
    :goto_1d
    if-eqz v0, :cond_6e

    .line 32
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 34
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 37
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 39
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 42
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 44
    invoke-virtual {v1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 47
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 49
    sget v2, Lmiuix/appcompat/R$id;->action_context_bar_vs:I

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/view/ViewStub;

    .line 57
    if-eqz v1, :cond_43

    .line 59
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 65
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 67
    goto :goto_4f

    .line 68
    :cond_43
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 70
    sget v2, Lmiuix/appcompat/R$id;->action_context_bar:I

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 78
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 80
    :goto_4f
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 82
    if-eqz v1, :cond_6e

    .line 84
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 86
    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 89
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 91
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 93
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 96
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 98
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 101
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 103
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 106
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 108
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 111
    :cond_6e
    return-void
.end method

.method private doHide(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doHide(ZZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method private doHide(ZZLmiuix/animation/controller/AnimState;)V
    .registers 7

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z

    if-eqz v1, :cond_12

    .line 3
    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 5
    :goto_13
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isShowHideAnimationEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    if-eqz p1, :cond_20

    :cond_1c
    if-eqz p2, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    move p1, v2

    :goto_21
    if-eqz p1, :cond_2c

    const-string p1, "HideActionBar"

    .line 6
    invoke-direct {p0, v2, p1, v0, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startContainerViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    goto :goto_48

    .line 7
    :cond_2c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAlpha(F)V

    .line 9
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I

    .line 10
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    :goto_48
    return-void
.end method

.method private doShow(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doShow(ZZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method private doShow(ZZLmiuix/animation/controller/AnimState;)V
    .registers 8

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z

    if-eqz v1, :cond_12

    .line 3
    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 5
    :goto_13
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isShowHideAnimationEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1d

    if-eqz p1, :cond_21

    :cond_1d
    if-eqz p2, :cond_21

    move p1, v2

    goto :goto_22

    :cond_21
    move p1, v3

    .line 6
    :goto_22
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    instance-of p2, p2, Lmiuix/view/SearchActionMode;

    if-eqz p2, :cond_3a

    .line 7
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x4

    goto :goto_36

    :cond_34
    const/16 v1, 0x8

    :goto_36
    invoke-virtual {p2, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_3f

    .line 8
    :cond_3a
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    :goto_3f
    if-eqz p1, :cond_4a

    const-string p1, "ShowActionBar"

    .line 9
    invoke-direct {p0, v2, p1, v0, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startContainerViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    goto :goto_57

    .line 10
    :cond_4a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAlpha(F)V

    :goto_57
    return-void
.end method

.method private doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    .line 7
    add-int v2, v1, p2

    .line 9
    if-eq v0, v2, :cond_14

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, p2

    .line 17
    sub-int/2addr v1, v0

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 21
    :cond_14
    return-void
.end method

.method private ensureTabsExist()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->checkTabsAdded()V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Lmiuix/appcompat/internal/app/widget/CollapseTabContainer;

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 15
    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/app/widget/CollapseTabContainer;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;

    .line 20
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 22
    invoke-direct {v1, v2}, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v2, Lmiuix/appcompat/internal/app/widget/SecondaryCollapseTabContainer;

    .line 27
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {v2, v3}, Lmiuix/appcompat/internal/app/widget/SecondaryCollapseTabContainer;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v3, Lmiuix/appcompat/internal/app/widget/SecondaryExpandTabContainer;

    .line 34
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {v3, v4}, Lmiuix/appcompat/internal/app/widget/SecondaryExpandTabContainer;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 54
    invoke-virtual {v4, v0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEmbeddedTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)V

    .line 57
    const/4 v4, 0x1

    .line 58
    invoke-virtual {v0, v4}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 61
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 63
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 65
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 67
    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 69
    return-void
.end method

.method public static getActionBar(Landroid/view/View;)Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    if-eqz p0, :cond_22

    .line 4
    instance-of v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 6
    if-eqz v1, :cond_11

    .line 8
    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 13
    move-result-object p0

    .line 14
    move-object v0, p0

    .line 15
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 17
    goto :goto_22

    .line 18
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object v1

    .line 22
    instance-of v1, v1, Landroid/view/View;

    .line 24
    if-eqz v1, :cond_20

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/view/View;

    .line 32
    goto :goto_1

    .line 33
    :cond_20
    move-object p0, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_22
    :goto_22
    return-object v0
.end method

.method private getActionBarSpec(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/app/strategy/ActionBarSpec;
    .registers 7

    .line 1
    new-instance v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;

    .line 3
    invoke-direct {v0}, Lmiuix/appcompat/app/strategy/ActionBarSpec;-><init>()V

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 8
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getDeviceType()I

    .line 11
    move-result v1

    .line 12
    iput v1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 19
    move-result-object v1

    .line 20
    iget v1, v1, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 22
    iput v1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowMode:I

    .line 24
    if-eqz p1, :cond_8d

    .line 26
    if-eqz p2, :cond_8d

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 39
    move-result-object v1

    .line 40
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 49
    move-result-object v2

    .line 50
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 52
    iput v3, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidth:I

    .line 54
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 56
    iput v2, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeight:I

    .line 58
    int-to-float v2, v3

    .line 59
    invoke-static {v1, v2}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    .line 62
    move-result v2

    .line 63
    iput v2, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    .line 65
    iget v2, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeight:I

    .line 67
    int-to-float v2, v2

    .line 68
    invoke-static {v1, v2}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    .line 71
    move-result v2

    .line 72
    iput v2, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    move-result p1

    .line 78
    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidth:I

    .line 80
    if-nez p1, :cond_59

    .line 82
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 87
    move-result p1

    .line 88
    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidth:I

    .line 90
    :cond_59
    iget p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidth:I

    .line 92
    int-to-float p1, p1

    .line 93
    invoke-static {v1, p1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    .line 96
    move-result p1

    .line 97
    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidthDp:I

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    move-result p1

    .line 103
    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarHeight:I

    .line 105
    int-to-float p1, p1

    .line 106
    invoke-static {v1, p1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    .line 109
    move-result p1

    .line 110
    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarHeightDp:I

    .line 112
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isUserSetExpandState()Z

    .line 115
    move-result p1

    .line 116
    iput-boolean p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->isUserSetExpandState:Z

    .line 118
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 121
    move-result p1

    .line 122
    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->expandState:I

    .line 124
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    .line 127
    move-result p1

    .line 128
    iput-boolean p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->resizable:Z

    .line 130
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isUserSetEndActionMenuItemLimit()Z

    .line 133
    move-result p1

    .line 134
    iput-boolean p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->isUserSetEndActionMenuItemLimit:Z

    .line 136
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getEndActionMenuItemLimit()I

    .line 139
    move-result p1

    .line 140
    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->endActionMenuItemLimit:I

    .line 142
    :cond_8d
    return-object v0
.end method

.method private getBlurOptions()I
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x8000

    .line 8
    and-int/2addr v0, v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    move v0, v2

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v0, v3

    .line 16
    :goto_f
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    .line 19
    move-result v4

    .line 20
    const/16 v5, 0x4000

    .line 22
    and-int/2addr v4, v5

    .line 23
    if-eqz v4, :cond_19

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v2, v3

    .line 27
    :goto_1a
    if-eqz v0, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v1, v3

    .line 31
    :goto_1e
    if-eqz v2, :cond_21

    .line 33
    move v3, v5

    .line 34
    :cond_21
    or-int v0, v1, v3

    .line 36
    return v0
.end method

.method private getCoordinateOffsetViewTopOffsetOrDefault(Landroid/view/View;)Ljava/lang/Integer;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 9
    sget-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->UNINITIALIZED_OFFSET:Ljava/lang/Integer;

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result p1

    .line 23
    :goto_16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method private getSplitHeight()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_2f

    .line 16
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_2f

    .line 25
    instance-of v2, v1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 27
    if-eqz v2, :cond_1f

    .line 29
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 31
    goto :goto_2f

    .line 32
    :cond_1f
    instance-of v2, v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 34
    if-eqz v2, :cond_2f

    .line 36
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 38
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isOverflowMenuShowing()Z

    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_2f

    .line 44
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getCollapsedHeight()I

    .line 47
    move-result v0

    .line 48
    :cond_2f
    :goto_2f
    return v0
.end method

.method private synthetic lambda$createActionBarCoordinateListener$1(IFII)V
    .registers 5

    .line 1
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGapOnShow:I

    .line 3
    iput p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGapOnShow:I

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result p1

    .line 11
    int-to-float p1, p1

    .line 12
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 17
    move-result p2

    .line 18
    add-float/2addr p2, p1

    .line 19
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 24
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    div-float/2addr p2, p1

    .line 27
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F

    .line 29
    const/4 p3, 0x0

    .line 30
    cmpl-float p3, p1, p3

    .line 32
    if-eqz p3, :cond_2c

    .line 34
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 39
    move-result p2

    .line 40
    sub-float/2addr p1, p2

    .line 41
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F

    .line 43
    div-float p2, p1, p2

    .line 45
    :cond_2c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_36

    .line 53
    const/high16 p2, 0x3f800000  # 1.0f

    .line 55
    :cond_36
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGapOnShow:I

    .line 57
    int-to-float p1, p1

    .line 58
    mul-float/2addr p1, p2

    .line 59
    float-to-int p1, p1

    .line 60
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    .line 62
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGapOnShow:I

    .line 64
    int-to-float p1, p1

    .line 65
    mul-float/2addr p1, p2

    .line 66
    float-to-int p1, p1

    .line 67
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I

    .line 69
    return-void
.end method

.method private synthetic lambda$setActionBarStrategy$0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 5
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->applyActionBarStrategy(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 8
    return-void
.end method

.method private measureSearchActionModeView()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 25
    move-result v1

    .line 26
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v3

    .line 32
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 40
    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 43
    return-void
.end method

.method private setHasEmbeddedTabs(Z)V
    .registers 6

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setTabContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 11
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 13
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 15
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 17
    invoke-virtual {p1, v0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEmbeddedTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)V

    .line 20
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getNavigationMode()I

    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x1

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x2

    .line 27
    if-ne p1, v2, :cond_1e

    .line 29
    move p1, v0

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move p1, v1

    .line 32
    :goto_1f
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 34
    const/16 v3, 0x8

    .line 36
    if-eqz v2, :cond_33

    .line 38
    if-eqz p1, :cond_2b

    .line 40
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    goto :goto_2e

    .line 44
    :cond_2b
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :goto_2e
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 49
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 52
    :cond_33
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 54
    if-eqz v2, :cond_45

    .line 56
    if-eqz p1, :cond_3d

    .line 58
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    goto :goto_40

    .line 62
    :cond_3d
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :goto_40
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 67
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 70
    :cond_45
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 72
    if-eqz v0, :cond_52

    .line 74
    if-eqz p1, :cond_4f

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    goto :goto_52

    .line 80
    :cond_4f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_52
    :goto_52
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 85
    if-eqz v0, :cond_5f

    .line 87
    if-eqz p1, :cond_5c

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    goto :goto_5f

    .line 93
    :cond_5c
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_5f
    :goto_5f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 98
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setCollapsable(Z)V

    .line 101
    return-void
.end method

.method private startContainerViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;
    .registers 20

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_47

    .line 13
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    move-result v2

    .line 19
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 21
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v4

    .line 25
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    invoke-static {v2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 30
    move-result v2

    .line 31
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    move-result v4

    .line 37
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 39
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    move-result-object v5

    .line 43
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    invoke-static {v4, v3, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 48
    move-result v4

    .line 49
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 51
    invoke-virtual {v5, v2, v4}, Landroid/view/View;->measure(II)V

    .line 54
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 56
    iget-object v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 58
    invoke-direct {p0, v5, v6}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->applyActionBarStrategy(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 61
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 63
    invoke-virtual {v5, v2, v4}, Landroid/view/View;->measure(II)V

    .line 66
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 71
    move-result v2

    .line 72
    :cond_47
    neg-int v2, v2

    .line 73
    int-to-float v4, v2

    .line 74
    iput v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F

    .line 76
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 78
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 81
    const/4 v5, 0x1

    .line 82
    new-array v6, v5, [Lmiuix/animation/listener/TransitionListener;

    .line 84
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerViewAnimationListener:Lmiuix/animation/listener/TransitionListener;

    .line 86
    aput-object v7, v6, v3

    .line 88
    invoke-virtual {v4, v6}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 91
    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    .line 93
    const/4 v8, 0x2

    .line 94
    const/4 v9, -0x2

    .line 95
    const-wide/16 v10, 0x0

    .line 97
    if-eqz p1, :cond_9b

    .line 99
    new-array v8, v8, [F

    .line 101
    fill-array-data v8, :array_10a

    .line 104
    invoke-static {v9, v8}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v4, v8}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 111
    if-nez p4, :cond_82

    .line 113
    new-instance v8, Lmiuix/animation/controller/AnimState;

    .line 115
    invoke-direct {v8, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 118
    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 120
    invoke-virtual {v8, v9, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 123
    move-result-object v8

    .line 124
    sget-object v9, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 126
    invoke-virtual {v8, v9, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 129
    move-result-object v6

    .line 130
    goto :goto_84

    .line 131
    :cond_82
    move-object/from16 v6, p4

    .line 133
    :goto_84
    if-nez p3, :cond_e6

    .line 135
    if-nez p4, :cond_e6

    .line 137
    new-instance v7, Lmiuix/animation/controller/AnimState;

    .line 139
    invoke-direct {v7, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 142
    sget-object v8, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 144
    int-to-double v12, v2

    .line 145
    invoke-virtual {v7, v8, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 148
    move-result-object v2

    .line 149
    sget-object v7, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 151
    invoke-virtual {v2, v7, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 154
    move-result-object v2

    .line 155
    goto :goto_e8

    .line 156
    :cond_9b
    new-array v8, v8, [F

    .line 158
    fill-array-data v8, :array_112

    .line 161
    invoke-static {v9, v8}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 164
    move-result-object v8

    .line 165
    invoke-virtual {v4, v8}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 168
    new-array v8, v5, [Lmiuix/animation/listener/TransitionListener;

    .line 170
    new-instance v9, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;

    .line 172
    iget-object v12, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 174
    invoke-direct {v9, v12, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;-><init>(Landroid/view/View;Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    .line 177
    aput-object v9, v8, v3

    .line 179
    invoke-virtual {v4, v8}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 182
    if-nez p4, :cond_ca

    .line 184
    new-instance v8, Lmiuix/animation/controller/AnimState;

    .line 186
    invoke-direct {v8, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 189
    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 191
    int-to-double v12, v2

    .line 192
    invoke-virtual {v8, v9, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 195
    move-result-object v2

    .line 196
    sget-object v8, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 198
    invoke-virtual {v2, v8, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 201
    move-result-object v2

    .line 202
    goto :goto_cc

    .line 203
    :cond_ca
    move-object/from16 v2, p4

    .line 205
    :goto_cc
    if-nez p3, :cond_e5

    .line 207
    if-nez p4, :cond_e5

    .line 209
    new-instance v8, Lmiuix/animation/controller/AnimState;

    .line 211
    invoke-direct {v8, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 214
    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 216
    invoke-virtual {v8, v9, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 219
    move-result-object v8

    .line 220
    sget-object v9, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 222
    invoke-virtual {v8, v9, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 225
    move-result-object v6

    .line 226
    move-object v14, v6

    .line 227
    move-object v6, v2

    .line 228
    move-object v2, v14

    .line 229
    goto :goto_e8

    .line 230
    :cond_e5
    move-object v6, v2

    .line 231
    :cond_e6
    move-object/from16 v2, p3

    .line 233
    :goto_e8
    new-array v7, v5, [Landroid/view/View;

    .line 235
    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 237
    aput-object v8, v7, v3

    .line 239
    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 242
    move-result-object v7

    .line 243
    invoke-interface {v7}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 246
    move-result-object v7

    .line 247
    if-eqz v2, :cond_ff

    .line 249
    invoke-virtual {v2, v1}, Lmiuix/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    .line 252
    invoke-interface {v7, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 255
    move-result-object v7

    .line 256
    :cond_ff
    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    .line 258
    aput-object v4, v1, v3

    .line 260
    invoke-interface {v7, v6, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 263
    iput-boolean v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z

    .line 265
    return-object v7

    .line 266
    nop

    .line 267
    :array_10a
    .array-data 4
        0x3f666666  # 0.9f
        0x3e800000  # 0.25f
    .end array-data

    .line 275
    :array_112
    .array-data 4
        0x3f800000  # 1.0f
        0x3eb33333  # 0.35f
    .end array-data
.end method

.method private startSplitViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;
    .registers 13

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getSplitHeight()I

    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, -0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    if-eqz p1, :cond_50

    .line 13
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 15
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 18
    new-array v0, v3, [F

    .line 20
    fill-array-data v0, :array_a4

    .line 23
    invoke-static {v4, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 30
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 32
    invoke-direct {v0, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 35
    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 37
    invoke-virtual {v0, v3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 43
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 48
    move-result-object v0

    .line 49
    new-array v1, v6, [Landroid/view/View;

    .line 51
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 53
    aput-object v2, v1, v5

    .line 55
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 62
    move-result-object v1

    .line 63
    if-eqz p3, :cond_47

    .line 65
    invoke-virtual {p3, p2}, Lmiuix/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    .line 68
    invoke-interface {v1, p3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 71
    move-result-object v1

    .line 72
    :cond_47
    new-array p2, v6, [Lmiuix/animation/base/AnimConfig;

    .line 74
    aput-object p1, p2, v5

    .line 76
    invoke-interface {v1, v0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 79
    move-result-object p1

    .line 80
    goto :goto_a2

    .line 81
    :cond_50
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 83
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 86
    new-array v3, v3, [F

    .line 88
    fill-array-data v3, :array_ac

    .line 91
    invoke-static {v4, v3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 98
    new-array v3, v6, [Lmiuix/animation/listener/TransitionListener;

    .line 100
    new-instance v4, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;

    .line 102
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 104
    invoke-direct {v4, v7, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;-><init>(Landroid/view/View;Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    .line 107
    aput-object v4, v3, v5

    .line 109
    invoke-virtual {p1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 112
    new-instance v3, Lmiuix/animation/controller/AnimState;

    .line 114
    invoke-direct {v3, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 117
    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 119
    add-int/lit8 v0, v0, 0x64

    .line 121
    int-to-double v7, v0

    .line 122
    invoke-virtual {v3, v4, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 125
    move-result-object v0

    .line 126
    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 128
    invoke-virtual {v0, v3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 131
    move-result-object v0

    .line 132
    new-array v1, v6, [Landroid/view/View;

    .line 134
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 136
    aput-object v2, v1, v5

    .line 138
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 141
    move-result-object v1

    .line 142
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 145
    move-result-object v1

    .line 146
    if-eqz p3, :cond_9a

    .line 148
    invoke-virtual {p3, p2}, Lmiuix/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    .line 151
    invoke-interface {v1, p3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 154
    move-result-object v1

    .line 155
    :cond_9a
    new-array p2, v6, [Lmiuix/animation/base/AnimConfig;

    .line 157
    aput-object p1, p2, v5

    .line 159
    invoke-interface {v1, v0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 162
    move-result-object p1

    .line 163
    :goto_a2
    return-object p1

    .line 164
    nop

    .line 165
    :array_a4
    .array-data 4
        0x3f666666  # 0.9f
        0x3e800000  # 0.25f
    .end array-data

    .line 173
    :array_ac
    .array-data 4
        0x3f800000  # 1.0f
        0x3eb33333  # 0.35f
    .end array-data
.end method

.method private updateContentMaskVisibility(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_48

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 19
    if-eqz v0, :cond_48

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 29
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitMenuView:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 31
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isOverflowMenuShowing()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_48

    .line 37
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentMask:Landroid/view/View;

    .line 39
    if-eqz v0, :cond_48

    .line 41
    if-eqz p1, :cond_3a

    .line 43
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 45
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentMaskOnClickListener:Landroid/view/View$OnClickListener;

    .line 47
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->show()Landroid/animation/Animator;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 58
    goto :goto_48

    .line 59
    :cond_3a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 73
    :cond_48
    :goto_48
    return-void
.end method

.method private updateVisibility(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateVisibility(ZZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method private updateVisibility(ZZLmiuix/animation/controller/AnimState;)V
    .registers 7

    .line 2
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mHiddenByApp:Z

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mHiddenBySystem:Z

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doShow(ZZLmiuix/animation/controller/AnimState;)V

    goto :goto_21

    .line 6
    :cond_17
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doHide(ZZLmiuix/animation/controller/AnimState;)V

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public addActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->addActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V

    .line 6
    return-void
.end method

.method public addBadgeOnItemView(I)V
    .registers 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->addBadgeOnItemView(II)V

    return-void
.end method

.method public addBadgeOnItemView(II)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isEndActionMenuEnable()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    .line 3
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addBadgeOnItemView(II)V

    :cond_10
    :goto_10
    return-void
.end method

.method public addBadgeOnItemView(Landroid/view/MenuItem;)V
    .registers 3

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->addBadgeOnItemView(Landroid/view/MenuItem;I)V

    return-void
.end method

.method public addBadgeOnItemView(Landroid/view/MenuItem;I)V
    .registers 4

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isEndActionMenuEnable()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    .line 6
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addBadgeOnItemView(Landroid/view/MenuItem;I)V

    :cond_10
    :goto_10
    return-void
.end method

.method public addBadgeOnMoreButton()V
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->addBadgeOnMoreButton(I)V

    return-void
.end method

.method public addBadgeOnMoreButton(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isEndActionMenuEnable()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    .line 3
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addBadgeOnMoreButton(I)V

    :cond_10
    :goto_10
    return-void
.end method

.method public addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/a$d;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/a$d;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/a$d;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    move-result p1

    return p1
.end method

.method public addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/a$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/a$d;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/a$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    move-result p1

    return p1
.end method

.method public addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 6
    return-void
.end method

.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/a$d;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->addTab(Landroidx/appcompat/app/a$d;Z)V

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/a$d;I)V
    .registers 4

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->addTab(Landroidx/appcompat/app/a$d;IZ)V

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/a$d;IZ)V
    .registers 5

    .line 6
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalAddTab(Landroidx/appcompat/app/a$d;IZ)V

    return-void

    .line 8
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTab(Landroidx/appcompat/app/a$d;Z)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalAddTab(Landroidx/appcompat/app/a$d;Z)V

    return-void

    .line 4
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public animateToMode(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->showForActionMode()V

    .line 6
    goto :goto_9

    .line 7
    :cond_6
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->hideForActionMode()V

    .line 10
    :goto_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 12
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->animateToVisibility(Z)V

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 17
    if-eqz v0, :cond_3e

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 21
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_3e

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 29
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isCollapsed()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3e

    .line 35
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 37
    xor-int/lit8 v1, p1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 44
    xor-int/lit8 v1, p1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 51
    xor-int/lit8 v1, p1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 58
    xor-int/lit8 p1, p1, 0x1

    .line 60
    invoke-virtual {v0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setEnabled(Z)V

    .line 63
    :cond_3e
    return-void
.end method

.method public clearBadgeOnItemView(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isEndActionMenuEnable()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    .line 2
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clearBadgeOnItemView(I)V

    :cond_10
    :goto_10
    return-void
.end method

.method public clearBadgeOnItemView(Landroid/view/MenuItem;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isEndActionMenuEnable()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    .line 4
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clearBadgeOnItemView(Landroid/view/MenuItem;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public clearBadgeOnMoreButton()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isEndActionMenuEnable()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 14
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clearBadgeOnMoreButton()V

    .line 17
    :cond_10
    :goto_10
    return-void
.end method

.method public createActionBarCoordinateListener()Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/b;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/b;-><init>(Ljava/lang/Object;I)V

    .line 7
    return-object v0
.end method

.method public createActionModeView(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionModeView;
    .registers 4

    .line 1
    instance-of p1, p1, Lmiuix/view/SearchActionMode$Callback;

    .line 3
    if-eqz p1, :cond_31

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 7
    if-nez p1, :cond_13

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createSearchActionModeView()Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 17
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setExtraPaddingPolicy(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;)V

    .line 20
    :cond_13
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 22
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    move-result-object v0

    .line 28
    if-eq p1, v0, :cond_24

    .line 30
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 32
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    :cond_24
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->measureSearchActionModeView()V

    .line 40
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 44
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V

    .line 47
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 49
    goto :goto_35

    .line 50
    :cond_31
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 52
    if-eqz p1, :cond_45

    .line 54
    :goto_35
    instance-of v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 56
    if-eqz v0, :cond_44

    .line 58
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMaxActionMenuItemCount:I

    .line 60
    const/4 v1, -0x1

    .line 61
    if-eq v0, v1, :cond_44

    .line 63
    move-object v1, p1

    .line 64
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 66
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setActionMenuItemLimit(I)V

    .line 69
    :cond_44
    return-object p1

    .line 70
    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    const-string v0, "not set windowSplitActionBar true in activity style!"

    .line 74
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1
.end method

.method public createSearchActionModeView()Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_search_action_mode_view:I

    .line 11
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setOverlayModeView(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 25
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$6;

    .line 27
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$6;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    .line 30
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-object v0
.end method

.method public getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    return-object v0
.end method

.method public getActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    return-object v0
.end method

.method public getActionBarStrategy()Lmiuix/appcompat/app/strategy/IActionBarStrategy;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    .line 3
    return-object v0
.end method

.method public getActionBarView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    return-object v0
.end method

.method public getCollapseTitle()Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapseTitle()Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    const v1, 0x1020002

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getEndView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getEndView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getExpandState()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getExpandedHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getExpandedHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getFragmentAt(I)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getFragmentTabCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->getFragmentTabCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getNavigationItemCount()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_15

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_e

    .line 14
    return v2

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 24
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_21

    .line 30
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 33
    move-result v2

    .line 34
    :cond_21
    return v2
.end method

.method public getNavigationMode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSelectedNavigationIndex()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_17

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v0, v1, :cond_e

    .line 14
    return v2

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSelectedTab:Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 17
    if-eqz v0, :cond_16

    .line 19
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->getPosition()I

    .line 22
    move-result v2

    .line 23
    :cond_16
    return v2

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 26
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDropdownSelectedPosition()I

    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public getSelectedTab()Landroidx/appcompat/app/a$d;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSelectedTab:Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 3
    return-object v0
.end method

.method public getStartView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getStartView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSubTitleView(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getSubTitleView(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTabAt(I)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/appcompat/app/a$d;

    .line 9
    return-object p1
.end method

.method public getTabCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    .line 3
    if-nez v0, :cond_28

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    move-result-object v1

    .line 16
    const v2, 0x1010397

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 23
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 25
    if-eqz v0, :cond_24

    .line 27
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 29
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    .line 36
    goto :goto_28

    .line 37
    :cond_24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    .line 41
    :cond_28
    :goto_28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    .line 43
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTitleView(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getTitleView(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getTopOffsetForCoordinateView(Landroid/view/View;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getCoordinateOffsetViewTopOffsetOrDefault(Landroid/view/View;)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_11
    const/4 p1, -0x1

    .line 19
    return p1
.end method

.method public getTopViewHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->getViewHeight()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 16
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isCollapsed()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_17

    .line 22
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 26
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public getViewPagerOffscreenPageLimit()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->getViewPagerOffscreenPageLimit()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasNonEmbeddedTabs()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->hide(Lmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method public hide(Lmiuix/animation/controller/AnimState;)V
    .registers 3

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->hide(ZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method public hide(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->hide(ZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method public hide(ZLmiuix/animation/controller/AnimState;)V
    .registers 4

    .line 4
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mHiddenByApp:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mHiddenByApp:Z

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateVisibility(ZZLmiuix/animation/controller/AnimState;)V

    :cond_b
    return-void
.end method

.method public hideForActionMode()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    .line 3
    if-eqz v0, :cond_54

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    .line 13
    move-result v2

    .line 14
    const v3, 0x8000

    .line 17
    and-int/2addr v2, v3

    .line 18
    if-eqz v2, :cond_15

    .line 20
    const/4 v2, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v2, v0

    .line 23
    :goto_16
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onActionModeEnd(Z)V

    .line 26
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateVisibility(Z)V

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 31
    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 33
    if-eqz v0, :cond_28

    .line 35
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    .line 37
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    .line 40
    goto :goto_4d

    .line 41
    :cond_28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 43
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->finishActionMode()V

    .line 46
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 48
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 50
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    .line 53
    move-result v0

    .line 54
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    .line 56
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 58
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 60
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    .line 66
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    .line 68
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    .line 71
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 73
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    .line 75
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 78
    :goto_4d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 80
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentAccessibilityImportant:I

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 85
    :cond_54
    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 6

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 6
    sget v1, Lmiuix/appcompat/R$attr;->actionBarStrategy:I

    .line 8
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_28

    .line 15
    :try_start_e
    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    move-result-object v0

    .line 25
    new-array v2, v1, [Ljava/lang/Class;

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 30
    move-result-object v0

    .line 31
    new-array v2, v1, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    .line 39
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_28

    .line 41
    :catch_28
    :cond_28
    move-object v0, p1

    .line 42
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 44
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 46
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setActionBar(Lmiuix/appcompat/app/ActionBar;)V

    .line 49
    sget v0, Lmiuix/appcompat/R$id;->action_bar:I

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 57
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 59
    if-eqz v0, :cond_43

    .line 61
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 63
    if-eqz v2, :cond_43

    .line 65
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExtraPaddingPolicy(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;)V

    .line 68
    :cond_43
    sget v0, Lmiuix/appcompat/R$id;->action_context_bar:I

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 76
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 78
    sget v0, Lmiuix/appcompat/R$id;->action_bar_container:I

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 86
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 88
    sget v0, Lmiuix/appcompat/R$id;->split_action_bar:I

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 96
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 98
    sget v0, Lmiuix/appcompat/R$id;->content_mask:I

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentMask:Landroid/view/View;

    .line 106
    if-eqz p1, :cond_72

    .line 108
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$3;

    .line 110
    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    .line 113
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentMaskOnClickListener:Landroid/view/View$OnClickListener;

    .line 115
    :cond_72
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 117
    if-nez p1, :cond_9e

    .line 119
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 121
    if-nez v0, :cond_9e

    .line 123
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 125
    if-eqz v0, :cond_7f

    .line 127
    goto :goto_9e

    .line 128
    :cond_7f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, " can only be used with a compatible window decor layout"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    throw p1

    .line 159
    :cond_9e
    :goto_9e
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    .line 162
    move-result p1

    .line 163
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextDisplayMode:I

    .line 165
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 167
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 170
    move-result p1

    .line 171
    and-int/lit8 p1, p1, 0x4

    .line 173
    const/4 v0, 0x1

    .line 174
    if-eqz p1, :cond_b1

    .line 176
    move p1, v0

    .line 177
    goto :goto_b2

    .line 178
    :cond_b1
    move p1, v1

    .line 179
    :goto_b2
    if-eqz p1, :cond_b6

    .line 181
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 183
    :cond_b6
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 185
    invoke-static {v2}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    .line 192
    move-result v3

    .line 193
    if-nez v3, :cond_c7

    .line 195
    if-eqz p1, :cond_c5

    .line 197
    goto :goto_c7

    .line 198
    :cond_c5
    move p1, v1

    .line 199
    goto :goto_c8

    .line 200
    :cond_c7
    :goto_c7
    move p1, v0

    .line 201
    :goto_c8
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setHomeButtonEnabled(Z)V

    .line 204
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    .line 207
    move-result p1

    .line 208
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 211
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_df

    .line 217
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_df

    .line 223
    goto :goto_e0

    .line 224
    :cond_df
    move v0, v1

    .line 225
    :goto_e0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 227
    if-eqz p1, :cond_e7

    .line 229
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setSupportBlur(Z)V

    .line 232
    :cond_e7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 234
    if-eqz p1, :cond_ee

    .line 236
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setSupportBlur(Z)V

    .line 239
    :cond_ee
    if-eqz v0, :cond_10f

    .line 241
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 243
    sget v0, Lmiuix/appcompat/R$attr;->bgBlurOptions:I

    .line 245
    invoke-static {p1, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    .line 248
    move-result p1

    .line 249
    if-eqz p1, :cond_10f

    .line 251
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    .line 254
    move-result v0

    .line 255
    and-int/lit8 v1, p1, 0x1

    .line 257
    if-eqz v1, :cond_106

    .line 259
    const v1, 0x8000

    .line 262
    or-int/2addr v0, v1

    .line 263
    :cond_106
    and-int/lit8 p1, p1, 0x2

    .line 265
    if-eqz p1, :cond_10c

    .line 267
    or-int/lit16 v0, v0, 0x4000

    .line 269
    :cond_10c
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setDisplayOptions(I)V

    .line 272
    :cond_10f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    .line 274
    if-nez p1, :cond_11a

    .line 276
    new-instance p1, Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;

    .line 278
    invoke-direct {p1}, Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;-><init>()V

    .line 281
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    .line 283
    :cond_11a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 288
    move-result-object p1

    .line 289
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;

    .line 291
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 297
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 299
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;

    .line 301
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    .line 304
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 307
    return-void
.end method

.method public internalAddTab(Landroidx/appcompat/app/a$d;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getTabCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalAddTab(Landroidx/appcompat/app/a$d;Z)V

    return-void
.end method

.method public internalAddTab(Landroidx/appcompat/app/a$d;I)V
    .registers 4

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getTabCount()I

    move-result v0

    if-ne p2, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalAddTab(Landroidx/appcompat/app/a$d;IZ)V

    return-void
.end method

.method public internalAddTab(Landroidx/appcompat/app/a$d;IZ)V
    .registers 5

    .line 10
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->ensureTabsExist()V

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->addTab(Landroidx/appcompat/app/a$d;IZ)V

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->addTab(Landroidx/appcompat/app/a$d;IZ)V

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->addTab(Landroidx/appcompat/app/a$d;IZ)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->addTab(Landroidx/appcompat/app/a$d;IZ)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    .line 15
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->configureTab(Landroidx/appcompat/app/a$d;I)V

    if-eqz p3, :cond_1f

    .line 16
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->selectTab(Landroidx/appcompat/app/a$d;)V

    :cond_1f
    return-void
.end method

.method public internalAddTab(Landroidx/appcompat/app/a$d;Z)V
    .registers 4

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->ensureTabsExist()V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->addTab(Landroidx/appcompat/app/a$d;Z)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->addTab(Landroidx/appcompat/app/a$d;Z)V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->addTab(Landroidx/appcompat/app/a$d;Z)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->addTab(Landroidx/appcompat/app/a$d;Z)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->configureTab(Landroidx/appcompat/app/a$d;I)V

    if-eqz p2, :cond_25

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->selectTab(Landroidx/appcompat/app/a$d;)V

    :cond_25
    return-void
.end method

.method public internalRemoveAllTabs()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->cleanupTabs()V

    .line 4
    return-void
.end method

.method public internalRemoveTab(Landroidx/appcompat/app/a$d;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalRemoveTabAt(I)V

    .line 8
    return-void
.end method

.method public internalRemoveTabAt(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSelectedTab:Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 8
    if-eqz v0, :cond_e

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->getPosition()I

    .line 13
    move-result v0

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    .line 17
    :goto_10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 19
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 22
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 24
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 27
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 29
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->removeTabAt(I)V

    .line 32
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 34
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->removeTabAt(I)V

    .line 37
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 45
    const/4 v2, -0x1

    .line 46
    if-eqz v1, :cond_32

    .line 48
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 51
    :cond_32
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v1

    .line 57
    move v3, p1

    .line 58
    :goto_39
    if-ge v3, v1, :cond_49

    .line 60
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 68
    invoke-virtual {v4, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_39

    .line 74
    :cond_49
    if-ne v0, p1, :cond_67

    .line 76
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_55

    .line 84
    const/4 p1, 0x0

    .line 85
    goto :goto_64

    .line 86
    :cond_55
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 88
    const/4 v1, 0x0

    .line 89
    add-int/lit8 p1, p1, -0x1

    .line 91
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 94
    move-result p1

    .line 95
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroidx/appcompat/app/a$d;

    .line 101
    :goto_64
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->selectTab(Landroidx/appcompat/app/a$d;)V

    .line 104
    :cond_67
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_71

    .line 112
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    .line 114
    :cond_71
    return-void
.end method

.method public isFragmentViewPagerMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

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

.method public isResizable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isShowHideAnimationEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowHideAnimationEnabled:Z

    .line 3
    return v0
.end method

.method public isShowing()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 3
    return v0
.end method

.method public newTab()Landroidx/appcompat/app/a$d;
    .registers 2

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    .line 6
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsWindowInfoChanged:Z

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    .line 13
    move-result v0

    .line 14
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 19
    if-eqz v0, :cond_1f

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1f

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 29
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 32
    :cond_1f
    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onFloatingModeChanged(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setIsMiuixFloating(Z)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 8
    if-eqz p1, :cond_c

    .line 10
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->onFloatingModeChanged()V

    .line 13
    :cond_c
    return-void
.end method

.method public registerCoordinateScrollView(Landroid/view/View;)V
    .registers 4

    .line 1
    if-nez p1, :cond_a

    .line 3
    const-string p1, "miuix-appcompat"

    .line 5
    const-string v0, "warning!! the view is null on registerCoordinateScrollView!!"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_a
    instance-of v0, p1, Lmiuix/core/view/NestedContentInsetObserver;

    .line 13
    if-eqz v0, :cond_1d

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    .line 17
    check-cast p1, Lmiuix/core/view/NestedContentInsetObserver;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    .line 24
    if-eqz v0, :cond_49

    .line 26
    invoke-interface {p1, v0}, Lmiuix/core/view/NestedContentInsetObserver;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 29
    goto :goto_49

    .line 30
    :cond_1d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 32
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    .line 34
    if-eqz v1, :cond_26

    .line 36
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 38
    goto :goto_2c

    .line 39
    :cond_26
    sget-object v1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->UNINITIALIZED_OFFSET:Ljava/lang/Integer;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v1

    .line 45
    :goto_2c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    .line 54
    if-eqz v0, :cond_49

    .line 56
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 58
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    .line 69
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 71
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    .line 74
    :cond_49
    :goto_49
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 76
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionBarCoordinateListener()Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    .line 79
    move-result-object p1

    .line 80
    if-nez p1, :cond_5a

    .line 82
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 84
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createActionBarCoordinateListener()Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarCoordinateListener(Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;)V

    .line 91
    :cond_5a
    return-void
.end method

.method public registerCoordinatedScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->registerCoordinatedScrollView(Landroid/view/View;)V

    .line 8
    :cond_7
    return-void
.end method

.method public removeActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->removeActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V

    .line 6
    return-void
.end method

.method public removeAllFragmentTab()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->removeAllFragmentTab()V

    .line 6
    return-void
.end method

.method public removeAllTabs()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isFragmentViewPagerMode()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalRemoveAllTabs()V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw v0
.end method

.method public removeFragmentTab(Landroidx/appcompat/app/a$d;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->removeFragmentTab(Landroidx/appcompat/app/a$d;)V

    return-void
.end method

.method public removeFragmentTab(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->removeFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public removeFragmentTab(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->removeFragmentTab(Ljava/lang/String;)V

    return-void
.end method

.method public removeFragmentTabAt(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->removeFragmentAt(I)V

    .line 6
    return-void
.end method

.method public removeOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->removeOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 6
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public removeTab(Landroidx/appcompat/app/a$d;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isFragmentViewPagerMode()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalRemoveTab(Landroidx/appcompat/app/a$d;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    const-string v0, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method public removeTabAt(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isFragmentViewPagerMode()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalRemoveTabAt(I)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    const-string v0, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method public replaceFragmentTab(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->replaceFragmentTab(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Z)V

    .line 11
    return-void
.end method

.method public selectTab(Landroidx/appcompat/app/a$d;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->selectTab(Landroidx/appcompat/app/a$d;Z)V

    return-void
.end method

.method public selectTab(Landroidx/appcompat/app/a$d;Z)V
    .registers 8

    .line 2
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isSelectingTab:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isSelectingTab:Z

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isSelectingTab:Z

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_24

    .line 6
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    return-void

    .line 7
    :cond_24
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_35

    if-eqz p1, :cond_32

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result v3

    .line 9
    :cond_32
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    return-void

    .line 10
    :cond_35
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 12
    invoke-virtual {v2}, Landroidx/fragment/app/b0;->g()V

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSelectedTab:Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    if-ne v0, p1, :cond_76

    if-eqz v0, :cond_c6

    .line 14
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->getCallback()Landroidx/appcompat/app/a$e;

    move-result-object p2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSelectedTab:Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    invoke-interface {p2, v0, v2}, Landroidx/appcompat/app/a$e;->onTabReselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    .line 15
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 16
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 17
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->animateToTab(I)V

    .line 18
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->animateToTab(I)V

    goto :goto_c6

    .line 19
    :cond_76
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_7f

    .line 20
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result v4

    goto :goto_80

    :cond_7f
    move v4, v3

    .line 21
    :goto_80
    invoke-virtual {v0, v4, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabSelected(IZ)V

    .line 22
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_8c

    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result v4

    goto :goto_8d

    :cond_8c
    move v4, v3

    .line 24
    :goto_8d
    invoke-virtual {v0, v4, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabSelected(IZ)V

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    if-eqz p1, :cond_99

    .line 26
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result v4

    goto :goto_9a

    :cond_99
    move v4, v3

    .line 27
    :goto_9a
    invoke-virtual {v0, v4}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setTabSelected(I)V

    .line 28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    if-eqz p1, :cond_a5

    .line 29
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    move-result v3

    .line 30
    :cond_a5
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setTabSelected(I)V

    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSelectedTab:Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_b5

    .line 32
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->getCallback()Landroidx/appcompat/app/a$e;

    move-result-object v0

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSelectedTab:Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    invoke-interface {v0, v3, v2}, Landroidx/appcompat/app/a$e;->onTabUnselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    .line 33
    :cond_b5
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSelectedTab:Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    if-eqz p1, :cond_c6

    .line 34
    iput-boolean p2, p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mWithAnim:Z

    .line 35
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->getCallback()Landroidx/appcompat/app/a$e;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSelectedTab:Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    invoke-interface {p1, p2, v2}, Landroidx/appcompat/app/a$e;->onTabSelected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    .line 36
    :cond_c6
    :goto_c6
    iget-object p1, v2, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d1

    .line 37
    invoke-virtual {v2}, Landroidx/fragment/app/a;->p()I

    .line 38
    :cond_d1
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isSelectingTab:Z

    return-void
.end method

.method public setActionBarStrategy(Lmiuix/appcompat/app/strategy/IActionBarStrategy;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/app/widget/a;

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/a;-><init>(Ljava/lang/Object;I)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public setActionMenuItemLimit(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMaxActionMenuItemCount:I

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setActionMenuItemLimit(I)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 10
    instance-of v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 12
    if-eqz v0, :cond_14

    .line 14
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 16
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMaxActionMenuItemCount:I

    .line 18
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setActionMenuItemLimit(I)V

    .line 21
    :cond_14
    return-void
.end method

.method public setActionModeAnim(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setActionModeAnim(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public setBlur(Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x8000

    .line 8
    and-int/2addr v0, v1

    .line 9
    if-eqz v0, :cond_11

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarBlur(Ljava/lang/Boolean;)V

    .line 18
    :cond_11
    return-void
.end method

.method public setCustomView(I)V
    .registers 5

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroidx/appcompat/app/a$a;)V
    .registers 3

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getBlurOptions()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eqz p1, :cond_9

    .line 8
    move p1, v1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    or-int/2addr p1, v0

    .line 12
    or-int/2addr v0, v1

    .line 13
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setDisplayOptions(II)V

    .line 16
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 7

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 9
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 10
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 12
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    const v4, 0x8000

    and-int/2addr v0, v4

    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_20

    :cond_1f
    move v0, v3

    .line 13
    :goto_20
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setEnableBlur(Z)V

    .line 14
    :cond_23
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_30

    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v3

    .line 15
    :goto_2d
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setEnableBlur(Z)V

    :cond_30
    return-void
.end method

.method public setDisplayOptions(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    .line 2
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 3
    :cond_d
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result p1

    .line 5
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v0, 0x0

    if-eqz p2, :cond_2d

    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_29

    move v1, v2

    goto :goto_2a

    :cond_29
    move v1, v0

    .line 6
    :goto_2a
    invoke-virtual {p2, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setEnableBlur(Z)V

    .line 7
    :cond_2d
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p2, :cond_3a

    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    move v2, v0

    .line 8
    :goto_37
    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setEnableBlur(Z)V

    :cond_3a
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getBlurOptions()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 7
    if-eqz p1, :cond_a

    .line 9
    move p1, v1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    or-int/2addr p1, v0

    .line 13
    or-int/2addr v0, v1

    .line 14
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setDisplayOptions(II)V

    .line 17
    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getBlurOptions()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz p1, :cond_9

    .line 8
    move p1, v1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    or-int/2addr p1, v0

    .line 12
    or-int/2addr v0, v1

    .line 13
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setDisplayOptions(II)V

    .line 16
    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getBlurOptions()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 7
    if-eqz p1, :cond_a

    .line 9
    move p1, v1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    or-int/2addr p1, v0

    .line 13
    or-int/2addr v0, v1

    .line 14
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setDisplayOptions(II)V

    .line 17
    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getBlurOptions()I

    .line 4
    move-result v0

    .line 5
    or-int/2addr p1, v0

    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setDisplayOptions(II)V

    .line 11
    return-void
.end method

.method public setEndActionMenuItemLimit(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setUserSetEndActionMenuItemLimit(Z)V

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndActionMenuItemLimit(I)V

    .line 12
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public setExpandState(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandStateByUser(I)V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_16

    .line 4
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandStateByUser(I)V

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    :cond_16
    return-void
.end method

.method public setExpandState(IZ)V
    .registers 5

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandStateByUser(I)V

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(IZZ)V

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_17

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandStateByUser(I)V

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(IZZ)V

    :cond_17
    return-void
.end method

.method public setExpandState(IZZ)V
    .registers 5

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandStateByUser(I)V

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(IZZ)V

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_16

    .line 14
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandStateByUser(I)V

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(IZZ)V

    :cond_16
    return-void
.end method

.method public setExpandTabTextAppearance(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTextAppearance(II)V

    .line 6
    return-void
.end method

.method public setExtraPaddingPolicy(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 3
    if-eq v0, p1, :cond_16

    .line 5
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExtraPaddingPolicy(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;)V

    .line 14
    :cond_d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 16
    if-eqz p1, :cond_16

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 20
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setExtraPaddingPolicy(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;)V

    .line 23
    :cond_16
    return-void
.end method

.method public setFragmentActionMenuAt(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->setFragmentActionMenuAt(IZ)V

    .line 6
    return-void
.end method

.method public setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V

    return-void
.end method

.method public setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->removeAllTabs()V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setNavigationMode(I)V

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;Z)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_36

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    :cond_36
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 6
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/a$c;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 8
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setCallback(Landroidx/appcompat/app/a$c;)V

    .line 11
    return-void
.end method

.method public setLogo(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_a

    .line 10
    goto :goto_2a

    .line 11
    :cond_a
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getSelectedNavigationIndex()I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->selectTab(Landroidx/appcompat/app/a$d;)V

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 23
    const/16 v2, 0x8

    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :goto_2a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 45
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setNavigationMode(I)V

    .line 48
    const/4 v0, 0x0

    .line 49
    if-eq p1, v1, :cond_33

    .line 51
    goto :goto_54

    .line 52
    :cond_33
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->ensureTabsExist()V

    .line 55
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    .line 77
    const/4 v1, -0x1

    .line 78
    if-eq p1, v1, :cond_54

    .line 80
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 83
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    .line 85
    :cond_54
    :goto_54
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 87
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setCollapsable(Z)V

    .line 90
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setProgress(I)V

    .line 6
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setProgressBarIndeterminate(Z)V

    .line 6
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setProgressBarIndeterminateVisibility(Z)V

    .line 6
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setProgressBarVisibility(Z)V

    .line 6
    return-void
.end method

.method public setResizable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 6
    return-void
.end method

.method public setSecondaryTabTextAppearance(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setTextAppearance(II)V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setTextAppearance(II)V

    return-void
.end method

.method public setSecondaryTabTextAppearance(III)V
    .registers 5

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setTextAppearance(III)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setTextAppearance(III)V

    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_20

    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_18

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroidx/appcompat/app/a$d;

    .line 21
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->selectTab(Landroidx/appcompat/app/a$d;)V

    .line 24
    goto :goto_25

    .line 25
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    const-string v0, "setSelectedNavigationIndex not valid for current navigation mode"

    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1

    .line 33
    :cond_20
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 35
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDropdownSelectedPosition(I)V

    .line 38
    :goto_25
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowHideAnimationEnabled:Z

    .line 3
    if-nez p1, :cond_12

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isShowing()Z

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_f

    .line 12
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doShow(Z)V

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doHide(Z)V

    .line 19
    :cond_12
    :goto_12
    return-void
.end method

.method public setSplitActionBarBlur(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0x4000

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setSplitActionBarBlur(Ljava/lang/Boolean;)V

    .line 16
    :cond_f
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    if-eqz v0, :cond_23

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_5
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_23

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 16
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    instance-of v1, v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 22
    if-eqz v1, :cond_20

    .line 24
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 26
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_5

    .line 36
    :cond_23
    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setStartView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public setSubTitleClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSubTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTabBadgeDisappearOnClick(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setTabBadgeDisappearOnClick(IZ)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 8
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setTabBadgeDisappearOnClick(IZ)V

    .line 11
    return-void
.end method

.method public setTabBadgeVisibility(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setBadgeVisibility(IZ)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 8
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setBadgeVisibility(IZ)V

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 13
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setBadgeVisibility(IZ)V

    .line 16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 18
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setBadgeVisibility(IZ)V

    .line 21
    return-void
.end method

.method public setTabIconWithPosition(IIIIII)V
    .registers 15

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    .line 1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    move-object v4, p3

    goto :goto_c

    :cond_b
    move-object v4, v0

    :goto_c
    if-eqz p4, :cond_16

    .line 2
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    move-object v5, p3

    goto :goto_17

    :cond_16
    move-object v5, v0

    :goto_17
    if-eqz p5, :cond_21

    .line 3
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    move-object v6, p3

    goto :goto_22

    :cond_21
    move-object v6, v0

    :goto_22
    if-eqz p6, :cond_2a

    .line 4
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2a
    move-object v7, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 5
    invoke-virtual/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 18

    move-object v0, p0

    .line 6
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTabTextAppearance(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTextAppearance(II)V

    .line 6
    return-void
.end method

.method public setTabsMode(Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 4
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleClickable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleClickable(Z)V

    .line 6
    return-void
.end method

.method public setViewPagerDecor(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->setViewPagerDecor(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public setViewPagerDraggable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->setViewPagerDraggable(Z)V

    .line 6
    return-void
.end method

.method public setViewPagerOffscreenPageLimit(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->setViewPagerOffscreenPageLimit(I)V

    .line 6
    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->show(Lmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method public show(Lmiuix/animation/controller/AnimState;)V
    .registers 3

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->show(ZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method public show(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->show(ZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method public show(ZLmiuix/animation/controller/AnimState;)V
    .registers 4

    .line 4
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mHiddenByApp:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mHiddenByApp:Z

    .line 6
    invoke-direct {p0, v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateVisibility(ZZLmiuix/animation/controller/AnimState;)V

    :cond_a
    return-void
.end method

.method public showActionBarShadow(Z)V
    .registers 2

    return-void
.end method

.method public showForActionMode()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    .line 3
    if-nez v0, :cond_5b

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateVisibility(Z)V

    .line 12
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getExpandState()I

    .line 15
    move-result v2

    .line 16
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    .line 18
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isResizable()Z

    .line 21
    move-result v2

    .line 22
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    .line 24
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 26
    instance-of v2, v2, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 28
    if-eqz v2, :cond_21

    .line 30
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    .line 33
    goto :goto_38

    .line 34
    :cond_21
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 36
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->startActionMode()V

    .line 39
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 41
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 43
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    .line 45
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 48
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 50
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 52
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    .line 54
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 57
    :goto_38
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    .line 62
    move-result v2

    .line 63
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentAccessibilityImportant:I

    .line 65
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 67
    const/4 v3, 0x4

    .line 68
    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 71
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 73
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 75
    instance-of v3, v3, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 77
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    .line 80
    move-result v4

    .line 81
    const v5, 0x8000

    .line 84
    and-int/2addr v4, v5

    .line 85
    if-eqz v4, :cond_57

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move v0, v1

    .line 89
    :goto_58
    invoke-virtual {v2, v3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onActionModeStart(ZZ)V

    .line 92
    :cond_5b
    return-void
.end method

.method public showSplitActionBar(ZZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_15

    .line 9
    if-eqz p1, :cond_10

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 13
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->show(Z)V

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 19
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->hide(Z)V

    .line 22
    :cond_15
    :goto_15
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 8
    :cond_7
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 14
    instance-of v2, v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 16
    if-eqz v2, :cond_15

    .line 18
    instance-of v2, v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    .line 20
    if-nez v2, :cond_1d

    .line 22
    :cond_15
    instance-of v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 24
    if-eqz v2, :cond_25

    .line 26
    instance-of v2, v0, Lmiuix/appcompat/internal/view/EditActionModeImpl;

    .line 28
    if-eqz v2, :cond_25

    .line 30
    :cond_1d
    invoke-interface {v1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->closeMode()V

    .line 33
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 35
    invoke-interface {v1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->killMode()V

    .line 38
    :cond_25
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createActionModeView(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 44
    if-eqz p1, :cond_86

    .line 46
    instance-of v1, v0, Lmiuix/appcompat/internal/view/ActionModeImpl;

    .line 48
    if-eqz v1, :cond_84

    .line 50
    move-object v1, v0

    .line 51
    check-cast v1, Lmiuix/appcompat/internal/view/ActionModeImpl;

    .line 53
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/ActionModeImpl;->setActionModeView(Lmiuix/appcompat/internal/app/widget/ActionModeView;)V

    .line 56
    instance-of p1, v1, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    .line 58
    if-eqz p1, :cond_49

    .line 60
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 62
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBaseInnerInsets()Landroid/graphics/Rect;

    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_49

    .line 68
    move-object v2, v1

    .line 69
    check-cast v2, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    .line 71
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/SearchActionModeImpl;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 74
    :cond_49
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

    .line 76
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/ActionModeImpl;->setActionModeCallback(Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;)V

    .line 79
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ActionModeImpl;->dispatchOnCreate()Z

    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_84

    .line 85
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 88
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 90
    invoke-interface {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->initForMode(Landroid/view/ActionMode;)V

    .line 93
    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->animateToMode(Z)V

    .line 97
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 99
    if-eqz v1, :cond_74

    .line 101
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextDisplayMode:I

    .line 103
    if-ne v2, p1, :cond_74

    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_74

    .line 111
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 117
    :cond_74
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 119
    instance-of v1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 121
    if-eqz v1, :cond_81

    .line 123
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 125
    const/16 v1, 0x20

    .line 127
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 130
    :cond_81
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    .line 132
    return-object v0

    .line 133
    :cond_84
    const/4 p1, 0x0

    .line 134
    return-object p1

    .line 135
    :cond_86
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 137
    const-string v0, "not set windowSplitActionBar true in activity style!"

    .line 139
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p1
.end method

.method public unregisterCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/core/view/NestedContentInsetObserver;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    .line 7
    check-cast p1, Lmiuix/core/view/NestedContentInsetObserver;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 12
    goto :goto_11

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :goto_11
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 20
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_27

    .line 26
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    .line 28
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_27

    .line 34
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarCoordinateListener(Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;)V

    .line 40
    :cond_27
    return-void
.end method

.method public unregisterCoordinatedScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->unregisterCoordinatedScrollView(Landroid/view/View;)V

    .line 8
    :cond_7
    return-void
.end method

.method public updateBackgroundViewBlurState(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateBackground(Z)V

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateBackground(Z)V

    .line 13
    return-void
.end method

.method public updateContentInsetForNestedObserver(Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    .line 3
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 5
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInsetTop:I

    .line 7
    sub-int v1, v0, v1

    .line 9
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInsetTop:I

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    .line 13
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_20

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lmiuix/core/view/NestedContentInsetObserver;

    .line 29
    invoke-interface {v2, p1}, Lmiuix/core/view/NestedContentInsetObserver;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 35
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p1

    .line 43
    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_6e

    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/View;

    .line 55
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 57
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/Integer;

    .line 63
    if-nez v2, :cond_41

    .line 65
    goto :goto_2a

    .line 66
    :cond_41
    if-eqz v1, :cond_2a

    .line 68
    sget-object v3, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->UNINITIALIZED_OFFSET:Ljava/lang/Integer;

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v3

    .line 74
    const/4 v4, 0x0

    .line 75
    if-eqz v3, :cond_51

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v2

    .line 81
    goto :goto_58

    .line 82
    :cond_51
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_58

    .line 88
    goto :goto_2a

    .line 89
    :cond_58
    :goto_58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v2

    .line 93
    add-int/2addr v2, v1

    .line 94
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 97
    move-result v2

    .line 98
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    .line 110
    goto :goto_2a

    .line 111
    :cond_6e
    return-void
.end method

.method public updateCoordinateOffsetView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_17

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_17

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarCoordinateListener(Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;)V

    .line 23
    return-void

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 26
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_39

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/view/View;

    .line 46
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getCoordinateOffsetViewTopOffsetOrDefault(Landroid/view/View;)Ljava/lang/Integer;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v2

    .line 54
    invoke-direct {p0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    .line 57
    goto :goto_21

    .line 58
    :cond_39
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    .line 60
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v0

    .line 64
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_60

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lmiuix/core/view/NestedContentInsetObserver;

    .line 76
    check-cast v1, Landroid/view/View;

    .line 78
    instance-of v2, v1, Lmiuix/core/view/NestedCoordinatorObserver;

    .line 80
    if-eqz v2, :cond_5b

    .line 82
    move-object v2, v1

    .line 83
    check-cast v2, Lmiuix/core/view/NestedCoordinatorObserver;

    .line 85
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    .line 87
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I

    .line 89
    invoke-interface {v2, v3, v4}, Lmiuix/core/view/NestedCoordinatorObserver;->updateCoordinatorHeightGapInfo(II)V

    .line 92
    :cond_5b
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    .line 96
    goto :goto_3f

    .line 97
    :cond_60
    return-void
.end method

.method public updateTab(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->ensureTabsExist()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 16
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->updateTab(I)V

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 21
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->updateTab(I)V

    .line 24
    return-void
.end method

.method public updateTopOffsetOnNestedPreScroll(Landroid/view/View;I)I
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_24

    .line 9
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getCoordinateOffsetViewTopOffsetOrDefault(Landroid/view/View;)Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v1

    .line 17
    if-le v1, p2, :cond_24

    .line 19
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result p1

    .line 35
    sub-int/2addr p1, p2

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 p1, 0x0

    .line 38
    :goto_25
    return p1
.end method

.method public updateTopOffsetOnNestedScroll(Landroid/view/View;I)I
    .registers 11

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_41

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/view/View;

    .line 25
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getCoordinateOffsetViewTopOffsetOrDefault(Landroid/view/View;)Ljava/lang/Integer;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v4

    .line 33
    sub-int v5, v4, p2

    .line 35
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    .line 37
    if-nez v6, :cond_28

    .line 39
    move v6, v1

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 43
    :goto_2a
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 46
    move-result v5

    .line 47
    if-ge v4, v5, :cond_c

    .line 49
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-direct {p0, v3, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    .line 61
    if-ne p1, v3, :cond_c

    .line 63
    sub-int v2, v4, v5

    .line 65
    goto :goto_c

    .line 66
    :cond_41
    return v2
.end method
