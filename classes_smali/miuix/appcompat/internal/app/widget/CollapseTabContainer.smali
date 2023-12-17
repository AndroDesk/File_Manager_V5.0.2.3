.class public Lmiuix/appcompat/internal/app/widget/CollapseTabContainer;
.super Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.source "CollapseTabContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/CollapseTabContainer;->getTabContainerHeight()I

    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 11
    return-void
.end method


# virtual methods
.method public getDefaultTabTextStyle()I
    .registers 2

    const v0, 0x10102f5

    return v0
.end method

.method public getTabBarLayoutRes()I
    .registers 2

    .line 1
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tabbar:I

    .line 3
    return v0
.end method

.method public getTabContainerHeight()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getTabViewLayoutRes()I
    .registers 2

    .line 1
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tab:I

    .line 3
    return v0
.end method

.method public getTabViewMarginHorizontal()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->onLayout(ZIIII)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 7
    move-result p1

    .line 8
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    move-result p3

    .line 14
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    move-result p4

    .line 20
    sub-int/2addr p1, p3

    .line 21
    div-int/lit8 p1, p1, 0x2

    .line 23
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 25
    add-int/2addr p3, p1

    .line 26
    invoke-virtual {p5, p2, p1, p4, p3}, Landroid/view/View;->layout(IIII)V

    .line 29
    return-void
.end method

.method public updateCustomTabView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)Landroid/view/View;
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p0, :cond_10

    .line 7
    if-eqz v0, :cond_d

    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    :cond_d
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    :cond_10
    const/16 p1, 0x8

    .line 19
    if-eqz p3, :cond_17

    .line 21
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_17
    if-eqz p4, :cond_20

    .line 26
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_20
    return-object p2
.end method
