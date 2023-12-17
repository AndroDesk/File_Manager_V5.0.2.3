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
.method public constructor <init>(Landroidx/recyclerview/widget/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/d$b;->a:Landroidx/recyclerview/widget/d;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 12

    .line 1
    iget-object p2, p0, Landroidx/recyclerview/widget/d$b;->a:Landroidx/recyclerview/widget/d;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 6
    move-result p3

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 10
    move-result p1

    .line 11
    iget-object v0, p2, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 16
    move-result v0

    .line 17
    iget v1, p2, Landroidx/recyclerview/widget/d;->r:I

    .line 19
    sub-int v2, v0, v1

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-lez v2, :cond_1e

    .line 25
    iget v2, p2, Landroidx/recyclerview/widget/d;->a:I

    .line 27
    if-lt v1, v2, :cond_1e

    .line 29
    move v2, v4

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v2, v3

    .line 32
    :goto_1f
    iput-boolean v2, p2, Landroidx/recyclerview/widget/d;->t:Z

    .line 34
    iget-object v2, p2, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 39
    move-result v2

    .line 40
    iget v5, p2, Landroidx/recyclerview/widget/d;->q:I

    .line 42
    sub-int v6, v2, v5

    .line 44
    if-lez v6, :cond_33

    .line 46
    iget v6, p2, Landroidx/recyclerview/widget/d;->a:I

    .line 48
    if-lt v5, v6, :cond_33

    .line 50
    move v6, v4

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move v6, v3

    .line 53
    :goto_34
    iput-boolean v6, p2, Landroidx/recyclerview/widget/d;->u:Z

    .line 55
    iget-boolean v7, p2, Landroidx/recyclerview/widget/d;->t:Z

    .line 57
    if-nez v7, :cond_44

    .line 59
    if-nez v6, :cond_44

    .line 61
    iget p1, p2, Landroidx/recyclerview/widget/d;->v:I

    .line 63
    if-eqz p1, :cond_7d

    .line 65
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/d;->setState(I)V

    .line 68
    goto :goto_7d

    .line 69
    :cond_44
    const/high16 v3, 0x40000000  # 2.0f

    .line 71
    if-eqz v7, :cond_5c

    .line 73
    int-to-float p1, p1

    .line 74
    int-to-float v6, v1

    .line 75
    div-float v7, v6, v3

    .line 77
    add-float/2addr v7, p1

    .line 78
    mul-float/2addr v7, v6

    .line 79
    int-to-float p1, v0

    .line 80
    div-float/2addr v7, p1

    .line 81
    float-to-int p1, v7

    .line 82
    iput p1, p2, Landroidx/recyclerview/widget/d;->l:I

    .line 84
    mul-int p1, v1, v1

    .line 86
    div-int/2addr p1, v0

    .line 87
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 90
    move-result p1

    .line 91
    iput p1, p2, Landroidx/recyclerview/widget/d;->k:I

    .line 93
    :cond_5c
    iget-boolean p1, p2, Landroidx/recyclerview/widget/d;->u:Z

    .line 95
    if-eqz p1, :cond_74

    .line 97
    int-to-float p1, p3

    .line 98
    int-to-float p3, v5

    .line 99
    div-float v0, p3, v3

    .line 101
    add-float/2addr v0, p1

    .line 102
    mul-float/2addr v0, p3

    .line 103
    int-to-float p1, v2

    .line 104
    div-float/2addr v0, p1

    .line 105
    float-to-int p1, v0

    .line 106
    iput p1, p2, Landroidx/recyclerview/widget/d;->o:I

    .line 108
    mul-int p1, v5, v5

    .line 110
    div-int/2addr p1, v2

    .line 111
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    .line 114
    move-result p1

    .line 115
    iput p1, p2, Landroidx/recyclerview/widget/d;->n:I

    .line 117
    :cond_74
    iget p1, p2, Landroidx/recyclerview/widget/d;->v:I

    .line 119
    if-eqz p1, :cond_7a

    .line 121
    if-ne p1, v4, :cond_7d

    .line 123
    :cond_7a
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/d;->setState(I)V

    .line 126
    :cond_7d
    :goto_7d
    return-void
.end method
