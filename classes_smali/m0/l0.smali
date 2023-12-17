.class public final Lm0/l0;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# direct methods
.method public static a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 5

    .line 1
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 4

    .line 1
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static c(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 5

    .line 1
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    .line 4
    return-void
.end method

.method public static d(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 6

    .line 1
    invoke-interface/range {p0 .. p5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V

    .line 4
    return-void
.end method

.method public static e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4
    return-void
.end method

.method public static f(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    .line 1
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static g(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V

    .line 4
    return-void
.end method
