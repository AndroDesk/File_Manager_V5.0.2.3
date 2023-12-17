.class public final Landroidx/recyclerview/widget/l;
.super Landroidx/recyclerview/widget/v;
.source "LinearSnapHelper.java"


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
    .registers 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_26

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 18
    move-result v4

    .line 19
    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 22
    move-result v5

    .line 23
    div-int/2addr v5, v0

    .line 24
    add-int/2addr v5, v4

    .line 25
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p;->k()I

    .line 28
    move-result v4

    .line 29
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p;->l()I

    .line 32
    move-result v2

    .line 33
    div-int/2addr v2, v0

    .line 34
    add-int/2addr v2, v4

    .line 35
    sub-int/2addr v5, v2

    .line 36
    aput v5, v1, v3

    .line 38
    goto :goto_28

    .line 39
    :cond_26
    aput v3, v1, v3

    .line 41
    :goto_28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 44
    move-result v2

    .line 45
    const/4 v4, 0x1

    .line 46
    if-eqz v2, :cond_4b

    .line 48
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 55
    move-result v2

    .line 56
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 59
    move-result p2

    .line 60
    div-int/2addr p2, v0

    .line 61
    add-int/2addr p2, v2

    .line 62
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->k()I

    .line 65
    move-result v2

    .line 66
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->l()I

    .line 69
    move-result p1

    .line 70
    div-int/2addr p1, v0

    .line 71
    add-int/2addr p1, v2

    .line 72
    sub-int/2addr p2, p1

    .line 73
    aput p2, v1, v4

    .line 75
    goto :goto_4d

    .line 76
    :cond_4b
    aput v3, v1, v4

    .line 78
    :goto_4d
    return-object v1
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/l;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1e

    .line 22
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/l;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .registers 12

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$x$b;

    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    return v1

    .line 14
    :cond_d
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 24
    move-result v2

    .line 25
    if-ne v2, v1, :cond_1b

    .line 27
    return v1

    .line 28
    :cond_1b
    move-object v3, p1

    .line 29
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$x$b;

    .line 31
    add-int/lit8 v4, v0, -0x1

    .line 33
    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$x$b;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_27

    .line 39
    return v1

    .line 40
    :cond_27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 43
    move-result v5

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    if-eqz v5, :cond_3f

    .line 48
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {p0, p1, v5, p2, v7}, Landroidx/recyclerview/widget/l;->g(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;II)I

    .line 55
    move-result p2

    .line 56
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 58
    cmpg-float v5, v5, v6

    .line 60
    if-gez v5, :cond_40

    .line 62
    neg-int p2, p2

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move p2, v7

    .line 65
    :cond_40
    :goto_40
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_56

    .line 71
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l;->j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;

    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {p0, p1, v5, v7, p3}, Landroidx/recyclerview/widget/l;->g(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;II)I

    .line 78
    move-result p3

    .line 79
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 81
    cmpg-float v3, v3, v6

    .line 83
    if-gez v3, :cond_57

    .line 85
    neg-int p3, p3

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move p3, v7

    .line 88
    :cond_57
    :goto_57
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5e

    .line 94
    move p2, p3

    .line 95
    :cond_5e
    if-nez p2, :cond_61

    .line 97
    return v1

    .line 98
    :cond_61
    add-int/2addr v2, p2

    .line 99
    if-gez v2, :cond_65

    .line 101
    goto :goto_66

    .line 102
    :cond_65
    move v7, v2

    .line 103
    :goto_66
    if-lt v7, v0, :cond_69

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    move v4, v7

    .line 107
    :goto_6a
    return v4
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/p;II)I
    .registers 16

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/v;->b:Landroid/widget/Scroller;

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/high16 v6, -0x80000000

    .line 10
    const v7, 0x7fffffff

    .line 13
    const/high16 v8, -0x80000000

    .line 15
    const v9, 0x7fffffff

    .line 18
    move v4, p3

    .line 19
    move v5, p4

    .line 20
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 23
    iget-object p3, p0, Landroidx/recyclerview/widget/v;->b:Landroid/widget/Scroller;

    .line 25
    invoke-virtual {p3}, Landroid/widget/Scroller;->getFinalX()I

    .line 28
    move-result p3

    .line 29
    const/4 p4, 0x0

    .line 30
    aput p3, v0, p4

    .line 32
    iget-object p3, p0, Landroidx/recyclerview/widget/v;->b:Landroid/widget/Scroller;

    .line 34
    invoke-virtual {p3}, Landroid/widget/Scroller;->getFinalY()I

    .line 37
    move-result p3

    .line 38
    const/4 v1, 0x1

    .line 39
    aput p3, v0, v1

    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 44
    move-result p3

    .line 45
    const/high16 v2, 0x3f800000  # 1.0f

    .line 47
    if-nez p3, :cond_31

    .line 49
    goto :goto_7c

    .line 50
    :cond_31
    const/4 v3, 0x0

    .line 51
    const v4, 0x7fffffff

    .line 54
    const/high16 v5, -0x80000000

    .line 56
    move v7, p4

    .line 57
    move v6, v5

    .line 58
    move v5, v4

    .line 59
    move-object v4, v3

    .line 60
    :goto_3b
    if-ge v7, p3, :cond_54

    .line 62
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 69
    move-result v9

    .line 70
    const/4 v10, -0x1

    .line 71
    if-ne v9, v10, :cond_49

    .line 73
    goto :goto_51

    .line 74
    :cond_49
    if-ge v9, v5, :cond_4d

    .line 76
    move-object v3, v8

    .line 77
    move v5, v9

    .line 78
    :cond_4d
    if-le v9, v6, :cond_51

    .line 80
    move-object v4, v8

    .line 81
    move v6, v9

    .line 82
    :cond_51
    :goto_51
    add-int/lit8 v7, v7, 0x1

    .line 84
    goto :goto_3b

    .line 85
    :cond_54
    if-eqz v3, :cond_7c

    .line 87
    if-nez v4, :cond_59

    .line 89
    goto :goto_7c

    .line 90
    :cond_59
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 93
    move-result p1

    .line 94
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 97
    move-result p3

    .line 98
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 101
    move-result p1

    .line 102
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 105
    move-result p3

    .line 106
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 109
    move-result p2

    .line 110
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    .line 113
    move-result p2

    .line 114
    sub-int/2addr p2, p1

    .line 115
    if-nez p2, :cond_75

    .line 117
    goto :goto_7c

    .line 118
    :cond_75
    int-to-float p1, p2

    .line 119
    mul-float/2addr p1, v2

    .line 120
    sub-int/2addr v6, v5

    .line 121
    add-int/2addr v6, v1

    .line 122
    int-to-float p2, v6

    .line 123
    div-float v2, p1, p2

    .line 125
    :cond_7c
    :goto_7c
    const/4 p1, 0x0

    .line 126
    cmpg-float p1, v2, p1

    .line 128
    if-gtz p1, :cond_82

    .line 130
    return p4

    .line 131
    :cond_82
    aget p1, v0, p4

    .line 133
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 136
    move-result p1

    .line 137
    aget p2, v0, v1

    .line 139
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 142
    move-result p2

    .line 143
    if-le p1, p2, :cond_93

    .line 145
    aget p1, v0, p4

    .line 147
    goto :goto_95

    .line 148
    :cond_93
    aget p1, v0, v1

    .line 150
    :goto_95
    int-to-float p1, p1

    .line 151
    div-float/2addr p1, v2

    .line 152
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 155
    move-result p1

    .line 156
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
    iget-object v0, p0, Landroidx/recyclerview/widget/l;->e:Landroidx/recyclerview/widget/n;

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
    iput-object v0, p0, Landroidx/recyclerview/widget/l;->e:Landroidx/recyclerview/widget/n;

    .line 16
    :cond_f
    iget-object p1, p0, Landroidx/recyclerview/widget/l;->e:Landroidx/recyclerview/widget/n;

    .line 18
    return-object p1
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/p;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/l;->d:Landroidx/recyclerview/widget/o;

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
    iput-object v0, p0, Landroidx/recyclerview/widget/l;->d:Landroidx/recyclerview/widget/o;

    .line 16
    :cond_f
    iget-object p1, p0, Landroidx/recyclerview/widget/l;->d:Landroidx/recyclerview/widget/o;

    .line 18
    return-object p1
.end method
