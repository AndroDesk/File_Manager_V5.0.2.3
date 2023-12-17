.class public Lmiuix/navigator/MiuixNavigationLayout;
.super Landroid/view/ViewGroup;
.source "MiuixNavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final TAG:Ljava/lang/String; = "MiuixNavigationLayout"

.field public static final TAG_SECONDARY_ON_TOP:Ljava/lang/String; = "secondaryOnTop"


# instance fields
.field private hasAnimate:Z

.field private final mAlphaHideAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private final mAlphaShowAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private final mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

.field private mBackground:Landroid/widget/FrameLayout;

.field private mBackgroundView:Landroid/view/View;

.field private mBlurRadius:I

.field private mBottomNavigation:Lmiuix/navigator/BottomNavigation;

.field private mBottomNavigationHeight:I

.field private mContentAnimFinished:Z

.field private final mContentCloseTag:Ljava/lang/String;

.field private mContentDecor:Landroid/widget/FrameLayout;

.field private mContentExpandedMaxWidthDp:I

.field private mContentMask:Landroid/view/View;

.field private mContentMaxWidthInListMode:I

.field private mContentMinWidthInRegular:I

.field private mContentMinWidthInRegularTypedValue:Landroid/util/TypedValue;

.field private mContentOpen:Z

.field private final mContentOpenTag:Ljava/lang/String;

.field private mContentParent:Landroid/widget/FrameLayout;

.field private final mContentSwitch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/navigator/SwitchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentUpMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mContentViewAfterSwitchOffset:I

.field private mContentWidth:I

.field private mDeviceType:I

.field private mDivider:Landroid/view/View;

.field private mEditingMode:Z

.field private mFlush:Z

.field private mMode:Lmiuix/navigator/Navigator$Mode;

.field private final mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mNavigationAnimFinished:Z

.field private final mNavigationCloseTag:Ljava/lang/String;

.field private mNavigationDecor:Landroid/widget/FrameLayout;

.field private mNavigationDivider:Landroid/view/View;

.field private mNavigationEditMask:Landroid/view/View;

.field private mNavigationMask:Landroid/view/View;

.field private mNavigationOpen:Z

.field private final mNavigationOpenTag:Ljava/lang/String;

.field private mNavigationSwitch:Landroid/view/View;

.field private mNavigationWidth:I

.field private mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

.field private mNavigatorStateListener:Lmiuix/navigator/Navigator$NavigatorStateListener;

.field private mNotifiedContentVisibility:I
    .annotation build Lmiuix/navigator/Visibility;
    .end annotation
.end field

.field private mNotifiedNavigationVisibility:I
    .annotation build Lmiuix/navigator/Visibility;
    .end annotation
.end field

.field private mNotifiedSecondaryContentVisibility:I
    .annotation build Lmiuix/navigator/Visibility;
    .end annotation
.end field

.field private final mOnBottomNavigationHeightChange:Landroid/view/View$OnLayoutChangeListener;

.field private final mOthersTag:Ljava/lang/String;

.field private mOverlay:Z

.field private final mOverlayMaskDragOnTrigger:Lmiuix/navigator/draganddrop/DragOnTrigger;

.field private final mOverlayMaskOnClick:Landroid/view/View$OnClickListener;

.field private mOverlaySwitchEnabled:Z

.field private mPadding:I

.field private mPendingAddBottomNavigation:Z

.field private mSecondaryContentDecor:Landroid/widget/FrameLayout;

.field private mSecondaryContentMask:Landroid/view/View;

.field private mSecondaryContentReady:Z

.field private final mSecondaryContentSwitch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/navigator/SwitchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryOnTop:Z

.field private mSecondaryOnTopNow:Z

.field private mShowBothContent:Z

.field private mSplitAnimationStyle:I

.field private final mStateStyle:Lmiuix/animation/IStateStyle;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWindowWidth:I

.field private mWindowWidthDp:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    .line 6
    const v1, 0x3f733333  # 0.95f

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 12
    move-result-object v0

    .line 13
    const v1, 0x3ecccccd  # 0.4f

    .line 16
    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lmiuix/navigator/MiuixNavigationLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/navigator/MiuixNavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/navigator/R$attr;->navigatorLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/navigator/MiuixNavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPendingAddBottomNavigation:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegularTypedValue:Landroid/util/TypedValue;

    .line 7
    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    .line 8
    new-instance v2, Lmiuix/navigator/e;

    invoke-direct {v2, p0, v0}, Lmiuix/navigator/e;-><init>(Lmiuix/navigator/MiuixNavigationLayout;I)V

    iput-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlayMaskOnClick:Landroid/view/View$OnClickListener;

    .line 9
    new-instance v2, Lmiuix/navigator/draganddrop/DragOnTrigger;

    new-instance v3, Lmiuix/navigator/f;

    invoke-direct {v3, p0, v0}, Lmiuix/navigator/f;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Lmiuix/navigator/draganddrop/DragOnTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlayMaskDragOnTrigger:Lmiuix/navigator/draganddrop/DragOnTrigger;

    .line 10
    new-instance v2, Lmiuix/navigator/MiuixNavigationLayout$1;

    invoke-direct {v2, p0}, Lmiuix/navigator/MiuixNavigationLayout$1;-><init>(Lmiuix/navigator/MiuixNavigationLayout;)V

    iput-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOnBottomNavigationHeightChange:Landroid/view/View$OnLayoutChangeListener;

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentSwitch:Ljava/util/List;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentSwitch:Ljava/util/List;

    const/4 v2, 0x1

    .line 13
    iput-boolean v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlaySwitchEnabled:Z

    const-string v3, "NAVIGATION_OPEN"

    .line 14
    iput-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpenTag:Ljava/lang/String;

    const-string v3, "NAVIGATION_CLOSE"

    .line 15
    iput-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationCloseTag:Ljava/lang/String;

    const-string v3, "CONTENT_OPEN"

    .line 16
    iput-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpenTag:Ljava/lang/String;

    const-string v3, "CONTENT_CLOSE"

    .line 17
    iput-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentCloseTag:Ljava/lang/String;

    const-string v3, "OTHERS"

    .line 18
    iput-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOthersTag:Ljava/lang/String;

    .line 19
    iput-boolean v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mFlush:Z

    .line 20
    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSplitAnimationStyle:I

    const/16 v3, 0x32

    .line 21
    iput v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBlurRadius:I

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 23
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDeviceType:I

    .line 24
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v4

    .line 25
    iget-object v5, v4, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidthDp:I

    .line 26
    iget-object v4, v4, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidth:I

    .line 27
    sget v4, Lmiuix/navigator/R$dimen;->miuix_navigator_navigation_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    .line 28
    sget v4, Lmiuix/navigator/R$dimen;->miuix_navigator_content_max_width_in_list_mode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMaxWidthInListMode:I

    .line 29
    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiuix/navigator/R$dimen;->miuix_navigator_content_view_after_switch_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentViewAfterSwitchOffset:I

    .line 31
    sget-object v4, Lmiuix/navigator/R$styleable;->MiuixNavigationLayout:[I

    sget v5, Lmiuix/navigator/R$style;->Miuix_Navigator_Layout:I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 32
    sget p2, Lmiuix/navigator/R$styleable;->MiuixNavigationLayout_navigatorCrossBackground:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 33
    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationLayout_navigatorContentMinWidthInRegular:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 34
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iput-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegularTypedValue:Landroid/util/TypedValue;

    .line 35
    invoke-virtual {p1, p3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 36
    iget-object p3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegularTypedValue:Landroid/util/TypedValue;

    iget v4, p3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_bb

    .line 37
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegular:I

    goto :goto_c6

    .line 38
    :cond_bb
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegular:I

    .line 39
    :cond_c6
    :goto_c6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_ce

    .line 40
    invoke-virtual {p0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->setCrossBackground(I)V

    .line 41
    :cond_ce
    new-instance p1, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-direct {p1, p0, v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;-><init>(Lmiuix/navigator/MiuixNavigationLayout;Lmiuix/navigator/MiuixNavigationLayout$1;)V

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 42
    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    .line 43
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p2, 0x2

    new-array p3, p2, [F

    fill-array-data p3, :array_144

    const/4 v1, -0x2

    .line 44
    invoke-static {v1, p3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p3

    invoke-virtual {p1, p3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    new-array p3, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lmiuix/navigator/MiuixNavigationLayout$2;

    invoke-direct {v3, p0}, Lmiuix/navigator/MiuixNavigationLayout$2;-><init>(Lmiuix/navigator/MiuixNavigationLayout;)V

    aput-object v3, p3, v0

    .line 45
    invoke-virtual {p1, p3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 46
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array p2, p2, [F

    fill-array-data p2, :array_14c

    .line 47
    invoke-static {v1, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentUpMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 48
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/16 p2, 0xa

    new-array p3, v2, [F

    const/high16 v1, 0x43af0000  # 350.0f

    aput v1, p3, v0

    .line 49
    invoke-static {p2, p3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAlphaShowAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 50
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p2, 0x4

    new-array p3, v2, [F

    const/high16 v1, 0x42700000  # 60.0f

    aput v1, p3, v0

    .line 51
    invoke-static {p2, p3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAlphaHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    return-void

    :array_144
    .array-data 4
        0x3f733333  # 0.95f
        0x3ecccccd  # 0.4f
    .end array-data

    :array_14c
    .array-data 4
        0x3f733333  # 0.95f
        0x3e19999a  # 0.15f
    .end array-data
.end method

.method public static synthetic a(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->lambda$addSecondaryContentSwitch$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/MiuixNavigationLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lmiuix/navigator/MiuixNavigationLayout;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/NavigatorFragmentListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mFlush:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1200(Lmiuix/navigator/MiuixNavigationLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationAnimFinished:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1202(Lmiuix/navigator/MiuixNavigationLayout;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationAnimFinished:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1300(Lmiuix/navigator/MiuixNavigationLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->hasAnimate:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->hasAnimate:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1400(Lmiuix/navigator/MiuixNavigationLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentAnimFinished:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1402(Lmiuix/navigator/MiuixNavigationLayout;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentAnimFinished:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    .line 3
    return p0
.end method

.method public static synthetic access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    .line 3
    return p0
.end method

.method public static synthetic access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorStateListener:Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lmiuix/navigator/MiuixNavigationLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1900(Lmiuix/navigator/MiuixNavigationLayout;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->sectionAnimateDetailContent()V

    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->onAnimateMaskEnd(Landroid/view/View;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$2500(Lmiuix/navigator/MiuixNavigationLayout;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->updateContentWidth(F)V

    .line 4
    return-void
.end method

.method public static synthetic access$2600(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2700(Lmiuix/navigator/MiuixNavigationLayout;ZZ)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->notifyNavigationVisible(ZZ)V

    .line 4
    return-void
.end method

.method public static synthetic access$2800(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2900(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/navigator/MiuixNavigationLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSplitAnimationStyle:I

    .line 3
    return p0
.end method

.method public static synthetic access$3000(Lmiuix/navigator/MiuixNavigationLayout;ZZ)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->setContentVisible(ZZ)V

    .line 4
    return-void
.end method

.method public static synthetic access$3100(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3200(Lmiuix/navigator/MiuixNavigationLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    .line 3
    return p0
.end method

.method public static synthetic access$3300(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDivider:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3400(Lmiuix/navigator/MiuixNavigationLayout;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateDividers()V

    .line 4
    return-void
.end method

.method public static synthetic access$3500(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationSwitch:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3600(Lmiuix/navigator/MiuixNavigationLayout;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentSwitch:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3700(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Iterable;Ll0/a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->forAllSwitch(Ljava/lang/Iterable;Ll0/a;)V

    .line 4
    return-void
.end method

.method public static synthetic access$3800(Lmiuix/navigator/MiuixNavigationLayout;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentSwitch:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpenCloseAnimation(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->isContentOpenCloseAnimation(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$800(Lmiuix/navigator/MiuixNavigationLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBlurRadius:I

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 3
    return-object p0
.end method

.method private addBottomNavigation()V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    .line 4
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 21
    const v2, 0x1020002

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-nez v1, :cond_21

    .line 31
    iput-boolean v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPendingAddBottomNavigation:Z

    .line 33
    return-void

    .line 34
    :cond_21
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/view/ViewGroup;

    .line 40
    if-eqz v0, :cond_32

    .line 42
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 44
    invoke-interface {v4}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    :cond_32
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 54
    move-result v0

    .line 55
    add-int/2addr v0, v2

    .line 56
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    const/4 v2, -0x1

    .line 59
    const/4 v4, -0x2

    .line 60
    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    const/16 v2, 0x50

    .line 65
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 69
    invoke-interface {v2}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v3, v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 78
    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOnBottomNavigationHeightChange:Landroid/view/View$OnLayoutChangeListener;

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 87
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    .line 89
    if-eqz v0, :cond_5d

    .line 91
    invoke-interface {v0}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationPrepared()V

    .line 94
    :cond_5d
    return-void
.end method

.method public static synthetic b(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->lambda$addContentSwitch$3(Landroid/view/View;)V

    return-void
.end method

.method private canAccessContent()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 3
    sget-object v1, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    .line 5
    if-eq v0, v1, :cond_d

    .line 7
    sget-object v1, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    .line 9
    if-ne v0, v1, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method private canAccessNavigation()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 3
    sget-object v1, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    .line 5
    if-eq v0, v1, :cond_d

    .line 7
    sget-object v1, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 9
    if-ne v0, v1, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method private createAndAddNavigationEditMask()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 3
    if-nez v0, :cond_20

    .line 5
    new-instance v0, Landroid/view/View;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 16
    const/high16 v1, -0x1000000

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 27
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 33
    :cond_20
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_39

    .line 41
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 43
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    .line 45
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 48
    move-result v1

    .line 49
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 51
    const/4 v3, -0x1

    .line 52
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 55
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :cond_39
    return-void
.end method

.method public static synthetic d(Lmiuix/navigator/MiuixNavigationLayout;Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/MiuixNavigationLayout;->lambda$sectionAnimateDetailContent$5(Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private doMask(Landroid/view/View;ZZ)V
    .registers 6

    .line 1
    if-eqz p2, :cond_6

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_6
    const v0, 0x3e99999a  # 0.3f

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p3, :cond_17

    .line 13
    if-eqz p2, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v0, v1

    .line 17
    :goto_10
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 20
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->onAnimateMaskEnd(Landroid/view/View;Z)V

    .line 23
    return-void

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 27
    move-result-object p3

    .line 28
    if-eqz p2, :cond_1e

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v0, v1

    .line 32
    :goto_1f
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 35
    move-result-object p3

    .line 36
    if-eqz p2, :cond_28

    .line 38
    const-wide/16 v0, 0x12c

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    const-wide/16 v0, 0xfa

    .line 43
    :goto_2a
    invoke-virtual {p3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 46
    move-result-object p3

    .line 47
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 49
    const/high16 v1, 0x3fc00000  # 1.5f

    .line 51
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 54
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 57
    move-result-object p3

    .line 58
    new-instance v0, Lmiuix/navigator/MiuixNavigationLayout$3;

    .line 60
    invoke-direct {v0, p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout$3;-><init>(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;Z)V

    .line 63
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 70
    return-void
.end method

.method public static synthetic e(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->lambda$setNavigationSwitch$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lmiuix/navigator/MiuixNavigationLayout;Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lmiuix/navigator/MiuixNavigationLayout;->lambda$sectionAnimateDetailContent$6(Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private folmeTo(Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_19

    .line 1
    new-instance p4, Lmiuix/animation/controller/AnimState;

    const-string v2, "OTHERS"

    invoke-direct {p4, v2, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Z)V

    float-to-double v2, p2

    .line 2
    invoke-virtual {p4, p1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 3
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-array p2, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p3, p2, v0

    invoke-interface {p1, p4, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_29

    .line 4
    :cond_19
    iget-object p3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-interface {p3, p4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_29
    return-void
.end method

.method private folmeTo(Ljava/lang/Object;Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p5, :cond_1b

    .line 5
    iget-object p5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v2

    const/4 p1, 0x3

    aput-object p4, v3, p1

    invoke-interface {p5, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_2a

    .line 6
    :cond_1b
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p4, v0

    invoke-interface {p1, p4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_2a
    return-void
.end method

.method private forAllSwitch(Ljava/lang/Iterable;Ll0/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lmiuix/navigator/SwitchInfo;",
            ">;",
            "Ll0/a<",
            "Lmiuix/navigator/SwitchInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_14

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lmiuix/navigator/SwitchInfo;

    .line 17
    invoke-interface {p2, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 20
    goto :goto_4

    .line 21
    :cond_14
    return-void
.end method

.method public static synthetic g(Lmiuix/navigator/MiuixNavigationLayout;Lmiuix/navigator/SwitchInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->lambda$updateContentSwitch$1(Lmiuix/navigator/SwitchInfo;)V

    return-void
.end method

.method private static getFragmentVisibility(IZ)I
    .registers 2
    .annotation build Lmiuix/navigator/Visibility;
    .end annotation

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    or-int/2addr p0, p1

    return p0
.end method

.method private static getFragmentVisibility(ZZZ)I
    .registers 3
    .annotation build Lmiuix/navigator/Visibility;
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 p0, 0x2

    .line 4
    goto :goto_9

    .line 5
    :cond_4
    if-eqz p0, :cond_8

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p0, 0x0

    .line 10
    :goto_9
    invoke-static {p0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(IZ)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private isBottomNavigationEnable()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method private isContentOpenCloseAnimation(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    const-string v0, "CONTENT_CLOSE"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_13

    .line 9
    const-string v0, "CONTENT_OPEN"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 21
    :goto_14
    return p1
.end method

.method private isNavigationOpenCloseAnimation(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    const-string v0, "NAVIGATION_CLOSE"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_13

    .line 9
    const-string v0, "NAVIGATION_OPEN"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 21
    :goto_14
    return p1
.end method

.method private synthetic lambda$addContentSwitch$3(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->openNavigation()V

    .line 4
    return-void
.end method

.method private synthetic lambda$addSecondaryContentSwitch$4(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->openNavigation()V

    .line 4
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->closeNavigation()V

    .line 4
    return-void
.end method

.method private synthetic lambda$sectionAnimateDetailContent$5(Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p1

    .line 11
    int-to-float p2, p2

    .line 12
    const/high16 p4, 0x3f800000  # 1.0f

    .line 14
    sub-float/2addr p4, p1

    .line 15
    mul-float/2addr p4, p2

    .line 16
    const/high16 p1, 0x3f000000  # 0.5f

    .line 18
    mul-float/2addr p4, p1

    .line 19
    float-to-int p1, p4

    .line 20
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    iget-object p4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 28
    sget-object v0, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    .line 30
    if-ne p4, v0, :cond_25

    .line 32
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isContentOpen()Z

    .line 35
    move-result p4

    .line 36
    if-eqz p4, :cond_31

    .line 38
    :cond_25
    iget-object p4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 40
    sget-object v0, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 42
    if-ne p4, v0, :cond_36

    .line 44
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpen()Z

    .line 47
    move-result p4

    .line 48
    if-nez p4, :cond_36

    .line 50
    :cond_31
    iget p4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPadding:I

    .line 52
    if-ge p1, p4, :cond_36

    .line 54
    move p1, p4

    .line 55
    :cond_36
    const/4 p4, 0x0

    .line 56
    invoke-virtual {p3, p1, p4, p1, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    const/4 p1, -0x1

    .line 60
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 62
    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method

.method private synthetic lambda$sectionAnimateDetailContent$6(Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p1

    .line 11
    int-to-float p2, p2

    .line 12
    const/high16 p5, 0x3f800000  # 1.0f

    .line 14
    sub-float/2addr p5, p1

    .line 15
    mul-float/2addr p5, p2

    .line 16
    const/high16 p1, 0x3f000000  # 0.5f

    .line 18
    mul-float/2addr p5, p1

    .line 19
    float-to-int p1, p5

    .line 20
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpen()Z

    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1e

    .line 26
    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPadding:I

    .line 28
    if-ge p1, p2, :cond_1e

    .line 30
    move p1, p2

    .line 31
    :cond_1e
    const/4 p2, 0x0

    .line 32
    invoke-virtual {p3, p1, p2, p1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 35
    const/4 p1, -0x1

    .line 36
    iput p1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 38
    invoke-virtual {p3, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    return-void
.end method

.method private synthetic lambda$setNavigationSwitch$2(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->closeNavigation()V

    .line 4
    return-void
.end method

.method private synthetic lambda$updateContentSwitch$1(Lmiuix/navigator/SwitchInfo;)V
    .registers 3

    .line 1
    iget-object p1, p1, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    .line 3
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlaySwitchEnabled:Z

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    return-void
.end method

.method private maybeClearInputFocus(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "input_method"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 24
    return-void
.end method

.method private notifyContentMasked(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 v0, 0x4

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 11
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 15
    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(IZ)I

    .line 18
    move-result p1

    .line 19
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    .line 21
    if-eq v0, p1, :cond_1b

    .line 23
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    .line 25
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onContentVisibilityChanged(I)V

    .line 28
    :cond_1b
    return-void
.end method

.method private notifyContentVisible(ZZ)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    .line 3
    and-int/lit8 v0, v0, 0x4

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
    invoke-static {p1, p2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(ZZZ)I

    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    .line 16
    if-eq p2, p1, :cond_16

    .line 18
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    .line 20
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onContentVisibilityChanged(I)V

    .line 23
    :cond_16
    return-void
.end method

.method private notifyNavigationMasked(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 v0, 0x4

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 11
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 15
    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(IZ)I

    .line 18
    move-result p1

    .line 19
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    .line 21
    if-eq v0, p1, :cond_1b

    .line 23
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    .line 25
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigationVisibilityChanged(I)V

    .line 28
    :cond_1b
    return-void
.end method

.method private notifyNavigationVisible(ZZ)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    .line 3
    and-int/lit8 v0, v0, 0x4

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
    invoke-static {p1, p2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(ZZZ)I

    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    .line 16
    if-eq p2, p1, :cond_16

    .line 18
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    .line 20
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigationVisibilityChanged(I)V

    .line 23
    :cond_16
    return-void
.end method

.method private notifySecondaryContentMasked(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 v0, 0x4

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 11
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 15
    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(IZ)I

    .line 18
    move-result p1

    .line 19
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    .line 21
    if-eq v0, p1, :cond_1b

    .line 23
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    .line 25
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onSecondaryContentVisibilityChanged(I)V

    .line 28
    :cond_1b
    return-void
.end method

.method private notifySecondaryContentVisible(ZZ)V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    .line 3
    and-int/lit8 v0, v0, 0x4

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
    invoke-static {p1, p2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(ZZZ)I

    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    .line 16
    if-eq p2, p1, :cond_16

    .line 18
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    .line 20
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onSecondaryContentVisibilityChanged(I)V

    .line 23
    :cond_16
    return-void
.end method

.method private onAnimateMaskEnd(Landroid/view/View;Z)V
    .registers 3

    .line 1
    if-nez p2, :cond_11

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_11

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :cond_11
    return-void
.end method

.method private onBottomNavigationChanged(Z)V
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isBottomNavigationEnable()Z

    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_1b

    .line 12
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 14
    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1b

    .line 24
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->removeBottomNavigation()V

    .line 27
    goto :goto_7b

    .line 28
    :cond_1b
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isBottomNavigationEnable()Z

    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_7b

    .line 34
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 36
    if-eqz p1, :cond_7b

    .line 38
    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_32

    .line 48
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->addBottomNavigation()V

    .line 51
    :cond_32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 62
    move-result-object p1

    .line 63
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 68
    move-result v0

    .line 69
    int-to-float v0, v0

    .line 70
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    .line 73
    move-result p1

    .line 74
    sget-object v0, Lmiuix/navigator/MiuixNavigationLayout$4;->$SwitchMap$miuix$navigator$Navigator$Mode:[I

    .line 76
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 81
    move-result v1

    .line 82
    aget v0, v0, v1

    .line 84
    const/4 v1, 0x0

    .line 85
    const/4 v2, 0x1

    .line 86
    if-eq v0, v2, :cond_61

    .line 88
    const/4 p1, 0x2

    .line 89
    if-eq v0, p1, :cond_5b

    .line 91
    goto :goto_7b

    .line 92
    :cond_5b
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 94
    invoke-interface {p1, v1}, Lmiuix/navigator/BottomNavigation;->setLayoutStyle(I)V

    .line 97
    goto :goto_7b

    .line 98
    :cond_61
    const/16 v0, 0x3c0

    .line 100
    if-lt p1, v0, :cond_6c

    .line 102
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 104
    const/4 v0, 0x3

    .line 105
    invoke-interface {p1, v0}, Lmiuix/navigator/BottomNavigation;->setLayoutStyle(I)V

    .line 108
    goto :goto_7b

    .line 109
    :cond_6c
    const/16 v0, 0x29e

    .line 111
    if-le p1, v0, :cond_76

    .line 113
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 115
    invoke-interface {p1, v2}, Lmiuix/navigator/BottomNavigation;->setLayoutStyle(I)V

    .line 118
    goto :goto_7b

    .line 119
    :cond_76
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 121
    invoke-interface {p1, v1}, Lmiuix/navigator/BottomNavigation;->setLayoutStyle(I)V

    .line 124
    :cond_7b
    :goto_7b
    return-void
.end method

.method private onContentVisibilityChanged(I)V
    .registers 3
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onContentVisibilityChanged(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private onNavigationVisibilityChanged(I)V
    .registers 3
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onNavigationVisibilityChanged(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private onNavigatorChanged(Z)V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    .line 4
    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 6
    iput-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 8
    iget v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidthDp:I

    .line 10
    const/4 v3, 0x1

    .line 11
    const/16 v4, 0x29e

    .line 13
    if-gt v2, v4, :cond_12

    .line 15
    iput-boolean v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 17
    move v2, v0

    .line 18
    goto :goto_54

    .line 19
    :cond_12
    const/16 v4, 0x3c0

    .line 21
    if-lt v2, v4, :cond_21

    .line 23
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    .line 26
    move-result v2

    .line 27
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessContent()Z

    .line 30
    move-result v4

    .line 31
    iput-boolean v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    .line 33
    goto :goto_54

    .line 34
    :cond_21
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_29

    .line 40
    move v2, v0

    .line 41
    goto :goto_4e

    .line 42
    :cond_29
    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 44
    sget-object v4, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    .line 46
    if-ne v2, v4, :cond_3a

    .line 48
    iget v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDeviceType:I

    .line 50
    const/4 v4, 0x3

    .line 51
    if-ne v2, v4, :cond_36

    .line 53
    move v2, v0

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v2, v3

    .line 56
    :goto_37
    iput-boolean v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 58
    goto :goto_4e

    .line 59
    :cond_3a
    iget v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidth:I

    .line 61
    iget v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    .line 63
    sub-int/2addr v2, v4

    .line 64
    int-to-float v2, v2

    .line 65
    const v4, 0x3ee66666  # 0.45f

    .line 68
    mul-float/2addr v2, v4

    .line 69
    iget v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegular:I

    .line 71
    int-to-float v4, v4

    .line 72
    cmpg-float v2, v2, v4

    .line 74
    if-gez v2, :cond_4d

    .line 76
    iput-boolean v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 78
    :cond_4d
    move v2, v3

    .line 79
    :goto_4e
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessContent()Z

    .line 82
    move-result v4

    .line 83
    iput-boolean v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    .line 85
    :goto_54
    iget-boolean v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    .line 87
    if-nez v4, :cond_5e

    .line 89
    iget-boolean v5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTop:Z

    .line 91
    if-eqz v5, :cond_5e

    .line 93
    move v5, v3

    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    move v5, v0

    .line 96
    :goto_5f
    if-nez p1, :cond_6a

    .line 98
    iget-boolean v6, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    .line 100
    if-nez v6, :cond_6a

    .line 102
    if-nez v4, :cond_68

    .line 104
    goto :goto_6a

    .line 105
    :cond_68
    move v4, v0

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    :goto_6a
    move v4, v3

    .line 108
    :goto_6b
    if-nez v2, :cond_78

    .line 110
    iput-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    .line 112
    invoke-direct {p0, v0, v4, v0}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    .line 115
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 117
    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    .line 120
    goto :goto_97

    .line 121
    :cond_78
    if-nez p1, :cond_7e

    .line 123
    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 125
    if-eq v1, p1, :cond_97

    .line 127
    :cond_7e
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 129
    invoke-static {p1, v0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2002(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;Z)Z

    .line 132
    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 134
    if-eqz p1, :cond_8e

    .line 136
    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    .line 138
    if-eqz p1, :cond_8c

    .line 140
    goto :goto_8e

    .line 141
    :cond_8c
    move p1, v0

    .line 142
    goto :goto_8f

    .line 143
    :cond_8e
    :goto_8e
    move p1, v3

    .line 144
    :goto_8f
    invoke-direct {p0, p1, v4, v0}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    .line 147
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 149
    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    .line 152
    :cond_97
    :goto_97
    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTopNow:Z

    .line 154
    if-eq p1, v5, :cond_bb

    .line 156
    iput-boolean v5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTopNow:Z

    .line 158
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 160
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2400(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)F

    .line 163
    move-result p1

    .line 164
    const/4 v1, 0x0

    .line 165
    cmpl-float p1, p1, v1

    .line 167
    if-lez p1, :cond_aa

    .line 169
    move p1, v3

    .line 170
    goto :goto_ab

    .line 171
    :cond_aa
    move p1, v0

    .line 172
    :goto_ab
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 174
    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2400(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)F

    .line 177
    move-result v1

    .line 178
    const/high16 v2, 0x3f800000  # 1.0f

    .line 180
    cmpl-float v1, v1, v2

    .line 182
    if-nez v1, :cond_b8

    .line 184
    move v0, v3

    .line 185
    :cond_b8
    invoke-direct {p0, p1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->setContentVisible(ZZ)V

    .line 188
    :cond_bb
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->setSecondaryContentVisible()V

    .line 191
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateDividers()V

    .line 194
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateContentSwitch()V

    .line 197
    return-void
.end method

.method private onSecondaryContentVisibilityChanged(I)V
    .registers 3
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onSecondaryContentVisibilityChanged(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private removeBottomNavigation()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    if-eqz v0, :cond_2b

    .line 18
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 20
    invoke-interface {v1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_22

    .line 32
    invoke-interface {v0, v1, v1}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationVisibilityChanged(ZI)V

    .line 35
    :cond_22
    iput v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    .line 37
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    .line 39
    if-eqz v0, :cond_2b

    .line 41
    invoke-interface {v0}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationDestroyed()V

    .line 44
    :cond_2b
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 46
    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOnBottomNavigationHeightChange:Landroid/view/View$OnLayoutChangeListener;

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 55
    return-void
.end method

.method private sectionAnimateDetailContent()V
    .registers 12

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mFlush:Z

    .line 3
    if-eqz v0, :cond_98

    .line 5
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    .line 7
    sget v1, Lmiuix/navigator/R$id;->secondary_content_decor_wrapper:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    sget v1, Lmiuix/navigator/R$id;->secondary_content_decor:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    sget v1, Lmiuix/navigator/R$id;->action_bar_overlay_layout:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 27
    const-wide/16 v2, 0x1f4

    .line 29
    const/4 v4, 0x2

    .line 30
    if-eqz v0, :cond_4b

    .line 32
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/widget/FrameLayout;

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 41
    move-result v5

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 45
    move-result v0

    .line 46
    sub-int/2addr v0, v5

    .line 47
    new-array v4, v4, [F

    .line 49
    fill-array-data v4, :array_9a

    .line 52
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    new-instance v2, Lmiuix/navigator/g;

    .line 61
    invoke-direct {v2, p0, v4, v0, v1}, Lmiuix/navigator/g;-><init>(Lmiuix/navigator/MiuixNavigationLayout;Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;)V

    .line 64
    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    sget-object v0, Lmiuix/navigator/MiuixNavigationLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 69
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 75
    goto :goto_98

    .line 76
    :cond_4b
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 78
    sget-object v5, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 80
    if-ne v0, v5, :cond_98

    .line 82
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 84
    sget v5, Lmiuix/navigator/R$id;->content_decor:I

    .line 86
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 96
    if-eqz v0, :cond_98

    .line 98
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 101
    move-result-object v1

    .line 102
    move-object v9, v1

    .line 103
    check-cast v9, Landroid/widget/FrameLayout;

    .line 105
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 108
    move-result-object v1

    .line 109
    move-object v10, v1

    .line 110
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 112
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 115
    move-result v1

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 119
    move-result v0

    .line 120
    sub-int v8, v0, v1

    .line 122
    new-array v0, v4, [F

    .line 124
    fill-array-data v0, :array_a2

    .line 127
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 134
    new-instance v1, Lmiuix/navigator/h;

    .line 136
    move-object v5, v1

    .line 137
    move-object v6, p0

    .line 138
    move-object v7, v0

    .line 139
    invoke-direct/range {v5 .. v10}, Lmiuix/navigator/h;-><init>(Lmiuix/navigator/MiuixNavigationLayout;Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    sget-object v1, Lmiuix/navigator/MiuixNavigationLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 147
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 150
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 153
    :cond_98
    :goto_98
    return-void

    .line 154
    nop

    .line 155
    :array_9a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_a2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private setContentVisible(ZZ)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_19

    .line 5
    iget-boolean v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTopNow:Z

    .line 7
    if-nez v2, :cond_19

    .line 9
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_15

    .line 17
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_15
    invoke-direct {p0, v0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentVisible(ZZ)V

    .line 25
    goto :goto_42

    .line 26
    :cond_19
    if-eqz p1, :cond_30

    .line 28
    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentReady:Z

    .line 30
    if-nez p1, :cond_30

    .line 32
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2c

    .line 40
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :cond_2c
    invoke-direct {p0, v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentVisible(ZZ)V

    .line 48
    goto :goto_42

    .line 49
    :cond_30
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 54
    move-result p1

    .line 55
    const/16 p2, 0x8

    .line 57
    if-eq p1, p2, :cond_3f

    .line 59
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_3f
    invoke-direct {p0, v1, v1}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentVisible(ZZ)V

    .line 67
    :goto_42
    return-void
.end method

.method private setSecondaryContentVisible()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1d

    .line 6
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTopNow:Z

    .line 8
    if-eqz v0, :cond_a

    .line 10
    goto :goto_1d

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 16
    move-result v0

    .line 17
    const/16 v2, 0x8

    .line 19
    if-eq v0, v2, :cond_19

    .line 21
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :cond_19
    invoke-direct {p0, v1, v1}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentVisible(ZZ)V

    .line 29
    goto :goto_2e

    .line 30
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2a

    .line 38
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_2a
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, v0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentVisible(ZZ)V

    .line 47
    :goto_2e
    return-void
.end method

.method private setSwitchOffset(ZZ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2102(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I

    .line 7
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 9
    invoke-static {v0, v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2202(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I

    .line 12
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 14
    if-nez v0, :cond_4c

    .line 16
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    .line 18
    if-nez v0, :cond_30

    .line 20
    if-eqz p2, :cond_30

    .line 22
    if-eqz p1, :cond_25

    .line 24
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 26
    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    .line 28
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    .line 30
    add-int/2addr p2, v0

    .line 31
    neg-int p2, p2

    .line 32
    div-int/lit8 p2, p2, 0x3

    .line 34
    invoke-static {p1, p2}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2102(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I

    .line 37
    goto :goto_4c

    .line 38
    :cond_25
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 40
    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    .line 42
    neg-int p2, p2

    .line 43
    div-int/lit8 p2, p2, 0x3

    .line 45
    invoke-static {p1, p2}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2202(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I

    .line 48
    goto :goto_4c

    .line 49
    :cond_30
    iget-boolean p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    .line 51
    if-nez p2, :cond_41

    .line 53
    if-eqz p1, :cond_41

    .line 55
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 57
    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    .line 59
    neg-int p2, p2

    .line 60
    div-int/lit8 p2, p2, 0x3

    .line 62
    invoke-static {p1, p2}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2102(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I

    .line 65
    goto :goto_4c

    .line 66
    :cond_41
    if-eqz p2, :cond_4c

    .line 68
    if-nez p1, :cond_4c

    .line 70
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 72
    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentViewAfterSwitchOffset:I

    .line 74
    invoke-static {p1, p2}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2202(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I

    .line 77
    :cond_4c
    :goto_4c
    return-void
.end method

.method private setupBottomNavigation(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_32

    .line 3
    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    .line 5
    if-nez p1, :cond_32

    .line 7
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 9
    if-eqz p1, :cond_32

    .line 11
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isBottomNavigationEnable()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_32

    .line 17
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 19
    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_32

    .line 25
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 27
    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/view/ViewGroup;

    .line 37
    if-eqz p1, :cond_2f

    .line 39
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 41
    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 48
    :cond_2f
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->addBottomNavigation()V

    .line 51
    :cond_32
    return-void
.end method

.method private transformContent(ZZ)V
    .registers 10

    .line 1
    if-eqz p1, :cond_5

    .line 3
    const/high16 v0, 0x3f800000  # 1.0f

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    :goto_6
    move v4, v0

    .line 8
    if-eqz p1, :cond_c

    .line 10
    const-string p1, "CONTENT_OPEN"

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const-string p1, "CONTENT_CLOSE"

    .line 15
    :goto_e
    move-object v2, p1

    .line 16
    iget-object v5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 18
    const-string v3, "contentRatio"

    .line 20
    move-object v1, p0

    .line 21
    move v6, p2

    .line 22
    invoke-direct/range {v1 .. v6}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    .line 25
    return-void
.end method

.method private transformInternal(ZZZ)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p3}, Lmiuix/navigator/MiuixNavigationLayout;->transformNavigation(ZZ)V

    .line 4
    invoke-direct {p0, p2, p3}, Lmiuix/navigator/MiuixNavigationLayout;->transformContent(ZZ)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/MiuixNavigationLayout;->transformSwitch(ZZZ)V

    .line 10
    invoke-direct {p0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->setupBottomNavigation(Z)V

    .line 13
    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    .line 15
    iput-boolean p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    .line 17
    return-void
.end method

.method private transformNavigation(ZZ)V
    .registers 10

    .line 1
    if-eqz p1, :cond_5

    .line 3
    const/high16 v0, 0x3f800000  # 1.0f

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    :goto_6
    move v4, v0

    .line 8
    if-eqz p1, :cond_c

    .line 10
    const-string v0, "NAVIGATION_OPEN"

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const-string v0, "NAVIGATION_CLOSE"

    .line 15
    :goto_e
    move-object v2, v0

    .line 16
    iget-object v5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 18
    const-string v3, "navigationRatio"

    .line 20
    move-object v1, p0

    .line 21
    move v6, p2

    .line 22
    invoke-direct/range {v1 .. v6}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    .line 25
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 27
    if-eqz v0, :cond_36

    .line 29
    if-eqz p1, :cond_36

    .line 31
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->createAndAddNavigationEditMask()V

    .line 34
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateNavigationEditMaskListener()V

    .line 37
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1, v0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    .line 43
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    .line 45
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maybeClearInputFocus(Landroid/view/View;)V

    .line 48
    invoke-direct {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentMasked(Z)V

    .line 51
    invoke-direct {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentMasked(Z)V

    .line 54
    goto :goto_48

    .line 55
    :cond_36
    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    .line 57
    if-nez p1, :cond_48

    .line 59
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 61
    if-eqz p1, :cond_48

    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    .line 67
    invoke-direct {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentMasked(Z)V

    .line 70
    invoke-direct {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentMasked(Z)V

    .line 73
    :cond_48
    :goto_48
    return-void
.end method

.method private transformSwitch(ZZZ)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000  # 1.0f

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_11

    .line 10
    if-eqz p1, :cond_11

    .line 12
    if-eqz p2, :cond_11

    .line 14
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAlphaShowAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 16
    move v3, v1

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAlphaHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 20
    move v3, v2

    .line 21
    :goto_14
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 23
    const-string v5, "navigationSwitchRatio"

    .line 25
    invoke-direct {p0, v5, v3, v4, p3}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    .line 28
    const-string v4, "navigationSwitchAlpha"

    .line 30
    invoke-direct {p0, v4, v3, v0, p3}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    .line 33
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2e

    .line 39
    if-nez p1, :cond_2e

    .line 41
    if-eqz p2, :cond_2e

    .line 43
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAlphaShowAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 45
    move v3, v1

    .line 46
    goto :goto_31

    .line 47
    :cond_2e
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAlphaHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 49
    move v3, v2

    .line 50
    :goto_31
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 52
    const-string v5, "contentSwitchRatio"

    .line 54
    invoke-direct {p0, v5, v3, v4, p3}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    .line 57
    const-string v4, "contentSwitchAlpha"

    .line 59
    invoke-direct {p0, v4, v3, v0, p3}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    .line 62
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 64
    if-nez v0, :cond_4f

    .line 66
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4c

    .line 72
    if-eqz p1, :cond_4c

    .line 74
    if-eqz p2, :cond_4c

    .line 76
    goto :goto_4f

    .line 77
    :cond_4c
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 79
    goto :goto_57

    .line 80
    :cond_4f
    :goto_4f
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 82
    if-eqz v0, :cond_54

    .line 84
    move v1, v2

    .line 85
    :cond_54
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentUpMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 87
    move v2, v1

    .line 88
    :goto_57
    const-string v1, "contentViewAfterSwitchRatio"

    .line 90
    invoke-direct {p0, v1, v2, v0, p3}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    .line 93
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->setSwitchOffset(ZZ)V

    .line 96
    return-void
.end method

.method private updateContentSwitch()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentSwitch:Ljava/util/List;

    .line 3
    new-instance v1, Lmiuix/navigator/l;

    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, v2}, Lmiuix/navigator/l;-><init>(Ljava/lang/Object;I)V

    .line 9
    invoke-direct {p0, v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->forAllSwitch(Ljava/lang/Iterable;Ll0/a;)V

    .line 12
    return-void
.end method

.method private updateContentWidth(F)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 3
    if-nez v0, :cond_d

    .line 5
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidth:I

    .line 17
    int-to-float v1, v1

    .line 18
    if-eqz v0, :cond_14

    .line 20
    const/4 p1, 0x0

    .line 21
    :cond_14
    sub-float/2addr v1, p1

    .line 22
    const p1, 0x3ee66666  # 0.45f

    .line 25
    mul-float/2addr v1, p1

    .line 26
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 28
    sget-object v0, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 30
    if-ne p1, v0, :cond_23

    .line 32
    float-to-int p1, v1

    .line 33
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    .line 35
    goto :goto_2c

    .line 36
    :cond_23
    float-to-int p1, v1

    .line 37
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMaxWidthInListMode:I

    .line 39
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    .line 45
    :goto_2c
    return-void
.end method

.method private updateDividers()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 6
    if-nez v0, :cond_1d

    .line 8
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1d

    .line 16
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1d

    .line 24
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    goto :goto_22

    .line 30
    :cond_1d
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :goto_22
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_40

    .line 43
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_40

    .line 51
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTopNow:Z

    .line 53
    if-eqz v0, :cond_3a

    .line 55
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    .line 57
    if-eqz v0, :cond_40

    .line 59
    :cond_3a
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDivider:Landroid/view/View;

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    goto :goto_45

    .line 65
    :cond_40
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDivider:Landroid/view/View;

    .line 67
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :goto_45
    return-void
.end method

.method private updateNavigationEditMaskListener()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 3
    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_9

    .line 8
    move-object v1, v2

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlayMaskOnClick:Landroid/view/View$OnClickListener;

    .line 12
    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 17
    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    .line 19
    if-eqz v1, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlayMaskDragOnTrigger:Lmiuix/navigator/draganddrop/DragOnTrigger;

    .line 24
    :goto_17
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 27
    return-void
.end method


# virtual methods
.method public addContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 5

    .line 1
    new-instance v0, Lmiuix/navigator/SwitchInfo;

    .line 3
    invoke-direct {v0}, Lmiuix/navigator/SwitchInfo;-><init>()V

    .line 6
    iput-object p1, v0, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    .line 8
    iput-object p2, v0, Lmiuix/navigator/SwitchInfo;->presenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 10
    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentViewAfterSwitchOffset:I

    .line 12
    iput p2, v0, Lmiuix/navigator/SwitchInfo;->offset:I

    .line 14
    iget-object p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentSwitch:Ljava/util/List;

    .line 16
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance p2, Lmiuix/navigator/e;

    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-direct {p2, p0, v0}, Lmiuix/navigator/e;-><init>(Lmiuix/navigator/MiuixNavigationLayout;I)V

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    new-instance p2, Lmiuix/navigator/draganddrop/DragOnTrigger;

    .line 30
    new-instance v0, Lmiuix/navigator/f;

    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/f;-><init>(Ljava/lang/Object;I)V

    .line 36
    invoke-direct {p2, v0}, Lmiuix/navigator/draganddrop/DragOnTrigger;-><init>(Ljava/lang/Runnable;)V

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object p2

    .line 46
    sget v0, Lmiuix/navigator/R$string;->miuix_navigator_content_switch_description:I

    .line 48
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 57
    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    .line 60
    return-void
.end method

.method public addSecondaryContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 5

    .line 1
    new-instance v0, Lmiuix/navigator/SwitchInfo;

    .line 3
    invoke-direct {v0}, Lmiuix/navigator/SwitchInfo;-><init>()V

    .line 6
    iput-object p1, v0, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    .line 8
    iput-object p2, v0, Lmiuix/navigator/SwitchInfo;->presenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 10
    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentViewAfterSwitchOffset:I

    .line 12
    iput p2, v0, Lmiuix/navigator/SwitchInfo;->offset:I

    .line 14
    iget-object p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentSwitch:Ljava/util/List;

    .line 16
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance p2, Lmiuix/navigator/e;

    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-direct {p2, p0, v0}, Lmiuix/navigator/e;-><init>(Lmiuix/navigator/MiuixNavigationLayout;I)V

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    new-instance p2, Lmiuix/navigator/draganddrop/DragOnTrigger;

    .line 30
    new-instance v0, Lmiuix/navigator/f;

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/f;-><init>(Ljava/lang/Object;I)V

    .line 36
    invoke-direct {p2, v0}, Lmiuix/navigator/draganddrop/DragOnTrigger;-><init>(Ljava/lang/Runnable;)V

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object p2

    .line 46
    sget v0, Lmiuix/navigator/R$string;->miuix_navigator_content_switch_description:I

    .line 48
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 57
    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    .line 60
    return-void
.end method

.method public closeContent()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->closeContent(Z)V

    return-void
.end method

.method public closeContent(Z)V
    .registers 4

    .line 2
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessContent()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    if-eqz v0, :cond_10

    .line 3
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    :cond_10
    return-void
.end method

.method public closeNavigation()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->closeNavigation(Z)V

    return-void
.end method

.method public closeNavigation(Z)V
    .registers 4

    .line 2
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 3
    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    invoke-direct {p0, v0, v1, p1}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    :cond_10
    return-void
.end method

.method public dispatchConfigurationChanged()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 9
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public getBottomNavigation()Lmiuix/navigator/BottomNavigation;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 3
    return-object v0
.end method

.method public initWithMode(Lmiuix/navigator/Navigator$Mode;)V
    .registers 6

    .line 1
    sget-object v0, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p1, v0, :cond_a

    .line 7
    sget-object v3, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 9
    if-ne p1, v3, :cond_14

    .line 11
    :cond_a
    iput-boolean v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    .line 13
    iget-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    .line 15
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateDividers()V

    .line 21
    :cond_14
    if-eq p1, v0, :cond_1a

    .line 23
    sget-object v0, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    .line 25
    if-ne p1, v0, :cond_2e

    .line 27
    :cond_1a
    iput-boolean v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    .line 29
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateDividers()V

    .line 43
    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    .line 45
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    :cond_2e
    invoke-virtual {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->notifyModeChanged(Lmiuix/navigator/Navigator$Mode;)V

    .line 50
    return-void
.end method

.method public isContentMasked()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

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

.method public isContentOpen()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    .line 3
    return v0
.end method

.method public isNavigationOpen()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    .line 3
    return v0
.end method

.method public isOverlay()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 3
    return v0
.end method

.method public isSecondaryContentMasked()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

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

.method public isSecondaryOnTop()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTop:Z

    .line 3
    return v0
.end method

.method public isSecondaryOnTopNow()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTopNow:Z

    .line 3
    return v0
.end method

.method public maskContent(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_c

    .line 11
    move v0, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v1

    .line 14
    :goto_d
    if-eqz p1, :cond_55

    .line 16
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    .line 18
    if-nez p1, :cond_47

    .line 20
    new-instance p1, Landroid/view/View;

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    .line 31
    const/high16 v1, -0x1000000

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 42
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    .line 44
    const/4 v1, 0x4

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    .line 50
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 53
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    .line 55
    const/4 v1, 0x2

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 59
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    const/4 v1, -0x1

    .line 62
    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 67
    iget-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    .line 69
    invoke-virtual {v1, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :cond_47
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    .line 74
    invoke-direct {p0, p1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    .line 77
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 79
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maybeClearInputFocus(Landroid/view/View;)V

    .line 82
    invoke-direct {p0, v2}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentMasked(Z)V

    .line 85
    goto :goto_62

    .line 86
    :cond_55
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    .line 88
    if-eqz p1, :cond_62

    .line 90
    invoke-direct {p0, p1, v1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    .line 93
    invoke-direct {p0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentMasked(Z)V

    .line 96
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    .line 99
    :cond_62
    :goto_62
    return-void
.end method

.method public maskNavigation(Z)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpen()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_49

    .line 8
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez p1, :cond_40

    .line 13
    new-instance p1, Landroid/view/View;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v3

    .line 19
    invoke-direct {p1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    .line 24
    const/high16 v3, -0x1000000

    .line 26
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 35
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    .line 37
    const/4 v3, 0x4

    .line 38
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    .line 43
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 46
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    .line 48
    const/4 v3, 0x2

    .line 49
    invoke-virtual {p1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 52
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    const/4 v3, -0x1

    .line 55
    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    iget-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    .line 60
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    .line 62
    invoke-virtual {v3, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :cond_40
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    .line 67
    invoke-direct {p0, p1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    .line 70
    invoke-direct {p0, v2}, Lmiuix/navigator/MiuixNavigationLayout;->notifyNavigationMasked(Z)V

    .line 73
    goto :goto_56

    .line 74
    :cond_49
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    .line 76
    if-eqz p1, :cond_56

    .line 78
    invoke-direct {p0, p1, v1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    .line 81
    invoke-direct {p0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->notifyNavigationMasked(Z)V

    .line 84
    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    .line 87
    :cond_56
    :goto_56
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 89
    invoke-static {p1, v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2002(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;Z)Z

    .line 92
    return-void
.end method

.method public maskSecondaryContent(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_c

    .line 11
    move v0, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v1

    .line 14
    :goto_d
    if-eqz p1, :cond_55

    .line 16
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    .line 18
    if-nez p1, :cond_47

    .line 20
    new-instance p1, Landroid/view/View;

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    .line 31
    const/high16 v1, -0x1000000

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 42
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    .line 44
    const/4 v1, 0x4

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    .line 50
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 53
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    .line 55
    const/4 v1, 0x2

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 59
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    const/4 v1, -0x1

    .line 62
    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    .line 67
    iget-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    .line 69
    invoke-virtual {v1, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :cond_47
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    .line 74
    invoke-direct {p0, p1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    .line 77
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    .line 79
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maybeClearInputFocus(Landroid/view/View;)V

    .line 82
    invoke-direct {p0, v2}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentMasked(Z)V

    .line 85
    goto :goto_62

    .line 86
    :cond_55
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    .line 88
    if-eqz p1, :cond_62

    .line 90
    invoke-direct {p0, p1, v1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    .line 93
    invoke-direct {p0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentMasked(Z)V

    .line 96
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    .line 99
    :cond_62
    :goto_62
    return-void
.end method

.method public notifyModeChanged(Lmiuix/navigator/Navigator$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 3
    if-eq v0, p1, :cond_d

    .line 5
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onBottomNavigationChanged(Z)V

    .line 11
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigatorChanged(Z)V

    .line 14
    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDeviceType:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, v0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 32
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 34
    iput v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidthDp:I

    .line 36
    iget-object v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 38
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 40
    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidth:I

    .line 42
    sget v0, Lmiuix/navigator/R$dimen;->miuix_navigator_content_view_after_switch_offset:I

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentViewAfterSwitchOffset:I

    .line 50
    sget v0, Lmiuix/navigator/R$dimen;->miuix_navigator_navigation_width:I

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    .line 58
    sget v0, Lmiuix/navigator/R$dimen;->miuix_navigator_content_max_width_in_list_mode:I

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMaxWidthInListMode:I

    .line 66
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegularTypedValue:Landroid/util/TypedValue;

    .line 68
    if-eqz v0, :cond_5b

    .line 70
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 72
    if-eqz v1, :cond_50

    .line 74
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 77
    move-result p1

    .line 78
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegular:I

    .line 80
    goto :goto_5b

    .line 81
    :cond_50
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 88
    move-result p1

    .line 89
    float-to-int p1, p1

    .line 90
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegular:I

    .line 92
    :cond_5b
    :goto_5b
    const/4 p1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigatorChanged(Z)V

    .line 96
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    .line 98
    sget v0, Lmiuix/navigator/R$id;->secondary_content_decor_wrapper:I

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object p1

    .line 104
    sget v0, Lmiuix/navigator/R$id;->secondary_content_decor:I

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object p1

    .line 110
    sget v0, Lmiuix/navigator/R$id;->action_bar_overlay_layout:I

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 118
    const/4 v1, -0x1

    .line 119
    if-eqz p1, :cond_86

    .line 121
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Landroid/widget/FrameLayout;

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 135
    :cond_86
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 137
    sget v2, Lmiuix/navigator/R$id;->content_decor:I

    .line 139
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 149
    if-eqz p1, :cond_a4

    .line 151
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Landroid/widget/FrameLayout;

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 165
    :cond_a4
    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentExpandedMaxWidthDp:I

    .line 167
    if-lez p1, :cond_ab

    .line 169
    invoke-virtual {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setContentExpandedMaxWidthWithDp(I)V

    .line 172
    :cond_ab
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 174
    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    .line 177
    return-void
.end method

.method public onContentShow()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPendingAddBottomNavigation:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPendingAddBottomNavigation:Z

    .line 8
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isBottomNavigationEnable()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->addBottomNavigation()V

    .line 17
    :cond_10
    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const/high16 v0, 0x1020000

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout;

    .line 12
    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackground:Landroid/widget/FrameLayout;

    .line 14
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackgroundView:Landroid/view/View;

    .line 16
    if-eqz v1, :cond_14

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    :cond_14
    sget v0, Lmiuix/navigator/R$id;->navigation_decor_wrapper:I

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/FrameLayout;

    .line 29
    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    .line 31
    sget v0, Lmiuix/navigator/R$id;->content_parent:I

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/FrameLayout;

    .line 39
    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    .line 41
    sget v0, Lmiuix/navigator/R$id;->content_decor_wrapper:I

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/FrameLayout;

    .line 49
    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 51
    sget v0, Lmiuix/navigator/R$id;->navigation_divider:I

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    .line 59
    sget v0, Lmiuix/navigator/R$id;->divider:I

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDivider:Landroid/view/View;

    .line 67
    sget v0, Lmiuix/navigator/R$id;->secondary_content_decor_wrapper:I

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/FrameLayout;

    .line 75
    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    .line 77
    const/4 v0, 0x1

    .line 78
    invoke-direct {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigatorChanged(Z)V

    .line 81
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    .line 83
    int-to-float v0, v0

    .line 84
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 86
    invoke-virtual {v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->getNavigationRatio()F

    .line 89
    move-result v1

    .line 90
    mul-float/2addr v1, v0

    .line 91
    invoke-direct {p0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->updateContentWidth(F)V

    .line 94
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 10

    .line 1
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackground:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-ne p1, v0, :cond_e

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v0, v1

    .line 16
    :goto_f
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result p1

    .line 22
    const/16 v2, 0x8

    .line 24
    if-ne p1, v2, :cond_1b

    .line 26
    move p1, v1

    .line 27
    goto :goto_21

    .line 28
    :cond_1b
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    move-result p1

    .line 34
    :goto_21
    if-eqz v0, :cond_37

    .line 36
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    .line 38
    add-int/2addr p1, p4

    .line 39
    invoke-virtual {v0, p4, p3, p1, p5}, Landroid/view/View;->layout(IIII)V

    .line 42
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    .line 44
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    .line 46
    add-int/2addr v0, p4

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 50
    move-result v3

    .line 51
    add-int/2addr v3, p3

    .line 52
    invoke-virtual {p1, p4, p3, v0, v3}, Landroid/view/View;->layout(IIII)V

    .line 55
    goto :goto_4c

    .line 56
    :cond_37
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    .line 58
    sub-int p1, p2, p1

    .line 60
    invoke-virtual {v0, p1, p3, p2, p5}, Landroid/view/View;->layout(IIII)V

    .line 63
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    .line 65
    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    .line 67
    sub-int v0, p2, v0

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 72
    move-result v3

    .line 73
    add-int/2addr v3, p3

    .line 74
    invoke-virtual {p1, v0, p3, p2, v3}, Landroid/view/View;->layout(IIII)V

    .line 77
    :goto_4c
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    .line 79
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 82
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 84
    if-eqz p1, :cond_58

    .line 86
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 89
    :cond_58
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 91
    if-eqz p1, :cond_7f

    .line 93
    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_7f

    .line 103
    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    .line 105
    if-lez p1, :cond_7f

    .line 107
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 109
    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 116
    move-result p1

    .line 117
    if-ne p1, v2, :cond_7f

    .line 119
    iput v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    .line 121
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    .line 123
    if-eqz p1, :cond_7f

    .line 125
    invoke-interface {p1, v1, v1}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationVisibilityChanged(ZI)V

    .line 128
    :cond_7f
    sub-int/2addr p4, p2

    .line 129
    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mViewWidth:I

    .line 131
    if-eq p1, p4, :cond_89

    .line 133
    iput p4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mViewWidth:I

    .line 135
    invoke-direct {p0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->onBottomNavigationChanged(Z)V

    .line 138
    :cond_89
    sub-int/2addr p5, p3

    .line 139
    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mViewHeight:I

    .line 141
    if-eq p1, p5, :cond_95

    .line 143
    iput p5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mViewHeight:I

    .line 145
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 147
    invoke-static {p1, v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2002(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;Z)Z

    .line 150
    :cond_95
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 12
    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackground:Landroid/widget/FrameLayout;

    .line 14
    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 17
    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    .line 19
    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 22
    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    .line 24
    const/high16 v2, 0x40000000  # 2.0f

    .line 26
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 29
    move-result p1

    .line 30
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 33
    move-result v3

    .line 34
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {p0, v4, p1, v3}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 39
    int-to-float p1, v0

    .line 40
    iget-boolean v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 42
    if-eqz v3, :cond_2d

    .line 44
    const/4 v3, 0x0

    .line 45
    goto :goto_37

    .line 46
    :cond_2d
    iget-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    .line 51
    move-result v3

    .line 52
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 55
    move-result v3

    .line 56
    :goto_37
    sub-float/2addr p1, v3

    .line 57
    float-to-int p1, p1

    .line 58
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 61
    move-result p1

    .line 62
    iget-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    .line 64
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 67
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 69
    if-eqz p1, :cond_49

    .line 71
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 74
    :cond_49
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 76
    if-eqz p1, :cond_70

    .line 78
    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_70

    .line 88
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 93
    move-result p1

    .line 94
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 97
    move-result p1

    .line 98
    const/high16 p2, -0x80000000

    .line 100
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 103
    move-result p2

    .line 104
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 106
    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 113
    :cond_70
    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    const-string v0, "secondaryOnTop"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTop:Z

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigatorChanged(Z)V

    .line 13
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 3
    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    .line 6
    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTop:Z

    .line 3
    const-string v1, "secondaryOnTop"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    return-void
.end method

.method public openContent()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->openContent(Z)V

    return-void
.end method

.method public openContent(Z)V
    .registers 4

    .line 2
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessContent()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    if-nez v0, :cond_10

    .line 3
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    :cond_10
    return-void
.end method

.method public openNavigation()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->openNavigation(Z)V

    return-void
.end method

.method public openNavigation(Z)V
    .registers 4

    .line 2
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 3
    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    invoke-direct {p0, v0, v1, p1}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    :cond_10
    return-void
.end method

.method public removeContentSwitch(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentSwitch:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_19

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/SwitchInfo;

    .line 19
    iget-object v1, v1, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    .line 21
    if-ne v1, p1, :cond_6

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 26
    :cond_19
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 28
    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    .line 31
    return-void
.end method

.method public removeSecondaryContentSwitch(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentSwitch:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_19

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/SwitchInfo;

    .line 19
    iget-object v1, v1, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    .line 21
    if-ne v1, p1, :cond_6

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 26
    :cond_19
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 28
    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    .line 31
    return-void
.end method

.method public setBottomNavigation(Lmiuix/navigator/BottomNavigation;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    :cond_b
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    .line 14
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isBottomNavigationEnable()Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_16

    .line 20
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->addBottomNavigation()V

    .line 23
    :cond_16
    return-void
.end method

.method public setContentExpandedMaxWidthWithDp(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentExpandedMaxWidthDp:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    int-to-float p1, p1

    .line 8
    invoke-static {v0, p1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 15
    move-result v0

    .line 16
    if-le v0, p1, :cond_14

    .line 18
    sub-int/2addr v0, p1

    .line 19
    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPadding:I

    .line 21
    :cond_14
    return-void
.end method

.method public setContentExpandedPaddingWithDp(I)V
    .registers 3

    .line 1
    if-lez p1, :cond_e

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    int-to-float p1, p1

    .line 8
    invoke-static {v0, p1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPadding:I

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPadding:I

    .line 18
    :goto_11
    return-void
.end method

.method public setCrossBackground(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackground:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setCrossBackground(Landroid/view/View;)V

    return-void
.end method

.method public setCrossBackground(Landroid/view/View;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackgroundView:Landroid/view/View;

    if-ne v0, p1, :cond_5

    return-void

    .line 3
    :cond_5
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackground:Landroid/widget/FrameLayout;

    if-nez v1, :cond_c

    .line 4
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackgroundView:Landroid/view/View;

    return-void

    :cond_c
    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_11
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackgroundView:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setEditingMode(Z)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    .line 3
    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    .line 5
    if-nez p1, :cond_24

    .line 7
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->createAndAddNavigationEditMask()V

    .line 10
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateNavigationEditMaskListener()V

    .line 13
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    .line 15
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {p0, p1, v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    .line 21
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    .line 23
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maybeClearInputFocus(Landroid/view/View;)V

    .line 26
    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    .line 28
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentMasked(Z)V

    .line 31
    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    .line 33
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentMasked(Z)V

    .line 36
    goto :goto_27

    .line 37
    :cond_24
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateNavigationEditMaskListener()V

    .line 40
    :goto_27
    return-void
.end method

.method public setNavigationSwitch(Landroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationSwitch:Landroid/view/View;

    .line 3
    new-instance v0, Lmiuix/navigator/e;

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/e;-><init>(Lmiuix/navigator/MiuixNavigationLayout;I)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationSwitch:Landroid/view/View;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v0

    .line 18
    sget v1, Lmiuix/navigator/R$string;->miuix_navigator_navigator_switch_description:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 29
    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    .line 32
    return-void
.end method

.method public setNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    .line 3
    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    .line 5
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigationVisibilityChanged(I)V

    .line 8
    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    .line 10
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onContentVisibilityChanged(I)V

    .line 13
    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    .line 15
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onSecondaryContentVisibilityChanged(I)V

    .line 18
    return-void
.end method

.method public setNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorStateListener:Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 3
    return-void
.end method

.method public setOverlaySwitchEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlaySwitchEnabled:Z

    .line 3
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateContentSwitch()V

    .line 6
    return-void
.end method

.method public setSecondaryContentReady(Z)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentReady:Z

    .line 3
    if-eq v0, p1, :cond_27

    .line 5
    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentReady:Z

    .line 7
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 9
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2400(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)F

    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    cmpl-float p1, p1, v0

    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-lez p1, :cond_15

    .line 20
    move p1, v0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move p1, v1

    .line 23
    :goto_16
    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    .line 25
    invoke-static {v2}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2400(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)F

    .line 28
    move-result v2

    .line 29
    const/high16 v3, 0x3f800000  # 1.0f

    .line 31
    cmpl-float v2, v2, v3

    .line 33
    if-nez v2, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v0, v1

    .line 37
    :goto_24
    invoke-direct {p0, p1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->setContentVisible(ZZ)V

    .line 40
    :cond_27
    return-void
.end method

.method public setSecondaryOnTop(ZZ)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTop:Z

    .line 3
    if-eqz p2, :cond_8

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigatorChanged(Z)V

    .line 9
    :cond_8
    return-void
.end method

.method public setSplitAnimationMaskBlurRadius(I)V
    .registers 2

    .line 1
    if-gtz p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBlurRadius:I

    .line 6
    return-void
.end method

.method public setSplitAnimationStyle(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSplitAnimationStyle:I

    .line 3
    return-void
.end method

.method public toggleContent()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->toggleContent(Z)V

    return-void
.end method

.method public toggleContent(Z)V
    .registers 4

    .line 2
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessContent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    :cond_f
    return-void
.end method

.method public toggleNavigation()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->toggleNavigation(Z)V

    return-void
.end method

.method public toggleNavigation(Z)V
    .registers 4

    .line 2
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    invoke-direct {p0, v0, v1, p1}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    :cond_f
    return-void
.end method
