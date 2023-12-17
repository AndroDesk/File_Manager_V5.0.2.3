.class Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private tempLeftRightOffset:I

.field private tempTopBottomOffset:I

.field private viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 3
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->getLeftAndRightOffset()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public getTopAndBottomOffset()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->getTopAndBottomOffset()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public isHorizontalOffsetEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->isHorizontalOffsetEnabled()Z

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

.method public isVerticalOffsetEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->isVerticalOffsetEnabled()Z

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

.method public layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 4
    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 6
    if-nez p1, :cond_e

    .line 8
    new-instance p1, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 10
    invoke-direct {p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 15
    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 17
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->onViewLayout()V

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 22
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->applyOffsets()V

    .line 25
    iget p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 27
    const/4 p2, 0x0

    .line 28
    if-eqz p1, :cond_24

    .line 30
    iget-object p3, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 32
    invoke-virtual {p3, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 35
    iput p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 37
    :cond_24
    iget p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 39
    if-eqz p1, :cond_2f

    .line 41
    iget-object p3, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 43
    invoke-virtual {p3, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 46
    iput p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 48
    :cond_2f
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public setHorizontalOffsetEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->setHorizontalOffsetEnabled(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public setVerticalOffsetEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->setVerticalOffsetEnabled(Z)V

    .line 8
    :cond_7
    return-void
.end method
