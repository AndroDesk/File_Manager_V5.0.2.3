.class public Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.source "ResponsiveActionMenuView.java"


# static fields
.field private static final ITEM_NORMAL_PADDING_TOP_DP:I = 0x8

.field private static final ITEM_SMALL_PADDING_TOP_DP:I = 0x5

.field private static final MENU_ITEM_GAP_DP:I = 0xb

.field private static final SUSPEND_ITEM_CENTER_EXTRA_UP_DP:I = 0x2

.field private static final SUSPEND_MENU_MIN_MARGIN_DP:I = 0x10

.field private static final SUSPEND_MENU_MIN_WIDTH_DP:I = 0xc4

.field private static final TARGET:Ljava/lang/String; = "target"


# instance fields
.field private mAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mApplyBlur:Z

.field private mAttrs:Landroid/util/AttributeSet;

.field private mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

.field private final mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

.field private mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewClipBounds:Landroid/graphics/Rect;

.field private mDensityDpi:I

.field private mHasOnlyCustomView:Z

.field private mIsCustomViewHidden:Z

.field private mIsEmpty:Z

.field private mIsHidden:Z

.field private mItemNormalPaddingTop:I

.field private mItemSmallPaddingTop:I

.field private mMenuItemGap:I

.field private mMenuItemHeight:I

.field private mMenuItemWidth:I

.field private mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

.field private mOffSet:I

.field private mOriginViewParentClipState:[Z

.field private mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mSuspendEnabled:Z

.field private mSuspendItemCenterExtraUp:I

.field private mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mSuspendMenuBackgroundRadius:I

.field private mSuspendMenuMiShadowColor:I

.field private mSuspendMenuMiShadowRadius:F

.field private mSuspendMenuMiShadowRadiusOffsetX:F

.field private mSuspendMenuMiShadowRadiusOffsetY:F

.field private mSuspendMenuMinMargin:I

.field private mSuspendMenuMinWidth:I

.field private mViewOutlineInSuspend:Landroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 4
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 7
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 8
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 9
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsHidden:Z

    .line 10
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    .line 11
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    .line 12
    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mViewOutlineInSuspend:Landroid/view/ViewOutlineProvider;

    .line 13
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_d6

    const/4 v3, -0x2

    .line 14
    invoke-virtual {v1, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$2;

    invoke-direct {v4, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$2;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    aput-object v4, v3, v0

    .line 15
    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/high16 v1, 0x41300000  # 11.0f

    .line 16
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    const/high16 v1, 0x41800000  # 16.0f

    .line 17
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    const/high16 v1, 0x43440000  # 196.0f

    .line 18
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    const/high16 v1, 0x41000000  # 8.0f

    .line 19
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    const/high16 v1, 0x40a00000  # 5.0f

    .line 20
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    const/high16 v1, 0x40000000  # 2.0f

    .line 21
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_bg_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lmiuix/appcompat/R$color;->miuix_appcompat_suspend_menu_mi_shadow:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowColor:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadius:F

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_x:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_y:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    .line 28
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAttrs:Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 33
    invoke-static {p0, v2}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnable(Landroid/view/View;Z)V

    .line 34
    new-instance p2, Lmiuix/view/MiuiBlurUiHelper;

    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    invoke-direct {p2, p1, p0, v0, v1}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    return-void

    :array_d6
    .array-data 4
        0x3f666666  # 0.9f
        0x3e800000  # 0.25f
    .end array-data
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->lambda$onAttachedToWindow$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$502(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    .line 3
    return p1
.end method

.method public static synthetic access$600(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    .line 4
    return-void
.end method

.method private getActionMenuItemCount()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_f

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    :cond_f
    return v0
.end method

.method private getChildrenHeight(Landroid/widget/LinearLayout;)I
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v1, v0, :cond_14

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    move-result v3

    .line 17
    add-int/2addr v2, v3

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_6

    .line 21
    :cond_14
    return v2
.end method

.method private getCustomViewClipBounds()Landroid/graphics/Rect;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 25
    move-result v2

    .line 26
    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 28
    sub-int/2addr v2, v3

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    .line 35
    return-object v0
.end method

.method private getMaxChildrenTotalHeight()I
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v1, v0, :cond_23

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_13

    .line 19
    goto :goto_20

    .line 20
    :cond_13
    instance-of v4, v3, Landroid/widget/LinearLayout;

    .line 22
    if-eqz v4, :cond_20

    .line 24
    check-cast v3, Landroid/widget/LinearLayout;

    .line 26
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getChildrenHeight(Landroid/widget/LinearLayout;)I

    .line 29
    move-result v3

    .line 30
    if-ge v2, v3, :cond_20

    .line 32
    move v2, v3

    .line 33
    :cond_20
    :goto_20
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_6

    .line 36
    :cond_23
    return v2
.end method

.method private isNotActionMenuItemChild(Landroid/view/View;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 3
    if-ne p1, v0, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method

.method private keepHidden()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsHidden:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->getMeasuredHeightWithMargin(Landroid/view/View;)I

    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setTranslationY(F)V

    .line 13
    :cond_c
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 3
    if-eqz p1, :cond_17

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 12
    move-result p3

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 16
    move-result p4

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 20
    move-result p5

    .line 21
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 24
    :cond_17
    return-void
.end method

.method private measureActionMenuItem(IIZ)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v2, v0, :cond_48

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_13

    .line 19
    goto :goto_45

    .line 20
    :cond_13
    instance-of v4, v3, Landroid/widget/LinearLayout;

    .line 22
    if-eqz v4, :cond_1e

    .line 24
    move-object v4, v3

    .line 25
    check-cast v4, Landroid/widget/LinearLayout;

    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 31
    :cond_1e
    if-eqz p3, :cond_24

    .line 33
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 36
    goto :goto_42

    .line 37
    :cond_24
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isLayoutHideNavigation(Landroid/view/View;)Z

    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_3d

    .line 43
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {v4}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_3a

    .line 51
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {v4}, Lmiuix/core/util/MiuixUIUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_3d

    .line 59
    :cond_3a
    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    .line 64
    :goto_3f
    invoke-virtual {v3, v1, v4, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 67
    :goto_42
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 70
    :goto_45
    add-int/lit8 v2, v2, 0x1

    .line 72
    goto :goto_6

    .line 73
    :cond_48
    return-void
.end method

.method private refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v1, 0x0

    .line 7
    :try_start_6
    sget-object v2, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView:[I

    .line 9
    sget v3, Lmiuix/appcompat/R$attr;->responsiveActionMenuViewStyle:I

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 15
    move-result-object v1

    .line 16
    sget p1, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView_bottomMenuBackground:I

    .line 18
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 24
    sget p1, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView_suspendMenuBackground:I

    .line 26
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_30

    .line 32
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2f

    .line 41
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 43
    invoke-direct {p1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 46
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 48
    :cond_2f
    return-void

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    if-eqz v1, :cond_36

    .line 52
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    :cond_36
    throw p1
.end method

.method private resetActionMenuItemPaddingTop(I)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v2, v0, :cond_1f

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_13

    .line 19
    goto :goto_1c

    .line 20
    :cond_13
    instance-of v4, v3, Landroid/widget/LinearLayout;

    .line 22
    if-eqz v4, :cond_1c

    .line 24
    check-cast v3, Landroid/widget/LinearLayout;

    .line 26
    invoke-virtual {v3, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 29
    :cond_1c
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_6

    .line 32
    :cond_1f
    return-void
.end method

.method private restoreParentClipState(Landroid/view/View;)V
    .registers 6

    .line 1
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    .line 3
    if-eqz v0, :cond_26

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    .line 7
    if-eqz v0, :cond_26

    .line 9
    array-length v0, v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_23

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object p1

    .line 17
    instance-of v2, p1, Landroid/view/ViewGroup;

    .line 19
    if-eqz v2, :cond_23

    .line 21
    move-object v2, p1

    .line 22
    check-cast v2, Landroid/view/ViewGroup;

    .line 24
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    .line 26
    aget-boolean v3, v3, v1

    .line 28
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 31
    check-cast p1, Landroid/view/View;

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_a

    .line 36
    :cond_23
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    .line 39
    :cond_26
    return-void
.end method

.method private updateBackground()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 3
    if-eqz v0, :cond_16

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mViewOutlineInSuspend:Landroid/view/ViewOutlineProvider;

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 10
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    .line 12
    if-eqz v0, :cond_10

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 19
    :goto_12
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    goto :goto_2e

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 27
    iget-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mBackgroundViewApplyBlur:Z

    .line 29
    if-eqz v1, :cond_22

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void

    .line 35
    :cond_22
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    .line 37
    if-eqz v0, :cond_29

    .line 39
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 44
    :goto_2b
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :goto_2e
    return-void
.end method


# virtual methods
.method public addCustomView(Landroid/view/View;)V
    .registers 2

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    return-void
.end method

.method public applyBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    .line 6
    return-void
.end method

.method public clearBackground()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    return-void
.end method

.method public clipParent(Landroid/view/View;)V
    .registers 8

    .line 1
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    .line 3
    if-eqz v0, :cond_2c

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    .line 7
    if-nez v0, :cond_2c

    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v1, v0, [Z

    .line 12
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_f
    if-ge v2, v0, :cond_2c

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object p1

    .line 22
    instance-of v3, p1, Landroid/view/ViewGroup;

    .line 24
    if-eqz v3, :cond_2c

    .line 26
    move-object v3, p1

    .line 27
    check-cast v3, Landroid/view/ViewGroup;

    .line 29
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    .line 31
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getClipChildren()Z

    .line 34
    move-result v5

    .line 35
    aput-boolean v5, v4, v2

    .line 37
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 40
    check-cast p1, Landroid/view/View;

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_f

    .line 45
    :cond_2c
    return-void
.end method

.method public filterLeftoverView(I)Z
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_c

    .line 12
    return v2

    .line 13
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_1c

    .line 22
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 24
    if-nez v0, :cond_1a

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    move v0, v2

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    :goto_1c
    move v0, v1

    .line 30
    :goto_1d
    if-eqz v0, :cond_26

    .line 32
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->filterLeftoverView(I)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_26

    .line 38
    move v2, v1

    .line 39
    :cond_26
    return v2
.end method

.method public getBottomMenuCustomViewOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 3
    return v0
.end method

.method public getCollapsedHeight()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->getMeasuredHeightWithMargin(Landroid/view/View;)I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/view/View;

    .line 17
    if-eqz v2, :cond_17

    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    move-result v2

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v2, v1

    .line 25
    :goto_18
    if-gtz v2, :cond_1b

    .line 27
    return v1

    .line 28
    :cond_1b
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public hasOnlyCustomView()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    .line 3
    return v0
.end method

.method public hideBottomMenuCustomView()V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_3d

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    .line 7
    if-nez v0, :cond_3d

    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v1, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x2

    .line 17
    new-array v3, v2, [Ljava/lang/Object;

    .line 19
    const-string v4, "target"

    .line 21
    aput-object v4, v3, v0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    move-result-object v5

    .line 28
    const/4 v6, 0x1

    .line 29
    aput-object v5, v3, v6

    .line 31
    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 34
    move-result-object v1

    .line 35
    const/4 v3, 0x3

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    aput-object v4, v3, v0

    .line 40
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    move-result v0

    .line 46
    int-to-float v0, v0

    .line 47
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    move-result-object v0

    .line 51
    aput-object v0, v3, v6

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 55
    aput-object v0, v3, v2

    .line 57
    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 60
    iput-boolean v6, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    .line 62
    :cond_3d
    return-void
.end method

.method public isApplyBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

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
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSupportBlur()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isSupportBlur()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSuspend()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 3
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    .line 6
    if-eqz v0, :cond_24

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1d

    .line 14
    invoke-virtual {p0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->clipParent(Landroid/view/View;)V

    .line 17
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowColor:I

    .line 19
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    .line 21
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    .line 23
    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 25
    int-to-float v3, v3

    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFF)V

    .line 29
    goto :goto_74

    .line 30
    :cond_1d
    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->restoreParentClipState(Landroid/view/View;)V

    .line 33
    invoke-static {p0}, Lmiuix/core/util/MiShadowUtils;->clearMiShadow(Landroid/view/View;)V

    .line 36
    goto :goto_74

    .line 37
    :cond_24
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_5a

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 45
    if-nez v0, :cond_74

    .line 47
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    new-instance v1, Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v1, v2}, Lmiuix/appcompat/internal/view/OutDropShadowView;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 64
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 66
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/OutDropShadowView;->setShadowHostViewRadius(I)V

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/view/ViewGroup;

    .line 75
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 77
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/c;

    .line 82
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/c;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    .line 85
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 87
    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 90
    goto :goto_74

    .line 91
    :cond_5a
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 93
    if-eqz v0, :cond_74

    .line 95
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->onWillRemoved()V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/view/ViewGroup;

    .line 104
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 109
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 117
    :cond_74
    :goto_74
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    .line 11
    :cond_a
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 13
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    .line 15
    if-eq p1, v0, :cond_af

    .line 17
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    .line 19
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 21
    const/high16 v0, 0x41300000  # 11.0f

    .line 23
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 29
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 31
    const/high16 v0, 0x41800000  # 16.0f

    .line 33
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    .line 39
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 41
    const/high16 v0, 0x43440000  # 196.0f

    .line 43
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    .line 49
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 51
    const/high16 v0, 0x41000000  # 8.0f

    .line 53
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    .line 59
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 61
    const/high16 v0, 0x40a00000  # 5.0f

    .line 63
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 66
    move-result p1

    .line 67
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    .line 69
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 71
    const/high16 v0, 0x40000000  # 2.0f

    .line 73
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    move-result-object v0

    .line 87
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_bg_radius:I

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    move-result v0

    .line 93
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object v0

    .line 99
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius:I

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 104
    move-result v0

    .line 105
    int-to-float v0, v0

    .line 106
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadius:F

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object v0

    .line 112
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_x:I

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    move-result v0

    .line 118
    int-to-float v0, v0

    .line 119
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object p1

    .line 125
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_y:I

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 130
    move-result p1

    .line 131
    int-to-float p1, p1

    .line 132
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    .line 134
    sget-boolean p1, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    .line 136
    if-eqz p1, :cond_9e

    .line 138
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_9b

    .line 144
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowColor:I

    .line 146
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    .line 148
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    .line 150
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadius:F

    .line 152
    invoke-static {p0, p1, v0, v1, v2}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFF)V

    .line 155
    goto :goto_9e

    .line 156
    :cond_9b
    invoke-static {p0}, Lmiuix/core/util/MiShadowUtils;->clearMiShadow(Landroid/view/View;)V

    .line 159
    :cond_9e
    :goto_9e
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAttrs:Landroid/util/AttributeSet;

    .line 161
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V

    .line 164
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    .line 167
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 169
    if-eqz p1, :cond_af

    .line 171
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 173
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->setShadowHostViewRadius(I)V

    .line 176
    :cond_af
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    .line 5
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onDetachedFromWindow()V

    .line 8
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    move-result p2

    .line 9
    iget-boolean p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    .line 11
    const/16 p4, 0x8

    .line 13
    const/4 p5, 0x0

    .line 14
    if-eqz p3, :cond_30

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 18
    if-eqz p1, :cond_2f

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 23
    move-result p1

    .line 24
    if-eq p1, p4, :cond_2f

    .line 26
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 31
    move-result p1

    .line 32
    add-int/lit8 v4, p1, 0x0

    .line 34
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 39
    move-result p1

    .line 40
    add-int/lit8 v5, p1, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    move-object v0, p0

    .line 45
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 48
    :cond_2f
    return-void

    .line 49
    :cond_30
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 51
    if-eqz p3, :cond_5c

    .line 53
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 56
    move-result p3

    .line 57
    if-eq p3, p4, :cond_5c

    .line 59
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 64
    move-result p3

    .line 65
    add-int/lit8 v4, p3, 0x0

    .line 67
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 69
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 72
    move-result p3

    .line 73
    add-int/lit8 v5, p3, 0x0

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    move-object v0, p0

    .line 78
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 81
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 83
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 86
    move-result p3

    .line 87
    add-int/2addr p3, p5

    .line 88
    iget p4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 90
    sub-int/2addr p3, p4

    .line 91
    if-gez p3, :cond_5d

    .line 93
    :cond_5c
    move p3, p5

    .line 94
    :cond_5d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 97
    move-result p4

    .line 98
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getActionMenuItemCount()I

    .line 101
    move-result v0

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 105
    move-result v1

    .line 106
    sub-int/2addr p1, v1

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 110
    move-result v1

    .line 111
    sub-int/2addr p1, v1

    .line 112
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 114
    mul-int/2addr v1, v0

    .line 115
    add-int/lit8 v0, v0, -0x1

    .line 117
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 119
    mul-int/2addr v0, v2

    .line 120
    add-int/2addr v0, v1

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 124
    move-result v1

    .line 125
    sub-int/2addr p1, v0

    .line 126
    div-int/lit8 p1, p1, 0x2

    .line 128
    add-int/2addr p1, v1

    .line 129
    :goto_80
    if-ge p5, p4, :cond_a7

    .line 131
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 134
    move-result-object v6

    .line 135
    invoke-direct {p0, v6}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_8d

    .line 141
    goto :goto_a4

    .line 142
    :cond_8d
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 145
    move-result v0

    .line 146
    add-int v4, v0, p1

    .line 148
    move-object v0, p0

    .line 149
    move-object v1, v6

    .line 150
    move v2, p1

    .line 151
    move v3, p3

    .line 152
    move v5, p2

    .line 153
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 156
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 159
    move-result v0

    .line 160
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 162
    add-int/2addr v0, v1

    .line 163
    add-int/2addr v0, p1

    .line 164
    move p1, v0

    .line 165
    :goto_a4
    add-int/lit8 p5, p5, 0x1

    .line 167
    goto :goto_80

    .line 168
    :cond_a7
    return-void
.end method

.method public onMeasure(II)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p2

    .line 5
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    .line 8
    iput-boolean v2, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 13
    move-result v3

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 17
    move-result v4

    .line 18
    add-int/2addr v4, v3

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 22
    move-result v5

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 26
    move-result v6

    .line 27
    add-int/2addr v6, v5

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    move-result v5

    .line 32
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getActionMenuItemCount()I

    .line 35
    move-result v7

    .line 36
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 39
    move-result v8

    .line 40
    const/4 v10, 0x1

    .line 41
    const/high16 v11, 0x40000000  # 2.0f

    .line 43
    if-eqz v5, :cond_fa

    .line 45
    if-nez v7, :cond_30

    .line 47
    goto/16 :goto_fa

    .line 49
    :cond_30
    iget-boolean v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 51
    if-eqz v5, :cond_8c

    .line 53
    iget-object v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 55
    const/high16 v12, 0x42e60000  # 115.0f

    .line 57
    invoke-static {v5, v12}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 60
    move-result v5

    .line 61
    iput v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 63
    iget-object v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 65
    const/high16 v12, 0x42a00000  # 80.0f

    .line 67
    invoke-static {v5, v12}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 70
    move-result v5

    .line 71
    const/high16 v12, -0x80000000

    .line 73
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 76
    move-result v12

    .line 77
    add-int/lit8 v13, v7, -0x1

    .line 79
    iget v14, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 81
    mul-int/2addr v13, v14

    .line 82
    iget v14, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 84
    mul-int/2addr v14, v7

    .line 85
    add-int/2addr v14, v13

    .line 86
    iget v15, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    .line 88
    mul-int/lit8 v16, v15, 0x2

    .line 90
    sub-int v9, v8, v16

    .line 92
    if-lt v14, v9, :cond_65

    .line 94
    sub-int/2addr v8, v6

    .line 95
    mul-int/lit8 v15, v15, 0x2

    .line 97
    sub-int/2addr v8, v15

    .line 98
    sub-int/2addr v8, v13

    .line 99
    div-int/2addr v8, v7

    .line 100
    iput v8, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 102
    :cond_65
    iget v8, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 104
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 107
    move-result v8

    .line 108
    invoke-direct {v0, v8, v12, v10}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->measureActionMenuItem(IIZ)V

    .line 111
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getMaxChildrenTotalHeight()I

    .line 114
    move-result v8

    .line 115
    iget v9, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    .line 117
    mul-int/lit8 v9, v9, 0x2

    .line 119
    add-int/2addr v9, v8

    .line 120
    sub-int v8, v5, v9

    .line 122
    div-int/lit8 v8, v8, 0x2

    .line 124
    invoke-direct {v0, v8}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->resetActionMenuItemPaddingTop(I)V

    .line 127
    iput v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 129
    iget v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 131
    mul-int/2addr v5, v7

    .line 132
    add-int/2addr v5, v6

    .line 133
    add-int/2addr v5, v13

    .line 134
    iget v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    .line 136
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 139
    move-result v8

    .line 140
    goto :goto_b3

    .line 141
    :cond_8c
    sub-int v5, v8, v6

    .line 143
    add-int/lit8 v6, v7, -0x1

    .line 145
    iget v9, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 147
    mul-int/2addr v6, v9

    .line 148
    sub-int/2addr v5, v6

    .line 149
    div-int/2addr v5, v7

    .line 150
    iput v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    move-result-object v5

    .line 156
    const/high16 v6, 0x42800000  # 64.0f

    .line 158
    invoke-static {v5, v6}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 161
    move-result v5

    .line 162
    add-int/2addr v5, v3

    .line 163
    iget v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 165
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 168
    move-result v6

    .line 169
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 172
    move-result v7

    .line 173
    iget-boolean v9, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 175
    invoke-direct {v0, v6, v7, v9}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->measureActionMenuItem(IIZ)V

    .line 178
    iput v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 180
    :goto_b3
    iget v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 182
    add-int/2addr v2, v5

    .line 183
    add-int/2addr v2, v4

    .line 184
    iget-boolean v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 186
    if-nez v5, :cond_bc

    .line 188
    sub-int/2addr v2, v3

    .line 189
    :cond_bc
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 191
    if-eqz v3, :cond_f3

    .line 193
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 196
    move-result v3

    .line 197
    const/16 v5, 0x8

    .line 199
    if-eq v3, v5, :cond_f3

    .line 201
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 203
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 206
    move-result-object v3

    .line 207
    check-cast v3, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 209
    iget-object v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 211
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 214
    move-result v6

    .line 215
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 217
    invoke-static {v1, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 220
    move-result v1

    .line 221
    invoke-virtual {v5, v6, v1}, Landroid/view/View;->measure(II)V

    .line 224
    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 226
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getCustomViewClipBounds()Landroid/graphics/Rect;

    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v1, v3}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 233
    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 235
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 238
    move-result v1

    .line 239
    add-int/2addr v1, v2

    .line 240
    iget v2, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 242
    sub-int v2, v1, v2

    .line 244
    :cond_f3
    invoke-virtual {v0, v8, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 247
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->keepHidden()V

    .line 250
    return-void

    .line 251
    :cond_fa
    :goto_fa
    iput v2, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 253
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 255
    if-eqz v3, :cond_15d

    .line 257
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 260
    move-result v3

    .line 261
    const/16 v5, 0x8

    .line 263
    if-ne v3, v5, :cond_109

    .line 265
    goto :goto_15d

    .line 266
    :cond_109
    iput-boolean v10, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    .line 268
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 270
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 273
    move-result-object v3

    .line 274
    check-cast v3, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 276
    iget-boolean v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 278
    if-eqz v5, :cond_12c

    .line 280
    iget-object v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 282
    iget v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    .line 284
    mul-int/lit8 v6, v6, 0x2

    .line 286
    sub-int/2addr v8, v6

    .line 287
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 290
    move-result v6

    .line 291
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 293
    invoke-static {v1, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 296
    move-result v1

    .line 297
    invoke-virtual {v5, v6, v1}, Landroid/view/View;->measure(II)V

    .line 300
    goto :goto_13b

    .line 301
    :cond_12c
    iget-object v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 303
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 306
    move-result v6

    .line 307
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 309
    invoke-static {v1, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 312
    move-result v1

    .line 313
    invoke-virtual {v5, v6, v1}, Landroid/view/View;->measure(II)V

    .line 316
    :goto_13b
    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 318
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getCustomViewClipBounds()Landroid/graphics/Rect;

    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v1, v3}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 325
    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 327
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 330
    move-result v1

    .line 331
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 333
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 336
    move-result v3

    .line 337
    add-int/2addr v3, v2

    .line 338
    add-int/2addr v3, v4

    .line 339
    iget v4, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 341
    sub-int/2addr v3, v4

    .line 342
    if-gez v3, :cond_158

    .line 344
    goto :goto_159

    .line 345
    :cond_158
    move v2, v3

    .line 346
    :goto_159
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 349
    goto :goto_162

    .line 350
    :cond_15d
    :goto_15d
    iput-boolean v10, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    .line 352
    invoke-virtual {v0, v2, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 355
    :goto_162
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->keepHidden()V

    .line 358
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 5

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    .line 8
    return-void
.end method

.method public onWillRemoved()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onWillRemoved()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    .line 8
    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->restoreParentClipState(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 13
    if-eqz v0, :cond_24

    .line 15
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->onWillRemoved()V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 37
    :cond_24
    return-void
.end method

.method public removeCustomView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_17

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_17

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 22
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    .line 24
    :cond_17
    return-void
.end method

.method public resetBackground()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    .line 4
    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    if-gez p1, :cond_7

    .line 7
    goto :goto_c

    .line 8
    :cond_7
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    :cond_c
    :goto_c
    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    .line 6
    if-eqz p1, :cond_b

    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public setHidden(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsHidden:Z

    .line 3
    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    .line 6
    return-void
.end method

.method public setSuspendEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 3
    if-eq v0, p1, :cond_10

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 9
    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->resetBlurParams()V

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 14
    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->refreshBlur()V

    .line 17
    :cond_10
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    .line 20
    return-void
.end method

.method public setTranslationY(F)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 11
    :cond_a
    return-void
.end method

.method public showBottomMenuCustomView()V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_3d

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    .line 7
    if-eqz v0, :cond_3d

    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v1, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x2

    .line 17
    new-array v3, v2, [Ljava/lang/Object;

    .line 19
    const-string v4, "target"

    .line 21
    aput-object v4, v3, v0

    .line 23
    iget-object v5, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 28
    move-result v5

    .line 29
    int-to-float v5, v5

    .line 30
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    move-result-object v5

    .line 34
    const/4 v6, 0x1

    .line 35
    aput-object v5, v3, v6

    .line 37
    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 40
    move-result-object v1

    .line 41
    const/4 v3, 0x3

    .line 42
    new-array v3, v3, [Ljava/lang/Object;

    .line 44
    aput-object v4, v3, v0

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    move-result-object v4

    .line 51
    aput-object v4, v3, v6

    .line 53
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 55
    aput-object v4, v3, v2

    .line 57
    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 60
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    .line 62
    :cond_3d
    return-void
.end method
