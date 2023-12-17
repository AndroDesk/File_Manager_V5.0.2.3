.class public Lmiuix/appcompat/internal/app/widget/ActionBarView;
.super Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x201f

.field private static final ICON_INITIALIZED:I = 0x1

.field private static final LOGO_INITIALIZED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionBarView"

.field private static final TYPE_NON_TOUCH:I = 0x1

.field private static final TYPE_TOUCH:I


# instance fields
.field private mAnimateStart:Z

.field private mApplyBgBlur:Z

.field private mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field private mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private mBottomMenuTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private mCallback:Landroidx/appcompat/app/a$c;

.field public mCollapseAnimHideConfigListener:Lmiuix/animation/listener/TransitionListener;

.field public mCollapseAnimShowConfigListener:Lmiuix/animation/listener/TransitionListener;

.field private mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mCollapseCustomContainer:Landroid/widget/FrameLayout;

.field private mCollapseMainContainerHeight:I

.field private mCollapseSecondaryTabHeight:I

.field private final mCollapseSubtitleStyleRes:I

.field private mCollapseTabContainer:Landroid/widget/FrameLayout;

.field private mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

.field private mCollapseTitleShowable:Z

.field private mCollapseTitleStyleRes:I

.field public mCollapseTotalHeight:I

.field private mCollapsedTitleVisible:Z

.field private mContext:Landroid/content/Context;

.field private mCustomNavView:Landroid/view/View;

.field private final mCustomTitleWatcher:Landroid/text/TextWatcher;

.field private mDensity:F

.field private mDisplayOptions:I

.field private mDoContainerShowAnimInFinishActionMode:Z

.field private mEndActionMenuItemLimit:I

.field private mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

.field private mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field private mEndView:Landroid/view/View;

.field private mExpandSubtitlePaddingBottom:I

.field private mExpandTabTopPadding:I

.field private mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

.field private mExpandTitlePaddingBottom:I

.field private mExpandTitleVisible:Z

.field public mExpandTotalHeight:I

.field public mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mExtraPadding:I

.field private mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

.field private mHasFixedUpViewMargin:Z

.field private mHasFixedUpViewMarginToZero:Z

.field private mHasNavigatorSwitchView:Z

.field private mHasStartView:Z

.field private mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mHomeAsUpIndicatorResId:I

.field private mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

.field private final mHomeResId:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLogoInitIndicator:I

.field private mInActionMode:Z

.field private mInActionModeAnimating:Z

.field private mInSearchMode:Z

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mInitCustomTitle:Ljava/lang/CharSequence;

.field private mIsBottomMenuVisible:Z

.field private mIsCollapseTitleShowingOnResizing:Z

.field private mIsCollapsed:Z

.field private mItemPadding:I

.field private mLastResizingProcess:F

.field private mLifecycleOwner:Landroidx/lifecycle/m;

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mMainContainer:Landroid/widget/FrameLayout;

.field private mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

.field public mMovableAlphaShowListener:Lmiuix/animation/listener/TransitionListener;

.field public mMovableAnimAlphaListener:Lmiuix/animation/listener/TransitionListener;

.field private mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mMovableMainContainer:Landroid/widget/FrameLayout;

.field private mMovableSecondaryTabHeight:I

.field private mMovableTabContainer:Landroid/widget/FrameLayout;

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mNavigatorSwitch:Landroid/view/View;

.field private final mNavigatorSwitchResId:I

.field private mNeedRequestLayoutOnExpandTitleShowing:Z

.field private mNonTouchScrolling:Z

.field private mOptionalIconsVisible:Z

.field private mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mPendingCreated:Z

.field private mPendingHeight:I

.field private mPostScroll:Ljava/lang/Runnable;

.field private mPostScroller:Landroid/widget/Scroller;

.field private mProgressBarPadding:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

.field private mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

.field private mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

.field private mSecondaryTabVerticalPadding:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mStartView:Landroid/view/View;

.field private mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

.field private final mSubTitleClickListener:Landroid/view/View$OnClickListener;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabsExit:Z

.field private mTempResizable:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private final mTitleClickListener:Landroid/view/View$OnClickListener;

.field private mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mTitleUpView:Landroid/view/View;

.field private mTitleUpViewMarginEnd:I

.field private mTitleUpViewMarginStart:I

.field private mTouchScrolling:Z

.field private mTransitionTarget:I

.field private mUncollapsePaddingH:I

.field private mUncollapseTabPaddingH:I

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUserSetEndActionMenuItemLimit:Z

.field private mUserTitle:Z

.field public mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLifecycleOwner:Landroidx/lifecycle/m;

    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    .line 13
    const/4 v3, 0x1

    .line 14
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    .line 16
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingCreated:Z

    .line 18
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapsedTitleVisible:Z

    .line 20
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitleVisible:Z

    .line 22
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    .line 24
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    .line 26
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasFixedUpViewMargin:Z

    .line 28
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasFixedUpViewMarginToZero:Z

    .line 30
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    .line 32
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 34
    const/4 v4, 0x0

    .line 35
    iput v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 37
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 39
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;

    .line 41
    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 44
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfigListener:Lmiuix/animation/listener/TransitionListener;

    .line 46
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$2;

    .line 48
    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 51
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfigListener:Lmiuix/animation/listener/TransitionListener;

    .line 53
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;

    .line 55
    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 58
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAlphaShowListener:Lmiuix/animation/listener/TransitionListener;

    .line 60
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;

    .line 62
    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 65
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAnimAlphaListener:Lmiuix/animation/listener/TransitionListener;

    .line 67
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;

    .line 69
    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 72
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 74
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;

    .line 76
    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 79
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 81
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;

    .line 83
    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 86
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;

    .line 90
    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 93
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$9;

    .line 97
    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$9;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 100
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubTitleClickListener:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;

    .line 104
    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 107
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    .line 109
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 111
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 113
    new-instance v5, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 115
    invoke-direct {v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    .line 118
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 120
    new-instance v5, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 122
    invoke-direct {v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    .line 125
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 127
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 129
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 131
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 133
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 135
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    .line 137
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    .line 139
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;

    .line 141
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 144
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    .line 146
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 148
    new-instance v1, Landroid/widget/Scroller;

    .line 150
    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 153
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 155
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 157
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 159
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 161
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 168
    move-result-object v1

    .line 169
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 171
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDensity:F

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    move-result-object v1

    .line 177
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    .line 179
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 182
    move-result v1

    .line 183
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 188
    move-result-object v1

    .line 189
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_tab_horizontal_padding:I

    .line 191
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 194
    move-result v1

    .line 195
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 200
    move-result-object v1

    .line 201
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    .line 203
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 206
    move-result v1

    .line 207
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 212
    move-result-object v1

    .line 213
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    .line 215
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 218
    move-result v1

    .line 219
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 224
    move-result-object v1

    .line 225
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_subtitle_bottom_padding:I

    .line 227
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 230
    move-result v1

    .line 231
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandSubtitlePaddingBottom:I

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 236
    move-result-object v1

    .line 237
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_secondary_tab_vertical_padding:I

    .line 239
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 242
    move-result v1

    .line 243
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 248
    move-result-object v1

    .line 249
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_up_view_margin_start:I

    .line 251
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 254
    move-result v1

    .line 255
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    .line 257
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    .line 259
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 261
    new-array v5, v3, [Lmiuix/animation/listener/TransitionListener;

    .line 263
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAlphaShowListener:Lmiuix/animation/listener/TransitionListener;

    .line 265
    aput-object v6, v5, v2

    .line 267
    invoke-virtual {v1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 270
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 272
    new-array v5, v3, [Lmiuix/animation/listener/TransitionListener;

    .line 274
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAnimAlphaListener:Lmiuix/animation/listener/TransitionListener;

    .line 276
    aput-object v6, v5, v2

    .line 278
    invoke-virtual {v1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 281
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 283
    new-array v5, v3, [Lmiuix/animation/listener/TransitionListener;

    .line 285
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfigListener:Lmiuix/animation/listener/TransitionListener;

    .line 287
    aput-object v6, v5, v2

    .line 289
    invoke-virtual {v1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 292
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    .line 294
    new-array v3, v3, [Lmiuix/animation/listener/TransitionListener;

    .line 296
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfigListener:Lmiuix/animation/listener/TransitionListener;

    .line 298
    aput-object v5, v3, v2

    .line 300
    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 303
    new-instance v1, Landroid/widget/FrameLayout;

    .line 305
    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 308
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 310
    sget v3, Lmiuix/appcompat/R$id;->action_bar_collapse_container:I

    .line 312
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 315
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 317
    const/16 v3, 0x11

    .line 319
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 322
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 324
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 329
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 331
    const/high16 v5, 0x3f800000  # 1.0f

    .line 333
    if-nez v3, :cond_150

    .line 335
    move v3, v5

    .line 336
    goto :goto_151

    .line 337
    :cond_150
    move v3, v4

    .line 338
    :goto_151
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 341
    new-instance v1, Landroid/widget/FrameLayout;

    .line 343
    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 346
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 348
    sget v3, Lmiuix/appcompat/R$id;->action_bar_movable_container:I

    .line 350
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 353
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 355
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 357
    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 359
    iget v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    .line 361
    invoke-virtual {v1, v3, v6, v3, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 364
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 366
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 371
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 373
    if-nez v3, :cond_177

    .line 375
    goto :goto_178

    .line 376
    :cond_177
    move v4, v5

    .line 377
    :goto_178
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 380
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 382
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 384
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 387
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 389
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 391
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 394
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 397
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    .line 399
    const v3, 0x10102ce

    .line 402
    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 405
    move-result-object p2

    .line 406
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBar_android_navigationMode:I

    .line 408
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 411
    move-result v1

    .line 412
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 414
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBar_android_title:I

    .line 416
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 419
    move-result-object v1

    .line 420
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 422
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBar_android_subtitle:I

    .line 424
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 427
    move-result-object v1

    .line 428
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 430
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBar_titleCenter:I

    .line 432
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 435
    move-result v1

    .line 436
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleCenter:Z

    .line 438
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBar_android_logo:I

    .line 440
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 443
    move-result-object v1

    .line 444
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 446
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBar_android_icon:I

    .line 448
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 451
    move-result-object v1

    .line 452
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 454
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 457
    move-result-object v1

    .line 458
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_navigatorSwitchLayout:I

    .line 460
    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_navigator_switch:I

    .line 462
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 465
    move-result v3

    .line 466
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitchResId:I

    .line 468
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_homeLayout:I

    .line 470
    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_home:I

    .line 472
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 475
    move-result v3

    .line 476
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    .line 478
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_titleTextStyle:I

    .line 480
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 483
    move-result v3

    .line 484
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleStyleRes:I

    .line 486
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_subtitleTextStyle:I

    .line 488
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 491
    move-result v3

    .line 492
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    .line 494
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_progressBarPadding:I

    .line 496
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 499
    move-result v3

    .line 500
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    .line 502
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_itemPadding:I

    .line 504
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 507
    move-result v3

    .line 508
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    .line 510
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_displayOptions:I

    .line 512
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 515
    move-result v3

    .line 516
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 519
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_customNavigationLayout:I

    .line 521
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 524
    move-result v3

    .line 525
    if-eqz v3, :cond_21f

    .line 527
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 530
    move-result-object v1

    .line 531
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 533
    new-instance v3, Landroidx/appcompat/app/a$a;

    .line 535
    const/4 v4, -0x2

    .line 536
    invoke-direct {v3, v0, v4, v2}, Landroidx/appcompat/app/a$a;-><init>(III)V

    .line 539
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 544
    :cond_21f
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_android_minHeight:I

    .line 546
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 549
    move-result v0

    .line 550
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 552
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_android_maxHeight:I

    .line 554
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 557
    move-result v0

    .line 558
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 560
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_showOptionIcons:I

    .line 562
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 565
    move-result v0

    .line 566
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionalIconsVisible:Z

    .line 568
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 571
    new-instance p2, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 573
    const/4 v8, 0x0

    .line 574
    const v4, 0x102002c

    .line 577
    const/4 v9, 0x0

    .line 578
    const/4 v10, 0x0

    .line 579
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 581
    const/4 v3, 0x0

    .line 582
    const/4 v5, 0x0

    .line 583
    const/4 v6, 0x0

    .line 584
    move-object v1, p2

    .line 585
    move-object v2, p1

    .line 586
    invoke-direct/range {v1 .. v7}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 589
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 591
    new-instance p2, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 593
    const v3, 0x1020016

    .line 596
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 598
    move-object v0, p2

    .line 599
    move-object v1, p1

    .line 600
    move v2, v8

    .line 601
    move v4, v9

    .line 602
    move v5, v10

    .line 603
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 606
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 608
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postRefreshTitleControllerStatus()V

    .line 611
    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$setSubtitle$3()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1102(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initExpandedHomeLayout()V

    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    .line 4
    return-void
.end method

.method public static synthetic access$2500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 3
    return p0
.end method

.method public static synthetic access$2600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    .line 4
    return-void
.end method

.method public static synthetic access$2700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 3
    return p0
.end method

.method public static synthetic access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 3
    return p0
.end method

.method public static synthetic access$3002(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 3
    return p1
.end method

.method public static synthetic access$302(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 3
    return p1
.end method

.method public static synthetic access$3100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroidx/appcompat/app/a$c;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCallback:Landroidx/appcompat/app/a$c;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method public static synthetic access$902(Lmiuix/appcompat/internal/app/widget/ActionBarView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    .line 3
    return-object p1
.end method

.method private addCustomView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 3
    sget v1, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/FrameLayout;

    .line 11
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_59

    .line 17
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    .line 23
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeMainContainerChildren()Z

    .line 26
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    .line 28
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 30
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 35
    if-eqz v0, :cond_54

    .line 37
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    .line 39
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitleVisibility(I)V

    .line 48
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 50
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 55
    const/16 v2, 0x8

    .line 57
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 60
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 62
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 64
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    move-result-object v2

    .line 72
    if-eq v0, v2, :cond_54

    .line 74
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 76
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 78
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    .line 81
    move-result-object v2

    .line 82
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 85
    :cond_54
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    .line 87
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    :cond_59
    return-void
.end method

.method private addEndMenuView()V
    .registers 6

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v3

    .line 14
    sget v4, Lmiuix/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    .line 16
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 19
    move-result v3

    .line 20
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 23
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 25
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuItemLimit:I

    .line 27
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setItemLimit(I)V

    .line 30
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 32
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 34
    const v1, 0x800005

    .line 37
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 39
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 41
    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/view/ViewGroup;

    .line 53
    if-eqz v2, :cond_3b

    .line 55
    if-eq v2, p0, :cond_3b

    .line 57
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    :cond_3b
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 65
    return-void
.end method

.method private addSecondaryTabsToCollapseTabContainers()V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 3
    if-eqz v0, :cond_4f

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1a

    .line 10
    sget v0, Lmiuix/appcompat/R$id;->action_bar_collapse_tab_container:I

    .line 12
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createSecondaryTabContainer(I)Landroid/widget/FrameLayout;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 18
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 20
    if-ne v2, v1, :cond_1d

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 32
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 34
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 36
    const/4 v4, -0x1

    .line 37
    const/4 v5, -0x2

    .line 38
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 41
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_4f

    .line 52
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 54
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 64
    if-ne v0, v1, :cond_48

    .line 66
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 68
    const/16 v1, 0x8

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_48
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 75
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 77
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 80
    :cond_4f
    return-void
.end method

.method private addSecondaryTabsToExpandTabContainers()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 3
    if-eqz v0, :cond_4e

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 7
    if-nez v0, :cond_19

    .line 9
    sget v0, Lmiuix/appcompat/R$id;->action_bar_movable_tab_container:I

    .line 11
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createSecondaryTabContainer(I)Landroid/widget/FrameLayout;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 17
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 19
    if-nez v1, :cond_1c

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 31
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 33
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 35
    const/4 v3, -0x1

    .line 36
    const/4 v4, -0x2

    .line 37
    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_4e

    .line 51
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 53
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 63
    if-nez v0, :cond_47

    .line 65
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 67
    const/16 v1, 0x8

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_47
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 74
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 76
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 79
    :cond_4e
    return-void
.end method

.method private addSplitMenuView()V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

    .line 15
    if-eqz v1, :cond_1e

    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 23
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

    .line 31
    :cond_1e
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    .line 33
    const/4 v1, 0x3

    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    if-ne v0, v1, :cond_27

    .line 38
    move v0, v2

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v0, v3

    .line 41
    :goto_28
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 43
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 46
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 59
    move-result-object v4

    .line 60
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 62
    invoke-virtual {v1, v4, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 65
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    const/4 v4, -0x1

    .line 68
    const/4 v5, -0x2

    .line 69
    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 74
    if-eqz v0, :cond_57

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v4

    .line 80
    const/high16 v5, 0x41800000  # 16.0f

    .line 82
    invoke-static {v4, v5}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 85
    move-result v4

    .line 86
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 88
    :cond_57
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    .line 90
    if-eqz v4, :cond_71

    .line 92
    if-eqz v0, :cond_6a

    .line 94
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 96
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 98
    add-int/2addr v5, v4

    .line 99
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 101
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 103
    invoke-static {v4, v3}, Lmiuix/internal/util/ViewUtils;->resetPaddingBottom(Landroid/view/View;I)V

    .line 106
    goto :goto_71

    .line 107
    :cond_6a
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 109
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 111
    invoke-static {v5, v4}, Lmiuix/internal/util/ViewUtils;->resetPaddingBottom(Landroid/view/View;I)V

    .line 114
    :cond_71
    :goto_71
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 116
    if-eqz v4, :cond_b1

    .line 118
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 120
    invoke-direct {p0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeMenuViewFromOldParent(Landroid/view/View;)V

    .line 123
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 125
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 127
    invoke-virtual {v4, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onResidentActionMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    .line 130
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 132
    instance-of v5, v4, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 134
    if-eqz v5, :cond_92

    .line 136
    check-cast v4, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 138
    invoke-virtual {v4, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setSuspendEnabled(Z)V

    .line 141
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    .line 143
    xor-int/2addr v0, v2

    .line 144
    invoke-virtual {v4, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setHidden(Z)V

    .line 147
    :cond_92
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 149
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 151
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 156
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 158
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onResidentActionMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    .line 161
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 163
    sget v1, Lmiuix/appcompat/R$id;->expanded_menu:I

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_ad

    .line 171
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 174
    :cond_ad
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 177
    goto :goto_b6

    .line 178
    :cond_b1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    :goto_b6
    return-void
.end method

.method private addTabsContainer()V
    .registers 7

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_11

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 9
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 11
    if-eqz v3, :cond_1b

    .line 13
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    .line 16
    move-result-object v2

    .line 17
    goto :goto_1b

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 20
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 22
    if-eqz v3, :cond_1b

    .line 24
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    .line 27
    move-result-object v2

    .line 28
    :cond_1b
    :goto_1b
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 30
    and-int/lit8 v3, v3, 0x10

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_24

    .line 35
    move v3, v1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v3, v4

    .line 38
    :goto_25
    if-eqz v3, :cond_3b

    .line 40
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 42
    if-eqz v3, :cond_3b

    .line 44
    sget v5, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    .line 46
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/widget/FrameLayout;

    .line 52
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_3b

    .line 58
    move v3, v1

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move v3, v4

    .line 61
    :goto_3c
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 63
    and-int/lit8 v5, v5, 0x8

    .line 65
    if-eqz v5, :cond_4b

    .line 67
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 69
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_4b

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    move v1, v4

    .line 77
    :goto_4c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_54

    .line 83
    if-eqz v3, :cond_56

    .line 85
    :cond_54
    if-nez v1, :cond_5a

    .line 87
    :cond_56
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsToMainContainers()V

    .line 90
    goto :goto_88

    .line 91
    :cond_5a
    if-eqz v3, :cond_63

    .line 93
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToCollapseTabContainers()V

    .line 96
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToExpandTabContainers()V

    .line 99
    goto :goto_88

    .line 100
    :cond_63
    if-eqz v2, :cond_88

    .line 102
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 105
    move-result-object v1

    .line 106
    if-ne v1, v0, :cond_88

    .line 108
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTightTitle()Z

    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_85

    .line 120
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_7e

    .line 126
    goto :goto_85

    .line 127
    :cond_7e
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToCollapseTabContainers()V

    .line 130
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToExpandTabContainers()V

    .line 133
    goto :goto_88

    .line 134
    :cond_85
    :goto_85
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsToMainContainers()V

    .line 137
    :cond_88
    :goto_88
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 142
    move-result-object v0

    .line 143
    if-eq v0, p0, :cond_95

    .line 145
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 147
    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 150
    :cond_95
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 155
    move-result-object v0

    .line 156
    if-eq v0, p0, :cond_a2

    .line 158
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 160
    invoke-direct {p0, p0, v0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 163
    :cond_a2
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTabsLayoutParams()V

    .line 166
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 169
    return-void
.end method

.method private addTabsToMainContainers()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1e

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    move-result-object v0

    .line 10
    if-ne v0, p0, :cond_17

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 19
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 21
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->detachView(Landroid/view/View;)V

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 31
    :cond_1e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 33
    if-eqz v0, :cond_3b

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    move-result-object v0

    .line 39
    if-ne v0, p0, :cond_34

    .line 41
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 48
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 50
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->detachView(Landroid/view/View;)V

    .line 53
    :cond_34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 55
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 58
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 60
    :cond_3b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 65
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 67
    const/4 v1, 0x0

    .line 68
    if-eqz v0, :cond_4f

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 75
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 77
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 80
    :cond_4f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 82
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 85
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 87
    if-eqz v0, :cond_62

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 94
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 96
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 99
    :cond_62
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 101
    const/4 v2, 0x2

    .line 102
    if-ne v0, v2, :cond_6c

    .line 104
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 106
    invoke-virtual {p0, v0, v1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(IZZ)V

    .line 109
    :cond_6c
    return-void
.end method

.method private animateLayoutWithProcess(F)V
    .registers 14

    .line 1
    const/high16 v0, 0x40400000  # 3.0f

    .line 3
    mul-float/2addr v0, p1

    .line 4
    const/high16 v1, 0x3f800000  # 1.0f

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 9
    move-result v0

    .line 10
    sub-float v0, v1, v0

    .line 12
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 14
    const/16 v3, 0x14

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x2

    .line 18
    const/4 v6, 0x1

    .line 19
    const/4 v7, 0x0

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v8

    .line 24
    if-ne v2, v5, :cond_da

    .line 26
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    .line 28
    cmpl-float p1, v2, p1

    .line 30
    if-nez p1, :cond_22

    .line 32
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 34
    return-void

    .line 35
    :cond_22
    cmpl-float p1, v0, v4

    .line 37
    const/4 v2, 0x3

    .line 38
    const-wide/16 v9, 0x1

    .line 40
    const-string v11, "target"

    .line 42
    if-lez p1, :cond_7f

    .line 44
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 46
    if-eqz p1, :cond_ca

    .line 48
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 50
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 52
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    .line 54
    invoke-virtual {p1, v4, v7, v3, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 57
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 62
    move-result p1

    .line 63
    if-lez p1, :cond_79

    .line 65
    new-array p1, v5, [Ljava/lang/Object;

    .line 67
    aput-object v11, p1, v7

    .line 69
    aput-object v8, p1, v6

    .line 71
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1, v9, v10}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    .line 78
    move-result-object p1

    .line 79
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v1

    .line 83
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 86
    move-result-object p1

    .line 87
    new-array v1, v5, [Ljava/lang/Object;

    .line 89
    const-string v4, "expand"

    .line 91
    aput-object v4, v1, v7

    .line 93
    iget v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 95
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v8

    .line 99
    aput-object v8, v1, v6

    .line 101
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 104
    move-result-object p1

    .line 105
    new-array v1, v2, [Ljava/lang/Object;

    .line 107
    aput-object v4, v1, v7

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v2

    .line 113
    aput-object v2, v1, v6

    .line 115
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

    .line 117
    aput-object v2, v1, v5

    .line 119
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 122
    :cond_79
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 124
    invoke-virtual {p1, v7}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 127
    goto :goto_ca

    .line 128
    :cond_7f
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 130
    if-nez p1, :cond_ca

    .line 132
    iput-boolean v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 134
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 136
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 138
    invoke-virtual {p1, v1, v7, v7, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 141
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 146
    move-result p1

    .line 147
    if-lez p1, :cond_c5

    .line 149
    new-array p1, v5, [Ljava/lang/Object;

    .line 151
    aput-object v11, p1, v7

    .line 153
    aput-object v8, p1, v6

    .line 155
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 158
    move-result-object p1

    .line 159
    invoke-interface {p1, v9, v10}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p1, v8}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 166
    move-result-object p1

    .line 167
    new-array v1, v5, [Ljava/lang/Object;

    .line 169
    const-string v3, "collapse"

    .line 171
    aput-object v3, v1, v7

    .line 173
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    move-result-object v4

    .line 179
    aput-object v4, v1, v6

    .line 181
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 184
    move-result-object p1

    .line 185
    new-array v1, v2, [Ljava/lang/Object;

    .line 187
    aput-object v3, v1, v7

    .line 189
    aput-object v8, v1, v6

    .line 191
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

    .line 193
    aput-object v2, v1, v5

    .line 195
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 198
    :cond_c5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 200
    invoke-virtual {p1, v7}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 203
    :cond_ca
    :goto_ca
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 205
    cmpl-float p1, p1, v0

    .line 207
    if-eqz p1, :cond_121

    .line 209
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 211
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 213
    invoke-virtual {p1, v0, v7, v7, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 216
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 218
    goto :goto_121

    .line 219
    :cond_da
    if-ne v2, v6, :cond_102

    .line 221
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 223
    cmpl-float v0, v0, v4

    .line 225
    if-nez v0, :cond_e3

    .line 227
    goto :goto_e4

    .line 228
    :cond_e3
    move v6, v7

    .line 229
    :goto_e4
    iput-boolean v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 231
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 233
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 235
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 237
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    .line 239
    cmpl-float p1, v0, p1

    .line 241
    if-nez p1, :cond_f3

    .line 243
    return-void

    .line 244
    :cond_f3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 246
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    .line 248
    invoke-virtual {p1, v4, v7, v3, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 251
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 253
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 255
    invoke-virtual {p1, v1, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 258
    goto :goto_121

    .line 259
    :cond_102
    if-nez v2, :cond_121

    .line 261
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 263
    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 265
    iput v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 267
    iput-boolean v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 269
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    .line 271
    cmpl-float p1, v0, p1

    .line 273
    if-nez p1, :cond_113

    .line 275
    return-void

    .line 276
    :cond_113
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 278
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 280
    invoke-virtual {p1, v1, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 283
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 285
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 287
    invoke-virtual {p1, v4, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 290
    :cond_121
    :goto_121
    return-void
.end method

.method public static synthetic b(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$postRefreshTitleControllerStatus$0()V

    return-void
.end method

.method public static synthetic c(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$updateCollapseTitle$2()V

    return-void
.end method

.method private canCollapseTitleBeShown()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 3
    if-eqz v0, :cond_29

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_29

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 16
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->canTitleBeShown(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTitleEnableEllipsis()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_28

    .line 38
    if-nez v0, :cond_28

    .line 40
    const/4 v0, 0x1

    .line 41
    :cond_28
    return v0

    .line 42
    :cond_29
    :goto_29
    const/4 v0, 0x0

    .line 43
    return v0
.end method

.method private clipViewBounds(Landroid/view/View;IIII)V
    .registers 7

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 12
    return-void
.end method

.method private computeTitleCenterLayoutStart(Landroid/view/View;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v1, v0

    .line 10
    div-int/lit8 v1, v1, 0x2

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object p1

    .line 16
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_1b

    .line 21
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 26
    move-result p1

    .line 27
    add-int/2addr v2, p1

    .line 28
    :cond_1b
    sub-int/2addr v1, v2

    .line 29
    return v1
.end method

.method private createCollapseTitle(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 3
    if-nez v0, :cond_8a

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleStyleRes:I

    .line 11
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    .line 13
    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateCollapseTitle(Landroid/content/Context;II)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 19
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapsedTitleVisible:Z

    .line 21
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setVisible(Z)V

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 26
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseTitleColorTransitEnable:Z

    .line 28
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 30
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTextColorTransitEnable(ZI)V

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 35
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    .line 37
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setAllTitlesClickable(Z)V

    .line 40
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 42
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 44
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 49
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    .line 51
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 56
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubTitleClickListener:Landroid/view/View$OnClickListener;

    .line 58
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 63
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 68
    if-nez p1, :cond_51

    .line 70
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 72
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 74
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    .line 77
    move-result-object v0

    .line 78
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 81
    goto :goto_8a

    .line 82
    :cond_51
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 84
    and-int/lit8 p1, p1, 0x8

    .line 86
    const/4 v0, 0x1

    .line 87
    const/4 v1, 0x0

    .line 88
    if-eqz p1, :cond_5b

    .line 90
    move p1, v0

    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    move p1, v1

    .line 93
    :goto_5c
    if-eqz p1, :cond_8a

    .line 95
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 98
    move-result p1

    .line 99
    const/4 v2, 0x2

    .line 100
    if-ne p1, v2, :cond_66

    .line 102
    goto :goto_67

    .line 103
    :cond_66
    move v0, v1

    .line 104
    :goto_67
    if-eqz v0, :cond_6f

    .line 106
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_8a

    .line 112
    :cond_6f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 114
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_7a

    .line 120
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToCollapseTabContainers()V

    .line 123
    :cond_7a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 125
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 128
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 130
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 132
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    .line 135
    move-result-object v0

    .line 136
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 139
    :cond_8a
    :goto_8a
    return-void
.end method

.method private createExpandTitle(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 3
    if-nez v0, :cond_bb

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateExpandTitle(Landroid/content/Context;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 15
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitleVisible:Z

    .line 17
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisible(Z)V

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 22
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandTitleColorTransitEnable:Z

    .line 24
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 26
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTextColorTransitEnable(ZI)V

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 31
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    .line 33
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setAllTitlesClickable(Z)V

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 38
    const/4 v1, 0x1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz p1, :cond_52

    .line 42
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 44
    and-int/lit8 v3, v3, 0x10

    .line 46
    if-eqz v3, :cond_31

    .line 48
    move v3, v1

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v3, v2

    .line 51
    :goto_32
    if-eqz v3, :cond_52

    .line 53
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 55
    if-eqz v3, :cond_52

    .line 57
    sget v4, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    .line 59
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/widget/FrameLayout;

    .line 65
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_52

    .line 71
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    .line 73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_52

    .line 79
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    .line 81
    move v3, v1

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move v3, v2

    .line 84
    :goto_53
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 86
    invoke-virtual {v4, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 91
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    .line 93
    invoke-virtual {v0, v4}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 98
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubTitleClickListener:Landroid/view/View$OnClickListener;

    .line 100
    invoke-virtual {v0, v4}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    if-nez v3, :cond_70

    .line 105
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 107
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 109
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 112
    goto :goto_76

    .line 113
    :cond_70
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 115
    const/4 v3, 0x0

    .line 116
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 119
    :goto_76
    if-nez p1, :cond_84

    .line 121
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 123
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 125
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    .line 128
    move-result-object v0

    .line 129
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 132
    goto :goto_bb

    .line 133
    :cond_84
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 135
    and-int/lit8 p1, p1, 0x8

    .line 137
    if-eqz p1, :cond_8c

    .line 139
    move p1, v1

    .line 140
    goto :goto_8d

    .line 141
    :cond_8c
    move p1, v2

    .line 142
    :goto_8d
    if-eqz p1, :cond_bb

    .line 144
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 147
    move-result p1

    .line 148
    const/4 v0, 0x2

    .line 149
    if-ne p1, v0, :cond_97

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    move v1, v2

    .line 153
    :goto_98
    if-eqz v1, :cond_a0

    .line 155
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_bb

    .line 161
    :cond_a0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 163
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_ab

    .line 169
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToExpandTabContainers()V

    .line 172
    :cond_ab
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 174
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 177
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 179
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 181
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    .line 184
    move-result-object v0

    .line 185
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 188
    :cond_bb
    :goto_bb
    return-void
.end method

.method private createSecondaryTabContainer(I)Landroid/widget/FrameLayout;
    .registers 6

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 24
    move-result v2

    .line 25
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 27
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    return-object v0
.end method

.method public static synthetic d(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$initTitle$4()V

    return-void
.end method

.method private divideMenuByGroup(Landroid/view/Menu;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Landroid/util/Pair<",
            "Lmiuix/appcompat/internal/view/menu/MenuBuilder;",
            "Lmiuix/appcompat/internal/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    new-instance v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 6
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 8
    invoke-direct {v1, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getCallback()Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    .line 26
    move-result v3

    .line 27
    add-int/lit8 v3, v3, -0x1

    .line 29
    :goto_1c
    if-ltz v3, :cond_48

    .line 31
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 37
    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    .line 40
    move-result v5

    .line 41
    sget v6, Lmiuix/appcompat/R$id;->miuix_action_end_menu_group:I

    .line 43
    if-ne v5, v6, :cond_45

    .line 45
    move-object v5, p1

    .line 46
    check-cast v5, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 48
    invoke-virtual {v5, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAt(I)V

    .line 51
    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    .line 54
    move-result-object v5

    .line 55
    instance-of v6, v5, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 57
    if-eqz v6, :cond_3f

    .line 59
    check-cast v5, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 61
    invoke-virtual {v5, v1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->setParentMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 64
    :cond_3f
    invoke-virtual {v4, v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 67
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_45
    add-int/lit8 v3, v3, -0x1

    .line 72
    goto :goto_1c

    .line 73
    :cond_48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result p1

    .line 77
    add-int/lit8 p1, p1, -0x1

    .line 79
    :goto_4e
    if-ltz p1, :cond_5c

    .line 81
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 87
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->add(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Landroid/view/MenuItem;

    .line 90
    add-int/lit8 p1, p1, -0x1

    .line 92
    goto :goto_4e

    .line 93
    :cond_5c
    new-instance p1, Landroid/util/Pair;

    .line 95
    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    return-object p1
.end method

.method public static synthetic e(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$onConfigurationChanged$1()V

    return-void
.end method

.method private findActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/View;

    .line 7
    :goto_6
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    if-eqz v1, :cond_d

    .line 11
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v1

    .line 18
    instance-of v1, v1, Landroid/view/View;

    .line 20
    if-eqz v1, :cond_1c

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/View;

    .line 28
    goto :goto_6

    .line 29
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    const-string v1, "ActionBarOverlayLayout not found"

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw v0
.end method

.method private fixTitleUpViewMargin()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_51

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_51

    .line 12
    :cond_b
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_32

    .line 18
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    .line 20
    if-eqz v0, :cond_16

    .line 22
    goto :goto_32

    .line 23
    :cond_16
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasFixedUpViewMarginToZero:Z

    .line 25
    if-nez v0, :cond_51

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 38
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 41
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 43
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasFixedUpViewMarginToZero:Z

    .line 48
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasFixedUpViewMargin:Z

    .line 50
    goto :goto_51

    .line 51
    :cond_32
    :goto_32
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasFixedUpViewMargin:Z

    .line 53
    if-nez v0, :cond_51

    .line 55
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    .line 65
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 68
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    .line 70
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 73
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 75
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasFixedUpViewMargin:Z

    .line 80
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasFixedUpViewMarginToZero:Z

    .line 82
    :cond_51
    :goto_51
    return-void
.end method

.method private freeMainContainerChildren()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 3
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToCollapseTabContainers()V

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 14
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_16

    .line 20
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToExpandTabContainers()V

    .line 23
    :cond_16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 30
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 33
    const/4 v0, 0x1

    .line 34
    return v0
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_8
    return-object v0
.end method

.method private getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .registers 3

    .line 1
    if-eqz p1, :cond_c

    .line 3
    const v0, 0x1020016

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/widget/TextView;

    .line 12
    return-object p1

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_8
    return-object v0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eq v0, v1, :cond_42

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 9
    instance-of v2, v0, Landroid/app/Activity;

    .line 11
    if-eqz v2, :cond_27

    .line 13
    :try_start_c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 19
    check-cast v2, Landroid/app/Activity;

    .line 21
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1e} :catch_1f

    .line 31
    goto :goto_27

    .line 32
    :catch_1f
    move-exception v0

    .line 33
    const-string v2, "ActionBarView"

    .line 35
    const-string v3, "Activity component name not found!"

    .line 37
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_27
    :goto_27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 42
    if-nez v0, :cond_3d

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 62
    :cond_3d
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 64
    or-int/2addr v0, v1

    .line 65
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 67
    :cond_42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    return-object v0
.end method

.method private getLogo()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eq v0, v1, :cond_42

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 9
    instance-of v2, v0, Landroid/app/Activity;

    .line 11
    if-eqz v2, :cond_27

    .line 13
    :try_start_c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 19
    check-cast v2, Landroid/app/Activity;

    .line 21
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1e} :catch_1f

    .line 31
    goto :goto_27

    .line 32
    :catch_1f
    move-exception v0

    .line 33
    const-string v2, "ActionBarView"

    .line 35
    const-string v3, "Activity component name not found!"

    .line 37
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_27
    :goto_27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 42
    if-nez v0, :cond_3d

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageItemInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 62
    :cond_3d
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 64
    or-int/2addr v0, v1

    .line 65
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 67
    :cond_42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 69
    return-object v0
.end method

.method private hasTabsInContainer(Landroid/view/ViewGroup;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_13

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v2

    .line 9
    if-ne v2, v0, :cond_13

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    instance-of p1, p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 17
    if-eqz p1, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v0, v1

    .line 21
    :goto_14
    return v0
.end method

.method private hasTitle()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    if-eqz v0, :cond_e

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_15

    .line 15
    :cond_e
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_17

    .line 22
    :cond_15
    const/4 v0, 0x1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    :goto_18
    return v0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p2, :cond_c

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_c

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_c
    if-eqz p1, :cond_17

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_17

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_17
    return-void
.end method

.method private initExpandedHomeLayout()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 3
    if-nez v0, :cond_20

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 20
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 28
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :cond_20
    return-void
.end method

.method private initHomeLayout()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 3
    if-nez v0, :cond_41

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 20
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 22
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 38
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    .line 40
    if-eqz v0, :cond_30

    .line 42
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 44
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 47
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    .line 49
    :cond_30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    if-eqz v0, :cond_3c

    .line 53
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 55
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 58
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    :cond_3c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    :cond_41
    return-void
.end method

.method private initTitle()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingCreated:Z

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitleUpView()V

    .line 7
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne v1, v2, :cond_e

    .line 12
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeMainContainerChildren()Z

    .line 15
    :cond_e
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v1, v3, :cond_22

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 22
    if-nez v1, :cond_1a

    .line 24
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandTitle(Z)V

    .line 27
    :cond_1a
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 29
    if-eqz v1, :cond_2b

    .line 31
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onHide()V

    .line 34
    goto :goto_2b

    .line 35
    :cond_22
    if-nez v1, :cond_2b

    .line 37
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 39
    if-nez v1, :cond_2b

    .line 41
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createCollapseTitle(Z)V

    .line 44
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 47
    new-instance v1, Lmiuix/appcompat/internal/app/widget/e;

    .line 49
    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/internal/app/widget/e;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V

    .line 52
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 55
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 57
    if-nez v1, :cond_40

    .line 59
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isAllTitlesEmpty()Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_43

    .line 65
    :cond_40
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 68
    :cond_43
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 70
    invoke-direct {p0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 75
    invoke-direct {p0, p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 78
    return-void
.end method

.method private initTitleUpView()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 3
    if-nez v0, :cond_14

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateTitleUpView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 16
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_14
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 23
    and-int/lit8 v1, v0, 0x4

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v1, :cond_1e

    .line 29
    move v1, v2

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v1, v3

    .line 32
    :goto_1f
    and-int/lit8 v0, v0, 0x2

    .line 34
    if-eqz v0, :cond_24

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v2, v3

    .line 38
    :goto_25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 40
    if-nez v2, :cond_2e

    .line 42
    if-eqz v1, :cond_2c

    .line 44
    goto :goto_30

    .line 45
    :cond_2c
    const/4 v3, 0x4

    .line 46
    goto :goto_30

    .line 47
    :cond_2e
    const/16 v3, 0x8

    .line 49
    :goto_30
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    const/4 v1, -0x2

    .line 55
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 60
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 65
    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->fixTitleUpViewMargin()V

    .line 71
    return-void
.end method

.method private isAllTitlesEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_12

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method private isShowTitle()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_13

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 11
    if-eqz v0, :cond_11

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 21
    :goto_14
    return v0
.end method

.method private isSimpleCustomNavView()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2d

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2d

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object v0

    .line 18
    instance-of v2, v0, Landroidx/appcompat/app/a$a;

    .line 20
    if-eqz v2, :cond_18

    .line 22
    check-cast v0, Landroidx/appcompat/app/a$a;

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    const/4 v2, 0x0

    .line 27
    if-nez v0, :cond_1e

    .line 29
    :cond_1c
    move v1, v2

    .line 30
    goto :goto_2d

    .line 31
    :cond_1e
    iget v0, v0, Landroidx/appcompat/app/a$a;->a:I

    .line 33
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 36
    move-result v3

    .line 37
    invoke-direct {p0, v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    .line 40
    move-result v0

    .line 41
    const v3, 0x800005

    .line 44
    if-ne v0, v3, :cond_1c

    .line 46
    :cond_2d
    :goto_2d
    return v1
.end method

.method private isTitleCenter()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleCenter:Z

    .line 3
    if-eqz v0, :cond_18

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSimpleCustomNavView()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_18

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 13
    if-eqz v0, :cond_16

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x8

    .line 21
    if-ne v0, v1, :cond_18

    .line 23
    :cond_16
    const/4 v0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    return v0
.end method

.method private synthetic lambda$initTitle$4()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->pendingCreateTitle()V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    .line 7
    move-result v0

    .line 8
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 11
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 14
    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    if-eqz v0, :cond_25

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_25

    .line 11
    const/4 v0, 0x1

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLifecycleOwner:Landroidx/lifecycle/m;

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {v1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    :cond_1d
    if-nez v0, :cond_25

    .line 32
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 38
    :cond_25
    return-void
.end method

.method private synthetic lambda$postRefreshTitleControllerStatus$0()V
    .registers 7

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000  # 1.0f

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez v0, :cond_14

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 12
    invoke-virtual {v0, v2, v4, v4, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 17
    invoke-virtual {v0, v1, v4, v4, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 20
    goto :goto_22

    .line 21
    :cond_14
    if-ne v0, v3, :cond_22

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 25
    const/16 v5, 0x14

    .line 27
    invoke-virtual {v0, v1, v4, v5, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 32
    invoke-virtual {v0, v2, v4, v4, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 35
    :cond_22
    :goto_22
    return-void
.end method

.method private synthetic lambda$setSubtitle$3()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    .line 12
    :cond_b
    return-void
.end method

.method private synthetic lambda$updateCollapseTitle$2()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    .line 12
    :cond_b
    return-void
.end method

.method private normalizeHorizontalGravity(IZ)I
    .registers 6

    const v0, 0x800007

    and-int/2addr p1, v0

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    const v1, 0x800005

    const v2, 0x800003

    if-ne p1, v0, :cond_18

    if-eqz p2, :cond_16

    :cond_14
    move p1, v1

    goto :goto_1e

    :cond_16
    :goto_16
    move p1, v2

    goto :goto_1e

    :cond_18
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1e

    if-eqz p2, :cond_14

    goto :goto_16

    :cond_1e
    :goto_1e
    return p1
.end method

.method private notifyMenuStateChange()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 3
    if-eqz v0, :cond_24

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_24

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 18
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 20
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 30
    move-result v2

    .line 31
    sub-float/2addr v1, v2

    .line 32
    float-to-int v1, v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(II)V

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method private onLayoutCollapseViews(ZIIIII)V
    .registers 27

    .line 1
    move-object/from16 v7, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    .line 6
    move-result v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    move-result v8

    .line 11
    iget-object v9, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 13
    iget-object v10, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 15
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 18
    move-result v11

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    move-result v0

    .line 23
    sub-int v0, p5, v0

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    move-result v1

    .line 29
    sub-int v12, v0, v1

    .line 31
    if-gtz v12, :cond_21

    .line 33
    return-void

    .line 34
    :cond_21
    sub-int v0, p4, p2

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    .line 39
    move-result v1

    .line 40
    sub-int/2addr v0, v1

    .line 41
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 43
    const/16 v13, 0x8

    .line 45
    if-eqz v1, :cond_48

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    move-result-object v1

    .line 51
    if-ne v1, v7, :cond_48

    .line 53
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 58
    move-result v1

    .line 59
    if-eq v1, v13, :cond_48

    .line 61
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 63
    invoke-virtual {v7, v1, v0, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 66
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 71
    move-result v1

    .line 72
    sub-int/2addr v0, v1

    .line 73
    :cond_48
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 75
    if-eqz v1, :cond_56

    .line 77
    invoke-virtual {v7, v1, v0, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 80
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 85
    move-result v1

    .line 86
    sub-int/2addr v0, v1

    .line 87
    :cond_56
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 89
    if-eqz v1, :cond_75

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 94
    move-result v1

    .line 95
    if-eq v1, v13, :cond_75

    .line 97
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 99
    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    .line 101
    sub-int v2, v0, v2

    .line 103
    invoke-virtual {v7, v1, v2, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 106
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 111
    move-result v1

    .line 112
    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    .line 114
    mul-int/lit8 v2, v2, 0x2

    .line 116
    sub-int/2addr v1, v2

    .line 117
    sub-int/2addr v0, v1

    .line 118
    :cond_75
    move v14, v0

    .line 119
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 121
    if-eqz v0, :cond_8f

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 126
    move-result v0

    .line 127
    if-eq v0, v13, :cond_8f

    .line 129
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 131
    const/4 v5, 0x0

    .line 132
    move-object/from16 v0, p0

    .line 134
    move v2, v6

    .line 135
    move v3, v8

    .line 136
    move v4, v12

    .line 137
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 140
    move-result v0

    .line 141
    move/from16 v16, v0

    .line 143
    goto :goto_91

    .line 144
    :cond_8f
    const/16 v16, 0x0

    .line 146
    :goto_91
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 148
    if-eqz v0, :cond_98

    .line 150
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 152
    goto :goto_9a

    .line 153
    :cond_98
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 155
    :goto_9a
    move-object v1, v0

    .line 156
    if-eqz v1, :cond_b6

    .line 158
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 161
    move-result v0

    .line 162
    if-eq v0, v13, :cond_b6

    .line 164
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getStartOffset()I

    .line 167
    move-result v17

    .line 168
    add-int v2, v6, v17

    .line 170
    const/4 v5, 0x0

    .line 171
    move-object/from16 v0, p0

    .line 173
    move v3, v8

    .line 174
    move v4, v12

    .line 175
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 178
    move-result v0

    .line 179
    add-int v0, v0, v17

    .line 181
    add-int/2addr v6, v0

    .line 182
    goto :goto_c5

    .line 183
    :cond_b6
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 185
    if-eqz v1, :cond_c5

    .line 187
    const/4 v5, 0x0

    .line 188
    move-object/from16 v0, p0

    .line 190
    move v2, v6

    .line 191
    move v3, v8

    .line 192
    move v4, v12

    .line 193
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 196
    move-result v0

    .line 197
    add-int/2addr v6, v0

    .line 198
    :cond_c5
    :goto_c5
    move/from16 v17, v6

    .line 200
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 202
    const/4 v6, 0x1

    .line 203
    if-nez v0, :cond_18f

    .line 205
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    .line 208
    move-result v18

    .line 209
    if-nez v18, :cond_da

    .line 211
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 214
    move-result v0

    .line 215
    and-int/lit8 v0, v0, 0x20

    .line 217
    if-eqz v0, :cond_113

    .line 219
    :cond_da
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 221
    if-eqz v0, :cond_113

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_113

    .line 229
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    .line 231
    if-nez v0, :cond_fc

    .line 233
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    .line 235
    if-eqz v0, :cond_ed

    .line 237
    goto :goto_fc

    .line 238
    :cond_ed
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 240
    const/4 v5, 0x0

    .line 241
    move-object/from16 v0, p0

    .line 243
    move/from16 v2, v17

    .line 245
    move v3, v8

    .line 246
    move v4, v12

    .line 247
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 250
    move-result v0

    .line 251
    move v15, v6

    .line 252
    goto :goto_110

    .line 253
    :cond_fc
    :goto_fc
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 255
    const/4 v5, 0x0

    .line 256
    iget v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    .line 258
    move-object/from16 v0, p0

    .line 260
    move/from16 v2, v17

    .line 262
    move v3, v8

    .line 263
    move/from16 v19, v4

    .line 265
    move v4, v12

    .line 266
    move v15, v6

    .line 267
    move/from16 v6, v19

    .line 269
    invoke-virtual/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildWithOffset(Landroid/view/View;IIIZI)I

    .line 272
    move-result v0

    .line 273
    :goto_110
    add-int v17, v17, v0

    .line 275
    goto :goto_114

    .line 276
    :cond_113
    move v15, v6

    .line 277
    :goto_114
    if-eqz v18, :cond_174

    .line 279
    if-eqz v9, :cond_174

    .line 281
    add-int v6, v17, v16

    .line 283
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_16d

    .line 289
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 292
    move-result v0

    .line 293
    if-eq v0, v13, :cond_12b

    .line 295
    invoke-direct {v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->computeTitleCenterLayoutStart(Landroid/view/View;)I

    .line 298
    move-result v0

    .line 299
    goto :goto_12c

    .line 300
    :cond_12b
    move v0, v6

    .line 301
    :goto_12c
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canCollapseTitleBeShown()Z

    .line 304
    move-result v1

    .line 305
    iput-boolean v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 307
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 310
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 313
    move-result v1

    .line 314
    add-int/2addr v1, v0

    .line 315
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 318
    move-result v2

    .line 319
    add-int/2addr v2, v6

    .line 320
    if-le v2, v14, :cond_144

    .line 322
    move v2, v6

    .line 323
    :goto_142
    move v4, v14

    .line 324
    goto :goto_15a

    .line 325
    :cond_144
    if-le v1, v14, :cond_14e

    .line 327
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 330
    move-result v0

    .line 331
    sub-int v0, v14, v0

    .line 333
    move v2, v0

    .line 334
    goto :goto_142

    .line 335
    :cond_14e
    if-ge v0, v6, :cond_158

    .line 337
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 340
    move-result v0

    .line 341
    add-int/2addr v0, v6

    .line 342
    move v4, v0

    .line 343
    move v2, v6

    .line 344
    goto :goto_15a

    .line 345
    :cond_158
    move v2, v0

    .line 346
    move v4, v1

    .line 347
    :goto_15a
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 350
    move-result v0

    .line 351
    sub-int v1, v12, v0

    .line 353
    div-int/lit8 v1, v1, 0x2

    .line 355
    add-int v3, v1, v8

    .line 357
    add-int v5, v3, v0

    .line 359
    move-object/from16 v0, p0

    .line 361
    move-object v1, v9

    .line 362
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 365
    goto :goto_172

    .line 366
    :cond_16d
    invoke-virtual {v7, v9, v6, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    .line 369
    move-result v0

    .line 370
    add-int/2addr v6, v0

    .line 371
    :goto_172
    move/from16 v17, v6

    .line 373
    :cond_174
    iget v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 375
    if-eq v0, v15, :cond_179

    .line 377
    goto :goto_190

    .line 378
    :cond_179
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 380
    if-eqz v0, :cond_190

    .line 382
    if-eqz v18, :cond_183

    .line 384
    iget v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    .line 386
    add-int v17, v17, v1

    .line 388
    :cond_183
    move/from16 v1, v17

    .line 390
    invoke-virtual {v7, v0, v1, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    .line 393
    move-result v0

    .line 394
    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    .line 396
    add-int/2addr v0, v2

    .line 397
    add-int v17, v0, v1

    .line 399
    goto :goto_190

    .line 400
    :cond_18f
    move v15, v6

    .line 401
    :cond_190
    :goto_190
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 403
    const/4 v1, 0x0

    .line 404
    const/16 v2, 0x10

    .line 406
    if-eqz v0, :cond_198

    .line 408
    goto :goto_1a3

    .line 409
    :cond_198
    iget v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 411
    and-int/2addr v0, v2

    .line 412
    if-eqz v0, :cond_1a2

    .line 414
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 416
    if-eqz v0, :cond_1a2

    .line 418
    goto :goto_1a3

    .line 419
    :cond_1a2
    move-object v0, v1

    .line 420
    :goto_1a3
    if-eqz v0, :cond_274

    .line 422
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 425
    move-result v3

    .line 426
    if-eq v3, v13, :cond_274

    .line 428
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 431
    move-result-object v3

    .line 432
    instance-of v4, v3, Landroidx/appcompat/app/a$a;

    .line 434
    if-eqz v4, :cond_1b6

    .line 436
    move-object v1, v3

    .line 437
    check-cast v1, Landroidx/appcompat/app/a$a;

    .line 439
    :cond_1b6
    if-eqz v1, :cond_1bb

    .line 441
    iget v3, v1, Landroidx/appcompat/app/a$a;->a:I

    .line 443
    goto :goto_1be

    .line 444
    :cond_1bb
    const v3, 0x800013

    .line 447
    :goto_1be
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 450
    move-result v4

    .line 451
    if-eqz v1, :cond_1d6

    .line 453
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 456
    move-result v5

    .line 457
    add-int v17, v5, v17

    .line 459
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 462
    move-result v5

    .line 463
    sub-int/2addr v14, v5

    .line 464
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 466
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 468
    move/from16 v6, v17

    .line 470
    goto :goto_1da

    .line 471
    :cond_1d6
    move/from16 v6, v17

    .line 473
    const/4 v1, 0x0

    .line 474
    const/4 v5, 0x0

    .line 475
    :goto_1da
    const v8, 0x800007

    .line 478
    and-int/2addr v8, v3

    .line 479
    const v9, 0x800005

    .line 482
    const/4 v12, -0x1

    .line 483
    const v13, 0x800003

    .line 486
    if-ne v8, v15, :cond_1f7

    .line 488
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 491
    move-result v16

    .line 492
    sub-int v16, v16, v4

    .line 494
    div-int/lit8 v2, v16, 0x2

    .line 496
    if-ge v2, v6, :cond_1f2

    .line 498
    goto :goto_1f9

    .line 499
    :cond_1f2
    add-int/2addr v2, v4

    .line 500
    if-le v2, v14, :cond_1fa

    .line 502
    move v8, v9

    .line 503
    goto :goto_1fa

    .line 504
    :cond_1f7
    if-ne v3, v12, :cond_1fa

    .line 506
    :goto_1f9
    move v8, v13

    .line 507
    :cond_1fa
    :goto_1fa
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    .line 510
    move-result v2

    .line 511
    invoke-direct {v7, v8, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    .line 514
    move-result v8

    .line 515
    if-eq v8, v15, :cond_20d

    .line 517
    if-eq v8, v13, :cond_214

    .line 519
    if-eq v8, v9, :cond_20a

    .line 521
    move v6, v2

    .line 522
    goto :goto_214

    .line 523
    :cond_20a
    sub-int v6, v14, v4

    .line 525
    goto :goto_214

    .line 526
    :cond_20d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 529
    move-result v2

    .line 530
    sub-int/2addr v2, v4

    .line 531
    div-int/lit8 v6, v2, 0x2

    .line 533
    :cond_214
    :goto_214
    and-int/lit8 v2, v3, 0x70

    .line 535
    if-ne v3, v12, :cond_21a

    .line 537
    const/16 v2, 0x10

    .line 539
    :cond_21a
    const/16 v3, 0x10

    .line 541
    if-eq v2, v3, :cond_240

    .line 543
    const/16 v3, 0x30

    .line 545
    if-eq v2, v3, :cond_239

    .line 547
    const/16 v3, 0x50

    .line 549
    if-eq v2, v3, :cond_228

    .line 551
    const/4 v15, 0x0

    .line 552
    goto :goto_255

    .line 553
    :cond_228
    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 555
    sub-int v2, v2, p6

    .line 557
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 560
    move-result v3

    .line 561
    sub-int/2addr v2, v3

    .line 562
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 565
    move-result v3

    .line 566
    sub-int/2addr v2, v3

    .line 567
    sub-int v15, v2, v1

    .line 569
    goto :goto_255

    .line 570
    :cond_239
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 573
    move-result v1

    .line 574
    add-int v15, v1, v5

    .line 576
    goto :goto_255

    .line 577
    :cond_240
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 580
    move-result v1

    .line 581
    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 583
    sub-int v2, v2, p6

    .line 585
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 588
    move-result v3

    .line 589
    sub-int/2addr v2, v3

    .line 590
    sub-int/2addr v2, v1

    .line 591
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 594
    move-result v1

    .line 595
    sub-int/2addr v2, v1

    .line 596
    div-int/lit8 v15, v2, 0x2

    .line 598
    :goto_255
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 601
    move-result v1

    .line 602
    if-eqz v11, :cond_262

    .line 604
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 607
    move-result v2

    .line 608
    sub-int/2addr v2, v6

    .line 609
    sub-int/2addr v2, v1

    .line 610
    goto :goto_263

    .line 611
    :cond_262
    move v2, v6

    .line 612
    :goto_263
    if-eqz v11, :cond_26b

    .line 614
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 617
    move-result v1

    .line 618
    sub-int/2addr v1, v6

    .line 619
    goto :goto_26c

    .line 620
    :cond_26b
    add-int/2addr v1, v6

    .line 621
    :goto_26c
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 624
    move-result v3

    .line 625
    add-int/2addr v3, v15

    .line 626
    invoke-virtual {v0, v2, v15, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 629
    :cond_274
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 631
    if-eqz v0, :cond_290

    .line 633
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 636
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 638
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 641
    move-result v0

    .line 642
    div-int/lit8 v0, v0, 0x2

    .line 644
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 646
    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    .line 648
    neg-int v3, v0

    .line 649
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 652
    move-result v4

    .line 653
    add-int/2addr v4, v2

    .line 654
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 657
    :cond_290
    if-lez p6, :cond_2a8

    .line 659
    iget v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 661
    iget v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    .line 663
    add-int v2, v0, v1

    .line 665
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 668
    move-result v0

    .line 669
    add-int v4, v0, v2

    .line 671
    add-int v5, p5, p6

    .line 673
    move-object/from16 v0, p0

    .line 675
    move-object v1, v10

    .line 676
    move/from16 v3, p5

    .line 678
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 681
    :cond_2a8
    return-void
.end method

.method private pendingCreateTitle()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingCreated:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingCreated:Z

    .line 9
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 11
    and-int/lit8 v1, v1, 0x8

    .line 13
    if-eqz v1, :cond_10

    .line 15
    move v1, v0

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v1, 0x0

    .line 18
    :goto_11
    if-eqz v1, :cond_27

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 22
    if-nez v1, :cond_1d

    .line 24
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandTitle(Z)V

    .line 27
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandTitle()V

    .line 30
    :cond_1d
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 32
    if-nez v1, :cond_24

    .line 34
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createCollapseTitle(Z)V

    .line 37
    :cond_24
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateCollapseTitle()V

    .line 40
    :cond_27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 42
    if-eqz v0, :cond_4c

    .line 44
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getHitRect()Landroid/graphics/Rect;

    .line 47
    move-result-object v0

    .line 48
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v2

    .line 54
    sget v3, Lmiuix/appcompat/R$attr;->actionBarPaddingStart:I

    .line 56
    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    .line 59
    move-result v2

    .line 60
    sub-int/2addr v1, v2

    .line 61
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 63
    new-instance v1, Landroid/view/TouchDelegate;

    .line 65
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 67
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    .line 70
    move-result-object v2

    .line 71
    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 74
    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 77
    :cond_4c
    return-void
.end method

.method private postRefreshTitleControllerStatus()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/e;

    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/e;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
.end method

.method private removeMenuViewFromOldParent(Landroid/view/View;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_d

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    :cond_d
    return-void
.end method

.method private removeTabsFromContainer()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1e

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_17

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 19
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 21
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->detachView(Landroid/view/View;)V

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 31
    :cond_1e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 33
    if-eqz v0, :cond_3b

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_34

    .line 41
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 48
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 50
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->detachView(Landroid/view/View;)V

    .line 53
    :cond_34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 55
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 58
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 60
    :cond_3b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 62
    if-eqz v0, :cond_4a

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_4a

    .line 70
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 75
    :cond_4a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 77
    if-eqz v0, :cond_59

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_59

    .line 85
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 90
    :cond_59
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 92
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_67

    .line 98
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 100
    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 104
    :cond_67
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 109
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 111
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 114
    return-void
.end method

.method private safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method private safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 5

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    if-eqz p1, :cond_14

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_14
    return-void
.end method

.method private scheduleBottomMenuAnimation(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

    .line 3
    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    .line 4
    move-result v0

    .line 5
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 7
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 9
    and-int/lit8 v1, v1, 0x10

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_10

    .line 15
    move v1, v2

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v1, v3

    .line 18
    :goto_11
    if-eqz v1, :cond_1c

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 22
    if-eqz v1, :cond_1c

    .line 24
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandTitleOnShowCustom()Z

    .line 27
    move-result v1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v1, v3

    .line 30
    :goto_1d
    if-eqz v1, :cond_20

    .line 32
    return-void

    .line 33
    :cond_20
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateCollapseTitle()V

    .line 36
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandTitle()V

    .line 39
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    .line 42
    move-result v1

    .line 43
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 46
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 48
    if-eqz v4, :cond_34

    .line 50
    invoke-virtual {v4, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 53
    :cond_34
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 55
    if-eqz v4, :cond_3b

    .line 57
    invoke-virtual {v4, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 60
    :cond_3b
    const/4 p1, 0x2

    .line 61
    if-eqz v0, :cond_54

    .line 63
    if-nez v1, :cond_54

    .line 65
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 68
    move-result v0

    .line 69
    if-ne v0, p1, :cond_47

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    move v2, v3

    .line 73
    :goto_48
    if-nez v2, :cond_50

    .line 75
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_a9

    .line 81
    :cond_50
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsToMainContainers()V

    .line 84
    goto :goto_a9

    .line 85
    :cond_54
    if-nez v0, :cond_a9

    .line 87
    if-eqz v1, :cond_a9

    .line 89
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 92
    move-result v0

    .line 93
    if-ne v0, p1, :cond_60

    .line 95
    move p1, v2

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    move p1, v3

    .line 98
    :goto_61
    if-eqz p1, :cond_69

    .line 100
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_a9

    .line 106
    :cond_69
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 108
    if-eqz p1, :cond_78

    .line 110
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 117
    move-result-object p1

    .line 118
    if-nez p1, :cond_78

    .line 120
    move v3, v2

    .line 121
    :cond_78
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 123
    if-eqz p1, :cond_89

    .line 125
    if-nez v3, :cond_89

    .line 127
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 134
    move-result-object p1

    .line 135
    if-nez p1, :cond_89

    .line 137
    goto :goto_8a

    .line 138
    :cond_89
    move v2, v3

    .line 139
    :goto_8a
    if-eqz v2, :cond_a9

    .line 141
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeMainContainerChildren()Z

    .line 144
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 146
    if-eqz p1, :cond_9c

    .line 148
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 150
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 157
    :cond_9c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 159
    if-eqz p1, :cond_a9

    .line 161
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 163
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    .line 166
    move-result-object p1

    .line 167
    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 170
    :cond_a9
    :goto_a9
    return-void
.end method

.method private setTitleVisibility(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 3
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_f

    .line 8
    if-eqz p1, :cond_b

    .line 10
    move v3, v2

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move v3, v1

    .line 13
    :goto_c
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setVisibility(I)V

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 18
    const/4 v3, 0x4

    .line 19
    if-eqz v0, :cond_1c

    .line 21
    if-eqz p1, :cond_18

    .line 23
    move p1, v2

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move p1, v3

    .line 26
    :goto_19
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 29
    :cond_1c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 31
    if-eqz p1, :cond_44

    .line 33
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 36
    move-result p1

    .line 37
    and-int/lit8 p1, p1, 0x20

    .line 39
    if-nez p1, :cond_44

    .line 41
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 43
    and-int/lit8 v0, p1, 0x4

    .line 45
    const/4 v4, 0x1

    .line 46
    if-eqz v0, :cond_31

    .line 48
    move v0, v4

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v0, v2

    .line 51
    :goto_32
    and-int/lit8 p1, p1, 0x2

    .line 53
    if-eqz p1, :cond_37

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v4, v2

    .line 57
    :goto_38
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 59
    if-nez v4, :cond_41

    .line 61
    if-eqz v0, :cond_40

    .line 63
    move v1, v2

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move v1, v3

    .line 66
    :cond_41
    :goto_41
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_44
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_4f

    .line 77
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    .line 79
    goto :goto_51

    .line 80
    :cond_4f
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandSubtitlePaddingBottom:I

    .line 82
    :goto_51
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 87
    move-result v1

    .line 88
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 90
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 93
    move-result v2

    .line 94
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 96
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    .line 99
    move-result v3

    .line 100
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 103
    return-void
.end method

.method private setupTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 5
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 7
    iput-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 9
    if-eqz p3, :cond_f

    .line 11
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    .line 13
    invoke-virtual {p3, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setParentApplyBlur(Z)V

    .line 16
    :cond_f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 18
    if-eqz p1, :cond_18

    .line 20
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    .line 22
    invoke-virtual {p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setParentApplyBlur(Z)V

    .line 25
    :cond_18
    return-void
.end method

.method private shouldMeasureCollapseTabContainer()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p0, :cond_14

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method private shouldMeasureMovableTabContainer()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p0, :cond_14

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method private shouldTitleVisible()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 3
    if-nez v0, :cond_12

    .line 5
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 7
    and-int/lit8 v0, v0, 0x8

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isAllTitlesEmpty()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method private showContainerInFinishActionMode()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000  # 1.0f

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_11

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 12
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 14
    invoke-virtual {v0, v1, v2, v2, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 17
    goto :goto_2a

    .line 18
    :cond_11
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 21
    move-result v0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-ne v0, v3, :cond_2a

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 33
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 38
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 40
    invoke-virtual {v0, v1, v2, v2, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 43
    :cond_2a
    :goto_2a
    return-void
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_d

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x4

    .line 9
    if-ne v1, v2, :cond_d

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_d
    if-eqz p1, :cond_1a

    .line 16
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 19
    move-result p2

    .line 20
    const/16 v1, 0x2710

    .line 22
    if-ge p2, v1, :cond_1a

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :cond_1a
    return-void
.end method

.method private updateBackInvokedCallbackState()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x21

    .line 5
    if-lt v0, v1, :cond_45

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasExpandedActionView()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1a

    .line 17
    if-eqz v0, :cond_1a

    .line 19
    invoke-static {p0}, Lm0/g0;->f(Landroid/view/View;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1a

    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v1, 0x0

    .line 28
    :goto_1b
    if-eqz v1, :cond_37

    .line 30
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 32
    if-nez v2, :cond_37

    .line 34
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 36
    if-nez v1, :cond_2c

    .line 38
    new-instance v1, Lmiuix/appcompat/internal/app/widget/f;

    .line 40
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/f;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 43
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 45
    :cond_2c
    const v1, 0xf4240

    .line 48
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 50
    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 53
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 55
    goto :goto_45

    .line 56
    :cond_37
    if-nez v1, :cond_45

    .line 58
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 60
    if-eqz v0, :cond_45

    .line 62
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 64
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 70
    :cond_45
    :goto_45
    return-void
.end method

.method private updateBadgeOnMenuItemViews()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateBadgeOnItemViews()V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 11
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 13
    if-eqz v1, :cond_13

    .line 15
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 17
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->updateBadgeOnMoreButton()V

    .line 20
    :cond_13
    return-void
.end method

.method private updateCollapseTitle()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 3
    if-eqz v0, :cond_27

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getTitleVisibility()I

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_10

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleVisibility(I)V

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 19
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 26
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 31
    new-instance v0, Lmiuix/appcompat/internal/app/widget/e;

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/e;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 40
    :cond_27
    return-void
.end method

.method private updateExpandTitle()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 3
    if-eqz v0, :cond_2f

    .line 5
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 7
    and-int/lit8 v0, v0, 0x10

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v0, v1

    .line 15
    :goto_e
    if-eqz v0, :cond_19

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 19
    if-eqz v0, :cond_19

    .line 21
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandTitleOnShowCustom()Z

    .line 24
    move-result v0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v0, v1

    .line 27
    :goto_1a
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 29
    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitleVisibility(I)V

    .line 32
    if-nez v0, :cond_28

    .line 34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 36
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    :cond_28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 43
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 48
    :cond_2f
    return-void
.end method

.method private updateExpandTitleOnShowCustom()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 3
    sget v1, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/FrameLayout;

    .line 11
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_6c

    .line 18
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 20
    if-eqz v2, :cond_6a

    .line 22
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_40

    .line 30
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    .line 32
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_38

    .line 42
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    :cond_38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 59
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    goto :goto_56

    .line 65
    :cond_40
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 67
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 69
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    .line 74
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    :goto_56
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 89
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getVisibility()I

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_63

    .line 95
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 97
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 100
    :cond_63
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 102
    const/16 v1, 0x8

    .line 104
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 107
    :cond_6a
    const/4 v0, 0x1

    .line 108
    return v0

    .line 109
    :cond_6c
    return v1
.end method

.method private updateProgressBars(I)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCircularProgressBar()Landroid/widget/ProgressBar;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x2710

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, -0x1

    .line 13
    if-ne p1, v4, :cond_29

    .line 15
    if-eqz v1, :cond_23

    .line 17
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 20
    move-result p1

    .line 21
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_1f

    .line 27
    if-ge p1, v2, :cond_1d

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    const/4 p1, 0x4

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    :goto_1f
    move p1, v3

    .line 33
    :goto_20
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_23
    if-eqz v0, :cond_5a

    .line 38
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    goto :goto_5a

    .line 42
    :cond_29
    const/4 v4, -0x2

    .line 43
    if-ne p1, v4, :cond_39

    .line 45
    const/16 p1, 0x8

    .line 47
    if-eqz v1, :cond_33

    .line 49
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_33
    if-eqz v0, :cond_5a

    .line 54
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    goto :goto_5a

    .line 58
    :cond_39
    const/4 v4, -0x3

    .line 59
    if-ne p1, v4, :cond_41

    .line 61
    const/4 p1, 0x1

    .line 62
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 65
    goto :goto_5a

    .line 66
    :cond_41
    const/4 v4, -0x4

    .line 67
    if-ne p1, v4, :cond_48

    .line 69
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 72
    goto :goto_5a

    .line 73
    :cond_48
    if-ltz p1, :cond_5a

    .line 75
    if-gt p1, v2, :cond_5a

    .line 77
    add-int/lit8 v3, p1, 0x0

    .line 79
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 82
    if-ge p1, v2, :cond_57

    .line 84
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    .line 87
    goto :goto_5a

    .line 88
    :cond_57
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    .line 91
    :cond_5a
    :goto_5a
    return-void
.end method

.method private updateTabsLayoutParams()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_10

    .line 13
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 19
    if-eqz v0, :cond_1e

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1e

    .line 27
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    :cond_1e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 33
    if-eqz v0, :cond_2c

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2c

    .line 41
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 43
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    :cond_2c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 47
    if-eqz v0, :cond_3a

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_3a

    .line 55
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    :cond_3a
    return-void
.end method

.method private updateTightTitle()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_11

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_11

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v0, v1

    .line 19
    :goto_12
    const/16 v2, 0x8

    .line 21
    if-nez v0, :cond_1d

    .line 23
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 25
    if-nez v3, :cond_1b

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    move v3, v1

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    :goto_1d
    move v3, v2

    .line 31
    :goto_1e
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 33
    if-eqz v4, :cond_25

    .line 35
    invoke-virtual {v4, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleVisibility(I)V

    .line 38
    :cond_25
    if-nez v0, :cond_33

    .line 40
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 42
    if-eqz v0, :cond_33

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_34

    .line 52
    :cond_33
    move v1, v2

    .line 53
    :cond_34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 55
    if-eqz v0, :cond_3b

    .line 57
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    .line 60
    :cond_3b
    return-void
.end method

.method private updateTitleCenter()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->updateTitleCenter(Z)V

    .line 12
    :cond_b
    return-void
.end method


# virtual methods
.method public addBadgeOnItemView(II)V
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->addBadgeOnItemView(II)V

    return-void
.end method

.method public addBadgeOnItemView(Landroid/view/MenuItem;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->addBadgeOnItemView(Landroid/view/MenuItem;I)V

    return-void
.end method

.method public addBadgeOnMoreButton(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->addBadgeOnMoreButton(I)V

    .line 13
    return-void
.end method

.method public bridge synthetic animateToVisibility(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->animateToVisibility(I)V

    .line 4
    return-void
.end method

.method public checkTabsAdded()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    .line 3
    if-eqz v0, :cond_14

    .line 5
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_14

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_14

    .line 18
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer()V

    .line 21
    :cond_14
    return-void
.end method

.method public clearBadgeOnItemView(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->clearBadgeOnItemView(I)V

    return-void
.end method

.method public clearBadgeOnItemView(Landroid/view/MenuItem;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->clearBadgeOnItemView(Landroid/view/MenuItem;)V

    return-void
.end method

.method public clearBadgeOnMoreButton()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->clearBadgeOnMoreButton()V

    .line 13
    return-void
.end method

.method public collapseActionView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 9
    :goto_8
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 14
    :cond_d
    return-void
.end method

.method public createActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
    .registers 7

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->findActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 7
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 9
    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_responsive_action_menu_layout:I

    .line 11
    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_item_layout:I

    .line 13
    invoke-direct {v1, v2, v0, v3, v4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;II)V

    .line 16
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 19
    sget p1, Lmiuix/appcompat/R$id;->action_menu_presenter:I

    .line 21
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setId(I)V

    .line 24
    return-object v1
.end method

.method public createEndActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;
    .registers 10

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->findActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 4
    move-result-object v2

    .line 5
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 9
    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_end_menu_layout:I

    .line 11
    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_end_menu_item_layout:I

    .line 13
    sget v5, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_expanded_menu_layout:I

    .line 15
    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_list_menu_item_layout:I

    .line 17
    move-object v0, v7

    .line 18
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    .line 21
    invoke-virtual {v7, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 24
    sget p1, Lmiuix/appcompat/R$id;->miuix_action_end_menu_presenter:I

    .line 26
    invoke-virtual {v7, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setId(I)V

    .line 29
    return-object v7
.end method

.method public createExpandedActionViewMenuPresenter()Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarView$1;)V

    .line 7
    return-object v0
.end method

.method public dismissEndPopupMenus()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 9
    :cond_8
    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .registers 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->dismissPopupMenus()V

    .line 4
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    .line 1
    new-instance v0, Landroidx/appcompat/app/a$a;

    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/app/a$a;-><init>(III)V

    .line 9
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/app/a$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    if-nez p1, :cond_6

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method public bridge synthetic getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getAnimatedVisibility()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getBottomMenuCustomViewOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getBottomMenuCustomViewOffset()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getCollapseTitle()Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 3
    if-nez v0, :cond_8

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createCollapseTitle(Z)V

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 11
    return-object v0
.end method

.method public getCollapsedHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 3
    return v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 3
    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 3
    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 3
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getEndActionMenuItemLimit()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuItemLimit:I

    .line 3
    return v0
.end method

.method public getEndView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public bridge synthetic getExpandState()I
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getExpandState()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 3
    if-nez v0, :cond_8

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandTitle(Z)V

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 11
    return-object v0
.end method

.method public getExpandedHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTotalHeight:I

    .line 3
    return v0
.end method

.method public bridge synthetic getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getNavigationMode()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 3
    return v0
.end method

.method public getSplitActionBarHeight(Z)I
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_c

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 6
    if-eqz p1, :cond_16

    .line 8
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getSplitCollapsedHeight()I

    .line 11
    move-result v0

    .line 12
    goto :goto_16

    .line 13
    :cond_c
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 15
    if-eqz p1, :cond_16

    .line 17
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 22
    move-result v0

    .line 23
    :cond_16
    :goto_16
    return v0
.end method

.method public getStartView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getSubTitleView(I)Landroid/view/View;
    .registers 3

    .line 1
    if-eqz p1, :cond_e

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_7

    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_7
    sget p1, Lmiuix/appcompat/R$id;->action_bar_subtitle_expand:I

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_e
    sget p1, Lmiuix/appcompat/R$id;->action_bar_subtitle:I

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getTitleView(I)Landroid/view/View;
    .registers 3

    .line 1
    if-eqz p1, :cond_e

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_7

    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_7
    sget p1, Lmiuix/appcompat/R$id;->action_bar_title_expand:I

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_e
    sget p1, Lmiuix/appcompat/R$id;->action_bar_title:I

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public hasExpandedActionView()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

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

.method public hideBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->hideBottomMenuCustomView()V

    .line 10
    :cond_9
    return-void
.end method

.method public hideEndOverflowMenu()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 6
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_c

    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_c
    return v1
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->hideOverflowMenu()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public initIndeterminateProgress()V
    .registers 5

    .line 1
    new-instance v0, Landroid/widget/ProgressBar;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 5
    sget v2, Lmiuix/appcompat/R$attr;->actionBarIndeterminateProgressStyle:I

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 13
    sget v1, Lmiuix/appcompat/R$id;->progress_circular:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 20
    const/16 v1, 0x8

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method public isCollapsed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    .line 3
    return v0
.end method

.method public isEndActionMenuEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    .line 3
    return v0
.end method

.method public isEndOverflowMenuShowing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isEndOverflowReserved()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowReserved()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowReserved()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic isResizable()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isResizable()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isSplitActionBar()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 3
    return v0
.end method

.method public isTightTitleWithEmbeddedTabs()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTightTitle()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public isUserSetEndActionMenuItemLimit()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserSetEndActionMenuItemLimit:Z

    .line 3
    return v0
.end method

.method public bridge synthetic isUserSetExpandState()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isUserSetExpandState()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public makeMenuViewShowHide(Z)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    .line 8
    if-ne p1, v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 13
    if-nez v0, :cond_17

    .line 15
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$13;

    .line 17
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$13;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V

    .line 20
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->scheduleBottomMenuAnimation(Ljava/lang/Runnable;)V

    .line 23
    return-void

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 32
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 34
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 40
    if-eqz p1, :cond_2b

    .line 42
    const/4 v3, 0x0

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    int-to-float v3, v1

    .line 45
    :goto_2c
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 48
    if-eqz p1, :cond_32

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    const/4 v1, 0x0

    .line 52
    :goto_33
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->animateContentMarginBottomByBottomMenu(I)V

    .line 55
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    .line 57
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 59
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 61
    if-eqz v1, :cond_45

    .line 63
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 65
    xor-int/lit8 p1, p1, 0x1

    .line 67
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setHidden(Z)V

    .line 70
    :cond_45
    return-void
.end method

.method public makeMenuViewShowHideWithAnimation(Z)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 8
    if-nez v0, :cond_12

    .line 10
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;

    .line 12
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V

    .line 15
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->scheduleBottomMenuAnimation(Ljava/lang/Runnable;)V

    .line 18
    return-void

    .line 19
    :cond_12
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z

    .line 24
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 26
    if-nez v2, :cond_1c

    .line 28
    return-void

    .line 29
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 39
    if-nez v0, :cond_2a

    .line 41
    move v3, v1

    .line 42
    goto :goto_2e

    .line 43
    :cond_2a
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 46
    move-result v3

    .line 47
    :goto_2e
    if-eqz p1, :cond_33

    .line 49
    move v4, v1

    .line 50
    move p1, v3

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    move p1, v1

    .line 53
    move v4, v3

    .line 54
    :goto_35
    if-eqz v0, :cond_9e

    .line 56
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 58
    if-nez v5, :cond_4d

    .line 60
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 62
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 65
    const/4 v6, -0x2

    .line 66
    const/4 v7, 0x2

    .line 67
    new-array v7, v7, [F

    .line 69
    fill-array-data v7, :array_a0

    .line 72
    invoke-virtual {v5, v6, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 75
    move-result-object v5

    .line 76
    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 78
    :cond_4d
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBottomMenuTransitionListener:Lmiuix/animation/listener/TransitionListener;

    .line 80
    const/4 v6, 0x1

    .line 81
    if-eqz v5, :cond_5b

    .line 83
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 85
    new-array v8, v6, [Lmiuix/animation/listener/TransitionListener;

    .line 87
    aput-object v5, v8, v1

    .line 89
    invoke-virtual {v7, v8}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 92
    :cond_5b
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 94
    new-array v7, v6, [Lmiuix/animation/listener/TransitionListener;

    .line 96
    new-instance v8, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;

    .line 98
    invoke-direct {v8, p0, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;I)V

    .line 101
    iput-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBottomMenuTransitionListener:Lmiuix/animation/listener/TransitionListener;

    .line 103
    aput-object v8, v7, v1

    .line 105
    invoke-virtual {v5, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 108
    int-to-float p1, p1

    .line 109
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 112
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 114
    const-string v2, "menu_end_state"

    .line 116
    invoke-direct {p1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 119
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 121
    int-to-double v3, v4

    .line 122
    invoke-virtual {p1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 125
    move-result-object p1

    .line 126
    new-array v2, v6, [Landroid/view/View;

    .line 128
    aput-object v0, v2, v1

    .line 130
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 133
    move-result-object v2

    .line 134
    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 137
    move-result-object v2

    .line 138
    new-array v3, v6, [Lmiuix/animation/base/AnimConfig;

    .line 140
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 142
    aput-object v4, v3, v1

    .line 144
    invoke-interface {v2, p1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 147
    instance-of p1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 149
    if-eqz p1, :cond_9e

    .line 151
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 153
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    .line 155
    xor-int/2addr p1, v6

    .line 156
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setHidden(Z)V

    .line 159
    :cond_9e
    return-void

    .line 160
    nop

    .line 161
    :array_a0
    .array-data 4
        0x3f733333  # 0.95f
        0x3e800000  # 0.25f
    .end array-data
.end method

.method public onActionModeEnd(Z)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 4
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 6
    if-nez v1, :cond_a

    .line 8
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V

    .line 11
    :cond_a
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 13
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v1, :cond_20

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 22
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 25
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 27
    const/16 v3, 0x8

    .line 29
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 32
    goto :goto_31

    .line 33
    :cond_20
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 36
    move-result v1

    .line 37
    if-ne v1, v2, :cond_31

    .line 39
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 41
    const/4 v3, 0x4

    .line 42
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 45
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 47
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 50
    :cond_31
    :goto_31
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 52
    const/high16 v3, 0x3f800000  # 1.0f

    .line 54
    if-eqz v1, :cond_3a

    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 59
    :cond_3a
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 61
    if-eqz v1, :cond_41

    .line 63
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 66
    :cond_41
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 68
    if-eqz v1, :cond_48

    .line 70
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 73
    :cond_48
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 75
    if-eqz v1, :cond_60

    .line 77
    sget v4, Lmiuix/appcompat/R$id;->miuix_appcompat_navigator_switch_presenter:I

    .line 79
    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    .line 85
    if-eqz v1, :cond_5b

    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-virtual {v1, v0, v3}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->suppressAlpha(ZF)V

    .line 91
    goto :goto_60

    .line 92
    :cond_5b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 94
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 97
    :cond_60
    :goto_60
    if-eqz p1, :cond_6f

    .line 99
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 101
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 104
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 106
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 109
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postRefreshTitleControllerStatus()V

    .line 112
    :cond_6f
    return-void
.end method

.method public onActionModeStart(ZZ)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 4
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_18

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 11
    const/16 v2, 0x8

    .line 13
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 18
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 21
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V

    .line 24
    goto :goto_22

    .line 25
    :cond_18
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 27
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 30
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 32
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 35
    :goto_22
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 37
    if-eqz p1, :cond_29

    .line 39
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 42
    :cond_29
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 44
    if-eqz p1, :cond_30

    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 49
    :cond_30
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 51
    if-eqz p1, :cond_37

    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 56
    :cond_37
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 58
    if-eqz p1, :cond_4e

    .line 60
    sget v2, Lmiuix/appcompat/R$id;->miuix_appcompat_navigator_switch_presenter:I

    .line 62
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    .line 68
    if-eqz p1, :cond_49

    .line 70
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->suppressAlpha(ZF)V

    .line 73
    goto :goto_4e

    .line 74
    :cond_49
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 79
    :cond_4e
    :goto_4e
    if-eqz p2, :cond_5b

    .line 81
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 83
    const/4 p2, 0x0

    .line 84
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 87
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 89
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 92
    :cond_5b
    return-void
.end method

.method public onAnimatedExpandStateChanged(II)V
    .registers 10

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p1, v0, :cond_17

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 17
    move-result p1

    .line 18
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 20
    add-int/2addr p1, v2

    .line 21
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    if-nez p1, :cond_1b

    .line 26
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 28
    :cond_1b
    :goto_1b
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 30
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 33
    new-array v2, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 35
    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;

    .line 37
    invoke-direct {v3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 40
    aput-object v3, v2, v1

    .line 42
    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 45
    move-result-object p1

    .line 46
    if-ne p2, v0, :cond_39

    .line 48
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    move-result v2

    .line 54
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 56
    add-int/2addr v2, v3

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move v2, v1

    .line 59
    :goto_3a
    if-ne p2, v0, :cond_43

    .line 61
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 63
    const/4 v3, 0x4

    .line 64
    invoke-virtual {p2, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 67
    goto :goto_4a

    .line 68
    :cond_43
    if-nez p2, :cond_4a

    .line 70
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 72
    invoke-virtual {p2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 75
    :cond_4a
    :goto_4a
    const-string p2, "actionbar_state_change"

    .line 77
    new-array v3, v1, [Ljava/lang/Object;

    .line 79
    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 82
    move-result-object v3

    .line 83
    const-wide/16 v4, 0x1

    .line 85
    invoke-interface {v3, v4, v5}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    .line 88
    move-result-object v3

    .line 89
    const/4 v4, 0x2

    .line 90
    new-array v5, v4, [Ljava/lang/Object;

    .line 92
    aput-object p2, v5, v1

    .line 94
    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v6

    .line 100
    aput-object v6, v5, v0

    .line 102
    invoke-interface {v3, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 105
    move-result-object v3

    .line 106
    const/4 v5, 0x3

    .line 107
    new-array v5, v5, [Ljava/lang/Object;

    .line 109
    aput-object p2, v5, v1

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object p2

    .line 115
    aput-object p2, v5, v0

    .line 117
    aput-object p1, v5, v4

    .line 119
    invoke-interface {v3, v5}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    .line 125
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onAttachedToWindow()V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onAttachedToWindow()V

    .line 14
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    .line 17
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionBarStyle()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 19
    move-result-object p1

    .line 20
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_android_minHeight:I

    .line 22
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 28
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_android_maxHeight:I

    .line 30
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    move-result-object p1

    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 50
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 53
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 56
    move-result v0

    .line 57
    and-int/lit8 v0, v0, 0x8

    .line 59
    if-eqz v0, :cond_4a

    .line 61
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 63
    if-eqz v0, :cond_43

    .line 65
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    :cond_43
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 70
    if-eqz v0, :cond_4a

    .line 72
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    :cond_4a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 84
    move-result-object p1

    .line 85
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 87
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDensity:F

    .line 89
    cmpl-float v0, p1, v0

    .line 91
    if-eqz v0, :cond_a6

    .line 93
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDensity:F

    .line 95
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    move-result-object p1

    .line 101
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_tab_horizontal_padding:I

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 106
    move-result p1

    .line 107
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 109
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    move-result-object p1

    .line 115
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 120
    move-result p1

    .line 121
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 123
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    move-result-object p1

    .line 129
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 134
    move-result p1

    .line 135
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    .line 137
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    move-result-object p1

    .line 143
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_subtitle_bottom_padding:I

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 148
    move-result p1

    .line 149
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandSubtitlePaddingBottom:I

    .line 151
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    move-result-object p1

    .line 157
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_up_view_margin_start:I

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 162
    move-result p1

    .line 163
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    .line 165
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    .line 167
    :cond_a6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 170
    move-result-object p1

    .line 171
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    .line 173
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 176
    move-result p1

    .line 177
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 179
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_bd

    .line 187
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    .line 189
    goto :goto_bf

    .line 190
    :cond_bd
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandSubtitlePaddingBottom:I

    .line 192
    :goto_bf
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 194
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 199
    move-result-object v2

    .line 200
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    .line 202
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 205
    move-result v2

    .line 206
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 208
    invoke-virtual {v0, v1, v2, v4, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 214
    move-result-object p1

    .line 215
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_secondary_tab_vertical_padding:I

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 220
    move-result p1

    .line 221
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 223
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 225
    if-eqz p1, :cond_f7

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 230
    move-result v0

    .line 231
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 236
    move-result v1

    .line 237
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 239
    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    .line 242
    move-result v2

    .line 243
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 245
    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 248
    :cond_f7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 250
    if-eqz p1, :cond_110

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 255
    move-result v0

    .line 256
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 258
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 261
    move-result v1

    .line 262
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 264
    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    .line 267
    move-result v2

    .line 268
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 270
    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 273
    :cond_110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 276
    move-result-object p1

    .line 277
    sget v0, Lmiuix/appcompat/R$attr;->actionBarPaddingStart:I

    .line 279
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    .line 282
    move-result p1

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 286
    move-result-object v0

    .line 287
    sget v1, Lmiuix/appcompat/R$attr;->actionBarPaddingEnd:I

    .line 289
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    .line 292
    move-result v0

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 296
    move-result v1

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 300
    move-result v2

    .line 301
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 304
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    .line 306
    if-eqz p1, :cond_136

    .line 308
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTabsLayoutParams()V

    .line 311
    :cond_136
    new-instance p1, Lmiuix/appcompat/internal/app/widget/e;

    .line 313
    invoke-direct {p1, p0, v3}, Lmiuix/appcompat/internal/app/widget/e;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V

    .line 316
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 319
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 14
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideSubMenus()Z

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 19
    if-eqz v0, :cond_1c

    .line 21
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 26
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideSubMenus()Z

    .line 29
    :cond_1c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 31
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onDetachedFromWindow()V

    .line 34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 36
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onDetachedFromWindow()V

    .line 39
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    .line 42
    return-void
.end method

.method public onExpandStateChanged(II)V
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne p1, v0, :cond_14

    .line 6
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 10
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_14

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 18
    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 21
    :cond_14
    if-ne p2, v0, :cond_1d

    .line 23
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 25
    if-eqz p1, :cond_1d

    .line 27
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 30
    :cond_1d
    const/high16 p1, 0x3f800000  # 1.0f

    .line 32
    if-ne p2, v1, :cond_43

    .line 34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 39
    move-result v0

    .line 40
    const/4 v3, 0x0

    .line 41
    cmpl-float v0, v0, v3

    .line 43
    if-lez v0, :cond_3c

    .line 45
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 47
    if-eqz v0, :cond_35

    .line 49
    const/16 v4, 0x14

    .line 51
    invoke-virtual {v0, v3, v2, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 54
    :cond_35
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 56
    if-eqz v0, :cond_3c

    .line 58
    invoke-virtual {v0, p1, v2, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 61
    :cond_3c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 63
    if-eqz v0, :cond_43

    .line 65
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 68
    :cond_43
    if-nez p2, :cond_64

    .line 70
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 72
    if-eqz v0, :cond_5a

    .line 74
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 76
    if-nez v3, :cond_5a

    .line 78
    invoke-virtual {v0, p1, v2, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 81
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 83
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 88
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onShow()V

    .line 91
    :cond_5a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 93
    if-eqz p1, :cond_70

    .line 95
    const/16 v0, 0x8

    .line 97
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 100
    goto :goto_70

    .line 101
    :cond_64
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 104
    move-result p1

    .line 105
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 107
    sub-int/2addr p1, v0

    .line 108
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    .line 110
    add-int/2addr p1, v0

    .line 111
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 113
    :cond_70
    :goto_70
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 118
    move-result p1

    .line 119
    if-lez p1, :cond_9e

    .line 121
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    .line 123
    if-ne p1, p2, :cond_80

    .line 125
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 127
    if-eq p1, p2, :cond_9e

    .line 129
    :cond_80
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object p1

    .line 135
    :cond_86
    :goto_86
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_9e

    .line 141
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 147
    if-ne p2, v1, :cond_98

    .line 149
    invoke-interface {v0, v1}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onExpandStateChanged(I)V

    .line 152
    goto :goto_86

    .line 153
    :cond_98
    if-nez p2, :cond_86

    .line 155
    invoke-interface {v0, v2}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onExpandStateChanged(I)V

    .line 158
    goto :goto_86

    .line 159
    :cond_9e
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 18

    .line 1
    move-object v8, p0

    .line 2
    iget v0, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 4
    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    move-result v1

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    move-result v0

    .line 14
    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 16
    if-eqz v1, :cond_21

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object v1

    .line 22
    if-ne v1, v8, :cond_21

    .line 24
    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result v1

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 33
    move-result v0

    .line 34
    :cond_21
    move v5, v0

    .line 35
    iget v6, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    .line 37
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    move-result v0

    .line 43
    iget v7, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 45
    iget v1, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 47
    const/4 v2, 0x2

    .line 48
    if-ne v1, v2, :cond_34

    .line 50
    iget v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 52
    goto :goto_3b

    .line 53
    :cond_34
    const/4 v2, 0x1

    .line 54
    if-ne v1, v2, :cond_3a

    .line 56
    add-int v1, v0, v7

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    const/4 v1, 0x0

    .line 60
    :goto_3b
    sub-int v2, p5, p3

    .line 62
    sub-int v9, v2, v7

    .line 64
    sub-int v10, v9, v1

    .line 66
    add-int v2, v0, v7

    .line 68
    sub-int/2addr v2, v1

    .line 69
    int-to-float v1, v2

    .line 70
    int-to-float v2, v0

    .line 71
    div-float/2addr v1, v2

    .line 72
    const/high16 v2, 0x3f800000  # 1.0f

    .line 74
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 77
    move-result v1

    .line 78
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_57

    .line 84
    if-nez v0, :cond_57

    .line 86
    move v11, v2

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move v11, v1

    .line 89
    :goto_58
    const/4 v3, 0x0

    .line 90
    move-object v0, p0

    .line 91
    move v1, p1

    .line 92
    move v2, p2

    .line 93
    move/from16 v4, p4

    .line 95
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onLayoutCollapseViews(ZIIIII)V

    .line 98
    move v3, v10

    .line 99
    move v5, v9

    .line 100
    move v6, v7

    .line 101
    move v7, v11

    .line 102
    invoke-virtual/range {v0 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onLayoutExpandViews(ZIIIIIF)V

    .line 105
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->notifyMenuStateChange()V

    .line 108
    iget-boolean v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 110
    if-nez v0, :cond_76

    .line 112
    iget-boolean v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    .line 114
    if-nez v0, :cond_76

    .line 116
    invoke-direct {p0, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->animateLayoutWithProcess(F)V

    .line 119
    :cond_76
    iput v11, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    .line 121
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBadgeOnMenuItemViews()V

    .line 124
    return-void
.end method

.method public onLayoutExpandViews(ZIIIIIF)V
    .registers 24

    .line 1
    move-object/from16 v6, p0

    .line 3
    move/from16 v7, p2

    .line 5
    move/from16 v8, p4

    .line 7
    move/from16 v9, p5

    .line 9
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 18
    iget-object v10, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 20
    const/high16 v1, 0x40400000  # 3.0f

    .line 22
    mul-float v1, v1, p7

    .line 24
    const/high16 v2, 0x3f800000  # 1.0f

    .line 26
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 29
    move-result v1

    .line 30
    sub-float/2addr v2, v1

    .line 31
    const/4 v1, 0x0

    .line 32
    cmpg-float v1, v2, v1

    .line 34
    const/4 v11, 0x0

    .line 35
    if-gtz v1, :cond_27

    .line 37
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v1, v11

    .line 41
    :goto_28
    if-eqz v0, :cond_36

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_36

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 52
    move-result v2

    .line 53
    move v12, v2

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v12, v11

    .line 56
    :goto_37
    iget v13, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 58
    add-int v2, p3, v12

    .line 60
    add-int/2addr v2, v13

    .line 61
    sub-int/2addr v2, v9

    .line 62
    add-int v14, v2, v1

    .line 64
    const/4 v15, 0x0

    .line 65
    if-eqz v0, :cond_95

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_95

    .line 73
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 75
    if-eqz v1, :cond_95

    .line 77
    sub-int v1, v9, v12

    .line 79
    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 82
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 84
    invoke-direct {v6, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_62

    .line 90
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 92
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move-object v0, v15

    .line 100
    :goto_63
    if-eqz v0, :cond_87

    .line 102
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 104
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_76

    .line 110
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 112
    sub-int v1, v8, v1

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 117
    move-result v2

    .line 118
    sub-int/2addr v1, v2

    .line 119
    :cond_76
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 124
    move-result v3

    .line 125
    add-int/2addr v3, v1

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 129
    move-result v4

    .line 130
    iget v5, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 132
    add-int/2addr v4, v5

    .line 133
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 136
    :cond_87
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 138
    add-int v5, v12, v13

    .line 140
    move-object/from16 v0, p0

    .line 142
    move/from16 v2, p2

    .line 144
    move v3, v14

    .line 145
    move/from16 v4, p4

    .line 147
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clipViewBounds(Landroid/view/View;IIII)V

    .line 150
    :cond_95
    if-lez v13, :cond_f6

    .line 152
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 154
    if-eqz v0, :cond_f6

    .line 156
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 158
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    .line 160
    add-int/2addr v0, v1

    .line 161
    add-int v2, v0, v7

    .line 163
    add-int v5, v9, p6

    .line 165
    sub-int v3, v5, v13

    .line 167
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 170
    move-result v0

    .line 171
    add-int v4, v0, v2

    .line 173
    move-object/from16 v0, p0

    .line 175
    move-object v1, v10

    .line 176
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 179
    invoke-direct {v6, v10}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_bf

    .line 185
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 188
    move-result-object v0

    .line 189
    move-object v15, v0

    .line 190
    check-cast v15, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 192
    :cond_bf
    if-eqz v15, :cond_e6

    .line 194
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    .line 197
    move-result v0

    .line 198
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_dd

    .line 204
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 206
    mul-int/lit8 v0, v0, 0x2

    .line 208
    sub-int v0, v8, v0

    .line 210
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    .line 213
    move-result v1

    .line 214
    sub-int/2addr v0, v1

    .line 215
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 217
    mul-int/lit8 v1, v1, 0x2

    .line 219
    sub-int v1, v8, v1

    .line 221
    goto :goto_df

    .line 222
    :cond_dd
    move v1, v0

    .line 223
    move v0, v11

    .line 224
    :goto_df
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    .line 227
    move-result v2

    .line 228
    invoke-virtual {v15, v0, v11, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 231
    :cond_e6
    sub-int v0, v12, v13

    .line 233
    sub-int v3, v14, v0

    .line 235
    add-int v5, v12, v13

    .line 237
    move-object/from16 v0, p0

    .line 239
    move-object v1, v10

    .line 240
    move/from16 v2, p2

    .line 242
    move/from16 v4, p4

    .line 244
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clipViewBounds(Landroid/view/View;IIII)V

    .line 247
    :cond_f6
    return-void
.end method

.method public onMeasure(II)V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_9
    const/16 v5, 0x8

    .line 12
    if-ge v3, v1, :cond_26

    .line 14
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v6

    .line 18
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result v7

    .line 22
    if-eq v7, v5, :cond_23

    .line 24
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 26
    if-ne v6, v5, :cond_21

    .line 28
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_23

    .line 34
    :cond_21
    add-int/lit8 v4, v4, 0x1

    .line 36
    :cond_23
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_9

    .line 39
    :cond_26
    const/4 v1, 0x1

    .line 40
    if-nez v4, :cond_2f

    .line 42
    invoke-virtual {v0, v2, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 45
    iput-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    .line 47
    return-void

    .line 48
    :cond_2f
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    .line 50
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 53
    move-result v3

    .line 54
    iget v4, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 56
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 61
    move-result v7

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 65
    move-result v8

    .line 66
    add-int/2addr v8, v7

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    .line 70
    move-result v7

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    .line 74
    move-result v9

    .line 75
    if-lez v4, :cond_4e

    .line 77
    move v10, v4

    .line 78
    goto :goto_52

    .line 79
    :cond_4e
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 82
    move-result v10

    .line 83
    :goto_52
    sub-int/2addr v10, v8

    .line 84
    const/high16 v11, -0x80000000

    .line 86
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 89
    move-result v12

    .line 90
    sub-int v13, v3, v7

    .line 92
    sub-int/2addr v13, v9

    .line 93
    div-int/lit8 v14, v13, 0x2

    .line 95
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    .line 98
    move-result v15

    .line 99
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 101
    if-eqz v1, :cond_79

    .line 103
    invoke-virtual {v0, v1, v13, v12, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 106
    move-result v13

    .line 107
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 109
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 112
    move-result v1

    .line 113
    add-int/2addr v7, v1

    .line 114
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 119
    move-result v1

    .line 120
    add-int/2addr v1, v8

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    move v1, v2

    .line 123
    :goto_7a
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 125
    if-eqz v11, :cond_94

    .line 127
    invoke-virtual {v0, v11, v13, v12, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 130
    move-result v13

    .line 131
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 133
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 136
    move-result v11

    .line 137
    add-int/2addr v9, v11

    .line 138
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 140
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 143
    move-result v11

    .line 144
    add-int/2addr v11, v8

    .line 145
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    .line 148
    move-result v1

    .line 149
    :cond_94
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 151
    if-eqz v11, :cond_c5

    .line 153
    sget v5, Lmiuix/appcompat/R$id;->miuix_appcompat_navigator_switch_presenter:I

    .line 155
    invoke-virtual {v11, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 158
    move-result-object v5

    .line 159
    check-cast v5, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    .line 161
    invoke-virtual {v5, v2, v2}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->suppressVisibility(ZI)V

    .line 164
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 166
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 169
    move-result v5

    .line 170
    const/16 v11, 0x8

    .line 172
    if-eq v5, v11, :cond_c5

    .line 174
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 176
    invoke-virtual {v0, v5, v13, v12, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 179
    move-result v13

    .line 180
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 182
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 185
    move-result v5

    .line 186
    add-int/2addr v7, v5

    .line 187
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 189
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 192
    move-result v5

    .line 193
    add-int/2addr v5, v8

    .line 194
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 197
    move-result v1

    .line 198
    :cond_c5
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 200
    if-eqz v5, :cond_d1

    .line 202
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_d1

    .line 208
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    .line 210
    :cond_d1
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 212
    if-eqz v5, :cond_dd

    .line 214
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 217
    move-result v5

    .line 218
    if-eqz v5, :cond_dd

    .line 220
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    .line 222
    :cond_dd
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->fixTitleUpViewMargin()V

    .line 225
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 227
    if-eqz v5, :cond_e7

    .line 229
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 231
    goto :goto_e9

    .line 232
    :cond_e7
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 234
    :goto_e9
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 236
    if-eqz v11, :cond_f5

    .line 238
    if-eqz v5, :cond_f5

    .line 240
    const/16 v11, 0x8

    .line 242
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 245
    goto :goto_f7

    .line 246
    :cond_f5
    const/16 v11, 0x8

    .line 248
    :goto_f7
    if-eqz v5, :cond_139

    .line 250
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 253
    move-result v2

    .line 254
    if-eq v2, v11, :cond_139

    .line 256
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 259
    move-result-object v2

    .line 260
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 262
    if-gez v2, :cond_10e

    .line 264
    const/high16 v11, -0x80000000

    .line 266
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 269
    move-result v2

    .line 270
    goto :goto_114

    .line 271
    :cond_10e
    const/high16 v11, 0x40000000  # 2.0f

    .line 273
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 276
    move-result v2

    .line 277
    :goto_114
    invoke-virtual {v5, v2, v12}, Landroid/view/View;->measure(II)V

    .line 280
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 283
    move-result v2

    .line 284
    invoke-virtual {v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getStartOffset()I

    .line 287
    move-result v11

    .line 288
    add-int/2addr v2, v11

    .line 289
    sub-int/2addr v13, v2

    .line 290
    const/4 v11, 0x0

    .line 291
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    .line 294
    move-result v13

    .line 295
    move/from16 v16, v10

    .line 297
    sub-int v10, v13, v2

    .line 299
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    .line 302
    move-result v10

    .line 303
    add-int/2addr v7, v2

    .line 304
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 307
    move-result v2

    .line 308
    add-int/2addr v2, v8

    .line 309
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 312
    move-result v1

    .line 313
    goto :goto_13c

    .line 314
    :cond_139
    move/from16 v16, v10

    .line 316
    move v10, v14

    .line 317
    :goto_13c
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 319
    if-eqz v2, :cond_174

    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 324
    move-result-object v2

    .line 325
    if-ne v2, v0, :cond_174

    .line 327
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 329
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 332
    move-result v2

    .line 333
    const/16 v5, 0x8

    .line 335
    if-eq v2, v5, :cond_174

    .line 337
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 339
    const/4 v5, 0x0

    .line 340
    invoke-virtual {v0, v2, v13, v12, v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 343
    move-result v13

    .line 344
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 346
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 349
    move-result v2

    .line 350
    sub-int/2addr v14, v2

    .line 351
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    .line 354
    move-result v14

    .line 355
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 357
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 360
    move-result v2

    .line 361
    add-int/2addr v9, v2

    .line 362
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 364
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 367
    move-result v2

    .line 368
    add-int/2addr v2, v8

    .line 369
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 372
    move-result v1

    .line 373
    :cond_174
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 375
    const/4 v5, 0x2

    .line 376
    if-eqz v2, :cond_1ac

    .line 378
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 381
    move-result v2

    .line 382
    const/16 v11, 0x8

    .line 384
    if-eq v2, v11, :cond_1ac

    .line 386
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 388
    iget v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    .line 390
    mul-int/2addr v11, v5

    .line 391
    invoke-virtual {v0, v2, v13, v12, v11}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 394
    move-result v13

    .line 395
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 397
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 400
    move-result v2

    .line 401
    sub-int/2addr v14, v2

    .line 402
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    .line 404
    mul-int/2addr v2, v5

    .line 405
    sub-int/2addr v14, v2

    .line 406
    const/4 v2, 0x0

    .line 407
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    .line 410
    move-result v14

    .line 411
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 413
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 416
    move-result v2

    .line 417
    add-int/2addr v9, v2

    .line 418
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 420
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 423
    move-result v2

    .line 424
    add-int/2addr v2, v8

    .line 425
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 428
    move-result v1

    .line 429
    :cond_1ac
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    .line 432
    move-result v2

    .line 433
    if-eqz v2, :cond_1b5

    .line 435
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTitleCenter()V

    .line 438
    :cond_1b5
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 440
    if-nez v11, :cond_20c

    .line 442
    if-nez v2, :cond_1c3

    .line 444
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 447
    move-result v11

    .line 448
    and-int/lit8 v11, v11, 0x20

    .line 450
    if-eqz v11, :cond_20c

    .line 452
    :cond_1c3
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 454
    if-eqz v11, :cond_20c

    .line 456
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 459
    move-result v11

    .line 460
    const/16 v5, 0x8

    .line 462
    if-eq v11, v5, :cond_20c

    .line 464
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 466
    iget-boolean v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    .line 468
    if-nez v11, :cond_1de

    .line 470
    iget-boolean v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    .line 472
    if-eqz v11, :cond_1da

    .line 474
    goto :goto_1de

    .line 475
    :cond_1da
    move/from16 v17, v15

    .line 477
    const/4 v11, 0x0

    .line 478
    goto :goto_1e5

    .line 479
    :cond_1de
    :goto_1de
    iget v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    .line 481
    move/from16 v17, v15

    .line 483
    iget v15, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    .line 485
    add-int/2addr v11, v15

    .line 486
    :goto_1e5
    invoke-virtual {v0, v5, v13, v12, v11}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 489
    move-result v13

    .line 490
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 492
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 495
    move-result v5

    .line 496
    iget-boolean v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    .line 498
    if-nez v11, :cond_1fa

    .line 500
    iget-boolean v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    .line 502
    if-eqz v11, :cond_1f8

    .line 504
    goto :goto_1fa

    .line 505
    :cond_1f8
    const/4 v11, 0x0

    .line 506
    goto :goto_1ff

    .line 507
    :cond_1fa
    :goto_1fa
    iget v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    .line 509
    iget v15, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    .line 511
    add-int/2addr v11, v15

    .line 512
    :goto_1ff
    add-int/2addr v5, v11

    .line 513
    add-int/2addr v7, v5

    .line 514
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 516
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 519
    move-result v5

    .line 520
    add-int/2addr v5, v8

    .line 521
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 524
    goto :goto_20e

    .line 525
    :cond_20c
    move/from16 v17, v15

    .line 527
    :goto_20e
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 529
    const/4 v5, 0x0

    .line 530
    if-eqz v1, :cond_214

    .line 532
    goto :goto_220

    .line 533
    :cond_214
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 535
    and-int/lit8 v1, v1, 0x10

    .line 537
    if-eqz v1, :cond_21f

    .line 539
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 541
    if-eqz v1, :cond_21f

    .line 543
    goto :goto_220

    .line 544
    :cond_21f
    move-object v1, v5

    .line 545
    :goto_220
    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 547
    if-nez v8, :cond_228

    .line 549
    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 551
    if-eqz v8, :cond_230

    .line 553
    :cond_228
    if-eqz v1, :cond_230

    .line 555
    const/16 v8, 0x8

    .line 557
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 560
    goto :goto_232

    .line 561
    :cond_230
    const/16 v8, 0x8

    .line 563
    :goto_232
    if-eqz v1, :cond_319

    .line 565
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 568
    move-result v11

    .line 569
    if-eq v11, v8, :cond_319

    .line 571
    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 573
    if-eqz v8, :cond_24e

    .line 575
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 578
    move-result v8

    .line 579
    const/4 v11, 0x4

    .line 580
    if-ne v8, v11, :cond_24e

    .line 582
    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 584
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 587
    move-result v8

    .line 588
    const/4 v11, 0x0

    .line 589
    add-int/2addr v8, v11

    .line 590
    goto :goto_24f

    .line 591
    :cond_24e
    const/4 v8, 0x0

    .line 592
    :goto_24f
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 595
    move-result-object v11

    .line 596
    invoke-virtual {v0, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 599
    move-result-object v11

    .line 600
    instance-of v15, v11, Landroidx/appcompat/app/a$a;

    .line 602
    if-eqz v15, :cond_25e

    .line 604
    move-object v5, v11

    .line 605
    check-cast v5, Landroidx/appcompat/app/a$a;

    .line 607
    :cond_25e
    if-eqz v5, :cond_26f

    .line 609
    iget v15, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 611
    move/from16 v18, v3

    .line 613
    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 615
    add-int/2addr v3, v15

    .line 616
    iget v15, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 618
    move/from16 v19, v3

    .line 620
    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 622
    add-int/2addr v3, v15

    .line 623
    goto :goto_274

    .line 624
    :cond_26f
    move/from16 v18, v3

    .line 626
    const/4 v3, 0x0

    .line 627
    const/16 v19, 0x0

    .line 629
    :goto_274
    if-gtz v4, :cond_27b

    .line 631
    move/from16 v20, v7

    .line 633
    const/high16 v15, -0x80000000

    .line 635
    goto :goto_286

    .line 636
    :cond_27b
    iget v15, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 638
    if-ltz v15, :cond_282

    .line 640
    const/high16 v15, 0x40000000  # 2.0f

    .line 642
    goto :goto_284

    .line 643
    :cond_282
    const/high16 v15, -0x80000000

    .line 645
    :goto_284
    move/from16 v20, v7

    .line 647
    :goto_286
    iget v7, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 649
    move/from16 v21, v9

    .line 651
    const/4 v9, -0x1

    .line 652
    if-ltz v7, :cond_294

    .line 654
    if-lez v4, :cond_29e

    .line 656
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    .line 659
    move-result v7

    .line 660
    goto :goto_29e

    .line 661
    :cond_294
    if-ne v7, v9, :cond_29c

    .line 663
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 666
    move-result v4

    .line 667
    move/from16 v16, v4

    .line 669
    :cond_29c
    sub-int v7, v16, v3

    .line 671
    :cond_29e
    :goto_29e
    iget v3, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 673
    const/4 v4, -0x2

    .line 674
    if-eq v3, v4, :cond_2a6

    .line 676
    const/high16 v4, 0x40000000  # 2.0f

    .line 678
    goto :goto_2a8

    .line 679
    :cond_2a6
    const/high16 v4, -0x80000000

    .line 681
    :goto_2a8
    if-ltz v3, :cond_2b1

    .line 683
    add-int v9, v13, v8

    .line 685
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    .line 688
    move-result v3

    .line 689
    goto :goto_2b3

    .line 690
    :cond_2b1
    add-int v3, v13, v8

    .line 692
    :goto_2b3
    sub-int v3, v3, v19

    .line 694
    const/4 v9, 0x0

    .line 695
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    .line 698
    move-result v3

    .line 699
    if-eqz v5, :cond_2bf

    .line 701
    iget v5, v5, Landroidx/appcompat/app/a$a;->a:I

    .line 703
    goto :goto_2c2

    .line 704
    :cond_2bf
    const v5, 0x800013

    .line 707
    :goto_2c2
    const v9, 0x800007

    .line 710
    and-int/2addr v5, v9

    .line 711
    const/4 v9, 0x1

    .line 712
    if-ne v5, v9, :cond_2d4

    .line 714
    iget v5, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 716
    const/4 v9, -0x1

    .line 717
    if-ne v5, v9, :cond_2d4

    .line 719
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    .line 722
    move-result v3

    .line 723
    const/4 v5, 0x2

    .line 724
    mul-int/2addr v3, v5

    .line 725
    :cond_2d4
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 727
    if-eqz v5, :cond_2fd

    .line 729
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 732
    move-result v5

    .line 733
    if-nez v5, :cond_2fd

    .line 735
    int-to-float v3, v3

    .line 736
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 738
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 741
    move-result v5

    .line 742
    int-to-float v5, v5

    .line 743
    const/high16 v9, 0x3f800000  # 1.0f

    .line 745
    iget-object v10, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 747
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    .line 750
    move-result v10

    .line 751
    sub-float/2addr v9, v10

    .line 752
    mul-float/2addr v9, v5

    .line 753
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    .line 755
    int-to-float v5, v5

    .line 756
    iget-object v10, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 758
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    .line 761
    move-result v10

    .line 762
    mul-float/2addr v10, v5

    .line 763
    sub-float/2addr v9, v10

    .line 764
    add-float/2addr v9, v3

    .line 765
    float-to-int v3, v9

    .line 766
    :cond_2fd
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 769
    move-result v3

    .line 770
    invoke-static {v7, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 773
    move-result v4

    .line 774
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 777
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 780
    move-result v3

    .line 781
    add-int v3, v3, v19

    .line 783
    sub-int/2addr v3, v8

    .line 784
    sub-int/2addr v13, v3

    .line 785
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 788
    move-result v1

    .line 789
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 792
    move-result v1

    .line 793
    goto :goto_331

    .line 794
    :cond_319
    move/from16 v18, v3

    .line 796
    move/from16 v20, v7

    .line 798
    move/from16 v21, v9

    .line 800
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 802
    if-eqz v3, :cond_333

    .line 804
    const/4 v4, 0x0

    .line 805
    invoke-virtual {v0, v3, v13, v12, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 808
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 810
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 813
    move-result v1

    .line 814
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 817
    move-result v1

    .line 818
    :goto_331
    const/4 v11, 0x0

    .line 819
    goto :goto_344

    .line 820
    :cond_333
    if-eqz v1, :cond_342

    .line 822
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 825
    move-result v1

    .line 826
    const/16 v3, 0x8

    .line 828
    if-ne v1, v3, :cond_342

    .line 830
    if-nez v2, :cond_342

    .line 832
    move v1, v6

    .line 833
    const/4 v11, 0x1

    .line 834
    goto :goto_344

    .line 835
    :cond_342
    move v1, v6

    .line 836
    goto :goto_331

    .line 837
    :goto_344
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 839
    if-nez v3, :cond_387

    .line 841
    if-eqz v2, :cond_387

    .line 843
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    .line 846
    move-result v3

    .line 847
    if-eqz v3, :cond_374

    .line 849
    move/from16 v7, v20

    .line 851
    move/from16 v9, v21

    .line 853
    if-le v7, v9, :cond_35b

    .line 855
    const/4 v3, 0x2

    .line 856
    mul-int/2addr v7, v3

    .line 857
    sub-int v3, v18, v7

    .line 859
    goto :goto_35c

    .line 860
    :cond_35b
    move v3, v13

    .line 861
    :goto_35c
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 863
    const/4 v5, 0x0

    .line 864
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 867
    move-result v3

    .line 868
    const/high16 v7, -0x80000000

    .line 870
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 873
    move-result v3

    .line 874
    invoke-virtual {v4, v3, v12}, Landroid/view/View;->measure(II)V

    .line 877
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 879
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 882
    move-result v3

    .line 883
    sub-int/2addr v13, v3

    .line 884
    goto :goto_37c

    .line 885
    :cond_374
    const/4 v5, 0x0

    .line 886
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 888
    invoke-virtual {v0, v3, v13, v12, v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 891
    move-result v3

    .line 892
    move v13, v3

    .line 893
    :goto_37c
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 895
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 898
    move-result v3

    .line 899
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 902
    move-result v3

    .line 903
    goto :goto_388

    .line 904
    :cond_387
    move v3, v6

    .line 905
    :goto_388
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 907
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 910
    move-result v4

    .line 911
    if-eqz v4, :cond_3a9

    .line 913
    if-eqz v17, :cond_394

    .line 915
    const/4 v4, 0x0

    .line 916
    goto :goto_396

    .line 917
    :cond_394
    const/high16 v4, 0x40000000  # 2.0f

    .line 919
    :goto_396
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 921
    move/from16 v7, v18

    .line 923
    const/high16 v8, -0x80000000

    .line 925
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 928
    move-result v9

    .line 929
    const/4 v8, 0x0

    .line 930
    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 933
    move-result v4

    .line 934
    invoke-virtual {v5, v9, v4}, Landroid/view/View;->measure(II)V

    .line 937
    goto :goto_3ac

    .line 938
    :cond_3a9
    move/from16 v7, v18

    .line 940
    const/4 v8, 0x0

    .line 941
    :goto_3ac
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldMeasureCollapseTabContainer()Z

    .line 944
    move-result v4

    .line 945
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldMeasureMovableTabContainer()Z

    .line 948
    move-result v5

    .line 949
    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 951
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 954
    move-result-object v8

    .line 955
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 958
    move-result-object v8

    .line 959
    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 961
    int-to-float v8, v8

    .line 962
    const/high16 v9, 0x43200000  # 160.0f

    .line 964
    div-float/2addr v8, v9

    .line 965
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 967
    if-eqz v9, :cond_3db

    .line 969
    invoke-virtual {v9}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->isEnable()Z

    .line 972
    move-result v9

    .line 973
    if-eqz v9, :cond_3db

    .line 975
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 977
    invoke-virtual {v9}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getExtraPaddingDp()I

    .line 980
    move-result v9

    .line 981
    int-to-float v9, v9

    .line 982
    mul-float/2addr v9, v8

    .line 983
    float-to-int v8, v9

    .line 984
    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    .line 986
    const/4 v8, 0x0

    .line 987
    goto :goto_3de

    .line 988
    :cond_3db
    const/4 v8, 0x0

    .line 989
    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    .line 991
    :goto_3de
    iget v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 993
    iget v10, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    .line 995
    add-int/2addr v9, v10

    .line 996
    const/4 v10, 0x2

    .line 997
    mul-int/2addr v9, v10

    .line 998
    sub-int v9, v7, v9

    .line 1000
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 1003
    move-result v9

    .line 1004
    iget v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 1006
    iget v15, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    .line 1008
    add-int/2addr v14, v15

    .line 1009
    mul-int/2addr v14, v10

    .line 1010
    sub-int v10, v7, v14

    .line 1012
    if-eqz v5, :cond_40d

    .line 1014
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 1016
    const/high16 v14, 0x40000000  # 2.0f

    .line 1018
    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1021
    move-result v15

    .line 1022
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1025
    move-result v14

    .line 1026
    invoke-virtual {v5, v15, v14}, Landroid/view/View;->measure(II)V

    .line 1029
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 1031
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 1034
    move-result v5

    .line 1035
    iput v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 1037
    goto :goto_40e

    .line 1038
    :cond_40d
    move v5, v8

    .line 1039
    :goto_40e
    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    .line 1041
    if-eqz v4, :cond_42a

    .line 1043
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 1045
    const/high16 v14, 0x40000000  # 2.0f

    .line 1047
    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1050
    move-result v15

    .line 1051
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1054
    move-result v14

    .line 1055
    invoke-virtual {v4, v15, v14}, Landroid/view/View;->measure(II)V

    .line 1058
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 1060
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 1063
    move-result v4

    .line 1064
    iput v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    .line 1066
    goto :goto_42b

    .line 1067
    :cond_42a
    const/4 v4, 0x0

    .line 1068
    :goto_42b
    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1070
    if-nez v8, :cond_48c

    .line 1072
    iget v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 1074
    const/4 v14, 0x1

    .line 1075
    if-eq v8, v14, :cond_46e

    .line 1077
    const/4 v14, 0x2

    .line 1078
    if-eq v8, v14, :cond_438

    .line 1080
    goto :goto_48c

    .line 1081
    :cond_438
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 1083
    if-eqz v2, :cond_453

    .line 1085
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1088
    move-result-object v2

    .line 1089
    if-eqz v2, :cond_453

    .line 1091
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 1093
    const/high16 v8, 0x40000000  # 2.0f

    .line 1095
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1098
    move-result v10

    .line 1099
    const/4 v12, 0x0

    .line 1100
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1103
    move-result v13

    .line 1104
    invoke-virtual {v2, v10, v13}, Landroid/view/View;->measure(II)V

    .line 1107
    goto :goto_456

    .line 1108
    :cond_453
    const/high16 v8, 0x40000000  # 2.0f

    .line 1110
    const/4 v12, 0x0

    .line 1111
    :goto_456
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 1113
    if-eqz v2, :cond_48c

    .line 1115
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1118
    move-result-object v2

    .line 1119
    if-eqz v2, :cond_48c

    .line 1121
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 1123
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1126
    move-result v9

    .line 1127
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1130
    move-result v8

    .line 1131
    invoke-virtual {v2, v9, v8}, Landroid/view/View;->measure(II)V

    .line 1134
    goto :goto_48c

    .line 1135
    :cond_46e
    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 1137
    if-eqz v8, :cond_48c

    .line 1139
    if-eqz v2, :cond_479

    .line 1141
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    .line 1143
    const/4 v8, 0x2

    .line 1144
    mul-int/2addr v2, v8

    .line 1145
    goto :goto_47b

    .line 1146
    :cond_479
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    .line 1148
    :goto_47b
    sub-int/2addr v13, v2

    .line 1149
    const/4 v2, 0x0

    .line 1150
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    .line 1153
    move-result v8

    .line 1154
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 1156
    const/high16 v9, -0x80000000

    .line 1158
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1161
    move-result v8

    .line 1162
    invoke-virtual {v2, v8, v12}, Landroid/view/View;->measure(II)V

    .line 1165
    :cond_48c
    :goto_48c
    if-eqz v17, :cond_495

    .line 1167
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 1169
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 1172
    move-result v2

    .line 1173
    goto :goto_496

    .line 1174
    :cond_495
    const/4 v2, 0x0

    .line 1175
    :goto_496
    add-int v8, v3, v4

    .line 1177
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    .line 1180
    move-result v8

    .line 1181
    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 1183
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 1186
    move-result v6

    .line 1187
    iput v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 1189
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 1192
    move-result v1

    .line 1193
    add-int/2addr v1, v2

    .line 1194
    add-int/2addr v1, v5

    .line 1195
    iput v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTotalHeight:I

    .line 1197
    if-eqz v11, :cond_4b6

    .line 1199
    const/4 v2, 0x0

    .line 1200
    invoke-virtual {v0, v7, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1203
    const/4 v2, 0x1

    .line 1204
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    .line 1206
    return-void

    .line 1207
    :cond_4b6
    const/4 v2, 0x1

    .line 1208
    iget v3, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 1210
    const/4 v5, 0x2

    .line 1211
    if-ne v3, v5, :cond_4cb

    .line 1213
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 1215
    sub-int v2, v1, v4

    .line 1217
    iget v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 1219
    add-int/2addr v2, v3

    .line 1220
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 1223
    move-result v1

    .line 1224
    invoke-virtual {v0, v7, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1227
    goto :goto_4d6

    .line 1228
    :cond_4cb
    if-ne v3, v2, :cond_4d1

    .line 1230
    invoke-virtual {v0, v7, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1233
    goto :goto_4d6

    .line 1234
    :cond_4d1
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 1236
    invoke-virtual {v0, v7, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1239
    :goto_4d6
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 1241
    if-eqz v1, :cond_4fd

    .line 1243
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 1246
    move-result v1

    .line 1247
    const/16 v2, 0x8

    .line 1249
    if-eq v1, v2, :cond_4fd

    .line 1251
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 1253
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    .line 1255
    const/4 v3, 0x2

    .line 1256
    mul-int/2addr v2, v3

    .line 1257
    sub-int v3, v7, v2

    .line 1259
    const/high16 v2, 0x40000000  # 2.0f

    .line 1261
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1264
    move-result v2

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 1268
    move-result v3

    .line 1269
    const/high16 v4, -0x80000000

    .line 1271
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1274
    move-result v3

    .line 1275
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1278
    :cond_4fd
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result p1

    .line 12
    if-lez p3, :cond_2d

    .line 14
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 16
    if-le p1, p2, :cond_2d

    .line 18
    sub-int/2addr p1, p3

    .line 19
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 21
    if-lt p1, p2, :cond_1b

    .line 23
    sub-int p1, p5, p3

    .line 25
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 31
    :goto_1e
    const/4 p1, 0x1

    .line 32
    aget p2, p4, p1

    .line 34
    add-int/2addr p2, p3

    .line 35
    aput p2, p4, p1

    .line 37
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 39
    if-eq p2, p5, :cond_2d

    .line 41
    aput p3, p6, p1

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 46
    :cond_2d
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 16
    add-int/2addr p1, p2

    .line 17
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_21

    .line 23
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 25
    and-int/lit8 p2, p2, 0x10

    .line 27
    if-eqz p2, :cond_21

    .line 29
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 31
    if-eqz p2, :cond_21

    .line 33
    const/4 p1, 0x0

    .line 34
    :cond_21
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 36
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    .line 38
    sub-int/2addr p2, p3

    .line 39
    add-int/2addr p2, p1

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    move-result p3

    .line 44
    if-gez p5, :cond_52

    .line 46
    if-ge p3, p2, :cond_52

    .line 48
    iget p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 50
    sub-int p6, p3, p5

    .line 52
    const/4 v0, 0x1

    .line 53
    if-gt p6, p2, :cond_40

    .line 55
    sub-int p1, p4, p5

    .line 57
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 59
    aget p1, p7, v0

    .line 61
    add-int/2addr p1, p5

    .line 62
    aput p1, p7, v0

    .line 64
    goto :goto_49

    .line 65
    :cond_40
    sub-int/2addr p2, p3

    .line 66
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 68
    aget p1, p7, v0

    .line 70
    neg-int p2, p2

    .line 71
    add-int/2addr p1, p2

    .line 72
    aput p1, p7, v0

    .line 74
    :goto_49
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 76
    if-eq p1, p4, :cond_52

    .line 78
    aput p5, p8, v0

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 83
    :cond_52
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 p1, 0x1

    .line 9
    if-nez p4, :cond_d

    .line 11
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 16
    :goto_f
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 18
    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_1c

    .line 24
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 26
    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 29
    :cond_1c
    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 33
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 12
    if-eqz v0, :cond_1e

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 16
    if-eqz v1, :cond_1e

    .line 18
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 20
    if-eqz v1, :cond_1e

    .line 22
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1e

    .line 28
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 31
    :cond_1e
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 33
    if-eqz v0, :cond_25

    .line 35
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postShowOverflowMenu()V

    .line 38
    :cond_25
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isEndOverflowOpen:Z

    .line 40
    if-eqz v0, :cond_2c

    .line 42
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postShowEndOverflowMenu()V

    .line 45
    :cond_2c
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 47
    const/4 v1, -0x1

    .line 48
    if-ne v0, v1, :cond_48

    .line 50
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userSetExpandState:Z

    .line 52
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 54
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userExpandState:I

    .line 56
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 58
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isUserSetExpandState()Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_42

    .line 64
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 66
    goto :goto_44

    .line 67
    :cond_42
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 69
    :goto_44
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(IZZ)V

    .line 73
    :cond_48
    iget-boolean p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->applyBlur:Z

    .line 75
    if-eqz p1, :cond_51

    .line 77
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    .line 79
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setApplyBgBlur(Z)V

    .line 82
    :cond_51
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    .line 7
    invoke-direct {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_19

    .line 15
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 17
    if-eqz v0, :cond_19

    .line 19
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    .line 22
    move-result v0

    .line 23
    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 28
    :goto_1b
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isOverflowMenuShowing()Z

    .line 31
    move-result v0

    .line 32
    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 34
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isEndOverflowMenuShowing()Z

    .line 37
    move-result v0

    .line 38
    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isEndOverflowOpen:Z

    .line 40
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 42
    const/4 v3, 0x2

    .line 43
    if-ne v0, v3, :cond_2f

    .line 45
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 47
    goto :goto_31

    .line 48
    :cond_2f
    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 50
    :goto_31
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 52
    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userSetExpandState:Z

    .line 54
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 56
    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userExpandState:I

    .line 58
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    .line 60
    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->applyBlur:Z

    .line 62
    return-object v1
.end method

.method public onStart(Z)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_9

    .line 7
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    .line 9
    goto :goto_38

    .line 10
    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 13
    move-result p1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez p1, :cond_22

    .line 17
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 19
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 24
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 27
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 29
    const/16 v0, 0x8

    .line 31
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 34
    goto :goto_38

    .line 35
    :cond_22
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 38
    move-result p1

    .line 39
    if-ne p1, v0, :cond_38

    .line 41
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 43
    const/4 v0, 0x4

    .line 44
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 49
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 54
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 3
    if-nez p1, :cond_a

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_e

    .line 11
    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 13
    if-eqz p1, :cond_10

    .line 15
    :cond_e
    const/4 p1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    return p1
.end method

.method public onStop(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    .line 4
    if-eqz p1, :cond_11

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 8
    const/4 v0, 0x4

    .line 9
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 14
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 17
    goto :goto_1a

    .line 18
    :cond_11
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    .line 20
    if-nez p1, :cond_18

    .line 22
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showContainerInFinishActionMode()V

    .line 25
    :cond_18
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    .line 27
    :goto_1a
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    move-result p2

    .line 18
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_1e

    .line 24
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 26
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 28
    if-nez v0, :cond_26

    .line 30
    goto :goto_24

    .line 31
    :cond_1e
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 33
    if-eqz v0, :cond_26

    .line 35
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 37
    :goto_24
    move v0, v1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v0, v2

    .line 40
    :goto_27
    if-eqz v0, :cond_56

    .line 42
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 44
    if-nez v0, :cond_31

    .line 46
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 49
    return-void

    .line 50
    :cond_31
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 52
    add-int v4, p1, v3

    .line 54
    if-lt v0, v4, :cond_3b

    .line 56
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 59
    return-void

    .line 60
    :cond_3b
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 62
    add-int/2addr v3, p1

    .line 63
    div-int/lit8 v3, v3, 0x2

    .line 65
    add-int/2addr v3, v0

    .line 66
    if-le p2, v3, :cond_4b

    .line 68
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 70
    add-int/2addr v0, p1

    .line 71
    sub-int/2addr v0, p2

    .line 72
    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 75
    goto :goto_51

    .line 76
    :cond_4b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 78
    sub-int/2addr v0, p2

    .line 79
    invoke-virtual {p1, v2, p2, v2, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 82
    :goto_51
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 87
    :cond_56
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    .line 3
    if-nez v0, :cond_13

    .line 5
    if-nez p1, :cond_13

    .line 7
    const p1, 0x3f4ccccd  # 0.8f

    .line 10
    cmpl-float p1, p2, p1

    .line 12
    if-lez p1, :cond_13

    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    .line 17
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showContainerInFinishActionMode()V

    .line 20
    :cond_13
    return-void
.end method

.method public onWindowHide()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onWindowHide()V

    .line 6
    return-void
.end method

.method public onWindowShow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onWindowShow()V

    .line 6
    return-void
.end method

.method public postShowEndOverflowMenu()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/e;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/e;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .registers 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->postShowOverflowMenu()V

    .line 4
    return-void
.end method

.method public refreshBottomMenu()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSplitMenuView()V

    .line 12
    :cond_b
    return-void
.end method

.method public removeBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->removeBottomMenuCustomView()V

    .line 8
    :cond_7
    return-void
.end method

.method public setApplyBgBlur(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    .line 3
    if-eq v0, p1, :cond_14

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setParentApplyBlur(Z)V

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 16
    if-eqz v0, :cond_14

    .line 18
    invoke-virtual {v0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setParentApplyBlur(Z)V

    .line 21
    :cond_14
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setBottomMenuCustomView(Landroid/view/View;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setBottomMenuCustomViewTranslationYWithPx(I)V

    .line 12
    :cond_b
    return-void
.end method

.method public bridge synthetic setBottomMenuMode(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setBottomMenuMode(I)V

    .line 4
    return-void
.end method

.method public setCallback(Landroidx/appcompat/app/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCallback:Landroidx/appcompat/app/a$c;

    .line 3
    return-void
.end method

.method public setCollapsable(Z)V
    .registers 2

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 12
    if-eqz v1, :cond_12

    .line 14
    if-eqz v0, :cond_12

    .line 16
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    :cond_12
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 21
    if-eqz p1, :cond_1f

    .line 23
    if-eqz v0, :cond_1f

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addCustomView()V

    .line 31
    goto :goto_26

    .line 32
    :cond_1f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 39
    :goto_26
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 12

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    xor-int v1, p1, v0

    .line 9
    :goto_8
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 11
    and-int/lit16 v0, v1, 0x201f

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x4

    .line 15
    if-eqz v0, :cond_173

    .line 17
    and-int/lit8 v0, p1, 0x2

    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v0, :cond_18

    .line 23
    move v0, v4

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v0, v5

    .line 26
    :goto_19
    const/16 v6, 0x8

    .line 28
    if-eqz v0, :cond_5f

    .line 30
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initHomeLayout()V

    .line 33
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 35
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 37
    if-nez v8, :cond_28

    .line 39
    move v8, v5

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move v8, v6

    .line 42
    :goto_29
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 45
    and-int/lit8 v7, v1, 0x4

    .line 47
    if-eqz v7, :cond_41

    .line 49
    and-int/lit8 v7, p1, 0x4

    .line 51
    if-eqz v7, :cond_36

    .line 53
    move v7, v4

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v7, v5

    .line 56
    :goto_37
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 58
    invoke-virtual {v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 61
    if-eqz v7, :cond_41

    .line 63
    invoke-virtual {p0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 66
    :cond_41
    and-int/lit8 v7, v1, 0x1

    .line 68
    if-eqz v7, :cond_66

    .line 70
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    .line 73
    move-result-object v7

    .line 74
    if-eqz v7, :cond_51

    .line 76
    and-int/lit8 v8, p1, 0x1

    .line 78
    if-eqz v8, :cond_51

    .line 80
    move v8, v4

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move v8, v5

    .line 83
    :goto_52
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 85
    if-eqz v8, :cond_57

    .line 87
    goto :goto_5b

    .line 88
    :cond_57
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 91
    move-result-object v7

    .line 92
    :goto_5b
    invoke-virtual {v9, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 95
    goto :goto_66

    .line 96
    :cond_5f
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 98
    if-eqz v7, :cond_66

    .line 100
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 103
    :cond_66
    :goto_66
    and-int/lit8 v7, v1, 0x8

    .line 105
    if-eqz v7, :cond_b2

    .line 107
    and-int/lit8 v7, p1, 0x8

    .line 109
    const/4 v8, 0x2

    .line 110
    if-eqz v7, :cond_7c

    .line 112
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 115
    move-result v7

    .line 116
    if-ne v7, v8, :cond_78

    .line 118
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeMainContainerChildren()Z

    .line 121
    :cond_78
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    .line 124
    goto :goto_b2

    .line 125
    :cond_7c
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 127
    if-eqz v7, :cond_89

    .line 129
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 131
    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    .line 134
    move-result-object v7

    .line 135
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_89
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 140
    if-eqz v7, :cond_96

    .line 142
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 144
    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    :cond_96
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 153
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 155
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 158
    move-result v7

    .line 159
    and-int/lit8 v7, v7, 0x20

    .line 161
    if-nez v7, :cond_a9

    .line 163
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 165
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 168
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 170
    :cond_a9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 173
    move-result v7

    .line 174
    if-ne v7, v8, :cond_b2

    .line 176
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsToMainContainers()V

    .line 179
    :cond_b2
    :goto_b2
    and-int/lit8 v7, v1, 0x6

    .line 181
    if-eqz v7, :cond_f0

    .line 183
    iget v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 185
    and-int/2addr v7, v3

    .line 186
    if-eqz v7, :cond_bd

    .line 188
    move v7, v4

    .line 189
    goto :goto_be

    .line 190
    :cond_bd
    move v7, v5

    .line 191
    :goto_be
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 193
    if-eqz v8, :cond_ca

    .line 195
    invoke-virtual {v8}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getVisibility()I

    .line 198
    move-result v8

    .line 199
    if-nez v8, :cond_ca

    .line 201
    move v8, v4

    .line 202
    goto :goto_cb

    .line 203
    :cond_ca
    move v8, v5

    .line 204
    :goto_cb
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 206
    if-eqz v9, :cond_d6

    .line 208
    invoke-virtual {v9}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getVisibility()I

    .line 211
    move-result v9

    .line 212
    if-nez v9, :cond_d6

    .line 214
    move v8, v4

    .line 215
    :cond_d6
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 217
    if-eqz v9, :cond_f0

    .line 219
    if-nez v8, :cond_e4

    .line 221
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 224
    move-result v8

    .line 225
    and-int/lit8 v8, v8, 0x20

    .line 227
    if-eqz v8, :cond_f0

    .line 229
    :cond_e4
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 231
    if-nez v0, :cond_ed

    .line 233
    if-eqz v7, :cond_ec

    .line 235
    move v6, v5

    .line 236
    goto :goto_ed

    .line 237
    :cond_ec
    move v6, v3

    .line 238
    :cond_ed
    :goto_ed
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_f0
    and-int/lit8 v0, v1, 0x10

    .line 243
    if-eqz v0, :cond_106

    .line 245
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 247
    if-eqz v0, :cond_106

    .line 249
    and-int/lit8 v6, p1, 0x10

    .line 251
    if-eqz v6, :cond_103

    .line 253
    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 256
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addCustomView()V

    .line 259
    goto :goto_106

    .line 260
    :cond_103
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 263
    :cond_106
    :goto_106
    and-int/lit16 v0, v1, 0x2000

    .line 265
    if-eqz v0, :cond_16f

    .line 267
    and-int/lit16 v0, p1, 0x2000

    .line 269
    if-eqz v0, :cond_163

    .line 271
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 273
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 276
    move-result-object v0

    .line 277
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitchResId:I

    .line 279
    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 282
    move-result-object v0

    .line 283
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 285
    sget v1, Lmiuix/appcompat/R$id;->miuix_appcompat_navigator_switch_presenter:I

    .line 287
    new-instance v6, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    .line 289
    invoke-direct {v6, v0}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;-><init>(Landroid/view/View;)V

    .line 292
    invoke-virtual {v0, v1, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 297
    sget v1, Lmiuix/appcompat/R$id;->navigator_switch_inner:I

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 302
    move-result-object v0

    .line 303
    new-array v1, v4, [Landroid/view/View;

    .line 305
    aput-object v0, v1, v5

    .line 307
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 310
    move-result-object v1

    .line 311
    invoke-interface {v1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 314
    move-result-object v1

    .line 315
    const/high16 v6, 0x42700000  # 60.0f

    .line 317
    invoke-interface {v1, v6}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 320
    new-array v1, v4, [Landroid/view/View;

    .line 322
    aput-object v0, v1, v5

    .line 324
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 327
    move-result-object v0

    .line 328
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 331
    move-result-object v0

    .line 332
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 334
    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 337
    move-result-object v0

    .line 338
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 340
    new-array v5, v5, [Lmiuix/animation/base/AnimConfig;

    .line 342
    invoke-interface {v0, v1, v5}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 345
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 347
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 350
    iput-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    .line 352
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->fixTitleUpViewMargin()V

    .line 355
    goto :goto_16f

    .line 356
    :cond_163
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 358
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 361
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 363
    iput-boolean v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    .line 365
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->fixTitleUpViewMargin()V

    .line 368
    :cond_16f
    :goto_16f
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 371
    goto :goto_176

    .line 372
    :cond_173
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 375
    :goto_176
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 377
    if-eqz v0, :cond_1ac

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 382
    move-result v0

    .line 383
    if-nez v0, :cond_186

    .line 385
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 387
    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 390
    goto :goto_1ac

    .line 391
    :cond_186
    and-int/2addr p1, v3

    .line 392
    if-eqz p1, :cond_19b

    .line 394
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 396
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 398
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 401
    move-result-object v0

    .line 402
    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_up_description:I

    .line 404
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 411
    goto :goto_1ac

    .line 412
    :cond_19b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 414
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 416
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 419
    move-result-object v0

    .line 420
    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_home_description:I

    .line 422
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 425
    move-result-object v0

    .line 426
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 429
    :cond_1ac
    :goto_1ac
    return-void
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 10
    :cond_9
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6
    return-void
.end method

.method public setEmbeddedTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)V
    .registers 6

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    .line 8
    if-eqz v0, :cond_14

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setupTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)V

    .line 13
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 15
    const/4 p2, 0x2

    .line 16
    if-ne p1, p2, :cond_14

    .line 18
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer()V

    .line 21
    :cond_14
    return-void
.end method

.method public setEndActionMenuEnable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    .line 3
    return-void
.end method

.method public setEndActionMenuItemLimit(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuItemLimit:I

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setItemLimit(I)V

    .line 10
    :cond_9
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_7
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 10
    if-eqz p1, :cond_62

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v1, v0, [Landroid/view/View;

    .line 18
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v2, v1, v3

    .line 23
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 30
    move-result-object v1

    .line 31
    const/high16 v2, 0x3f800000  # 1.0f

    .line 33
    new-array v4, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 35
    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 38
    move-result-object v1

    .line 39
    const v2, 0x3f19999a  # 0.6f

    .line 42
    new-array v4, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 44
    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 47
    move-result-object v1

    .line 48
    new-array v2, v3, [Lmiuix/animation/base/AnimConfig;

    .line 50
    invoke-interface {v1, p1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 53
    new-array p1, v0, [Landroid/view/View;

    .line 55
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 57
    aput-object v1, p1, v3

    .line 59
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 66
    move-result-object p1

    .line 67
    const/high16 v1, 0x42700000  # 60.0f

    .line 69
    invoke-interface {p1, v1}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 72
    new-array p1, v0, [Landroid/view/View;

    .line 74
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 76
    aput-object v0, p1, v3

    .line 78
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 85
    move-result-object p1

    .line 86
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 88
    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 91
    move-result-object p1

    .line 92
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 94
    new-array v1, v3, [Lmiuix/animation/base/AnimConfig;

    .line 96
    invoke-interface {p1, v0, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 99
    :cond_62
    return-void
.end method

.method public bridge synthetic setExpandState(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(I)V

    return-void
.end method

.method public setExpandState(IZZ)V
    .registers 4

    if-nez p2, :cond_5

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->pendingCreateTitle()V

    .line 3
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZZ)V

    return-void
.end method

.method public setExtraPaddingPolicy(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 3
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .registers 3

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    goto :goto_d

    :cond_8
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_d
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 3
    :cond_8
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_d
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 3
    if-eqz v0, :cond_3e

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 13
    if-nez p1, :cond_15

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 21
    goto :goto_3e

    .line 22
    :cond_15
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 24
    and-int/lit8 p1, p1, 0x4

    .line 26
    if-eqz p1, :cond_2d

    .line 28
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v0

    .line 36
    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_up_description:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    goto :goto_3e

    .line 46
    :cond_2d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 48
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v0

    .line 54
    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_home_description:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_1d

    .line 3
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 5
    :cond_16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1d

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_1d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p1, :cond_34

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_34
    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLifecycleOwner:Landroidx/lifecycle/m;

    .line 3
    return-void
.end method

.method public setLogo(I)V
    .registers 3

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 2
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_17

    .line 3
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_17

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_17
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 14
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 19
    if-eqz v0, :cond_19

    .line 21
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 23
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 26
    :cond_19
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 28
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeMenuViewFromOldParent(Landroid/view/View;)V

    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 33
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeMenuViewFromOldParent(Landroid/view/View;)V

    .line 36
    const/4 v0, 0x0

    .line 37
    if-eqz p1, :cond_bd

    .line 39
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 41
    if-nez v1, :cond_30

    .line 43
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    .line 45
    if-nez v1, :cond_30

    .line 47
    goto/16 :goto_bd

    .line 49
    :cond_30
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->divideMenuByGroup(Landroid/view/Menu;)Landroid/util/Pair;

    .line 52
    move-result-object p1

    .line 53
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 55
    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 57
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 59
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 61
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 63
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 65
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 67
    const/4 v1, 0x1

    .line 68
    if-eqz p1, :cond_88

    .line 70
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 72
    if-nez p1, :cond_55

    .line 74
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 80
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandedActionViewMenuPresenter()Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 86
    :cond_55
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 88
    if-eqz p1, :cond_6d

    .line 90
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 92
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 95
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 97
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 99
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 102
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 104
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionalIconsVisible:Z

    .line 106
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setForceShowOptionalIcon(Z)V

    .line 109
    goto :goto_7b

    .line 110
    :cond_6d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 112
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p1, v2, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 117
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 119
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p1, v2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 124
    :goto_7b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 126
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    .line 129
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 131
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 134
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSplitMenuView()V

    .line 137
    :cond_88
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    .line 139
    if-eqz p1, :cond_b6

    .line 141
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 143
    if-eqz p1, :cond_b6

    .line 145
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 148
    move-result p1

    .line 149
    if-lez p1, :cond_b6

    .line 151
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 153
    if-nez p1, :cond_a0

    .line 155
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createEndActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 161
    :cond_a0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 163
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 165
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 168
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 170
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionalIconsVisible:Z

    .line 172
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setForceShowOptionalIcon(Z)V

    .line 175
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 177
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    .line 180
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addEndMenuView()V

    .line 183
    :cond_b6
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBadgeOnMenuItemViews()V

    .line 186
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    .line 189
    return-void

    .line 190
    :cond_bd
    :goto_bd
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 192
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 194
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 196
    return-void
.end method

.method public setNavigationMode(I)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 3
    if-eq p1, v0, :cond_33

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_8

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    :cond_f
    :goto_f
    if-eqz p1, :cond_27

    .line 18
    if-eq p1, v1, :cond_1f

    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p1, v0, :cond_17

    .line 23
    goto :goto_2e

    .line 24
    :cond_17
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    .line 26
    if-eqz v0, :cond_2e

    .line 28
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer()V

    .line 31
    goto :goto_2e

    .line 32
    :cond_1f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 34
    const-string v0, "MIUIX Deleted"

    .line 36
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1

    .line 40
    :cond_27
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    .line 42
    if-eqz v0, :cond_2e

    .line 44
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeTabsFromContainer()V

    .line 47
    :cond_2e
    :goto_2e
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 52
    :cond_33
    return-void
.end method

.method public bridge synthetic setPendingInset(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setPendingInset(Landroid/graphics/Rect;)V

    .line 4
    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 1
    add-int/lit8 p1, p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    .line 6
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 p1, -0x3

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 p1, -0x4

    .line 6
    :goto_5
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    .line 9
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 p1, -0x2

    .line 6
    :goto_5
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    .line 9
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 p1, -0x2

    .line 6
    :goto_5
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    .line 9
    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setResizable(Z)V

    .line 4
    return-void
.end method

.method public setSplitActionBar(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 3
    if-eq v0, p1, :cond_6f

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 7
    if-eqz v0, :cond_33

    .line 9
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeMenuViewFromOldParent(Landroid/view/View;)V

    .line 12
    if-eqz p1, :cond_20

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 16
    if-eqz v0, :cond_16

    .line 18
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    :cond_16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, -0x1

    .line 30
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32
    goto :goto_2e

    .line 33
    :cond_20
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    move-result-object v0

    .line 44
    const/4 v1, -0x2

    .line 45
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    :goto_2e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 52
    :cond_33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz v0, :cond_41

    .line 57
    if-eqz p1, :cond_3c

    .line 59
    move v2, v1

    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    const/16 v2, 0x8

    .line 63
    :goto_3e
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 66
    :cond_41
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 68
    if-eqz v0, :cond_6c

    .line 70
    if-nez p1, :cond_55

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object v1

    .line 76
    sget v2, Lmiuix/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    .line 78
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 85
    goto :goto_6c

    .line 86
    :cond_55
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 89
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 102
    move-result-object v1

    .line 103
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 105
    const/4 v2, 0x1

    .line 106
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 109
    :cond_6c
    :goto_6c
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 112
    :cond_6f
    return-void
.end method

.method public bridge synthetic setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    .line 4
    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_7
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_66

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    .line 19
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->fixTitleUpViewMargin()V

    .line 22
    new-array v2, v1, [Landroid/view/View;

    .line 24
    aput-object p1, v2, v0

    .line 26
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 33
    move-result-object v2

    .line 34
    const/high16 v3, 0x3f800000  # 1.0f

    .line 36
    new-array v4, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 38
    invoke-interface {v2, v3, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 41
    move-result-object v2

    .line 42
    const v3, 0x3f19999a  # 0.6f

    .line 45
    new-array v4, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 47
    invoke-interface {v2, v3, v4}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 50
    move-result-object v2

    .line 51
    new-array v3, v0, [Lmiuix/animation/base/AnimConfig;

    .line 53
    invoke-interface {v2, p1, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 56
    new-array p1, v1, [Landroid/view/View;

    .line 58
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 60
    aput-object v2, p1, v0

    .line 62
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 69
    move-result-object p1

    .line 70
    const/high16 v2, 0x42700000  # 60.0f

    .line 72
    invoke-interface {p1, v2}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 75
    new-array p1, v1, [Landroid/view/View;

    .line 77
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 79
    aput-object v1, p1, v0

    .line 81
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 88
    move-result-object p1

    .line 89
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 91
    invoke-interface {p1, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 94
    move-result-object p1

    .line 95
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 97
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 99
    invoke-interface {p1, v1, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 102
    goto :goto_6b

    .line 103
    :cond_66
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    .line 105
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->fixTitleUpViewMargin()V

    .line 108
    :goto_6b
    return-void
.end method

.method public bridge synthetic setSubTitleClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSubTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 17
    :cond_10
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    .line 20
    move-result p1

    .line 21
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 24
    new-instance p1, Lmiuix/appcompat/internal/app/widget/e;

    .line 26
    const/4 v0, 0x3

    .line 27
    invoke-direct {p1, p0, v0}, Lmiuix/appcompat/internal/app/widget/e;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserTitle:Z

    .line 4
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 7
    return-void
.end method

.method public setTitleClickable(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setTitleClickable(Z)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setAllTitlesClickable(Z)V

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setAllTitlesClickable(Z)V

    .line 18
    :cond_11
    return-void
.end method

.method public setTitleVisible(ZZ)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapsedTitleVisible:Z

    .line 3
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitleVisible:Z

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setVisible(Z)V

    .line 12
    :cond_b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 14
    if-eqz p1, :cond_12

    .line 16
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisible(Z)V

    .line 19
    :cond_12
    return-void
.end method

.method public setUserSetEndActionMenuItemLimit(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserSetEndActionMenuItemLimit:Z

    .line 3
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setVisibility(I)V

    .line 4
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 3
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserTitle:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 8
    :cond_7
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public showBottomMenuCustomView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->showBottomMenuCustomView()V

    .line 12
    :cond_b
    return-void
.end method

.method public showEndOverflowMenu()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLifecycleOwner:Landroidx/lifecycle/m;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_14

    .line 6
    invoke-interface {v0}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v0, v1

    .line 22
    :goto_15
    if-eqz v0, :cond_22

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 26
    if-eqz v0, :cond_22

    .line 28
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_22

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 v1, 0x0

    .line 36
    :goto_23
    return v1
.end method

.method public bridge synthetic showOverflowMenu()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->showOverflowMenu()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public updateExpandStateOnLayout()Z
    .registers 7

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eq v0, v2, :cond_7

    .line 7
    return v1

    .line 8
    :cond_7
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 10
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v2, :cond_10

    .line 15
    move v0, v1

    .line 16
    goto :goto_1c

    .line 17
    :cond_10
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    move-result v4

    .line 23
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 25
    add-int/2addr v4, v5

    .line 26
    if-ne v2, v4, :cond_1c

    .line 28
    move v0, v3

    .line 29
    :cond_1c
    :goto_1c
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 31
    if-eq v2, v0, :cond_25

    .line 33
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 35
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    .line 37
    return v3

    .line 38
    :cond_25
    return v1
.end method
