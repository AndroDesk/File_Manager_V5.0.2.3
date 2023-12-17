.class public final Ln0/e;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# direct methods
.method public static a(Landroid/view/accessibility/AccessibilityRecord;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Landroid/view/accessibility/AccessibilityRecord;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static c(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 4
    return-void
.end method

.method public static d(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 4
    return-void
.end method
