.class public Lmiuix/internal/util/AccessibilityUtil;
.super Ljava/lang/Object;
.source "AccessibilityUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTalkBackActive(Landroid/content/Context;)Z
    .registers 2

    .line 1
    const-string v0, "accessibility"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 9
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_16

    .line 15
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_16

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p0, 0x0

    .line 24
    :goto_17
    return p0
.end method
