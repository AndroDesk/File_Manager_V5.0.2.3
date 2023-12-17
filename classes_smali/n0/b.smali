.class public final Ln0/b;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# direct methods
.method public static a(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 4
    return-void
.end method
