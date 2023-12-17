.class public final Landroidx/recyclerview/widget/t;
.super Ljava/lang/Object;
.source "ScrollbarHelper.java"


# direct methods
.method public static a(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/p;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .registers 7

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_35

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_35

    .line 13
    if-eqz p2, :cond_35

    .line 15
    if-nez p3, :cond_11

    .line 17
    goto :goto_35

    .line 18
    :cond_11
    if-nez p5, :cond_23

    .line 20
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 23
    move-result p0

    .line 24
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 27
    move-result p1

    .line 28
    sub-int/2addr p0, p1

    .line 29
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 32
    move-result p0

    .line 33
    add-int/lit8 p0, p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_23
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 39
    move-result p0

    .line 40
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 43
    move-result p2

    .line 44
    sub-int/2addr p0, p2

    .line 45
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->l()I

    .line 48
    move-result p1

    .line 49
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :cond_35
    :goto_35
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/p;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I
    .registers 11

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_70

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_70

    .line 14
    if-eqz p2, :cond_70

    .line 16
    if-nez p3, :cond_12

    .line 18
    goto :goto_70

    .line 19
    :cond_12
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 22
    move-result v0

    .line 23
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 26
    move-result v2

    .line 27
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v0

    .line 31
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 34
    move-result v2

    .line 35
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 38
    move-result v3

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 42
    move-result v2

    .line 43
    if-eqz p6, :cond_38

    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 48
    move-result p0

    .line 49
    sub-int/2addr p0, v2

    .line 50
    add-int/lit8 p0, p0, -0x1

    .line 52
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 55
    move-result p0

    .line 56
    goto :goto_3c

    .line 57
    :cond_38
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result p0

    .line 61
    :goto_3c
    if-nez p5, :cond_3f

    .line 63
    return p0

    .line 64
    :cond_3f
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 67
    move-result p5

    .line 68
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 71
    move-result p6

    .line 72
    sub-int/2addr p5, p6

    .line 73
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    .line 76
    move-result p5

    .line 77
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 80
    move-result p6

    .line 81
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 84
    move-result p3

    .line 85
    sub-int/2addr p6, p3

    .line 86
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    .line 89
    move-result p3

    .line 90
    add-int/lit8 p3, p3, 0x1

    .line 92
    int-to-float p4, p5

    .line 93
    int-to-float p3, p3

    .line 94
    div-float/2addr p4, p3

    .line 95
    int-to-float p0, p0

    .line 96
    mul-float/2addr p0, p4

    .line 97
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->k()I

    .line 100
    move-result p3

    .line 101
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 104
    move-result p1

    .line 105
    sub-int/2addr p3, p1

    .line 106
    int-to-float p1, p3

    .line 107
    add-float/2addr p0, p1

    .line 108
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 111
    move-result p0

    .line 112
    return p0

    .line 113
    :cond_70
    :goto_70
    return v1
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/p;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .registers 7

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3b

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3b

    .line 13
    if-eqz p2, :cond_3b

    .line 15
    if-nez p3, :cond_11

    .line 17
    goto :goto_3b

    .line 18
    :cond_11
    if-nez p5, :cond_18

    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_18
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 28
    move-result p5

    .line 29
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 32
    move-result p1

    .line 33
    sub-int/2addr p5, p1

    .line 34
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 37
    move-result p1

    .line 38
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 41
    move-result p2

    .line 42
    sub-int/2addr p1, p2

    .line 43
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 46
    move-result p1

    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 49
    int-to-float p2, p5

    .line 50
    int-to-float p1, p1

    .line 51
    div-float/2addr p2, p1

    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 55
    move-result p0

    .line 56
    int-to-float p0, p0

    .line 57
    mul-float/2addr p2, p0

    .line 58
    float-to-int p0, p2

    .line 59
    return p0

    .line 60
    :cond_3b
    :goto_3b
    const/4 p0, 0x0

    .line 61
    return p0
.end method
