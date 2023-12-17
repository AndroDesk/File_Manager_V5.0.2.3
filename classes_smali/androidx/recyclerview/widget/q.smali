.class public Landroidx/recyclerview/widget/q;
.super Landroidx/recyclerview/widget/v;
.source "PagerSnapHelper.java"


# instance fields
.field public d:Landroidx/recyclerview/widget/o;

.field public e:Landroidx/recyclerview/widget/n;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/v;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_15

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, p2, v1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;Landroidx/recyclerview/widget/p;)I

    .line 18
    move-result v1

    .line 19
    aput v1, v0, v2

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    aput v2, v0, v2

    .line 24
    :goto_17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 27
    move-result v1

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v1, :cond_29

    .line 31
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;Landroidx/recyclerview/widget/p;)I

    .line 38
    move-result p1

    .line 39
    aput p1, v0, v3

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    aput v2, v0, v3

    .line 44
    :goto_2b
    return-object v0
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$x;
    .registers 3

    .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$x$b;

    .line 3
    if-nez p1, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_6
    new-instance p1, Landroidx/recyclerview/widget/q$a;

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/q$a;-><init>(Landroidx/recyclerview/widget/q;Landroid/content/Context;)V

    .line 18
    return-object p1
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .registers 16

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_14

    .line 16
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    .line 19
    move-result-object v2

    .line 20
    goto :goto_20

    .line 21
    :cond_14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1f

    .line 27
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    .line 30
    move-result-object v2

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move-object v2, v3

    .line 33
    :goto_20
    if-nez v2, :cond_23

    .line 35
    return v1

    .line 36
    :cond_23
    const/high16 v4, -0x80000000

    .line 38
    const v5, 0x7fffffff

    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 44
    move-result v6

    .line 45
    const/4 v7, 0x0

    .line 46
    move v8, v5

    .line 47
    move v9, v7

    .line 48
    move v5, v4

    .line 49
    move-object v4, v3

    .line 50
    :goto_31
    if-ge v9, v6, :cond_4d

    .line 52
    invoke-virtual {p1, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 55
    move-result-object v10

    .line 56
    if-nez v10, :cond_3a

    .line 58
    goto :goto_4a

    .line 59
    :cond_3a
    invoke-virtual {p0, v10, v2}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;Landroidx/recyclerview/widget/p;)I

    .line 62
    move-result v11

    .line 63
    if-gtz v11, :cond_44

    .line 65
    if-le v11, v5, :cond_44

    .line 67
    move-object v4, v10

    .line 68
    move v5, v11

    .line 69
    :cond_44
    if-ltz v11, :cond_4a

    .line 71
    if-ge v11, v8, :cond_4a

    .line 73
    move-object v3, v10

    .line 74
    move v8, v11

    .line 75
    :cond_4a
    :goto_4a
    add-int/lit8 v9, v9, 0x1

    .line 77
    goto :goto_31

    .line 78
    :cond_4d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 81
    move-result v2

    .line 82
    const/4 v5, 0x1

    .line 83
    if-eqz v2, :cond_57

    .line 85
    if-lez p2, :cond_5b

    .line 87
    goto :goto_59

    .line 88
    :cond_57
    if-lez p3, :cond_5b

    .line 90
    :goto_59
    move p2, v5

    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    move p2, v7

    .line 93
    :goto_5c
    if-eqz p2, :cond_65

    .line 95
    if-eqz v3, :cond_65

    .line 97
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 100
    move-result p1

    .line 101
    return p1

    .line 102
    :cond_65
    if-nez p2, :cond_6e

    .line 104
    if-eqz v4, :cond_6e

    .line 106
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 109
    move-result p1

    .line 110
    return p1

    .line 111
    :cond_6e
    if-eqz p2, :cond_71

    .line 113
    move-object v3, v4

    .line 114
    :cond_71
    if-nez v3, :cond_74

    .line 116
    return v1

    .line 117
    :cond_74
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 120
    move-result p3

    .line 121
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 124
    move-result v2

    .line 125
    instance-of v3, p1, Landroidx/recyclerview/widget/RecyclerView$x$b;

    .line 127
    if-eqz v3, :cond_97

    .line 129
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$x$b;

    .line 131
    sub-int/2addr v2, v5

    .line 132
    invoke-interface {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$x$b;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_97

    .line 138
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 140
    const/4 v3, 0x0

    .line 141
    cmpg-float v2, v2, v3

    .line 143
    if-ltz v2, :cond_96

    .line 145
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 147
    cmpg-float p1, p1, v3

    .line 149
    if-gez p1, :cond_97

    .line 151
    :cond_96
    move v7, v5

    .line 152
    :cond_97
    if-ne v7, p2, :cond_9a

    .line 154
    move v5, v1

    .line 155
    :cond_9a
    add-int/2addr p3, v5

    .line 156
    if-ltz p3, :cond_a1

    .line 158
    if-lt p3, v0, :cond_a0

    .line 160
    goto :goto_a1

    .line 161
    :cond_a0
    return p3

    .line 162
    :cond_a1
    :goto_a1
    return v1
.end method

.method public final g(Landroid/view/View;Landroidx/recyclerview/widget/p;)I
    .registers 4

    .line 1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 8
    move-result p1

    .line 9
    div-int/lit8 p1, p1, 0x2

    .line 11
    add-int/2addr p1, v0

    .line 12
    invoke-virtual {p2}, Landroidx/recyclerview/widget/p;->k()I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p2}, Landroidx/recyclerview/widget/p;->l()I

    .line 19
    move-result p2

    .line 20
    div-int/lit8 p2, p2, 0x2

    .line 22
    add-int/2addr p2, v0

    .line 23
    sub-int/2addr p1, p2

    .line 24
    return p1
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;)Landroid/view/View;
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/p;->k()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {p2}, Landroidx/recyclerview/widget/p;->l()I

    .line 16
    move-result v3

    .line 17
    div-int/lit8 v3, v3, 0x2

    .line 19
    add-int/2addr v3, v2

    .line 20
    const v2, 0x7fffffff

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_17
    if-ge v4, v0, :cond_34

    .line 26
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 33
    move-result v6

    .line 34
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 37
    move-result v7

    .line 38
    div-int/lit8 v7, v7, 0x2

    .line 40
    add-int/2addr v7, v6

    .line 41
    sub-int/2addr v7, v3

    .line 42
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 45
    move-result v6

    .line 46
    if-ge v6, v2, :cond_31

    .line 48
    move-object v1, v5

    .line 49
    move v2, v6

    .line 50
    :cond_31
    add-int/lit8 v4, v4, 0x1

    .line 52
    goto :goto_17

    .line 53
    :cond_34
    return-object v1
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/q;->e:Landroidx/recyclerview/widget/n;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    if-eq v0, p1, :cond_f

    .line 9
    :cond_8
    new-instance v0, Landroidx/recyclerview/widget/n;

    .line 11
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/q;->e:Landroidx/recyclerview/widget/n;

    .line 16
    :cond_f
    iget-object p1, p0, Landroidx/recyclerview/widget/q;->e:Landroidx/recyclerview/widget/n;

    .line 18
    return-object p1
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/q;->d:Landroidx/recyclerview/widget/o;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    if-eq v0, p1, :cond_f

    .line 9
    :cond_8
    new-instance v0, Landroidx/recyclerview/widget/o;

    .line 11
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/q;->d:Landroidx/recyclerview/widget/o;

    .line 16
    :cond_f
    iget-object p1, p0, Landroidx/recyclerview/widget/q;->d:Landroidx/recyclerview/widget/o;

    .line 18
    return-object p1
.end method
