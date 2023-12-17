.class public final Landroidx/viewpager2/widget/e;
.super Landroidx/viewpager2/widget/OriginalViewPager2$i;
.source "OriginalPageTransformerAdapter.java"


# instance fields
.field public final a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public b:Landroidx/viewpager2/widget/OriginalViewPager2$k;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$i;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/viewpager2/widget/e;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .registers 8

    .line 1
    iget-object p3, p0, Landroidx/viewpager2/widget/e;->b:Landroidx/viewpager2/widget/OriginalViewPager2$k;

    .line 3
    if-nez p3, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    neg-float p2, p2

    .line 7
    const/4 p3, 0x0

    .line 8
    move v0, p3

    .line 9
    :goto_8
    iget-object v1, p0, Landroidx/viewpager2/widget/e;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_4d

    .line 17
    iget-object v1, p0, Landroidx/viewpager2/widget/e;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 19
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_29

    .line 25
    iget-object v2, p0, Landroidx/viewpager2/widget/e;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 27
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 30
    move-result v2

    .line 31
    sub-int/2addr v2, p1

    .line 32
    int-to-float v2, v2

    .line 33
    add-float/2addr v2, p2

    .line 34
    iget-object v3, p0, Landroidx/viewpager2/widget/e;->b:Landroidx/viewpager2/widget/OriginalViewPager2$k;

    .line 36
    invoke-interface {v3, v1, v2}, Landroidx/viewpager2/widget/OriginalViewPager2$k;->transformPage(Landroid/view/View;F)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_8

    .line 42
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 46
    const/4 v1, 0x2

    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v0

    .line 53
    aput-object v0, v1, p3

    .line 55
    iget-object p3, p0, Landroidx/viewpager2/widget/e;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 57
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 60
    move-result p3

    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object p3

    .line 65
    const/4 v0, 0x1

    .line 66
    aput-object p3, v1, v0

    .line 68
    const-string p3, "LayoutManager returned a null child at pos %d/%d while transforming pages"

    .line 70
    invoke-static {p2, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1

    .line 78
    :cond_4d
    return-void
.end method

.method public final onPageSelected(I)V
    .registers 2

    return-void
.end method
