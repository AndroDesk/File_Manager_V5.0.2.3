.class public final Landroidx/viewpager2/widget/f;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "OriginalScrollEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/f$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/viewpager2/widget/OriginalViewPager2$i;

.field public final b:Landroidx/viewpager2/widget/OriginalViewPager2;

.field public final c:Lmiuix/recyclerview/widget/RecyclerView;

.field public final d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public e:I

.field public f:I

.field public g:Landroidx/viewpager2/widget/f$a;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/f;->b:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget-object p1, p1, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Landroidx/viewpager2/widget/f;->c:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance p1, Landroidx/viewpager2/widget/f$a;

    invoke-direct {p1}, Landroidx/viewpager2/widget/f$a;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->c()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/OriginalViewPager2$i;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$i;->onPageSelected(I)V

    :cond_7
    return-void
.end method

.method public final b(I)V
    .registers 4

    iget v0, p0, Landroidx/viewpager2/widget/f;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget v0, p0, Landroidx/viewpager2/widget/f;->f:I

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget v0, p0, Landroidx/viewpager2/widget/f;->f:I

    if-ne v0, p1, :cond_f

    return-void

    :cond_f
    iput p1, p0, Landroidx/viewpager2/widget/f;->f:I

    iget-object v0, p0, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/OriginalViewPager2$i;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$i;->onPageScrollStateChanged(I)V

    :cond_18
    return-void
.end method

.method public final c()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/widget/f;->e:I

    iput v0, p0, Landroidx/viewpager2/widget/f;->f:I

    iget-object v1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/viewpager2/widget/f$a;->a:I

    const/4 v3, 0x0

    iput v3, v1, Landroidx/viewpager2/widget/f$a;->b:F

    iput v0, v1, Landroidx/viewpager2/widget/f$a;->c:I

    iput v2, p0, Landroidx/viewpager2/widget/f;->h:I

    iput v2, p0, Landroidx/viewpager2/widget/f;->i:I

    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->j:Z

    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->k:Z

    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->m:Z

    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->l:Z

    return-void
.end method

.method public final d(Z)V
    .registers 4

    iput-boolean p1, p0, Landroidx/viewpager2/widget/f;->m:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    goto :goto_8

    :cond_7
    move p1, v0

    :goto_8
    iput p1, p0, Landroidx/viewpager2/widget/f;->e:I

    iget p1, p0, Landroidx/viewpager2/widget/f;->i:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_14

    iput p1, p0, Landroidx/viewpager2/widget/f;->h:I

    iput v1, p0, Landroidx/viewpager2/widget/f;->i:I

    goto :goto_20

    :cond_14
    iget p1, p0, Landroidx/viewpager2/widget/f;->h:I

    if-ne p1, v1, :cond_20

    iget-object p1, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/f;->h:I

    :cond_20
    :goto_20
    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/f;->b(I)V

    return-void
.end method

.method public final e()V
    .registers 14

    iget-object v0, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iget-object v1, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, v0, Landroidx/viewpager2/widget/f$a;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_16

    iput v4, v0, Landroidx/viewpager2/widget/f$a;->a:I

    iput v3, v0, Landroidx/viewpager2/widget/f$a;->b:F

    iput v2, v0, Landroidx/viewpager2/widget/f$a;->c:I

    return-void

    :cond_16
    iget-object v5, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_25

    iput v4, v0, Landroidx/viewpager2/widget/f$a;->a:I

    iput v3, v0, Landroidx/viewpager2/widget/f$a;->b:F

    iput v2, v0, Landroidx/viewpager2/widget/f$a;->c:I

    return-void

    :cond_25
    iget-object v4, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_53

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v9

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v9

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v9

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    :cond_53
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v8, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v4

    add-int/2addr v7, v5

    iget-object v5, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v5

    const/4 v9, 0x1

    if-nez v5, :cond_6a

    move v5, v9

    goto :goto_6b

    :cond_6a
    move v5, v2

    :goto_6b
    if-eqz v5, :cond_84

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v4

    iget-object v4, p0, Landroidx/viewpager2/widget/f;->c:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Landroidx/viewpager2/widget/f;->b:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v4}, Landroidx/viewpager2/widget/OriginalViewPager2;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_82

    neg-int v1, v1

    :cond_82
    move v8, v7

    goto :goto_90

    :cond_84
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v6

    iget-object v4, p0, Landroidx/viewpager2/widget/f;->c:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    :goto_90
    neg-int v1, v1

    iput v1, v0, Landroidx/viewpager2/widget/f$a;->c:I

    if-gez v1, :cond_184

    new-instance v1, Landroidx/viewpager2/widget/b;

    iget-object v3, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v3}, Landroidx/viewpager2/widget/b;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-nez v3, :cond_a4

    goto/16 :goto_135

    :cond_a4
    iget-object v4, v1, Landroidx/viewpager2/widget/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v4

    if-nez v4, :cond_ae

    move v4, v9

    goto :goto_af

    :cond_ae
    move v4, v2

    :goto_af
    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v5, v6, v9

    aput v3, v6, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    move v6, v2

    :goto_bf
    if-ge v6, v3, :cond_109

    iget-object v7, v1, Landroidx/viewpager2/widget/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_101

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_d4

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_d6

    :cond_d4
    sget-object v8, Landroidx/viewpager2/widget/b;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_d6
    aget-object v10, v5, v6

    if-eqz v4, :cond_e1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_e7

    :cond_e1
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_e7
    sub-int/2addr v11, v12

    aput v11, v10, v2

    aget-object v10, v5, v6

    if-eqz v4, :cond_f5

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_fb

    :cond_f5
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_fb
    add-int/2addr v7, v8

    aput v7, v10, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_bf

    :cond_101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null view contained in the view hierarchy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_109
    new-instance v4, Landroidx/viewpager2/widget/a;

    invoke-direct {v4}, Landroidx/viewpager2/widget/a;-><init>()V

    invoke-static {v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v4, v9

    :goto_112
    if-ge v4, v3, :cond_124

    add-int/lit8 v6, v4, -0x1

    aget-object v6, v5, v6

    aget v6, v6, v9

    aget-object v7, v5, v4

    aget v7, v7, v2

    if-eq v6, v7, :cond_121

    goto :goto_137

    :cond_121
    add-int/lit8 v4, v4, 0x1

    goto :goto_112

    :cond_124
    aget-object v4, v5, v2

    aget v6, v4, v9

    aget v4, v4, v2

    sub-int/2addr v6, v4

    if-gtz v4, :cond_137

    sub-int/2addr v3, v9

    aget-object v3, v5, v3

    aget v3, v3, v9

    if-ge v3, v6, :cond_135

    goto :goto_137

    :cond_135
    :goto_135
    move v3, v9

    goto :goto_138

    :cond_137
    :goto_137
    move v3, v2

    :goto_138
    if-eqz v3, :cond_142

    iget-object v3, v1, Landroidx/viewpager2/widget/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-gt v3, v9, :cond_161

    :cond_142
    iget-object v3, v1, Landroidx/viewpager2/widget/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    move v4, v2

    :goto_149
    if-ge v4, v3, :cond_15c

    iget-object v5, v1, Landroidx/viewpager2/widget/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/viewpager2/widget/b;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_159

    move v1, v9

    goto :goto_15d

    :cond_159
    add-int/lit8 v4, v4, 0x1

    goto :goto_149

    :cond_15c
    move v1, v2

    :goto_15d
    if-eqz v1, :cond_161

    move v1, v9

    goto :goto_162

    :cond_161
    move v1, v2

    :goto_162
    if-eqz v1, :cond_16c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16c
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v9, [Ljava/lang/Object;

    iget v0, v0, Landroidx/viewpager2/widget/f$a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Page can only be offset by a positive amount, not by %d"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_184
    if-nez v8, :cond_187

    goto :goto_18b

    :cond_187
    int-to-float v1, v1

    int-to-float v2, v8

    div-float v3, v1, v2

    :goto_18b
    iput v3, v0, Landroidx/viewpager2/widget/f$a;->b:F

    return-void
.end method

.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 9

    iget p1, p0, Landroidx/viewpager2/widget/f;->e:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_a

    iget v2, p0, Landroidx/viewpager2/widget/f;->f:I

    if-eq v2, v0, :cond_10

    :cond_a
    if-ne p2, v0, :cond_10

    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/f;->d(Z)V

    return-void

    :cond_10
    const/4 v2, 0x4

    if-eq p1, v0, :cond_18

    if-ne p1, v2, :cond_16

    goto :goto_18

    :cond_16
    move v3, v1

    goto :goto_19

    :cond_18
    :goto_18
    move v3, v0

    :goto_19
    const/4 v4, 0x2

    if-eqz v3, :cond_28

    if-ne p2, v4, :cond_28

    iget-boolean p1, p0, Landroidx/viewpager2/widget/f;->k:Z

    if-eqz p1, :cond_27

    invoke-virtual {p0, v4}, Landroidx/viewpager2/widget/f;->b(I)V

    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->j:Z

    :cond_27
    return-void

    :cond_28
    if-eq p1, v0, :cond_2f

    if-ne p1, v2, :cond_2d

    goto :goto_2f

    :cond_2d
    move p1, v1

    goto :goto_30

    :cond_2f
    :goto_2f
    move p1, v0

    :goto_30
    const/4 v2, -0x1

    if-eqz p1, :cond_64

    if-nez p2, :cond_64

    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->e()V

    iget-boolean p1, p0, Landroidx/viewpager2/widget/f;->k:Z

    if-nez p1, :cond_4b

    iget-object p1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iget p1, p1, Landroidx/viewpager2/widget/f$a;->a:I

    if-eq p1, v2, :cond_5c

    const/4 v3, 0x0

    iget-object v5, p0, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/OriginalViewPager2$i;

    if-eqz v5, :cond_5c

    invoke-virtual {v5, p1, v3, v1}, Landroidx/viewpager2/widget/OriginalViewPager2$i;->onPageScrolled(IFI)V

    goto :goto_5c

    :cond_4b
    iget-object p1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iget v3, p1, Landroidx/viewpager2/widget/f$a;->c:I

    if-nez v3, :cond_5b

    iget v3, p0, Landroidx/viewpager2/widget/f;->h:I

    iget p1, p1, Landroidx/viewpager2/widget/f$a;->a:I

    if-eq v3, p1, :cond_5c

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/f;->a(I)V

    goto :goto_5c

    :cond_5b
    move v0, v1

    :cond_5c
    :goto_5c
    if-eqz v0, :cond_64

    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/f;->b(I)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->c()V

    :cond_64
    iget p1, p0, Landroidx/viewpager2/widget/f;->e:I

    if-ne p1, v4, :cond_89

    if-nez p2, :cond_89

    iget-boolean p1, p0, Landroidx/viewpager2/widget/f;->l:Z

    if-eqz p1, :cond_89

    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->e()V

    iget-object p1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iget p2, p1, Landroidx/viewpager2/widget/f$a;->c:I

    if-nez p2, :cond_89

    iget p2, p0, Landroidx/viewpager2/widget/f;->i:I

    iget p1, p1, Landroidx/viewpager2/widget/f$a;->a:I

    if-eq p2, p1, :cond_83

    if-ne p1, v2, :cond_80

    move p1, v1

    :cond_80
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/f;->a(I)V

    :cond_83
    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/f;->b(I)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->c()V

    :cond_89
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 8

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/viewpager2/widget/f;->k:Z

    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->e()V

    iget-boolean v0, p0, Landroidx/viewpager2/widget/f;->j:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    iput-boolean v2, p0, Landroidx/viewpager2/widget/f;->j:Z

    if-gtz p3, :cond_22

    if-nez p3, :cond_20

    if-gez p2, :cond_16

    move p2, p1

    goto :goto_17

    :cond_16
    move p2, v2

    :goto_17
    iget-object p3, p0, Landroidx/viewpager2/widget/f;->b:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p3}, Landroidx/viewpager2/widget/OriginalViewPager2;->isRtl()Z

    move-result p3

    if-ne p2, p3, :cond_20

    goto :goto_22

    :cond_20
    move p2, v2

    goto :goto_23

    :cond_22
    :goto_22
    move p2, p1

    :goto_23
    if-eqz p2, :cond_2f

    iget-object p2, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iget p3, p2, Landroidx/viewpager2/widget/f$a;->c:I

    if-eqz p3, :cond_2f

    iget p2, p2, Landroidx/viewpager2/widget/f$a;->a:I

    add-int/2addr p2, p1

    goto :goto_33

    :cond_2f
    iget-object p2, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iget p2, p2, Landroidx/viewpager2/widget/f$a;->a:I

    :goto_33
    iput p2, p0, Landroidx/viewpager2/widget/f;->i:I

    iget p3, p0, Landroidx/viewpager2/widget/f;->h:I

    if-eq p3, p2, :cond_4b

    invoke-virtual {p0, p2}, Landroidx/viewpager2/widget/f;->a(I)V

    goto :goto_4b

    :cond_3d
    iget p2, p0, Landroidx/viewpager2/widget/f;->e:I

    if-nez p2, :cond_4b

    iget-object p2, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iget p2, p2, Landroidx/viewpager2/widget/f$a;->a:I

    if-ne p2, v1, :cond_48

    move p2, v2

    :cond_48
    invoke-virtual {p0, p2}, Landroidx/viewpager2/widget/f;->a(I)V

    :cond_4b
    :goto_4b
    iget-object p2, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iget p3, p2, Landroidx/viewpager2/widget/f$a;->a:I

    if-ne p3, v1, :cond_52

    move p3, v2

    :cond_52
    iget v0, p2, Landroidx/viewpager2/widget/f$a;->b:F

    iget p2, p2, Landroidx/viewpager2/widget/f$a;->c:I

    iget-object v3, p0, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/OriginalViewPager2$i;

    if-eqz v3, :cond_5d

    invoke-virtual {v3, p3, v0, p2}, Landroidx/viewpager2/widget/OriginalViewPager2$i;->onPageScrolled(IFI)V

    :cond_5d
    iget-object p2, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iget p3, p2, Landroidx/viewpager2/widget/f$a;->a:I

    iget v0, p0, Landroidx/viewpager2/widget/f;->i:I

    if-eq p3, v0, :cond_67

    if-ne v0, v1, :cond_75

    :cond_67
    iget p2, p2, Landroidx/viewpager2/widget/f$a;->c:I

    if-nez p2, :cond_75

    iget p2, p0, Landroidx/viewpager2/widget/f;->f:I

    if-eq p2, p1, :cond_75

    invoke-virtual {p0, v2}, Landroidx/viewpager2/widget/f;->b(I)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->c()V

    :cond_75
    return-void
.end method
