.class public final Landroidx/viewpager2/widget/OriginalViewPager2$l;
.super Landroidx/recyclerview/widget/q;
.source "OriginalViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/OriginalViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public final synthetic f:Landroidx/viewpager2/widget/OriginalViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$l;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/q;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$l;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->isFakeDragging()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    goto :goto_27

    .line 11
    :cond_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_19

    .line 17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/q;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    goto :goto_27

    .line 26
    :cond_19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_27

    .line 32
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/q;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 40
    :cond_27
    :goto_27
    return-object v1
.end method
