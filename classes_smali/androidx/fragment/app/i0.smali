.class public abstract Landroidx/fragment/app/i0;
.super Ljava/lang/Object;
.source "FragmentTransitionImpl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnknownNullness"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/view/View;Ljava/util/List;)V
    .registers 11

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    const/4 v3, 0x1

    .line 8
    if-ge v2, v0, :cond_14

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v4

    .line 14
    if-ne v4, p0, :cond_11

    .line 16
    move v2, v3

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_6

    .line 21
    :cond_14
    move v2, v1

    .line 22
    :goto_15
    if-eqz v2, :cond_18

    .line 24
    return-void

    .line 25
    :cond_18
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 27
    invoke-static {p0}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_23

    .line 33
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_23
    move p0, v0

    .line 37
    :goto_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 40
    move-result v2

    .line 41
    if-ge p0, v2, :cond_61

    .line 43
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/view/View;

    .line 49
    instance-of v4, v2, Landroid/view/ViewGroup;

    .line 51
    if-eqz v4, :cond_5e

    .line 53
    check-cast v2, Landroid/view/ViewGroup;

    .line 55
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 58
    move-result v4

    .line 59
    move v5, v1

    .line 60
    :goto_3b
    if-ge v5, v4, :cond_5e

    .line 62
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 65
    move-result-object v6

    .line 66
    move v7, v1

    .line 67
    :goto_42
    if-ge v7, v0, :cond_4f

    .line 69
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v8

    .line 73
    if-ne v8, v6, :cond_4c

    .line 75
    move v7, v3

    .line 76
    goto :goto_50

    .line 77
    :cond_4c
    add-int/lit8 v7, v7, 0x1

    .line 79
    goto :goto_42

    .line 80
    :cond_4f
    move v7, v1

    .line 81
    :goto_50
    if-nez v7, :cond_5b

    .line 83
    invoke-static {v6}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    .line 86
    move-result-object v7

    .line 87
    if-eqz v7, :cond_5b

    .line 89
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_5b
    add-int/lit8 v5, v5, 0x1

    .line 94
    goto :goto_3b

    .line 95
    :cond_5e
    add-int/lit8 p0, p0, 0x1

    .line 97
    goto :goto_24

    .line 98
    :cond_61
    return-void
.end method

.method public static g(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 23
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    move-result-object v1

    .line 53
    :goto_34
    instance-of v2, v1, Landroid/view/View;

    .line 55
    if-eqz v2, :cond_62

    .line 57
    check-cast v1, Landroid/view/View;

    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 62
    move-result v2

    .line 63
    neg-int v2, v2

    .line 64
    int-to-float v2, v2

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 68
    move-result v3

    .line 69
    neg-int v3, v3

    .line 70
    int-to-float v3, v3

    .line 71
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 84
    move-result v2

    .line 85
    int-to-float v2, v2

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 89
    move-result v3

    .line 90
    int-to-float v3, v3

    .line 91
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 97
    move-result-object v1

    .line 98
    goto :goto_34

    .line 99
    :cond_62
    const/4 v1, 0x2

    .line 100
    new-array v1, v1, [I

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 109
    const/4 p0, 0x0

    .line 110
    aget p0, v1, p0

    .line 112
    int-to-float p0, p0

    .line 113
    const/4 v2, 0x1

    .line 114
    aget v1, v1, v2

    .line 116
    int-to-float v1, v1

    .line 117
    invoke-virtual {v0, p0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 120
    iget p0, v0, Landroid/graphics/RectF;->left:F

    .line 122
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 125
    move-result p0

    .line 126
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 128
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 131
    move-result v1

    .line 132
    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 134
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 137
    move-result v2

    .line 138
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 140
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 143
    move-result v0

    .line 144
    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 147
    return-void
.end method

.method public static h(Ljava/util/List;)Z
    .registers 1

    .line 1
    if-eqz p0, :cond_b

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 p0, 0x1

    .line 13
    :goto_c
    return p0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public abstract b(Ljava/util/ArrayList;Ljava/lang/Object;)V
.end method

.method public abstract c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
.end method

.method public abstract e(Ljava/lang/Object;)Z
.end method

.method public abstract f(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end method

.method public abstract m(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public abstract n(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public o(Ljava/lang/Object;Li0/d;Landroidx/fragment/app/k;)V
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroidx/fragment/app/k;->run()V

    .line 4
    return-void
.end method

.method public abstract p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract r(Ljava/lang/Object;)Ljava/lang/Object;
.end method
