.class public final Landroidx/recyclerview/widget/d$b;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/d;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/d$b;->a:Landroidx/recyclerview/widget/d;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 12

    iget-object p2, p0, Landroidx/recyclerview/widget/d$b;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget-object v0, p2, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget v1, p2, Landroidx/recyclerview/widget/d;->r:I

    sub-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1e

    iget v2, p2, Landroidx/recyclerview/widget/d;->a:I

    if-lt v1, v2, :cond_1e

    move v2, v4

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    iput-boolean v2, p2, Landroidx/recyclerview/widget/d;->t:Z

    iget-object v2, p2, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    iget v5, p2, Landroidx/recyclerview/widget/d;->q:I

    sub-int v6, v2, v5

    if-lez v6, :cond_33

    iget v6, p2, Landroidx/recyclerview/widget/d;->a:I

    if-lt v5, v6, :cond_33

    move v6, v4

    goto :goto_34

    :cond_33
    move v6, v3

    :goto_34
    iput-boolean v6, p2, Landroidx/recyclerview/widget/d;->u:Z

    iget-boolean v7, p2, Landroidx/recyclerview/widget/d;->t:Z

    if-nez v7, :cond_44

    if-nez v6, :cond_44

    iget p1, p2, Landroidx/recyclerview/widget/d;->v:I

    if-eqz p1, :cond_7d

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/d;->setState(I)V

    goto :goto_7d

    :cond_44
    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v7, :cond_5c

    int-to-float p1, p1

    int-to-float v6, v1

    div-float v7, v6, v3

    add-float/2addr v7, p1

    mul-float/2addr v7, v6

    int-to-float p1, v0

    div-float/2addr v7, p1

    float-to-int p1, v7

    iput p1, p2, Landroidx/recyclerview/widget/d;->l:I

    mul-int p1, v1, v1

    div-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Landroidx/recyclerview/widget/d;->k:I

    :cond_5c
    iget-boolean p1, p2, Landroidx/recyclerview/widget/d;->u:Z

    if-eqz p1, :cond_74

    int-to-float p1, p3

    int-to-float p3, v5

    div-float v0, p3, v3

    add-float/2addr v0, p1

    mul-float/2addr v0, p3

    int-to-float p1, v2

    div-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p2, Landroidx/recyclerview/widget/d;->o:I

    mul-int p1, v5, v5

    div-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Landroidx/recyclerview/widget/d;->n:I

    :cond_74
    iget p1, p2, Landroidx/recyclerview/widget/d;->v:I

    if-eqz p1, :cond_7a

    if-ne p1, v4, :cond_7d

    :cond_7a
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/d;->setState(I)V

    :cond_7d
    :goto_7d
    return-void
.end method
