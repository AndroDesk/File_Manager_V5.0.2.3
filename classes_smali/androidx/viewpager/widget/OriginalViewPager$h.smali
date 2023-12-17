.class public final Landroidx/viewpager/widget/OriginalViewPager$h;
.super Lm0/a;
.source "OriginalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/OriginalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/viewpager/widget/OriginalViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/OriginalViewPager;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$h;->a:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-direct {p0}, Lm0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$h;->a:Landroidx/viewpager/widget/OriginalViewPager;

    iget-object p1, p1, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Li1/a;->getCount()I

    move-result p1

    if-le p1, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_41

    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$h;->a:Landroidx/viewpager/widget/OriginalViewPager;

    iget-object p1, p1, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Li1/a;->getCount()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$h;->a:Landroidx/viewpager/widget/OriginalViewPager;

    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$h;->a:Landroidx/viewpager/widget/OriginalViewPager;

    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_41
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    const-class p1, Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$h;->a:Landroidx/viewpager/widget/OriginalViewPager;

    iget-object p1, p1, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Li1/a;

    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Li1/a;->getCount()I

    move-result p1

    if-le p1, v0, :cond_1b

    move p1, v0

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    invoke-virtual {p2, p1}, Ln0/c;->n(Z)V

    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$h;->a:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2c

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, Ln0/c;->a(I)V

    :cond_2c
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$h;->a:Landroidx/viewpager/widget/OriginalViewPager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_3a

    const/16 p1, 0x2000

    invoke-virtual {p2, p1}, Ln0/c;->a(I)V

    :cond_3a
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lm0/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_8

    return p3

    :cond_8
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_25

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_12

    return v0

    :cond_12
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$h;->a:Landroidx/viewpager/widget/OriginalViewPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/OriginalViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$h;->a:Landroidx/viewpager/widget/OriginalViewPager;

    iget p2, p1, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    return p3

    :cond_24
    return v0

    :cond_25
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$h;->a:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/OriginalViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$h;->a:Landroidx/viewpager/widget/OriginalViewPager;

    iget p2, p1, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    return p3

    :cond_36
    return v0
.end method
