.class public abstract Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lmiuix/appcompat/internal/view/menu/MenuView;
.implements Lmiuix/view/BlurableWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# instance fields
.field public mBackgroundViewApplyBlur:Z

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

.field private mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mBackgroundViewApplyBlur:Z

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 5
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    if-eqz p1, :cond_8

    .line 3
    instance-of p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    return p1
.end method

.method public clearBackground()V
    .registers 1

    return-void
.end method

.method public computeAlpha(FZZ)F
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    goto :goto_17

    :cond_7
    const/high16 v1, 0x41200000  # 10.0f

    if-eqz p2, :cond_12

    sub-float/2addr v0, p1

    mul-float/2addr v0, v1

    float-to-int p1, v0

    :goto_e
    int-to-float p1, p1

    div-float v0, p1, v1

    goto :goto_17

    :cond_12
    if-eqz p3, :cond_17

    mul-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_e

    :cond_17
    :goto_17
    return v0
.end method

.method public computeTranslationY(FZZ)F
    .registers 8

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x3f800000  # 1.0f

    .line 8
    if-eqz p2, :cond_1a

    .line 10
    if-eqz p3, :cond_1a

    .line 12
    float-to-double p2, p1

    .line 13
    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    .line 15
    cmpg-double p2, p2, v2

    .line 17
    const/high16 p3, 0x40000000  # 2.0f

    .line 19
    if-gez p2, :cond_16

    .line 21
    mul-float/2addr p1, p3

    .line 22
    goto :goto_1e

    .line 23
    :cond_16
    sub-float/2addr v1, p1

    .line 24
    mul-float p1, v1, p3

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    if-eqz p3, :cond_1e

    .line 29
    sub-float p1, v1, p1

    .line 31
    :cond_1e
    :goto_1e
    mul-float/2addr p1, v0

    .line 32
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public filterLeftoverView(I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .registers 3

    .line 3
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .registers 4

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .registers 3

    .line 6
    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_c

    .line 7
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;)V

    return-object v0

    .line 8
    :cond_c
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 8
    return-object p1
.end method

.method public abstract getCollapsedHeight()I
.end method

.method public getPresenter()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    return-object v0
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasBackgroundView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasDividerBeforeChildAt(I)Z
    .registers 6

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-ge p1, v2, :cond_1c

    .line 18
    instance-of v2, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    .line 20
    if-eqz v2, :cond_1c

    .line 22
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    .line 24
    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    .line 27
    move-result v0

    .line 28
    or-int/2addr v3, v0

    .line 29
    :cond_1c
    if-lez p1, :cond_29

    .line 31
    instance-of p1, v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    .line 33
    if-eqz p1, :cond_29

    .line 35
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    .line 37
    invoke-interface {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    .line 40
    move-result p1

    .line 41
    or-int/2addr v3, p1

    .line 42
    :cond_29
    return v3
.end method

.method public hasOnlyCustomView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    return-void
.end method

.method public invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isOverflowReserved()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mReserveOverflow:Z

    .line 3
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 6
    if-eqz p1, :cond_b

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 10
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 15
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
    if-eqz p3, :cond_1e

    .line 20
    if-eqz p4, :cond_1e

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 25
    move-result p2

    .line 26
    const/4 p3, 0x0

    .line 27
    cmpl-float p2, p2, p3

    .line 29
    if-eqz p2, :cond_21

    .line 31
    :cond_1e
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 34
    :cond_21
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    .line 36
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->setTranslationY(F)V

    .line 39
    return-void
.end method

.method public onWillRemoved()V
    .registers 1

    return-void
.end method

.method public playCloseAnimator()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->close()V

    .line 6
    return-void
.end method

.method public playOpenAnimator()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->open()V

    .line 6
    return-void
.end method

.method public resetBackground()V
    .registers 1

    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mReserveOverflow:Z

    .line 3
    return-void
.end method

.method public setPresenter(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    return-void
.end method

.method public updateBackground(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mBackgroundViewApplyBlur:Z

    .line 3
    if-eqz p1, :cond_8

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->clearBackground()V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->resetBackground()V

    .line 12
    :goto_b
    return-void
.end method
