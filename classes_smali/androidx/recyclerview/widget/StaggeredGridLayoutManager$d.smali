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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .registers 3

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    return-void
.end method

.method public static j(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iput-object p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    :cond_1c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_28
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    :cond_35
    return-void
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    move-result-object v1

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    iget-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_41

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    if-ne v1, v2, :cond_41

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    goto :goto_3e

    :cond_3c
    aget v0, v0, v2

    :goto_3e
    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    :cond_41
    return-void
.end method

.method public final c()V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    iget-boolean v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3c

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    if-nez v0, :cond_37

    goto :goto_39

    :cond_37
    aget v1, v0, v3

    :goto_39
    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    :cond_3c
    return-void
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    return-void
.end method

.method public final e()I
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(IIZZ)I

    move-result v0

    goto :goto_1f

    :cond_15
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(IIZZ)I

    move-result v0

    :goto_1f
    return v0
.end method

.method public final f()I
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(IIZZ)I

    move-result v0

    goto :goto_1f

    :cond_13
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(IIZZ)I

    move-result v0

    :goto_1f
    return v0
.end method

.method public final g(IIZZ)I
    .registers 15

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->g()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le p2, p1, :cond_16

    move v4, v3

    goto :goto_17

    :cond_16
    move v4, v2

    :goto_17
    if-eq p1, p2, :cond_5e

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x0

    if-eqz p4, :cond_37

    if-gt v6, v1, :cond_3b

    goto :goto_39

    :cond_37
    if-ge v6, v1, :cond_3b

    :goto_39
    move v9, v3

    goto :goto_3c

    :cond_3b
    move v9, v8

    :goto_3c
    if-eqz p4, :cond_41

    if-lt v7, v0, :cond_44

    goto :goto_43

    :cond_41
    if-le v7, v0, :cond_44

    :goto_43
    move v8, v3

    :cond_44
    if-eqz v9, :cond_5c

    if-eqz v8, :cond_5c

    if-eqz p3, :cond_51

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_51
    if-lt v6, v0, :cond_55

    if-le v7, v1, :cond_5c

    :cond_55
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_5c
    add-int/2addr p1, v4

    goto :goto_17

    :cond_5e
    return v2
.end method

.method public final h(I)I
    .registers 4

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    return v0

    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    return p1

    :cond_10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b()V

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    return p1
.end method

.method public final i(II)Landroid/view/View;
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_38

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p2, :cond_6d

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v4, :cond_21

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-le v3, p1, :cond_6d

    :cond_21
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-nez v4, :cond_2e

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-lt v3, p1, :cond_2e

    goto :goto_6d

    :cond_2e
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_6d

    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_b

    :cond_38
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_40
    if-ltz p2, :cond_6d

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v3, :cond_56

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ge v2, p1, :cond_6d

    :cond_56
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-nez v3, :cond_63

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-gt v2, p1, :cond_63

    goto :goto_6d

    :cond_63
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_6d

    add-int/lit8 p2, p2, -0x1

    move-object v1, v0

    goto :goto_40

    :cond_6d
    :goto_6d
    return-object v1
.end method

.method public final k(I)I
    .registers 4

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    return v0

    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    return p1

    :cond_10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c()V

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    return p1
.end method

.method public final l()V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_23
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    :cond_30
    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-ne v0, v2, :cond_37

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    :cond_37
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    return-void
.end method

.method public final m()V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, -0x80000000

    if-nez v2, :cond_1c

    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    :cond_1c
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_28
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    :cond_35
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iput-object p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    :cond_1d
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_29
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    :cond_36
    return-void
.end method