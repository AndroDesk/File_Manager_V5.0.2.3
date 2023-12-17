.class public final Lm0/g0$g;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public static a(Landroid/view/View;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static c(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static d(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 4
    return-void
.end method

.method public static f(Landroid/view/View;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 4
    return-void
.end method

.method public static g(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 4
    return-void
.end method
