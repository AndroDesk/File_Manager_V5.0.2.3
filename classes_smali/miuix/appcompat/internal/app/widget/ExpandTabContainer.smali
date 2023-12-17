.class public Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;
.super Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.source "ExpandTabContainer.java"


# instance fields
.field private mTabSizeStages:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->getTabContainerHeight()I

    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 11
    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [I

    .line 14
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mTabSizeStages:[I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v1

    .line 20
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_tab_expand_text_size:I

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    aput v1, v0, v2

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mTabSizeStages:[I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v1

    .line 35
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_tab_expand_text_size_1:I

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x1

    .line 42
    aput v1, v0, v2

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mTabSizeStages:[I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object p1

    .line 50
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_tab_expand_text_size_2:I

    .line 52
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    move-result p1

    .line 56
    const/4 v1, 0x2

    .line 57
    aput p1, v0, v1

    .line 59
    return-void
.end method

.method private measureTabViewSizeStage2([III)V
    .registers 12

    .line 1
    const/4 p3, 0x0

    .line 2
    aget v0, p1, p3

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->getTabViewMarginHorizontal()I

    .line 7
    move-result v1

    .line 8
    move v2, p3

    .line 9
    :goto_8
    array-length v3, p1

    .line 10
    if-ge v2, v3, :cond_5a

    .line 12
    aget v0, p1, v2

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, p3

    .line 16
    move v5, v4

    .line 17
    :goto_10
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result v6

    .line 23
    if-ge v4, v6, :cond_48

    .line 25
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 27
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 33
    invoke-virtual {v6}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    .line 36
    move-result-object v6

    .line 37
    if-eqz v6, :cond_45

    .line 39
    if-nez v3, :cond_32

    .line 41
    new-instance v3, Landroid/text/TextPaint;

    .line 43
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 46
    move-result-object v7

    .line 47
    invoke-direct {v3, v7}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 50
    add-int/2addr v5, v1

    .line 51
    :cond_32
    int-to-float v7, v0

    .line 52
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    int-to-float v5, v5

    .line 56
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 59
    move-result-object v6

    .line 60
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 67
    move-result v6

    .line 68
    add-float/2addr v6, v5

    .line 69
    float-to-int v5, v6

    .line 70
    :cond_45
    add-int/lit8 v4, v4, 0x1

    .line 72
    goto :goto_10

    .line 73
    :cond_48
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 76
    move-result v3

    .line 77
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 80
    move-result v4

    .line 81
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 84
    move-result v3

    .line 85
    if-gt v5, v3, :cond_57

    .line 87
    goto :goto_5a

    .line 88
    :cond_57
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_8

    .line 91
    :cond_5a
    :goto_5a
    move p1, p3

    .line 92
    :goto_5b
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 94
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 97
    move-result p2

    .line 98
    if-ge p1, p2, :cond_78

    .line 100
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 105
    move-result-object p2

    .line 106
    check-cast p2, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    .line 108
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    .line 111
    move-result-object p2

    .line 112
    if-eqz p2, :cond_75

    .line 114
    int-to-float v1, v0

    .line 115
    invoke-virtual {p2, p3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    :cond_75
    add-int/lit8 p1, p1, 0x1

    .line 120
    goto :goto_5b

    .line 121
    :cond_78
    return-void
.end method


# virtual methods
.method public getDefaultTabTextStyle()I
    .registers 2

    .line 1
    sget v0, Lmiuix/appcompat/R$attr;->actionBarTabTextExpandStyle:I

    .line 3
    return v0
.end method

.method public getTabBarLayoutRes()I
    .registers 2

    .line 1
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tabbar_expand:I

    .line 3
    return v0
.end method

.method public getTabContainerHeight()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public getTabViewLayoutRes()I
    .registers 2

    .line 1
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tab_expand:I

    .line 3
    return v0
.end method

.method public getTabViewMarginHorizontal()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_tab_expand_margin:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public onMeasure(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mTabSizeStages:[I

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 11
    move-result v1

    .line 12
    invoke-direct {p0, v0, v1, p2}, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->measureTabViewSizeStage2([III)V

    .line 15
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->onMeasure(II)V

    .line 18
    return-void
.end method
