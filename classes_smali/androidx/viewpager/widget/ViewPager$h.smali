.class public final Landroidx/viewpager/widget/ViewPager$h;
.super Lm0/a;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    .line 3
    invoke-direct {p0}, Lm0/a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    .line 15
    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Li1/a;

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p1, :cond_1a

    .line 20
    invoke-virtual {p1}, Li1/a;->getCount()I

    .line 23
    move-result p1

    .line 24
    if-le p1, v0, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 31
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 34
    move-result p1

    .line 35
    const/16 v0, 0x1000

    .line 37
    if-ne p1, v0, :cond_41

    .line 39
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    .line 41
    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Li1/a;

    .line 43
    if-eqz p1, :cond_41

    .line 45
    invoke-virtual {p1}, Li1/a;->getCount()I

    .line 48
    move-result p1

    .line 49
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 52
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    .line 54
    iget p1, p1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 56
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 59
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    .line 61
    iget p1, p1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 63
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 66
    :cond_41
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 4
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    .line 15
    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Li1/a;

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p1, :cond_1b

    .line 20
    invoke-virtual {p1}, Li1/a;->getCount()I

    .line 23
    move-result p1

    .line 24
    if-le p1, v0, :cond_1b

    .line 26
    move p1, v0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    :goto_1c
    invoke-virtual {p2, p1}, Ln0/c;->n(Z)V

    .line 32
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    .line 34
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2c

    .line 40
    const/16 p1, 0x1000

    .line 42
    invoke-virtual {p2, p1}, Ln0/c;->a(I)V

    .line 45
    :cond_2c
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    .line 47
    const/4 v0, -0x1

    .line 48
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3a

    .line 54
    const/16 p1, 0x2000

    .line 56
    invoke-virtual {p2, p1}, Ln0/c;->a(I)V

    .line 59
    :cond_3a
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lm0/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-eqz p1, :cond_8

    .line 8
    return p3

    .line 9
    :cond_8
    const/16 p1, 0x1000

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eq p2, p1, :cond_25

    .line 14
    const/16 p1, 0x2000

    .line 16
    if-eq p2, p1, :cond_12

    .line 18
    return v0

    .line 19
    :cond_12
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    .line 21
    const/4 p2, -0x1

    .line 22
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_24

    .line 28
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    .line 30
    iget p2, p1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 32
    sub-int/2addr p2, p3

    .line 33
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 36
    return p3

    .line 37
    :cond_24
    return v0

    .line 38
    :cond_25
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    .line 40
    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_36

    .line 46
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    .line 48
    iget p2, p1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 50
    add-int/2addr p2, p3

    .line 51
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 54
    return p3

    .line 55
    :cond_36
    return v0
.end method
