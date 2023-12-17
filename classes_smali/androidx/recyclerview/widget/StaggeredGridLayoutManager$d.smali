.class public final Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public final e:I

.field public final synthetic f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 13
    const/high16 p1, -0x80000000

    .line 15
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 17
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    .line 22
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 24
    return-void
.end method

.method public static j(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 7
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 7
    iput-object p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    const/high16 v1, -0x80000000

    .line 16
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 18
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v2, v3, :cond_1c

    .line 27
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 29
    :cond_1c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_28

    .line 35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemChanged()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_35

    .line 41
    :cond_28
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    .line 43
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 45
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 47
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 50
    move-result p1

    .line 51
    add-int/2addr p1, v0

    .line 52
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    .line 54
    :cond_35
    return-void
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/View;

    .line 15
    invoke-static {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 18
    move-result-object v1

    .line 19
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 23
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 26
    move-result v0

    .line 27
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 29
    iget-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 31
    if-eqz v0, :cond_41

    .line 33
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 35
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 37
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_41

    .line 47
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 49
    if-ne v1, v2, :cond_41

    .line 51
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 53
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 55
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 57
    if-nez v0, :cond_3c

    .line 59
    const/4 v0, 0x0

    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    aget v0, v0, v2

    .line 63
    :goto_3e
    add-int/2addr v1, v0

    .line 64
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 66
    :cond_41
    return-void
.end method

.method public final c()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/View;

    .line 10
    invoke-static {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 16
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 18
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 21
    move-result v0

    .line 22
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 24
    iget-boolean v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 26
    if-eqz v0, :cond_3c

    .line 28
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 30
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 32
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_3c

    .line 42
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 44
    const/4 v3, -0x1

    .line 45
    if-ne v2, v3, :cond_3c

    .line 47
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 49
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 51
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 53
    if-nez v0, :cond_37

    .line 55
    goto :goto_39

    .line 56
    :cond_37
    aget v1, v0, v3

    .line 58
    :goto_39
    sub-int/2addr v2, v1

    .line 59
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 61
    :cond_3c
    return-void
.end method

.method public final d()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    const/high16 v0, -0x80000000

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    .line 15
    return-void
.end method

.method public final e()I
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 3
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_15

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    sub-int/2addr v0, v2

    .line 16
    const/4 v3, -0x1

    .line 17
    invoke-virtual {p0, v0, v3, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(IIZZ)I

    .line 20
    move-result v0

    .line 21
    goto :goto_1f

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, v1, v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(IIZZ)I

    .line 31
    move-result v0

    .line 32
    :goto_1f
    return v0
.end method

.method public final f()I
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 3
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v1, v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(IIZZ)I

    .line 18
    move-result v0

    .line 19
    goto :goto_1f

    .line 20
    :cond_13
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v0

    .line 26
    sub-int/2addr v0, v2

    .line 27
    const/4 v3, -0x1

    .line 28
    invoke-virtual {p0, v0, v3, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(IIZZ)I

    .line 31
    move-result v0

    .line 32
    :goto_1f
    return v0
.end method

.method public final g(IIZZ)I
    .registers 15

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 11
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 13
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->g()I

    .line 16
    move-result v1

    .line 17
    const/4 v2, -0x1

    .line 18
    const/4 v3, 0x1

    .line 19
    if-le p2, p1, :cond_16

    .line 21
    move v4, v3

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v4, v2

    .line 24
    :goto_17
    if-eq p1, p2, :cond_5e

    .line 26
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Landroid/view/View;

    .line 34
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 36
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 38
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 41
    move-result v6

    .line 42
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 44
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 46
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 49
    move-result v7

    .line 50
    const/4 v8, 0x0

    .line 51
    if-eqz p4, :cond_37

    .line 53
    if-gt v6, v1, :cond_3b

    .line 55
    goto :goto_39

    .line 56
    :cond_37
    if-ge v6, v1, :cond_3b

    .line 58
    :goto_39
    move v9, v3

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move v9, v8

    .line 61
    :goto_3c
    if-eqz p4, :cond_41

    .line 63
    if-lt v7, v0, :cond_44

    .line 65
    goto :goto_43

    .line 66
    :cond_41
    if-le v7, v0, :cond_44

    .line 68
    :goto_43
    move v8, v3

    .line 69
    :cond_44
    if-eqz v9, :cond_5c

    .line 71
    if-eqz v8, :cond_5c

    .line 73
    if-eqz p3, :cond_51

    .line 75
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 77
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 80
    move-result p1

    .line 81
    return p1

    .line 82
    :cond_51
    if-lt v6, v0, :cond_55

    .line 84
    if-le v7, v1, :cond_5c

    .line 86
    :cond_55
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 88
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :cond_5c
    add-int/2addr p1, v4

    .line 94
    goto :goto_17

    .line 95
    :cond_5e
    return v2
.end method

.method public final h(I)I
    .registers 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 3
    const/high16 v1, -0x80000000

    .line 5
    if-eq v0, v1, :cond_7

    .line 7
    return v0

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b()V

    .line 20
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 22
    return p1
.end method

.method public final i(II)Landroid/view/View;
    .registers 8

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p2, v0, :cond_38

    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_b
    if-ge v0, p2, :cond_6d

    .line 14
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/view/View;

    .line 22
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 24
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 26
    if-eqz v4, :cond_21

    .line 28
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 31
    move-result v3

    .line 32
    if-le v3, p1, :cond_6d

    .line 34
    :cond_21
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 36
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 38
    if-nez v4, :cond_2e

    .line 40
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 43
    move-result v3

    .line 44
    if-lt v3, p1, :cond_2e

    .line 46
    goto :goto_6d

    .line 47
    :cond_2e
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_6d

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 55
    move-object v1, v2

    .line 56
    goto :goto_b

    .line 57
    :cond_38
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result p2

    .line 63
    add-int/lit8 p2, p2, -0x1

    .line 65
    :goto_40
    if-ltz p2, :cond_6d

    .line 67
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/view/View;

    .line 75
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 77
    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 79
    if-eqz v3, :cond_56

    .line 81
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 84
    move-result v2

    .line 85
    if-ge v2, p1, :cond_6d

    .line 87
    :cond_56
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 89
    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 91
    if-nez v3, :cond_63

    .line 93
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 96
    move-result v2

    .line 97
    if-gt v2, p1, :cond_63

    .line 99
    goto :goto_6d

    .line 100
    :cond_63
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_6d

    .line 106
    add-int/lit8 p2, p2, -0x1

    .line 108
    move-object v1, v0

    .line 109
    goto :goto_40

    .line 110
    :cond_6d
    :goto_6d
    return-object v1
.end method

.method public final k(I)I
    .registers 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 3
    const/high16 v1, -0x80000000

    .line 5
    if-eq v0, v1, :cond_7

    .line 7
    return v0

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c()V

    .line 20
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 22
    return p1
.end method

.method public final l()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 9
    add-int/lit8 v2, v0, -0x1

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/view/View;

    .line 17
    invoke-static {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    iput-object v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 24
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_23

    .line 30
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemChanged()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_30

    .line 36
    :cond_23
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    .line 38
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 40
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 42
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 45
    move-result v1

    .line 46
    sub-int/2addr v2, v1

    .line 47
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    .line 49
    :cond_30
    const/high16 v1, -0x80000000

    .line 51
    const/4 v2, 0x1

    .line 52
    if-ne v0, v2, :cond_37

    .line 54
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 56
    :cond_37
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 58
    return-void
.end method

.method public final m()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/View;

    .line 10
    invoke-static {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 17
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v2

    .line 23
    const/high16 v3, -0x80000000

    .line 25
    if-nez v2, :cond_1c

    .line 27
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 29
    :cond_1c
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_28

    .line 35
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemChanged()Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_35

    .line 41
    :cond_28
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    .line 43
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 45
    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 47
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 50
    move-result v0

    .line 51
    sub-int/2addr v1, v0

    .line 52
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    .line 54
    :cond_35
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 56
    return-void
.end method

.method public final n(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 7
    iput-object p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 15
    const/high16 v1, -0x80000000

    .line 17
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 19
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v2, v3, :cond_1d

    .line 28
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 30
    :cond_1d
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_29

    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemChanged()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_36

    .line 42
    :cond_29
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    .line 44
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 46
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 48
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 51
    move-result p1

    .line 52
    add-int/2addr p1, v0

    .line 53
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    .line 55
    :cond_36
    return-void
.end method
