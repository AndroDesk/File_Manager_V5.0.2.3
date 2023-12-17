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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    .line 4
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    .line 5
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    .line 6
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    const/4 p2, 0x0

    .line 7
    invoke-super {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_end_menu_button_gap:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_end_menu_start_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    .line 11
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

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
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

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

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

.method public generateOverflowButtonLayoutParams(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 12
    return-object p1
.end method

.method public getCollapsedHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemHeight:I

    .line 3
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

    .line 1
    sub-int/2addr p5, p3

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result p1

    .line 6
    iget p2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    .line 8
    const/4 p3, 0x0

    .line 9
    :goto_8
    if-ge p3, p1, :cond_2e

    .line 11
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object p4

    .line 15
    invoke-direct {p0, p4}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2b

    .line 21
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    move-result v0

    .line 25
    add-int v4, v0, p2

    .line 27
    const/4 v3, 0x0

    .line 28
    move-object v0, p0

    .line 29
    move-object v1, p4

    .line 30
    move v2, p2

    .line 31
    move v5, p5

    .line 32
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 35
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 38
    move-result p4

    .line 39
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    .line 41
    add-int/2addr p4, v0

    .line 42
    add-int/2addr p4, p2

    .line 43
    move p2, p4

    .line 44
    :cond_2b
    add-int/lit8 p3, p3, 0x1

    .line 46
    goto :goto_8

    .line 47
    :cond_2e
    return-void
.end method

.method public onMeasure(II)V
    .registers 19

    .line 1
    move-object/from16 v6, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v7

    .line 7
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->getActionMenuItemCount()I

    .line 10
    move-result v0

    .line 11
    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    .line 13
    const/4 v8, 0x0

    .line 14
    if-eqz v7, :cond_6f

    .line 16
    if-nez v0, :cond_12

    .line 18
    goto :goto_6f

    .line 19
    :cond_12
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 22
    move-result v9

    .line 23
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    .line 25
    div-int v0, v9, v0

    .line 27
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMaxActionButtonWidth:I

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 32
    move-result v10

    .line 33
    const/high16 v0, -0x80000000

    .line 35
    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 38
    move-result v11

    .line 39
    move v12, v8

    .line 40
    move v13, v12

    .line 41
    move v14, v13

    .line 42
    :goto_29
    if-ge v12, v7, :cond_55

    .line 44
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    move-result-object v15

    .line 48
    invoke-direct {v6, v15}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_36

    .line 54
    goto :goto_52

    .line 55
    :cond_36
    const/4 v3, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    move-object/from16 v0, p0

    .line 59
    move-object v1, v15

    .line 60
    move v2, v11

    .line 61
    move/from16 v4, p2

    .line 63
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 66
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    .line 69
    move-result v0

    .line 70
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    .line 73
    move-result v0

    .line 74
    add-int/2addr v13, v0

    .line 75
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    .line 78
    move-result v0

    .line 79
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    .line 82
    move-result v14

    .line 83
    :goto_52
    add-int/lit8 v12, v12, 0x1

    .line 85
    goto :goto_29

    .line 86
    :cond_55
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    .line 88
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mActionCount:I

    .line 90
    add-int/lit8 v1, v1, -0x1

    .line 92
    mul-int/2addr v1, v0

    .line 93
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mStartPadding:I

    .line 95
    add-int v2, v0, v13

    .line 97
    add-int/2addr v2, v1

    .line 98
    if-le v2, v9, :cond_65

    .line 100
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemGap:I

    .line 102
    :cond_65
    add-int/2addr v13, v1

    .line 103
    add-int/2addr v13, v0

    .line 104
    iput v13, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemWidth:I

    .line 106
    iput v14, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemHeight:I

    .line 108
    invoke-virtual {v6, v13, v14}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 111
    return-void

    .line 112
    :cond_6f
    :goto_6f
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->mMenuItemHeight:I

    .line 114
    invoke-virtual {v6, v8, v8}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 117
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
    invoke-direct {p0, p3}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

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
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
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
