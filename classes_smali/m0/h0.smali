.class public final synthetic Lm0/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic a(Landroid/view/ViewConfiguration;)F
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public static bridge synthetic c(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-void
.end method

.method public static bridge synthetic d(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    return-void
.end method

.method public static bridge synthetic e(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public static bridge synthetic f(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic g(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    return-void
.end method

.method public static bridge synthetic h(Landroid/view/View;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isShowingHintText()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Landroid/view/ViewConfiguration;)F
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result p0

    return p0
.end method
