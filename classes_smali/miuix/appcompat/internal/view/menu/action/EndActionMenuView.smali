.class public Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.source "EndActionMenuView.java"


# instance fields
.field private mActionCount:I

.field private mContext:Landroid/content/Context;

.field private mMaxActionButtonWidth:I

.field private mMenuItemGap:I

.field private mMenuItemHeight:I

.field private mMenuItemWidth:I

.field private mStartPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    const/4 p2, 0x0

    invoke-super {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_end_menu_button_gap:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_end_menu_start_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    return-void
.end method

.method private getActionMenuItemCount()I
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method private isNotActionMenuItemChild(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 2

    return-void
.end method

.method public filterLeftoverView(I)Z
    .registers 6

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    :cond_c
    move v0, v3

    goto :goto_1b

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_1a

    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_c

    :cond_1a
    move v0, v2

    :goto_1b
    if-eqz v0, :cond_24

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->filterLeftoverView(I)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    return v2
.end method

.method public generateOverflowButtonLayoutParams(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object p1
.end method

.method public getCollapsedHeight()I
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemHeight:I

    return v0
.end method

.method public hasBackgroundView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
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

.method public isSupportBlur()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 12

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p1, :cond_2e

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-direct {p0, p4}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, v0, p2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p4

    move v2, p2

    move v5, p5

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    add-int/2addr p4, v0

    add-int/2addr p4, p2

    move p2, p4

    :cond_2b
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_2e
    return-void
.end method

.method public onMeasure(II)V
    .registers 19

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->getActionMenuItemCount()I

    move-result v0

    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    const/4 v8, 0x0

    if-eqz v7, :cond_6f

    if-nez v0, :cond_12

    goto :goto_6f

    :cond_12
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    div-int v0, v9, v0

    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/high16 v0, -0x80000000

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v12, v8

    move v13, v12

    move v14, v13

    :goto_29
    if-ge v12, v7, :cond_55

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-direct {v6, v15}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_52

    :cond_36
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v11

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v13, v0

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_52
    add-int/lit8 v12, v12, 0x1

    goto :goto_29

    :cond_55
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    add-int v2, v0, v13

    add-int/2addr v2, v1

    if-le v2, v9, :cond_65

    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    :cond_65
    add-int/2addr v13, v1

    add-int/2addr v13, v0

    iput v13, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemWidth:I

    iput v14, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemHeight:I

    invoke-virtual {v6, v13, v14}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_6f
    :goto_6f
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemHeight:I

    invoke-virtual {v6, v8, v8}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 5

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->computeAlpha(FZZ)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    invoke-virtual {p0, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->computeTranslationY(FZZ)F

    move-result p1

    const/4 p2, 0x0

    :goto_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_29

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p3}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_23

    goto :goto_26

    :cond_23
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_26
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_29
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEnableBlur(Z)V
    .registers 2

    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 2

    return-void
.end method
