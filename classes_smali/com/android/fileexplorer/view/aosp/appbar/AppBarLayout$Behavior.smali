.class public Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$Behavior;
.super Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior<",
        "Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeftAndRightOffset()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getLeftAndRightOffset()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic isHorizontalOffsetEnabled()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->isHorizontalOffsetEnabled()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic isVerticalOffsetEnabled()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->isVerticalOffsetEnabled()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IIII)Z
    .registers 7

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;IIII)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .registers 8

    .line 1
    invoke-super/range {p0 .. p7}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;II[II)V

    .line 4
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .registers 10

    .line 1
    invoke-super/range {p0 .. p9}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    .line 4
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/os/Parcelable;)V

    .line 4
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)Landroid/os/Parcelable;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Landroid/view/View;I)V

    .line 4
    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderBehavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic setDragCallback(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior;->setDragCallback(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setHorizontalOffsetEnabled(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setHorizontalOffsetEnabled(Z)V

    .line 4
    return-void
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setLeftAndRightOffset(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic setVerticalOffsetEnabled(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->setVerticalOffsetEnabled(Z)V

    .line 4
    return-void
.end method
