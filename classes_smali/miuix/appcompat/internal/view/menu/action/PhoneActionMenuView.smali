.class public Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.source "PhoneActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;,
        Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final PAD_GAP_LEVEL_1_DP:I = 0x2bc

.field private static final PAD_GAP_LEVEL_2_DP:I = 0x2e4

.field private static final PAD_GAP_LEVEL_3_DP:I = 0x3e8


# instance fields
.field private mActionCount:I

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mBackgroundView:Landroid/view/View;

.field private mCollapseBackground:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private final mDeviceType:I

.field private mExpandBackground:Landroid/graphics/drawable/Drawable;

.field private mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

.field private mMaxActionButtonWidth:I

.field private mMenuItemGap:I

.field private mMenuItemGapForBigWide:I

.field private mMenuItemGapForCommon:I

.field private mMenuItemGapForNormalWide:I

.field private mMenuItemGapForSmallWide:I

.field private mMenuItemGapForTinyWide:I

.field private mMenuItemHeight:I

.field private mMenuItemWidth:I

.field private mOverflowBackgroundBackup:Landroid/graphics/drawable/Drawable;

.field private mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

.field private mOverflowMenuView:Landroid/view/View;

.field private mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

.field private mSplitActionBarOverlayHeight:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100d4

    .line 8
    aput v2, v0, v1

    .line 10
    sget v1, Lmiuix/appcompat/R$attr;->expandBackground:I

    .line 12
    const/4 v2, 0x1

    .line 13
    aput v1, v0, v2

    .line 15
    sget v1, Lmiuix/appcompat/R$attr;->splitActionBarOverlayHeight:I

    .line 17
    const/4 v2, 0x2

    .line 18
    aput v1, v0, v2

    .line 20
    sput-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->ATTRS:[I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForCommon:I

    .line 6
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForTinyWide:I

    .line 7
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForSmallWide:I

    .line 8
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForNormalWide:I

    .line 9
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForBigWide:I

    .line 10
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 11
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    const/4 v1, 0x0

    .line 12
    invoke-super {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    .line 14
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    .line 16
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    .line 17
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    .line 20
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 21
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 23
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mDeviceType:I

    .line 24
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->updateActionButtonValues(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method private extractBackground()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 14
    if-nez v0, :cond_12

    .line 16
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    .line 21
    :goto_14
    if-nez v0, :cond_1c

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 28
    return-void

    .line 29
    :cond_1c
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 34
    return-void
.end method

.method private getActionMenuItemCount()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

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
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 21
    move-result v1

    .line 22
    if-eq v1, v2, :cond_19

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 26
    :cond_19
    return v0
.end method

.method private getOverflowMenuViewAnimator()Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$1;)V

    .line 11
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 15
    return-object v0
.end method

.method private isNotActionMenuItemChild(Landroid/view/View;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 3
    if-eq p1, v0, :cond_b

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 7
    if-ne p1, v0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 p1, 0x1

    .line 13
    :goto_c
    return p1
.end method

.method private updateActionButtonValues(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_max_width:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 17
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_gap:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForCommon:I

    .line 25
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mDeviceType:I

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eq v0, v1, :cond_4d

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v0

    .line 34
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_gap_tiny_wide:I

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForTinyWide:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v0

    .line 46
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_gap_small_wide:I

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForSmallWide:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v0

    .line 58
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_gap_normal_wide:I

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForNormalWide:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object p1

    .line 70
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_gap_big_wide:I

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForBigWide:I

    .line 78
    :cond_4d
    return-void
.end method

.method private updateItemGapAdaptByCurrentWidth(Landroid/content/Context;I)V
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mDeviceType:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_a

    .line 6
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForTinyWide:I

    .line 8
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 10
    return-void

    .line 11
    :cond_a
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_41

    .line 14
    int-to-float p2, p2

    .line 15
    const/high16 v0, 0x3f800000  # 1.0f

    .line 17
    mul-float/2addr p2, v0

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    move-result-object p1

    .line 26
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 28
    div-float/2addr p2, p1

    .line 29
    float-to-int p1, p2

    .line 30
    const/16 p2, 0x2bc

    .line 32
    const/16 v0, 0x2e4

    .line 34
    if-lt p1, p2, :cond_2a

    .line 36
    if-ge p1, v0, :cond_2a

    .line 38
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForSmallWide:I

    .line 40
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 42
    goto :goto_40

    .line 43
    :cond_2a
    const/16 p2, 0x3e8

    .line 45
    if-lt p1, v0, :cond_35

    .line 47
    if-ge p1, p2, :cond_35

    .line 49
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForNormalWide:I

    .line 51
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 53
    goto :goto_40

    .line 54
    :cond_35
    if-lt p1, p2, :cond_3c

    .line 56
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForBigWide:I

    .line 58
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 60
    goto :goto_40

    .line 61
    :cond_3c
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForTinyWide:I

    .line 63
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 65
    :goto_40
    return-void

    .line 66
    :cond_41
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForCommon:I

    .line 68
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 70
    return-void
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 2

    return-void
.end method

.method public filterLeftoverView(I)Z
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_e

    .line 13
    :cond_c
    move v0, v3

    .line 14
    goto :goto_1b

    .line 15
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 21
    if-eqz v0, :cond_1a

    .line 23
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 25
    if-nez v0, :cond_c

    .line 27
    :cond_1a
    move v0, v2

    .line 28
    :goto_1b
    if-eqz v0, :cond_24

    .line 30
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->filterLeftoverView(I)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_24

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v2, v3

    .line 38
    :goto_25
    return v2
.end method

.method public getChildDrawingOrder(II)I
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    if-nez p2, :cond_15

    .line 16
    if-eq v0, v2, :cond_12

    .line 18
    return v0

    .line 19
    :cond_12
    if-eq v1, v2, :cond_1d

    .line 21
    return v1

    .line 22
    :cond_15
    const/4 v3, 0x1

    .line 23
    if-ne p2, v3, :cond_1d

    .line 25
    if-eq v0, v2, :cond_1d

    .line 27
    if-eq v1, v2, :cond_1d

    .line 29
    return v1

    .line 30
    :cond_1d
    const/4 v2, 0x0

    .line 31
    :goto_1e
    if-ge v2, p1, :cond_35

    .line 33
    if-eq v2, v0, :cond_32

    .line 35
    if-ne v2, v1, :cond_25

    .line 37
    goto :goto_32

    .line 38
    :cond_25
    if-ge v2, v0, :cond_2a

    .line 40
    add-int/lit8 v3, v2, 0x1

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v3, v2

    .line 44
    :goto_2b
    if-ge v2, v1, :cond_2f

    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 48
    :cond_2f
    if-ne v3, p2, :cond_32

    .line 50
    return v2

    .line 51
    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_1e

    .line 54
    :cond_35
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method public getCollapsedHeight()I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 9
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 11
    add-int/2addr v0, v1

    .line 12
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public hasBackgroundView()Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v1, v2, :cond_12

    .line 11
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 17
    if-ne v1, v2, :cond_13

    .line 19
    :cond_12
    move v0, v3

    .line 20
    :cond_13
    return v0
.end method

.method public hideOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 3
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 5
    if-eq v0, v1, :cond_22

    .line 7
    sget-object v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 9
    if-ne v0, v2, :cond_b

    .line 11
    goto :goto_22

    .line 12
    :cond_b
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 18
    if-ne v0, v3, :cond_19

    .line 20
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 22
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->hide(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 25
    goto :goto_20

    .line 26
    :cond_19
    sget-object p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 28
    if-ne v0, p1, :cond_20

    .line 30
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    .line 33
    :cond_20
    :goto_20
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_22
    :goto_22
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public isApplyBlur()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEnableBlur()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 3
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 5
    if-eq v0, v1, :cond_d

    .line 7
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

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

.method public isSupportBlur()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    .line 6
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->updateActionButtonValues(Landroid/content/Context;)V

    .line 9
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 13

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_1b

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    move-result p1

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v0, p0

    .line 17
    move v4, p4

    .line 18
    move v5, p1

    .line 19
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 22
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 24
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 26
    sub-int/2addr p1, p3

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move p1, p2

    .line 29
    :goto_1c
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 31
    const/4 v2, 0x0

    .line 32
    move-object v0, p0

    .line 33
    move v3, p1

    .line 34
    move v4, p4

    .line 35
    move v5, p5

    .line 36
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    move-result p3

    .line 43
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemWidth:I

    .line 45
    sub-int/2addr p4, v0

    .line 46
    shr-int/lit8 p4, p4, 0x1

    .line 48
    :goto_2f
    if-ge p2, p3, :cond_56

    .line 50
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    move-result-object v6

    .line 54
    invoke-direct {p0, v6}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3c

    .line 60
    goto :goto_53

    .line 61
    :cond_3c
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 64
    move-result v0

    .line 65
    add-int v4, v0, p4

    .line 67
    move-object v0, p0

    .line 68
    move-object v1, v6

    .line 69
    move v2, p4

    .line 70
    move v3, p1

    .line 71
    move v5, p5

    .line 72
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 75
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 78
    move-result v0

    .line 79
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 81
    add-int/2addr v0, v1

    .line 82
    add-int/2addr v0, p4

    .line 83
    move p4, v0

    .line 84
    :goto_53
    add-int/lit8 p2, p2, 0x1

    .line 86
    goto :goto_2f

    .line 87
    :cond_56
    return-void
.end method

.method public onMeasure(II)V
    .registers 18

    .line 1
    move-object v6, p0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v7

    .line 6
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getActionMenuItemCount()I

    .line 9
    move-result v0

    .line 10
    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    .line 12
    const/4 v8, 0x0

    .line 13
    if-eqz v7, :cond_de

    .line 15
    if-nez v0, :cond_12

    .line 17
    goto/16 :goto_de

    .line 19
    :cond_12
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 22
    move-result v9

    .line 23
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    .line 25
    div-int v0, v9, v0

    .line 27
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 32
    move-result v0

    .line 33
    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p0, v0, v9}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->updateItemGapAdaptByCurrentWidth(Landroid/content/Context;I)V

    .line 42
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 44
    const/high16 v1, -0x80000000

    .line 46
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 49
    move-result v10

    .line 50
    move v11, v8

    .line 51
    move v12, v11

    .line 52
    move v13, v12

    .line 53
    :goto_34
    if-ge v11, v7, :cond_61

    .line 55
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    move-result-object v14

    .line 59
    invoke-direct {p0, v14}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_41

    .line 65
    goto :goto_5e

    .line 66
    :cond_41
    const/4 v3, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    move-object v0, p0

    .line 69
    move-object v1, v14

    .line 70
    move v2, v10

    .line 71
    move/from16 v4, p2

    .line 73
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 76
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 79
    move-result v0

    .line 80
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 85
    move-result v0

    .line 86
    add-int/2addr v12, v0

    .line 87
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 90
    move-result v0

    .line 91
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    .line 94
    move-result v13

    .line 95
    :goto_5e
    add-int/lit8 v11, v11, 0x1

    .line 97
    goto :goto_34

    .line 98
    :cond_61
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 100
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    .line 102
    add-int/lit8 v2, v1, -0x1

    .line 104
    mul-int/2addr v2, v0

    .line 105
    add-int/2addr v2, v12

    .line 106
    if-le v2, v9, :cond_6d

    .line 108
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 110
    :cond_6d
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 112
    add-int/lit8 v1, v1, -0x1

    .line 114
    mul-int/2addr v1, v0

    .line 115
    add-int v7, v1, v12

    .line 117
    iput v7, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemWidth:I

    .line 119
    iput v13, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    .line 121
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 123
    if-eqz v0, :cond_c1

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    .line 133
    invoke-static {v1}, Lmiuix/core/util/MiuixUIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 136
    move-result v1

    .line 137
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 139
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    .line 141
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 143
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 145
    const/4 v3, 0x0

    .line 146
    const/4 v5, 0x0

    .line 147
    move-object v0, p0

    .line 148
    move/from16 v2, p1

    .line 150
    move/from16 v4, p2

    .line 152
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 155
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 160
    move-result v0

    .line 161
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    .line 164
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 169
    move-result v0

    .line 170
    add-int/2addr v13, v0

    .line 171
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 173
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 175
    if-ne v0, v1, :cond_b7

    .line 177
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 179
    const/4 v1, 0x0

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 183
    goto :goto_c1

    .line 184
    :cond_b7
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 186
    if-ne v0, v1, :cond_c1

    .line 188
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 190
    int-to-float v1, v13

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 194
    :cond_c1
    :goto_c1
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 196
    if-nez v0, :cond_ca

    .line 198
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 200
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 202
    add-int/2addr v13, v0

    .line 203
    :cond_ca
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 205
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 207
    sget-object v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 209
    if-ne v1, v2, :cond_d5

    .line 211
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 213
    goto :goto_d7

    .line 214
    :cond_d5
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    .line 216
    :goto_d7
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual {p0, v9, v13}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 222
    return-void

    .line 223
    :cond_de
    :goto_de
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    .line 225
    invoke-virtual {p0, v8, v8}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 228
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 5

    .line 1
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_d

    .line 7
    invoke-virtual {p0, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->computeAlpha(FZZ)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 14
    :cond_d
    invoke-virtual {p0, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->computeTranslationY(FZZ)F

    .line 17
    move-result p1

    .line 18
    const/4 p2, 0x0

    .line 19
    :goto_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result p3

    .line 23
    if-ge p2, p3, :cond_29

    .line 25
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object p3

    .line 29
    invoke-direct {p0, p3}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    .line 32
    move-result p4

    .line 33
    if-eqz p4, :cond_23

    .line 35
    goto :goto_26

    .line 36
    :cond_23
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 39
    :goto_26
    add-int/lit8 p2, p2, 0x1

    .line 41
    goto :goto_12

    .line 42
    :cond_29
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 7
    if-nez v1, :cond_a

    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 14
    move-result v1

    .line 15
    :goto_e
    cmpl-float v0, v0, v1

    .line 17
    if-gtz v0, :cond_1b

    .line 19
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_19

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    .line 29
    :goto_1c
    return p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    .line 10
    :cond_9
    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 2

    return-void
.end method

.method public setOverflowMenuView(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_13

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-le v0, v2, :cond_13

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move-object v0, v1

    .line 21
    :goto_14
    if-eq v0, p1, :cond_53

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 25
    if-eqz v0, :cond_33

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_25

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 38
    :cond_25
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 40
    if-eqz v0, :cond_33

    .line 42
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 52
    :cond_33
    if-eqz p1, :cond_4c

    .line 54
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 56
    if-nez v0, :cond_42

    .line 58
    new-instance v0, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 60
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 67
    :cond_42
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 69
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_4c
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 79
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 81
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    .line 84
    :cond_53
    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 2

    return-void
.end method

.method public setValue(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    mul-float/2addr p1, v1

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 15
    return-void
.end method

.method public showOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 3
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 5
    if-eq v0, v1, :cond_39

    .line 7
    sget-object v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 9
    if-eq v0, v2, :cond_39

    .line 11
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 13
    if-nez v2, :cond_f

    .line 15
    goto :goto_39

    .line 16
    :cond_f
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 18
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    .line 20
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 29
    if-ne v0, v3, :cond_24

    .line 31
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 33
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->show(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 36
    goto :goto_2b

    .line 37
    :cond_24
    sget-object p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 39
    if-ne v0, p1, :cond_2b

    .line 41
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    .line 44
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 47
    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 57
    return p1

    .line 58
    :cond_39
    :goto_39
    const/4 p1, 0x0

    .line 59
    return p1
.end method
