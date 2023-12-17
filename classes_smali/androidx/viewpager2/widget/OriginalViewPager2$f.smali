.class public final Landroidx/viewpager2/widget/OriginalViewPager2$f;
.super Landroidx/viewpager2/widget/OriginalViewPager2$e;
.source "OriginalViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/OriginalViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/viewpager2/widget/OriginalViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$f;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 3

    .line 1
    const/16 v0, 0x2000

    .line 3
    if-eq p1, v0, :cond_8

    .line 5
    const/16 v0, 0x1000

    .line 7
    if-ne p1, v0, :cond_12

    .line 9
    :cond_8
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$f;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 11
    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return p1
.end method

.method public final h(Ln0/c;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$f;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_22

    .line 9
    sget-object v0, Ln0/c$a;->g:Ln0/c$a;

    .line 11
    iget-object v1, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 13
    iget-object v0, v0, Ln0/c$a;->a:Ljava/lang/Object;

    .line 15
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 17
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 20
    sget-object v0, Ln0/c$a;->f:Ln0/c$a;

    .line 22
    iget-object v1, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 24
    iget-object v0, v0, Ln0/c$a;->a:Ljava/lang/Object;

    .line 26
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 28
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Ln0/c;->n(Z)V

    .line 35
    :cond_22
    return-void
.end method

.method public final i(I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$f;->a(I)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 14
    throw p1
.end method

.method public final l()Ljava/lang/CharSequence;
    .registers 2

    const-string v0, "androidx.viewpager.widget.ViewPager"

    return-object v0
.end method
