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

    new-instance v0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    const v1, 0x3f733333  # 0.95f

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    const v1, 0x3ecccccd  # 0.4f

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    sput-object v0, Lmiuix/navigator/MiuixNavigationLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/navigator/MiuixNavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lmiuix/navigator/R$attr;->navigatorLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/navigator/MiuixNavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPendingAddBottomNavigation:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegularTypedValue:Landroid/util/TypedValue;

    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    new-instance v2, Lmiuix/navigator/e;

    invoke-direct {v2, p0, v0}, Lmiuix/navigator/e;-><init>(Lmiuix/navigator/MiuixNavigationLayout;I)V

    iput-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlayMaskOnClick:Landroid/view/View$OnClickListener;

    new-instance v2, Lmiuix/navigator/draganddrop/DragOnTrigger;

    new-instance v3, Lmiuix/navigator/f;

    invoke-direct {v3, p0, v0}, Lmiuix/navigator/f;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Lmiuix/navigator/draganddrop/DragOnTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlayMaskDragOnTrigger:Lmiuix/navigator/draganddrop/DragOnTrigger;

    new-instance v2, Lmiuix/navigator/MiuixNavigationLayout$1;

    invoke-direct {v2, p0}, Lmiuix/navigator/MiuixNavigationLayout$1;-><init>(Lmiuix/navigator/MiuixNavigationLayout;)V

    iput-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOnBottomNavigationHeightChange:Landroid/view/View$OnLayoutChangeListener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentSwitch:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentSwitch:Ljava/util/List;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlaySwitchEnabled:Z

    const-string v3, "NAVIGATION_OPEN"

    iput-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpenTag:Ljava/lang/String;

    const-string v3, "NAVIGATION_CLOSE"

    iput-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationCloseTag:Ljava/lang/String;

    const-string v3, "CONTENT_OPEN"

    iput-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpenTag:Ljava/lang/String;

    const-string v3, "CONTENT_CLOSE"

    iput-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentCloseTag:Ljava/lang/String;

    const-string v3, "OTHERS"

    iput-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOthersTag:Ljava/lang/String;

    iput-boolean v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mFlush:Z

    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSplitAnimationStyle:I

    const/16 v3, 0x32

    iput v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBlurRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDeviceType:I

    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v4

    iget-object v5, v4, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidthDp:I

    iget-object v4, v4, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidth:I

    sget v4, Lmiuix/navigator/R$dimen;->miuix_navigator_navigation_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    sget v4, Lmiuix/navigator/R$dimen;->miuix_navigator_content_max_width_in_list_mode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMaxWidthInListMode:I

    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiuix/navigator/R$dimen;->miuix_navigator_content_view_after_switch_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentViewAfterSwitchOffset:I

    sget-object v4, Lmiuix/navigator/R$styleable;->MiuixNavigationLayout:[I

    sget v5, Lmiuix/navigator/R$style;->Miuix_Navigator_Layout:I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/navigator/R$styleable;->MiuixNavigationLayout_navigatorCrossBackground:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget p3, Lmiuix/navigator/R$styleable;->MiuixNavigationLayout_navigatorContentMinWidthInRegular:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c6

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iput-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegularTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p1, p3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget-object p3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegularTypedValue:Landroid/util/TypedValue;

    iget v4, p3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegular:I

    goto :goto_c6

    :cond_bb
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegular:I

    :cond_c6
    :goto_c6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_ce

    invoke-virtual {p0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->setCrossBackground(I)V

    :cond_ce
    new-instance p1, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-direct {p1, p0, v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;-><init>(Lmiuix/navigator/MiuixNavigationLayout;Lmiuix/navigator/MiuixNavigationLayout$1;)V

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p2, 0x2

    new-array p3, p2, [F

    fill-array-data p3, :array_144

    const/4 v1, -0x2

    invoke-static {v1, p3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p3

    invoke-virtual {p1, p3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    new-array p3, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lmiuix/navigator/MiuixNavigationLayout$2;

    invoke-direct {v3, p0}, Lmiuix/navigator/MiuixNavigationLayout$2;-><init>(Lmiuix/navigator/MiuixNavigationLayout;)V

    aput-object v3, p3, v0

    invoke-virtual {p1, p3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array p2, p2, [F

    fill-array-data p2, :array_14c

    invoke-static {v1, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentUpMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/16 p2, 0xa

    new-array p3, v2, [F

    const/high16 v1, 0x43af0000  # 350.0f

    aput v1, p3, v0

    invoke-static {p2, p3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAlphaShowAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p2, 0x4

    new-array p3, v2, [F

    const/high16 v1, 0x42700000  # 60.0f

    aput v1, p3, v0

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

    iget p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    return p0
.end method

.method public static synthetic access$002(Lmiuix/navigator/MiuixNavigationLayout;I)I
    .registers 2

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    return p1
.end method

.method public static synthetic access$100(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/NavigatorFragmentListener;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mFlush:Z

    return p1
.end method

.method public static synthetic access$1200(Lmiuix/navigator/MiuixNavigationLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationAnimFinished:Z

    return p0
.end method

.method public static synthetic access$1202(Lmiuix/navigator/MiuixNavigationLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationAnimFinished:Z

    return p1
.end method

.method public static synthetic access$1300(Lmiuix/navigator/MiuixNavigationLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->hasAnimate:Z

    return p0
.end method

.method public static synthetic access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->hasAnimate:Z

    return p1
.end method

.method public static synthetic access$1400(Lmiuix/navigator/MiuixNavigationLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentAnimFinished:Z

    return p0
.end method

.method public static synthetic access$1402(Lmiuix/navigator/MiuixNavigationLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentAnimFinished:Z

    return p1
.end method

.method public static synthetic access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I
    .registers 1

    iget p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    return p0
.end method

.method public static synthetic access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I
    .registers 1

    iget p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    return p0
.end method

.method public static synthetic access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorStateListener:Lmiuix/navigator/Navigator$NavigatorStateListener;

    return-object p0
.end method

.method public static synthetic access$1800(Lmiuix/navigator/MiuixNavigationLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    return p0
.end method

.method public static synthetic access$1900(Lmiuix/navigator/MiuixNavigationLayout;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->sectionAnimateDetailContent()V

    return-void
.end method

.method public static synthetic access$2300(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->onAnimateMaskEnd(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$2500(Lmiuix/navigator/MiuixNavigationLayout;F)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->updateContentWidth(F)V

    return-void
.end method

.method public static synthetic access$2600(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$2700(Lmiuix/navigator/MiuixNavigationLayout;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->notifyNavigationVisible(ZZ)V

    return-void
.end method

.method public static synthetic access$2800(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$2900(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/navigator/MiuixNavigationLayout;)I
    .registers 1

    iget p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSplitAnimationStyle:I

    return p0
.end method

.method public static synthetic access$3000(Lmiuix/navigator/MiuixNavigationLayout;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->setContentVisible(ZZ)V

    return-void
.end method

.method public static synthetic access$3100(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$3200(Lmiuix/navigator/MiuixNavigationLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    return p0
.end method

.method public static synthetic access$3300(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDivider:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$3400(Lmiuix/navigator/MiuixNavigationLayout;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateDividers()V

    return-void
.end method

.method public static synthetic access$3500(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationSwitch:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$3600(Lmiuix/navigator/MiuixNavigationLayout;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentSwitch:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$3700(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Iterable;Ll0/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->forAllSwitch(Ljava/lang/Iterable;Ll0/a;)V

    return-void
.end method

.method public static synthetic access$3800(Lmiuix/navigator/MiuixNavigationLayout;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentSwitch:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpenCloseAnimation(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    return p0
.end method

.method public static synthetic access$700(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->isContentOpenCloseAnimation(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lmiuix/navigator/MiuixNavigationLayout;)I
    .registers 1

    iget p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBlurRadius:I

    return p0
.end method

.method public static synthetic access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    return-object p0
.end method

.method private addBottomNavigation()V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_21

    iput-boolean v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPendingAddBottomNavigation:Z

    return-void

    :cond_21
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_32

    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {v4}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_32
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {v2}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOnBottomNavigationHeightChange:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    if-eqz v0, :cond_5d

    invoke-interface {v0}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationPrepared()V

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

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    sget-object v1, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    if-eq v0, v1, :cond_d

    sget-object v1, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private canAccessNavigation()Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    sget-object v1, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    if-eq v0, v1, :cond_d

    sget-object v1, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private createAndAddNavigationEditMask()V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    if-nez v0, :cond_20

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_20
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

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

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const v0, 0x3e99999a  # 0.3f

    const/4 v1, 0x0

    if-nez p3, :cond_17

    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->onAnimateMaskEnd(Landroid/view/View;Z)V

    return-void

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    if-eqz p2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    if-eqz p2, :cond_28

    const-wide/16 v0, 0x12c

    goto :goto_2a

    :cond_28
    const-wide/16 v0, 0xfa

    :goto_2a
    invoke-virtual {p3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000  # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lmiuix/navigator/MiuixNavigationLayout$3;

    invoke-direct {v0, p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout$3;-><init>(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;Z)V

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

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

    new-instance p4, Lmiuix/animation/controller/AnimState;

    const-string v2, "OTHERS"

    invoke-direct {p4, v2, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Z)V

    float-to-double v2, p2

    invoke-virtual {p4, p1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-array p2, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p3, p2, v0

    invoke-interface {p1, p4, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_29

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

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/SwitchInfo;

    invoke-interface {p2, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    goto :goto_4

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

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    goto :goto_9

    :cond_4
    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    invoke-static {p0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(IZ)I

    move-result p0

    return p0
.end method

.method private isBottomNavigationEnable()Z
    .registers 2

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isContentOpenCloseAnimation(Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "CONTENT_CLOSE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "CONTENT_OPEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private isNavigationOpenCloseAnimation(Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "NAVIGATION_CLOSE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "NAVIGATION_OPEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private synthetic lambda$addContentSwitch$3(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->openNavigation()V

    return-void
.end method

.method private synthetic lambda$addSecondaryContentSwitch$4(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->openNavigation()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->closeNavigation()V

    return-void
.end method

.method private synthetic lambda$sectionAnimateDetailContent$5(Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    int-to-float p2, p2

    const/high16 p4, 0x3f800000  # 1.0f

    sub-float/2addr p4, p1

    mul-float/2addr p4, p2

    const/high16 p1, 0x3f000000  # 0.5f

    mul-float/2addr p4, p1

    float-to-int p1, p4

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    sget-object v0, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    if-ne p4, v0, :cond_25

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isContentOpen()Z

    move-result p4

    if-eqz p4, :cond_31

    :cond_25
    iget-object p4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    sget-object v0, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne p4, v0, :cond_36

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpen()Z

    move-result p4

    if-nez p4, :cond_36

    :cond_31
    iget p4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPadding:I

    if-ge p1, p4, :cond_36

    move p1, p4

    :cond_36
    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4, p1, p4}, Landroid/view/View;->setPadding(IIII)V

    const/4 p1, -0x1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$sectionAnimateDetailContent$6(Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    int-to-float p2, p2

    const/high16 p5, 0x3f800000  # 1.0f

    sub-float/2addr p5, p1

    mul-float/2addr p5, p2

    const/high16 p1, 0x3f000000  # 0.5f

    mul-float/2addr p5, p1

    float-to-int p1, p5

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpen()Z

    move-result p2

    if-nez p2, :cond_1e

    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPadding:I

    if-ge p1, p2, :cond_1e

    move p1, p2

    :cond_1e
    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2, p1, p2}, Landroid/view/View;->setPadding(IIII)V

    const/4 p1, -0x1

    iput p1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p3, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$setNavigationSwitch$2(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->closeNavigation()V

    return-void
.end method

.method private synthetic lambda$updateContentSwitch$1(Lmiuix/navigator/SwitchInfo;)V
    .registers 3

    iget-object p1, p1, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlaySwitchEnabled:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private maybeClearInputFocus(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private notifyContentMasked(Z)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    and-int/lit8 v0, v0, 0x3

    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(IZ)I

    move-result p1

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    if-eq v0, p1, :cond_1b

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onContentVisibilityChanged(I)V

    :cond_1b
    return-void
.end method

.method private notifyContentVisible(ZZ)V
    .registers 4

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {p1, p2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(ZZZ)I

    move-result p1

    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    if-eq p2, p1, :cond_16

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onContentVisibilityChanged(I)V

    :cond_16
    return-void
.end method

.method private notifyNavigationMasked(Z)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    and-int/lit8 v0, v0, 0x3

    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(IZ)I

    move-result p1

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    if-eq v0, p1, :cond_1b

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigationVisibilityChanged(I)V

    :cond_1b
    return-void
.end method

.method private notifyNavigationVisible(ZZ)V
    .registers 4

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {p1, p2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(ZZZ)I

    move-result p1

    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    if-eq p2, p1, :cond_16

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigationVisibilityChanged(I)V

    :cond_16
    return-void
.end method

.method private notifySecondaryContentMasked(Z)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    and-int/lit8 v0, v0, 0x3

    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(IZ)I

    move-result p1

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    if-eq v0, p1, :cond_1b

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onSecondaryContentVisibilityChanged(I)V

    :cond_1b
    return-void
.end method

.method private notifySecondaryContentVisible(ZZ)V
    .registers 4

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {p1, p2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->getFragmentVisibility(ZZZ)I

    move-result p1

    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    if-eq p2, p1, :cond_16

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onSecondaryContentVisibilityChanged(I)V

    :cond_16
    return-void
.end method

.method private onAnimateMaskEnd(Landroid/view/View;Z)V
    .registers 3

    if-nez p2, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method private onBottomNavigationChanged(Z)V
    .registers 5

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isBottomNavigationEnable()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->removeBottomNavigation()V

    goto :goto_7b

    :cond_1b
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isBottomNavigationEnable()Z

    move-result p1

    if-eqz p1, :cond_7b

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    if-eqz p1, :cond_7b

    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_32

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->addBottomNavigation()V

    :cond_32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p1

    sget-object v0, Lmiuix/navigator/MiuixNavigationLayout$4;->$SwitchMap$miuix$navigator$Navigator$Mode:[I

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_61

    const/4 p1, 0x2

    if-eq v0, p1, :cond_5b

    goto :goto_7b

    :cond_5b
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {p1, v1}, Lmiuix/navigator/BottomNavigation;->setLayoutStyle(I)V

    goto :goto_7b

    :cond_61
    const/16 v0, 0x3c0

    if-lt p1, v0, :cond_6c

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lmiuix/navigator/BottomNavigation;->setLayoutStyle(I)V

    goto :goto_7b

    :cond_6c
    const/16 v0, 0x29e

    if-le p1, v0, :cond_76

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {p1, v2}, Lmiuix/navigator/BottomNavigation;->setLayoutStyle(I)V

    goto :goto_7b

    :cond_76
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {p1, v1}, Lmiuix/navigator/BottomNavigation;->setLayoutStyle(I)V

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

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onContentVisibilityChanged(I)V

    :cond_7
    return-void
.end method

.method private onNavigationVisibilityChanged(I)V
    .registers 3
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onNavigationVisibilityChanged(I)V

    :cond_7
    return-void
.end method

.method private onNavigatorChanged(Z)V
    .registers 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    iput-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    iget v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidthDp:I

    const/4 v3, 0x1

    const/16 v4, 0x29e

    if-gt v2, v4, :cond_12

    iput-boolean v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    move v2, v0

    goto :goto_54

    :cond_12
    const/16 v4, 0x3c0

    if-lt v2, v4, :cond_21

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v2

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessContent()Z

    move-result v4

    iput-boolean v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    goto :goto_54

    :cond_21
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v2

    if-nez v2, :cond_29

    move v2, v0

    goto :goto_4e

    :cond_29
    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    sget-object v4, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    if-ne v2, v4, :cond_3a

    iget v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDeviceType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_36

    move v2, v0

    goto :goto_37

    :cond_36
    move v2, v3

    :goto_37
    iput-boolean v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    goto :goto_4e

    :cond_3a
    iget v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidth:I

    iget v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const v4, 0x3ee66666  # 0.45f

    mul-float/2addr v2, v4

    iget v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegular:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4d

    iput-boolean v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    :cond_4d
    move v2, v3

    :goto_4e
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessContent()Z

    move-result v4

    iput-boolean v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    :goto_54
    iget-boolean v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    if-nez v4, :cond_5e

    iget-boolean v5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTop:Z

    if-eqz v5, :cond_5e

    move v5, v3

    goto :goto_5f

    :cond_5e
    move v5, v0

    :goto_5f
    if-nez p1, :cond_6a

    iget-boolean v6, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    if-nez v6, :cond_6a

    if-nez v4, :cond_68

    goto :goto_6a

    :cond_68
    move v4, v0

    goto :goto_6b

    :cond_6a
    :goto_6a
    move v4, v3

    :goto_6b
    if-nez v2, :cond_78

    iput-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    invoke-direct {p0, v0, v4, v0}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    goto :goto_97

    :cond_78
    if-nez p1, :cond_7e

    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    if-eq v1, p1, :cond_97

    :cond_7e
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-static {p1, v0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2002(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;Z)Z

    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    if-eqz p1, :cond_8e

    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    if-eqz p1, :cond_8c

    goto :goto_8e

    :cond_8c
    move p1, v0

    goto :goto_8f

    :cond_8e
    :goto_8e
    move p1, v3

    :goto_8f
    invoke-direct {p0, p1, v4, v0}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    :cond_97
    :goto_97
    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTopNow:Z

    if-eq p1, v5, :cond_bb

    iput-boolean v5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTopNow:Z

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2400(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_aa

    move p1, v3

    goto :goto_ab

    :cond_aa
    move p1, v0

    :goto_ab
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-static {v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2400(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_b8

    move v0, v3

    :cond_b8
    invoke-direct {p0, p1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->setContentVisible(ZZ)V

    :cond_bb
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->setSecondaryContentVisible()V

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateDividers()V

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateContentSwitch()V

    return-void
.end method

.method private onSecondaryContentVisibilityChanged(I)V
    .registers 3
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onSecondaryContentVisibilityChanged(I)V

    :cond_7
    return-void
.end method

.method private removeBottomNavigation()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {v1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    invoke-interface {v0, v1, v1}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationVisibilityChanged(ZI)V

    :cond_22
    iput v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationDestroyed()V

    :cond_2b
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOnBottomNavigationHeightChange:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private sectionAnimateDetailContent()V
    .registers 12

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mFlush:Z

    if-eqz v0, :cond_98

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/navigator/R$id;->secondary_content_decor_wrapper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lmiuix/navigator/R$id;->secondary_content_decor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lmiuix/navigator/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x2

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v5

    new-array v4, v4, [F

    fill-array-data v4, :array_9a

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lmiuix/navigator/g;

    invoke-direct {v2, p0, v4, v0, v1}, Lmiuix/navigator/g;-><init>(Lmiuix/navigator/MiuixNavigationLayout;Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;)V

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v0, Lmiuix/navigator/MiuixNavigationLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_98

    :cond_4b
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    sget-object v5, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne v0, v5, :cond_98

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    sget v5, Lmiuix/navigator/R$id;->content_decor:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v8, v0, v1

    new-array v0, v4, [F

    fill-array-data v0, :array_a2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/navigator/h;

    move-object v5, v1

    move-object v6, p0

    move-object v7, v0

    invoke-direct/range {v5 .. v10}, Lmiuix/navigator/h;-><init>(Lmiuix/navigator/MiuixNavigationLayout;Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v1, Lmiuix/navigator/MiuixNavigationLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_98
    :goto_98
    return-void

    nop

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_19

    iget-boolean v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTopNow:Z

    if-nez v2, :cond_19

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    invoke-direct {p0, v0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentVisible(ZZ)V

    goto :goto_42

    :cond_19
    if-eqz p1, :cond_30

    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentReady:Z

    if-nez p1, :cond_30

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    invoke-direct {p0, v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentVisible(ZZ)V

    goto :goto_42

    :cond_30
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_3f

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3f
    invoke-direct {p0, v1, v1}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentVisible(ZZ)V

    :goto_42
    return-void
.end method

.method private setSecondaryContentVisible()V
    .registers 4

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTopNow:Z

    if-eqz v0, :cond_a

    goto :goto_1d

    :cond_a
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_19

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    invoke-direct {p0, v1, v1}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentVisible(ZZ)V

    goto :goto_2e

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentVisible(ZZ)V

    :goto_2e
    return-void
.end method

.method private setSwitchOffset(ZZ)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2102(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-static {v0, v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2202(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    if-eqz p1, :cond_25

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    add-int/2addr p2, v0

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x3

    invoke-static {p1, p2}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2102(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I

    goto :goto_4c

    :cond_25
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x3

    invoke-static {p1, p2}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2202(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I

    goto :goto_4c

    :cond_30
    iget-boolean p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    if-nez p2, :cond_41

    if-eqz p1, :cond_41

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x3

    invoke-static {p1, p2}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2102(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I

    goto :goto_4c

    :cond_41
    if-eqz p2, :cond_4c

    if-nez p1, :cond_4c

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentViewAfterSwitchOffset:I

    invoke-static {p1, p2}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2202(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;I)I

    :cond_4c
    :goto_4c
    return-void
.end method

.method private setupBottomNavigation(Z)V
    .registers 3

    if-eqz p1, :cond_32

    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    if-nez p1, :cond_32

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    if-eqz p1, :cond_32

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isBottomNavigationEnable()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2f

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2f
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->addBottomNavigation()V

    :cond_32
    return-void
.end method

.method private transformContent(ZZ)V
    .registers 10

    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    move v4, v0

    if-eqz p1, :cond_c

    const-string p1, "CONTENT_OPEN"

    goto :goto_e

    :cond_c
    const-string p1, "CONTENT_CLOSE"

    :goto_e
    move-object v2, p1

    iget-object v5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-string v3, "contentRatio"

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    return-void
.end method

.method private transformInternal(ZZZ)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lmiuix/navigator/MiuixNavigationLayout;->transformNavigation(ZZ)V

    invoke-direct {p0, p2, p3}, Lmiuix/navigator/MiuixNavigationLayout;->transformContent(ZZ)V

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/MiuixNavigationLayout;->transformSwitch(ZZZ)V

    invoke-direct {p0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->setupBottomNavigation(Z)V

    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    iput-boolean p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    return-void
.end method

.method private transformNavigation(ZZ)V
    .registers 10

    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    move v4, v0

    if-eqz p1, :cond_c

    const-string v0, "NAVIGATION_OPEN"

    goto :goto_e

    :cond_c
    const-string v0, "NAVIGATION_CLOSE"

    :goto_e
    move-object v2, v0

    iget-object v5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-string v3, "navigationRatio"

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    if-eqz v0, :cond_36

    if-eqz p1, :cond_36

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->createAndAddNavigationEditMask()V

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateNavigationEditMaskListener()V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maybeClearInputFocus(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentMasked(Z)V

    invoke-direct {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentMasked(Z)V

    goto :goto_48

    :cond_36
    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    if-nez p1, :cond_48

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    if-eqz p1, :cond_48

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    invoke-direct {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentMasked(Z)V

    invoke-direct {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentMasked(Z)V

    :cond_48
    :goto_48
    return-void
.end method

.method private transformSwitch(ZZZ)V
    .registers 10

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAlphaShowAnimConfig:Lmiuix/animation/base/AnimConfig;

    move v3, v1

    goto :goto_14

    :cond_11
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAlphaHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    move v3, v2

    :goto_14
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-string v5, "navigationSwitchRatio"

    invoke-direct {p0, v5, v3, v4, p3}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    const-string v4, "navigationSwitchAlpha"

    invoke-direct {p0, v4, v3, v0, p3}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-nez p1, :cond_2e

    if-eqz p2, :cond_2e

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAlphaShowAnimConfig:Lmiuix/animation/base/AnimConfig;

    move v3, v1

    goto :goto_31

    :cond_2e
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAlphaHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    move v3, v2

    :goto_31
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    const-string v5, "contentSwitchRatio"

    invoke-direct {p0, v5, v3, v4, p3}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    const-string v4, "contentSwitchAlpha"

    invoke-direct {p0, v4, v3, v0, p3}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    if-nez v0, :cond_4f

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v0

    if-eqz v0, :cond_4c

    if-eqz p1, :cond_4c

    if-eqz p2, :cond_4c

    goto :goto_4f

    :cond_4c
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    goto :goto_57

    :cond_4f
    :goto_4f
    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    if-eqz v0, :cond_54

    move v1, v2

    :cond_54
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentUpMoveAnimConfig:Lmiuix/animation/base/AnimConfig;

    move v2, v1

    :goto_57
    const-string v1, "contentViewAfterSwitchRatio"

    invoke-direct {p0, v1, v2, v0, p3}, Lmiuix/navigator/MiuixNavigationLayout;->folmeTo(Ljava/lang/Object;FLmiuix/animation/base/AnimConfig;Z)V

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->setSwitchOffset(ZZ)V

    return-void
.end method

.method private updateContentSwitch()V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentSwitch:Ljava/util/List;

    new-instance v1, Lmiuix/navigator/l;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lmiuix/navigator/l;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->forAllSwitch(Ljava/lang/Iterable;Ll0/a;)V

    return-void
.end method

.method private updateContentWidth(F)V
    .registers 4

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidth:I

    int-to-float v1, v1

    if-eqz v0, :cond_14

    const/4 p1, 0x0

    :cond_14
    sub-float/2addr v1, p1

    const p1, 0x3ee66666  # 0.45f

    mul-float/2addr v1, p1

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    sget-object v0, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne p1, v0, :cond_23

    float-to-int p1, v1

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    goto :goto_2c

    :cond_23
    float-to-int p1, v1

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMaxWidthInListMode:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    :goto_2c
    return-void
.end method

.method private updateDividers()V
    .registers 4

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_1d

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_22

    :cond_1d
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_22
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_40

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTopNow:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mShowBothContent:Z

    if-eqz v0, :cond_40

    :cond_3a
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_45

    :cond_40
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_45
    return-void
.end method

.method private updateNavigationEditMaskListener()V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_b

    :cond_9
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlayMaskOnClick:Landroid/view/View$OnClickListener;

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlayMaskDragOnTrigger:Lmiuix/navigator/draganddrop/DragOnTrigger;

    :goto_17
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method


# virtual methods
.method public addContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 5

    new-instance v0, Lmiuix/navigator/SwitchInfo;

    invoke-direct {v0}, Lmiuix/navigator/SwitchInfo;-><init>()V

    iput-object p1, v0, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    iput-object p2, v0, Lmiuix/navigator/SwitchInfo;->presenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentViewAfterSwitchOffset:I

    iput p2, v0, Lmiuix/navigator/SwitchInfo;->offset:I

    iget-object p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentSwitch:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lmiuix/navigator/e;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lmiuix/navigator/e;-><init>(Lmiuix/navigator/MiuixNavigationLayout;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lmiuix/navigator/draganddrop/DragOnTrigger;

    new-instance v0, Lmiuix/navigator/f;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/f;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Lmiuix/navigator/draganddrop/DragOnTrigger;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/navigator/R$string;->miuix_navigator_content_switch_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    return-void
.end method

.method public addSecondaryContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 5

    new-instance v0, Lmiuix/navigator/SwitchInfo;

    invoke-direct {v0}, Lmiuix/navigator/SwitchInfo;-><init>()V

    iput-object p1, v0, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    iput-object p2, v0, Lmiuix/navigator/SwitchInfo;->presenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    iget p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentViewAfterSwitchOffset:I

    iput p2, v0, Lmiuix/navigator/SwitchInfo;->offset:I

    iget-object p2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentSwitch:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lmiuix/navigator/e;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lmiuix/navigator/e;-><init>(Lmiuix/navigator/MiuixNavigationLayout;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lmiuix/navigator/draganddrop/DragOnTrigger;

    new-instance v0, Lmiuix/navigator/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/f;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Lmiuix/navigator/draganddrop/DragOnTrigger;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/navigator/R$string;->miuix_navigator_content_switch_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    return-void
.end method

.method public closeContent()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->closeContent(Z)V

    return-void
.end method

.method public closeContent(Z)V
    .registers 4

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessContent()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    :cond_10
    return-void
.end method

.method public closeNavigation()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->closeNavigation(Z)V

    return-void
.end method

.method public closeNavigation(Z)V
    .registers 4

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    invoke-direct {p0, v0, v1, p1}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    :cond_10
    return-void
.end method

.method public dispatchConfigurationChanged()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public getBottomNavigation()Lmiuix/navigator/BottomNavigation;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    return-object v0
.end method

.method public initWithMode(Lmiuix/navigator/Navigator$Mode;)V
    .registers 6

    sget-object v0, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_a

    sget-object v3, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne p1, v3, :cond_14

    :cond_a
    iput-boolean v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    iget-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateDividers()V

    :cond_14
    if-eq p1, v0, :cond_1a

    sget-object v0, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    if-ne p1, v0, :cond_2e

    :cond_1a
    iput-boolean v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateDividers()V

    iget v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2e
    invoke-virtual {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->notifyModeChanged(Lmiuix/navigator/Navigator$Mode;)V

    return-void
.end method

.method public isContentMasked()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isContentOpen()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    return v0
.end method

.method public isNavigationOpen()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    return v0
.end method

.method public isOverlay()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    return v0
.end method

.method public isSecondaryContentMasked()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSecondaryOnTop()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTop:Z

    return v0
.end method

.method public isSecondaryOnTopNow()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTopNow:Z

    return v0
.end method

.method public maskContent(Z)V
    .registers 6

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    if-eqz p1, :cond_55

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    if-nez p1, :cond_47

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    invoke-virtual {v1, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_47
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    invoke-direct {p0, p1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maybeClearInputFocus(Landroid/view/View;)V

    invoke-direct {p0, v2}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentMasked(Z)V

    goto :goto_62

    :cond_55
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    if-eqz p1, :cond_62

    invoke-direct {p0, p1, v1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    invoke-direct {p0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentMasked(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMask:Landroid/view/View;

    :cond_62
    :goto_62
    return-void
.end method

.method public maskNavigation(Z)V
    .registers 7

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_49

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    const/4 v2, 0x1

    if-nez p1, :cond_40

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    const/high16 v3, -0x1000000

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    invoke-virtual {v3, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_40
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    invoke-direct {p0, p1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    invoke-direct {p0, v2}, Lmiuix/navigator/MiuixNavigationLayout;->notifyNavigationMasked(Z)V

    goto :goto_56

    :cond_49
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    if-eqz p1, :cond_56

    invoke-direct {p0, p1, v1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    invoke-direct {p0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->notifyNavigationMasked(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationMask:Landroid/view/View;

    :cond_56
    :goto_56
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-static {p1, v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2002(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;Z)Z

    return-void
.end method

.method public maskSecondaryContent(Z)V
    .registers 6

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    if-eqz p1, :cond_55

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    if-nez p1, :cond_47

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    invoke-virtual {v1, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_47
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    invoke-direct {p0, p1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maybeClearInputFocus(Landroid/view/View;)V

    invoke-direct {p0, v2}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentMasked(Z)V

    goto :goto_62

    :cond_55
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    if-eqz p1, :cond_62

    invoke-direct {p0, p1, v1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    invoke-direct {p0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentMasked(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentMask:Landroid/view/View;

    :cond_62
    :goto_62
    return-void
.end method

.method public notifyModeChanged(Lmiuix/navigator/Navigator$Mode;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    if-eq v0, p1, :cond_d

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mMode:Lmiuix/navigator/Navigator$Mode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onBottomNavigationChanged(Z)V

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigatorChanged(Z)V

    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDeviceType:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    iget-object v1, v0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidthDp:I

    iget-object v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mWindowWidth:I

    sget v0, Lmiuix/navigator/R$dimen;->miuix_navigator_content_view_after_switch_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentViewAfterSwitchOffset:I

    sget v0, Lmiuix/navigator/R$dimen;->miuix_navigator_navigation_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    sget v0, Lmiuix/navigator/R$dimen;->miuix_navigator_content_max_width_in_list_mode:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMaxWidthInListMode:I

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegularTypedValue:Landroid/util/TypedValue;

    if-eqz v0, :cond_5b

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_50

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegular:I

    goto :goto_5b

    :cond_50
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentMinWidthInRegular:I

    :cond_5b
    :goto_5b
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigatorChanged(Z)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    sget v0, Lmiuix/navigator/R$id;->secondary_content_decor_wrapper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget v0, Lmiuix/navigator/R$id;->secondary_content_decor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget v0, Lmiuix/navigator/R$id;->action_bar_overlay_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const/4 v1, -0x1

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_86
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    sget v2, Lmiuix/navigator/R$id;->content_decor:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_a4

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_a4
    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentExpandedMaxWidthDp:I

    if-lez p1, :cond_ab

    invoke-virtual {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setContentExpandedMaxWidthWithDp(I)V

    :cond_ab
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    return-void
.end method

.method public onContentShow()V
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPendingAddBottomNavigation:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPendingAddBottomNavigation:Z

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isBottomNavigationEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->addBottomNavigation()V

    :cond_10
    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/high16 v0, 0x1020000

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackground:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_14
    sget v0, Lmiuix/navigator/R$id;->navigation_decor_wrapper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    sget v0, Lmiuix/navigator/R$id;->content_parent:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    sget v0, Lmiuix/navigator/R$id;->content_decor_wrapper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    sget v0, Lmiuix/navigator/R$id;->navigation_divider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    sget v0, Lmiuix/navigator/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mDivider:Landroid/view/View;

    sget v0, Lmiuix/navigator/R$id;->secondary_content_decor_wrapper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentDecor:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigatorChanged(Z)V

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-virtual {v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->getNavigationRatio()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-direct {p0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->updateContentWidth(F)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 10

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_e

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1b

    move p1, v1

    goto :goto_21

    :cond_1b
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_21
    if-eqz v0, :cond_37

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    add-int/2addr p1, p4

    invoke-virtual {v0, p4, p3, p1, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    add-int/2addr v0, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p1, p4, p3, v0, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_4c

    :cond_37
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    sub-int p1, p2, p1

    invoke-virtual {v0, p1, p3, p2, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    iget v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    sub-int v0, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p1, v0, p3, p2, v3}, Landroid/view/View;->layout(IIII)V

    :goto_4c
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    if-eqz p1, :cond_58

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_58
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    if-eqz p1, :cond_7f

    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_7f

    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    if-lez p1, :cond_7f

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_7f

    iput v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigationHeight:I

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    if-eqz p1, :cond_7f

    invoke-interface {p1, v1, v1}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationVisibilityChanged(ZI)V

    :cond_7f
    sub-int/2addr p4, p2

    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mViewWidth:I

    if-eq p1, p4, :cond_89

    iput p4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mViewWidth:I

    invoke-direct {p0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->onBottomNavigationChanged(Z)V

    :cond_89
    sub-int/2addr p5, p3

    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mViewHeight:I

    if-eq p1, p5, :cond_95

    iput p5, p0, Lmiuix/navigator/MiuixNavigationLayout;->mViewHeight:I

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-static {p1, v1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2002(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;Z)Z

    :cond_95
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDivider:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationWidth:I

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationDecor:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, p1, v3}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    int-to-float p1, v0

    iget-boolean v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    if-eqz v3, :cond_2d

    const/4 v3, 0x0

    goto :goto_37

    :cond_2d
    iget-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    :goto_37
    sub-float/2addr p1, v3

    float-to-int p1, p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v3, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    if-eqz p1, :cond_49

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :cond_49
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    if-eqz p1, :cond_70

    invoke-interface {p1}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_70

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentDecor:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 p2, -0x80000000

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :cond_70
    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "secondaryOnTop"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTop:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigatorChanged(Z)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .registers 4

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTop:Z

    const-string v1, "secondaryOnTop"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public openContent()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->openContent(Z)V

    return-void
.end method

.method public openContent(Z)V
    .registers 4

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessContent()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    :cond_10
    return-void
.end method

.method public openNavigation()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->openNavigation(Z)V

    return-void
.end method

.method public openNavigation(Z)V
    .registers 4

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    invoke-direct {p0, v0, v1, p1}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    :cond_10
    return-void
.end method

.method public removeContentSwitch(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentSwitch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/SwitchInfo;

    iget-object v1, v1, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    if-ne v1, p1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_19
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    return-void
.end method

.method public removeSecondaryContentSwitch(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentSwitch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/SwitchInfo;

    iget-object v1, v1, Lmiuix/navigator/SwitchInfo;->view:Landroid/view/View;

    if-ne v1, p1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_19
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    return-void
.end method

.method public setBottomNavigation(Lmiuix/navigator/BottomNavigation;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lmiuix/navigator/BottomNavigation;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBottomNavigation:Lmiuix/navigator/BottomNavigation;

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isBottomNavigationEnable()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->addBottomNavigation()V

    :cond_16
    return-void
.end method

.method public setContentExpandedMaxWidthWithDp(I)V
    .registers 3

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentExpandedMaxWidthDp:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-le v0, p1, :cond_14

    sub-int/2addr v0, p1

    iput v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPadding:I

    :cond_14
    return-void
.end method

.method public setContentExpandedPaddingWithDp(I)V
    .registers 3

    if-lez p1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPadding:I

    goto :goto_11

    :cond_e
    const/4 p1, 0x0

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mPadding:I

    :goto_11
    return-void
.end method

.method public setCrossBackground(I)V
    .registers 5

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

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackgroundView:Landroid/view/View;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackground:Landroid/widget/FrameLayout;

    if-nez v1, :cond_c

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackgroundView:Landroid/view/View;

    return-void

    :cond_c
    if-eqz v0, :cond_11

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_11
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackgroundView:Landroid/view/View;

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setEditingMode(Z)V
    .registers 4

    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlay:Z

    if-nez p1, :cond_24

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->createAndAddNavigationEditMask()V

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateNavigationEditMaskListener()V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationEditMask:Landroid/view/View;

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentParent:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maybeClearInputFocus(Landroid/view/View;)V

    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->notifyContentMasked(Z)V

    iget-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mEditingMode:Z

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->notifySecondaryContentMasked(Z)V

    goto :goto_27

    :cond_24
    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateNavigationEditMaskListener()V

    :goto_27
    return-void
.end method

.method public setNavigationSwitch(Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationSwitch:Landroid/view/View;

    new-instance v0, Lmiuix/navigator/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/e;-><init>(Lmiuix/navigator/MiuixNavigationLayout;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationSwitch:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/navigator/R$string;->miuix_navigator_navigator_switch_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-virtual {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->invalidate()V

    return-void
.end method

.method public setNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorFragmentListener:Lmiuix/navigator/NavigatorFragmentListener;

    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedNavigationVisibility:I

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigationVisibilityChanged(I)V

    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedContentVisibility:I

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onContentVisibilityChanged(I)V

    iget p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNotifiedSecondaryContentVisibility:I

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onSecondaryContentVisibilityChanged(I)V

    return-void
.end method

.method public setNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigatorStateListener:Lmiuix/navigator/Navigator$NavigatorStateListener;

    return-void
.end method

.method public setOverlaySwitchEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mOverlaySwitchEnabled:Z

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->updateContentSwitch()V

    return-void
.end method

.method public setSecondaryContentReady(Z)V
    .registers 6

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentReady:Z

    if-eq v0, p1, :cond_27

    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryContentReady:Z

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2400(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_15

    move p1, v0

    goto :goto_16

    :cond_15
    move p1, v1

    :goto_16
    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout;->mAnimHelper:Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-static {v2}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->access$2400(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    invoke-direct {p0, p1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->setContentVisible(ZZ)V

    :cond_27
    return-void
.end method

.method public setSecondaryOnTop(ZZ)V
    .registers 3

    iput-boolean p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSecondaryOnTop:Z

    if-eqz p2, :cond_8

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onNavigatorChanged(Z)V

    :cond_8
    return-void
.end method

.method public setSplitAnimationMaskBlurRadius(I)V
    .registers 2

    if-gtz p1, :cond_3

    return-void

    :cond_3
    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mBlurRadius:I

    return-void
.end method

.method public setSplitAnimationStyle(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mSplitAnimationStyle:I

    return-void
.end method

.method public toggleContent()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->toggleContent(Z)V

    return-void
.end method

.method public toggleContent(Z)V
    .registers 4

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessContent()Z

    move-result v0

    if-eqz v0, :cond_f

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

    invoke-virtual {p0, v0}, Lmiuix/navigator/MiuixNavigationLayout;->toggleNavigation(Z)V

    return-void
.end method

.method public toggleNavigation(Z)V
    .registers 4

    invoke-direct {p0}, Lmiuix/navigator/MiuixNavigationLayout;->canAccessNavigation()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lmiuix/navigator/MiuixNavigationLayout;->mNavigationOpen:Z

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout;->mContentOpen:Z

    invoke-direct {p0, v0, v1, p1}, Lmiuix/navigator/MiuixNavigationLayout;->transformInternal(ZZZ)V

    :cond_f
    return-void
.end method
