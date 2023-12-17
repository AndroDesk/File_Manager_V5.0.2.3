.class public final Landroidx/viewpager2/widget/OriginalViewPager2$h;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "OriginalViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/OriginalViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/viewpager2/widget/OriginalViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$h;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$y;[I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$h;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getOffscreenPageLimit()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_d

    .line 10
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$y;[I)V

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$h;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 16
    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->getPageSize()I

    .line 19
    move-result p1

    .line 20
    mul-int/2addr p1, v0

    .line 21
    const/4 v0, 0x0

    .line 22
    aput p1, p2, v0

    .line 24
    const/4 v0, 0x1

    .line 25
    aput p1, p2, v0

    .line 27
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Ln0/c;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Ln0/c;)V

    .line 4
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$h;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 6
    iget-object p1, p1, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 8
    invoke-virtual {p1, p3}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->h(Ln0/c;)V

    .line 11
    return-void
.end method

.method public final performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;ILandroid/os/Bundle;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$h;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    iget-object v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 5
    invoke-virtual {v0, p3}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->a(I)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 11
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$h;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 13
    iget-object p1, p1, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 15
    invoke-virtual {p1, p3}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->i(I)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;ILandroid/os/Bundle;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public final requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .registers 6

    const/4 p1, 0x0

    return p1
.end method
