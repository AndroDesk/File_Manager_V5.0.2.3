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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$f;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 3

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_12

    :cond_8
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$f;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public final h(Ln0/c;)V
    .registers 4

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$f;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Ln0/c$a;->g:Ln0/c$a;

    iget-object v1, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v0, v0, Ln0/c$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    sget-object v0, Ln0/c$a;->f:Ln0/c$a;

    iget-object v1, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v0, v0, Ln0/c$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ln0/c;->n(Z)V

    :cond_22
    return-void
.end method

.method public final i(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$f;->a(I)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final l()Ljava/lang/CharSequence;
    .registers 2

    const-string v0, "androidx.viewpager.widget.ViewPager"

    return-object v0
.end method
