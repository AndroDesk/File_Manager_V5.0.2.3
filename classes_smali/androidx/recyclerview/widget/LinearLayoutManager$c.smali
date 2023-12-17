.class public final Landroidx/recyclerview/widget/LinearLayoutManager$c;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const v2, 0x7fffffff

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_b
    if-ge v3, v0, :cond_3d

    .line 14
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    .line 16
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 22
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 24
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 30
    if-eq v4, p1, :cond_3a

    .line 32
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_26

    .line 38
    goto :goto_3a

    .line 39
    :cond_26
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    .line 42
    move-result v5

    .line 43
    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 45
    sub-int/2addr v5, v6

    .line 46
    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 48
    mul-int/2addr v5, v6

    .line 49
    if-gez v5, :cond_33

    .line 51
    goto :goto_3a

    .line 52
    :cond_33
    if-ge v5, v2, :cond_3a

    .line 54
    move-object v1, v4

    .line 55
    if-nez v5, :cond_39

    .line 57
    goto :goto_3d

    .line 58
    :cond_39
    move v2, v5

    .line 59
    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    .line 61
    goto :goto_b

    .line 62
    :cond_3d
    :goto_3d
    if-nez v1, :cond_43

    .line 64
    const/4 p1, -0x1

    .line 65
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 67
    goto :goto_4f

    .line 68
    :cond_43
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 74
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    .line 77
    move-result p1

    .line 78
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 80
    :goto_4f
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_33

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_9
    if-ge v0, p1, :cond_31

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 20
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 28
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$o;->isItemRemoved()Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_22

    .line 34
    goto :goto_2e

    .line 35
    :cond_22
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 37
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    .line 40
    move-result v2

    .line 41
    if-ne v3, v2, :cond_2e

    .line 43
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroid/view/View;)V

    .line 46
    goto :goto_32

    .line 47
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_9

    .line 50
    :cond_31
    const/4 v1, 0x0

    .line 51
    :goto_32
    return-object v1

    .line 52
    :cond_33
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 54
    const-wide v1, 0x7fffffffffffffffL

    .line 59
    invoke-virtual {p1, v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->k(JI)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 65
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 67
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    .line 69
    add-int/2addr v0, v1

    .line 70
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 72
    return-object p1
.end method
