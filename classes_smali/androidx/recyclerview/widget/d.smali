.class public final Landroidx/recyclerview/widget/d;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "FastScroller.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/d$d;,
        Landroidx/recyclerview/widget/d$c;
    }
.end annotation


# static fields
.field public static final C:[I

.field public static final D:[I


# instance fields
.field public A:I

.field public final B:Landroidx/recyclerview/widget/d$a;

.field public final a:I

.field public final b:I

.field public final c:Landroid/graphics/drawable/StateListDrawable;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:I

.field public final f:I

.field public final g:Landroid/graphics/drawable/StateListDrawable;

.field public final h:Landroid/graphics/drawable/Drawable;

.field public final i:I

.field public final j:I

.field public k:I

.field public l:I

.field public m:F

.field public n:I

.field public o:I

.field public p:F

.field public q:I

.field public r:I

.field public s:Landroidx/recyclerview/widget/RecyclerView;

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public final x:[I

.field public final y:[I

.field public final z:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const v1, 0x10100a7

    .line 7
    const/4 v2, 0x0

    .line 8
    aput v1, v0, v2

    .line 10
    sput-object v0, Landroidx/recyclerview/widget/d;->C:[I

    .line 12
    new-array v0, v2, [I

    .line 14
    sput-object v0, Landroidx/recyclerview/widget/d;->D:[I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .registers 13

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 7
    iput v0, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 9
    iput-boolean v0, p0, Landroidx/recyclerview/widget/d;->t:Z

    .line 11
    iput-boolean v0, p0, Landroidx/recyclerview/widget/d;->u:Z

    .line 13
    iput v0, p0, Landroidx/recyclerview/widget/d;->v:I

    .line 15
    iput v0, p0, Landroidx/recyclerview/widget/d;->w:I

    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v2, v1, [I

    .line 20
    iput-object v2, p0, Landroidx/recyclerview/widget/d;->x:[I

    .line 22
    new-array v2, v1, [I

    .line 24
    iput-object v2, p0, Landroidx/recyclerview/widget/d;->y:[I

    .line 26
    new-array v1, v1, [F

    .line 28
    fill-array-data v1, :array_aa

    .line 31
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;

    .line 37
    iput v0, p0, Landroidx/recyclerview/widget/d;->A:I

    .line 39
    new-instance v0, Landroidx/recyclerview/widget/d$a;

    .line 41
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/d$a;-><init>(Landroidx/recyclerview/widget/d;)V

    .line 44
    iput-object v0, p0, Landroidx/recyclerview/widget/d;->B:Landroidx/recyclerview/widget/d$a;

    .line 46
    new-instance v2, Landroidx/recyclerview/widget/d$b;

    .line 48
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/d$b;-><init>(Landroidx/recyclerview/widget/d;)V

    .line 51
    iput-object p2, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;

    .line 53
    iput-object p3, p0, Landroidx/recyclerview/widget/d;->d:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object p4, p0, Landroidx/recyclerview/widget/d;->g:Landroid/graphics/drawable/StateListDrawable;

    .line 57
    iput-object p5, p0, Landroidx/recyclerview/widget/d;->h:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 62
    move-result v3

    .line 63
    invoke-static {p6, v3}, Ljava/lang/Math;->max(II)I

    .line 66
    move-result v3

    .line 67
    iput v3, p0, Landroidx/recyclerview/widget/d;->e:I

    .line 69
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 72
    move-result v3

    .line 73
    invoke-static {p6, v3}, Ljava/lang/Math;->max(II)I

    .line 76
    move-result v3

    .line 77
    iput v3, p0, Landroidx/recyclerview/widget/d;->f:I

    .line 79
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 82
    move-result p4

    .line 83
    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    .line 86
    move-result p4

    .line 87
    iput p4, p0, Landroidx/recyclerview/widget/d;->i:I

    .line 89
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 92
    move-result p4

    .line 93
    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    .line 96
    move-result p4

    .line 97
    iput p4, p0, Landroidx/recyclerview/widget/d;->j:I

    .line 99
    iput p7, p0, Landroidx/recyclerview/widget/d;->a:I

    .line 101
    iput p8, p0, Landroidx/recyclerview/widget/d;->b:I

    .line 103
    const/16 p4, 0xff

    .line 105
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 108
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 111
    new-instance p2, Landroidx/recyclerview/widget/d$c;

    .line 113
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/d$c;-><init>(Landroidx/recyclerview/widget/d;)V

    .line 116
    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    new-instance p2, Landroidx/recyclerview/widget/d$d;

    .line 121
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/d$d;-><init>(Landroidx/recyclerview/widget/d;)V

    .line 124
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    if-ne p2, p1, :cond_83

    .line 131
    goto :goto_a8

    .line 132
    :cond_83
    if-eqz p2, :cond_97

    .line 134
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 137
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 142
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 147
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 152
    :cond_97
    iput-object p1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    if-eqz p1, :cond_a8

    .line 156
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 159
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 164
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 169
    :cond_a8
    :goto_a8
    return-void

    .line 170
    nop

    .line 171
    :array_aa
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public final isPointInsideHorizontalThumb(FF)Z
    .registers 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/d;->i:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    int-to-float v0, v0

    .line 7
    cmpl-float p2, p2, v0

    .line 9
    if-ltz p2, :cond_21

    .line 11
    iget p2, p0, Landroidx/recyclerview/widget/d;->o:I

    .line 13
    iget v0, p0, Landroidx/recyclerview/widget/d;->n:I

    .line 15
    div-int/lit8 v1, v0, 0x2

    .line 17
    sub-int v1, p2, v1

    .line 19
    int-to-float v1, v1

    .line 20
    cmpl-float v1, p1, v1

    .line 22
    if-ltz v1, :cond_21

    .line 24
    div-int/lit8 v0, v0, 0x2

    .line 26
    add-int/2addr v0, p2

    .line 27
    int-to-float p2, v0

    .line 28
    cmpg-float p1, p1, p2

    .line 30
    if-gtz p1, :cond_21

    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    :goto_22
    return p1
.end method

.method public final isPointInsideVerticalThumb(FF)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_e

    .line 13
    move v0, v2

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v0, v1

    .line 16
    :goto_f
    if-eqz v0, :cond_19

    .line 18
    iget v0, p0, Landroidx/recyclerview/widget/d;->e:I

    .line 20
    int-to-float v0, v0

    .line 21
    cmpg-float p1, p1, v0

    .line 23
    if-gtz p1, :cond_37

    .line 25
    goto :goto_23

    .line 26
    :cond_19
    iget v0, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 28
    iget v3, p0, Landroidx/recyclerview/widget/d;->e:I

    .line 30
    sub-int/2addr v0, v3

    .line 31
    int-to-float v0, v0

    .line 32
    cmpl-float p1, p1, v0

    .line 34
    if-ltz p1, :cond_37

    .line 36
    :goto_23
    iget p1, p0, Landroidx/recyclerview/widget/d;->l:I

    .line 38
    iget v0, p0, Landroidx/recyclerview/widget/d;->k:I

    .line 40
    div-int/lit8 v0, v0, 0x2

    .line 42
    sub-int v3, p1, v0

    .line 44
    int-to-float v3, v3

    .line 45
    cmpl-float v3, p2, v3

    .line 47
    if-ltz v3, :cond_37

    .line 49
    add-int/2addr v0, p1

    .line 50
    int-to-float p1, v0

    .line 51
    cmpg-float p1, p2, p1

    .line 53
    if-gtz p1, :cond_37

    .line 55
    move v1, v2

    .line 56
    :cond_37
    return v1
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 9

    .line 1
    iget p2, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 3
    iget-object p3, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 8
    move-result p3

    .line 9
    const/4 v0, 0x0

    .line 10
    if-ne p2, p3, :cond_bf

    .line 12
    iget p2, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 14
    iget-object p3, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 19
    move-result p3

    .line 20
    if-eq p2, p3, :cond_17

    .line 22
    goto/16 :goto_bf

    .line 24
    :cond_17
    iget p2, p0, Landroidx/recyclerview/widget/d;->A:I

    .line 26
    if-eqz p2, :cond_be

    .line 28
    iget-boolean p2, p0, Landroidx/recyclerview/widget/d;->t:Z

    .line 30
    const/4 p3, 0x0

    .line 31
    if-eqz p2, :cond_87

    .line 33
    iget p2, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 35
    iget v1, p0, Landroidx/recyclerview/widget/d;->e:I

    .line 37
    sub-int/2addr p2, v1

    .line 38
    iget v2, p0, Landroidx/recyclerview/widget/d;->l:I

    .line 40
    iget v3, p0, Landroidx/recyclerview/widget/d;->k:I

    .line 42
    div-int/lit8 v4, v3, 0x2

    .line 44
    sub-int/2addr v2, v4

    .line 45
    iget-object v4, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;

    .line 47
    invoke-virtual {v4, v0, v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->d:Landroid/graphics/drawable/Drawable;

    .line 52
    iget v3, p0, Landroidx/recyclerview/widget/d;->f:I

    .line 54
    iget v4, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 56
    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 63
    invoke-static {v1}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 66
    move-result v1

    .line 67
    const/4 v3, 0x1

    .line 68
    if-ne v1, v3, :cond_46

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v3, v0

    .line 72
    :goto_47
    if-eqz v3, :cond_6e

    .line 74
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->d:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    iget p2, p0, Landroidx/recyclerview/widget/d;->e:I

    .line 81
    int-to-float p2, p2

    .line 82
    int-to-float v1, v2

    .line 83
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    const/high16 p2, -0x40800000  # -1.0f

    .line 88
    const/high16 v1, 0x3f800000  # 1.0f

    .line 90
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 93
    iget-object v3, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;

    .line 95
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 101
    iget p2, p0, Landroidx/recyclerview/widget/d;->e:I

    .line 103
    neg-int p2, p2

    .line 104
    int-to-float p2, p2

    .line 105
    neg-int v1, v2

    .line 106
    int-to-float v1, v1

    .line 107
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    goto :goto_87

    .line 111
    :cond_6e
    int-to-float v1, p2

    .line 112
    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->d:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    int-to-float v1, v2

    .line 121
    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;

    .line 126
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    neg-int p2, p2

    .line 130
    int-to-float p2, p2

    .line 131
    neg-int v1, v2

    .line 132
    int-to-float v1, v1

    .line 133
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    :cond_87
    :goto_87
    iget-boolean p2, p0, Landroidx/recyclerview/widget/d;->u:Z

    .line 138
    if-eqz p2, :cond_be

    .line 140
    iget p2, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 142
    iget v1, p0, Landroidx/recyclerview/widget/d;->i:I

    .line 144
    sub-int/2addr p2, v1

    .line 145
    iget v2, p0, Landroidx/recyclerview/widget/d;->o:I

    .line 147
    iget v3, p0, Landroidx/recyclerview/widget/d;->n:I

    .line 149
    div-int/lit8 v4, v3, 0x2

    .line 151
    sub-int/2addr v2, v4

    .line 152
    iget-object v4, p0, Landroidx/recyclerview/widget/d;->g:Landroid/graphics/drawable/StateListDrawable;

    .line 154
    invoke-virtual {v4, v0, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->h:Landroid/graphics/drawable/Drawable;

    .line 159
    iget v3, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 161
    iget v4, p0, Landroidx/recyclerview/widget/d;->j:I

    .line 163
    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    int-to-float v0, p2

    .line 167
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->h:Landroid/graphics/drawable/Drawable;

    .line 172
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 175
    int-to-float v0, v2

    .line 176
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 179
    iget-object p3, p0, Landroidx/recyclerview/widget/d;->g:Landroid/graphics/drawable/StateListDrawable;

    .line 181
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    neg-int p3, v2

    .line 185
    int-to-float p3, p3

    .line 186
    neg-int p2, p2

    .line 187
    int-to-float p2, p2

    .line 188
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    :cond_be
    return-void

    .line 192
    :cond_bf
    :goto_bf
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 197
    move-result p1

    .line 198
    iput p1, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 200
    iget-object p1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 205
    move-result p1

    .line 206
    iput p1, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 208
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/d;->setState(I)V

    .line 211
    return-void
.end method

.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget p1, p0, Landroidx/recyclerview/widget/d;->v:I

    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p1, v1, :cond_45

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/d;->isPointInsideVerticalThumb(FF)Z

    .line 18
    move-result p1

    .line 19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 22
    move-result v2

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 26
    move-result v3

    .line 27
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/d;->isPointInsideHorizontalThumb(FF)Z

    .line 30
    move-result v2

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_48

    .line 37
    if-nez p1, :cond_28

    .line 39
    if-eqz v2, :cond_48

    .line 41
    :cond_28
    if-eqz v2, :cond_35

    .line 43
    iput v1, p0, Landroidx/recyclerview/widget/d;->w:I

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 48
    move-result p1

    .line 49
    float-to-int p1, p1

    .line 50
    int-to-float p1, p1

    .line 51
    iput p1, p0, Landroidx/recyclerview/widget/d;->p:F

    .line 53
    goto :goto_41

    .line 54
    :cond_35
    if-eqz p1, :cond_41

    .line 56
    iput v0, p0, Landroidx/recyclerview/widget/d;->w:I

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 61
    move-result p1

    .line 62
    float-to-int p1, p1

    .line 63
    int-to-float p1, p1

    .line 64
    iput p1, p0, Landroidx/recyclerview/widget/d;->m:F

    .line 66
    :cond_41
    :goto_41
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/d;->setState(I)V

    .line 69
    goto :goto_49

    .line 70
    :cond_45
    if-ne p1, v0, :cond_48

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    const/4 v1, 0x0

    .line 74
    :goto_49
    return v1
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public final onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 13

    .line 1
    iget p1, p0, Landroidx/recyclerview/widget/d;->v:I

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x2

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez p1, :cond_47

    .line 14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 17
    move-result p1

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/d;->isPointInsideVerticalThumb(FF)Z

    .line 25
    move-result p1

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 29
    move-result v2

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 33
    move-result v3

    .line 34
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/d;->isPointInsideHorizontalThumb(FF)Z

    .line 37
    move-result v2

    .line 38
    if-nez p1, :cond_29

    .line 40
    if-eqz v2, :cond_11f

    .line 42
    :cond_29
    if-eqz v2, :cond_36

    .line 44
    iput v1, p0, Landroidx/recyclerview/widget/d;->w:I

    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 49
    move-result p1

    .line 50
    float-to-int p1, p1

    .line 51
    int-to-float p1, p1

    .line 52
    iput p1, p0, Landroidx/recyclerview/widget/d;->p:F

    .line 54
    goto :goto_42

    .line 55
    :cond_36
    if-eqz p1, :cond_42

    .line 57
    iput v0, p0, Landroidx/recyclerview/widget/d;->w:I

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 62
    move-result p1

    .line 63
    float-to-int p1, p1

    .line 64
    int-to-float p1, p1

    .line 65
    iput p1, p0, Landroidx/recyclerview/widget/d;->m:F

    .line 67
    :cond_42
    :goto_42
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/d;->setState(I)V

    .line 70
    goto/16 :goto_11f

    .line 72
    :cond_47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 75
    move-result p1

    .line 76
    const/4 v2, 0x0

    .line 77
    if-ne p1, v1, :cond_5e

    .line 79
    iget p1, p0, Landroidx/recyclerview/widget/d;->v:I

    .line 81
    if-ne p1, v0, :cond_5e

    .line 83
    const/4 p1, 0x0

    .line 84
    iput p1, p0, Landroidx/recyclerview/widget/d;->m:F

    .line 86
    iput p1, p0, Landroidx/recyclerview/widget/d;->p:F

    .line 88
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/d;->setState(I)V

    .line 91
    iput v2, p0, Landroidx/recyclerview/widget/d;->w:I

    .line 93
    goto/16 :goto_11f

    .line 95
    :cond_5e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 98
    move-result p1

    .line 99
    if-ne p1, v0, :cond_11f

    .line 101
    iget p1, p0, Landroidx/recyclerview/widget/d;->v:I

    .line 103
    if-ne p1, v0, :cond_11f

    .line 105
    invoke-virtual {p0}, Landroidx/recyclerview/widget/d;->show()V

    .line 108
    iget p1, p0, Landroidx/recyclerview/widget/d;->w:I

    .line 110
    const/high16 v3, 0x40000000  # 2.0f

    .line 112
    if-ne p1, v1, :cond_c6

    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 117
    move-result p1

    .line 118
    iget-object v4, p0, Landroidx/recyclerview/widget/d;->y:[I

    .line 120
    iget v5, p0, Landroidx/recyclerview/widget/d;->b:I

    .line 122
    aput v5, v4, v2

    .line 124
    iget v6, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 126
    sub-int/2addr v6, v5

    .line 127
    aput v6, v4, v1

    .line 129
    int-to-float v5, v5

    .line 130
    int-to-float v6, v6

    .line 131
    invoke-static {v6, p1}, Ljava/lang/Math;->min(FF)F

    .line 134
    move-result p1

    .line 135
    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    .line 138
    move-result p1

    .line 139
    iget v5, p0, Landroidx/recyclerview/widget/d;->o:I

    .line 141
    int-to-float v5, v5

    .line 142
    sub-float/2addr v5, p1

    .line 143
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 146
    move-result v5

    .line 147
    cmpg-float v5, v5, v3

    .line 149
    if-gez v5, :cond_97

    .line 151
    goto :goto_c6

    .line 152
    :cond_97
    iget v5, p0, Landroidx/recyclerview/widget/d;->p:F

    .line 154
    iget-object v6, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 159
    move-result v6

    .line 160
    iget-object v7, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 165
    move-result v7

    .line 166
    iget v8, p0, Landroidx/recyclerview/widget/d;->q:I

    .line 168
    aget v9, v4, v1

    .line 170
    aget v4, v4, v2

    .line 172
    sub-int/2addr v9, v4

    .line 173
    if-nez v9, :cond_b0

    .line 175
    :cond_ae
    move v4, v2

    .line 176
    goto :goto_bd

    .line 177
    :cond_b0
    sub-float v4, p1, v5

    .line 179
    int-to-float v5, v9

    .line 180
    div-float/2addr v4, v5

    .line 181
    sub-int/2addr v6, v8

    .line 182
    int-to-float v5, v6

    .line 183
    mul-float/2addr v4, v5

    .line 184
    float-to-int v4, v4

    .line 185
    add-int/2addr v7, v4

    .line 186
    if-ge v7, v6, :cond_ae

    .line 188
    if-ltz v7, :cond_ae

    .line 190
    :goto_bd
    if-eqz v4, :cond_c4

    .line 192
    iget-object v5, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 194
    invoke-virtual {v5, v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 197
    :cond_c4
    iput p1, p0, Landroidx/recyclerview/widget/d;->p:F

    .line 199
    :cond_c6
    :goto_c6
    iget p1, p0, Landroidx/recyclerview/widget/d;->w:I

    .line 201
    if-ne p1, v0, :cond_11f

    .line 203
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 206
    move-result p1

    .line 207
    iget-object p2, p0, Landroidx/recyclerview/widget/d;->x:[I

    .line 209
    iget v0, p0, Landroidx/recyclerview/widget/d;->b:I

    .line 211
    aput v0, p2, v2

    .line 213
    iget v4, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 215
    sub-int/2addr v4, v0

    .line 216
    aput v4, p2, v1

    .line 218
    int-to-float v0, v0

    .line 219
    int-to-float v4, v4

    .line 220
    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    .line 223
    move-result p1

    .line 224
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 227
    move-result p1

    .line 228
    iget v0, p0, Landroidx/recyclerview/widget/d;->l:I

    .line 230
    int-to-float v0, v0

    .line 231
    sub-float/2addr v0, p1

    .line 232
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 235
    move-result v0

    .line 236
    cmpg-float v0, v0, v3

    .line 238
    if-gez v0, :cond_f0

    .line 240
    goto :goto_11f

    .line 241
    :cond_f0
    iget v0, p0, Landroidx/recyclerview/widget/d;->m:F

    .line 243
    iget-object v3, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 245
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 248
    move-result v3

    .line 249
    iget-object v4, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 251
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 254
    move-result v4

    .line 255
    iget v5, p0, Landroidx/recyclerview/widget/d;->r:I

    .line 257
    aget v1, p2, v1

    .line 259
    aget p2, p2, v2

    .line 261
    sub-int/2addr v1, p2

    .line 262
    if-nez v1, :cond_109

    .line 264
    :cond_107
    move p2, v2

    .line 265
    goto :goto_116

    .line 266
    :cond_109
    sub-float p2, p1, v0

    .line 268
    int-to-float v0, v1

    .line 269
    div-float/2addr p2, v0

    .line 270
    sub-int/2addr v3, v5

    .line 271
    int-to-float v0, v3

    .line 272
    mul-float/2addr p2, v0

    .line 273
    float-to-int p2, p2

    .line 274
    add-int/2addr v4, p2

    .line 275
    if-ge v4, v3, :cond_107

    .line 277
    if-ltz v4, :cond_107

    .line 279
    :goto_116
    if-eqz p2, :cond_11d

    .line 281
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 283
    invoke-virtual {v0, v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 286
    :cond_11d
    iput p1, p0, Landroidx/recyclerview/widget/d;->m:F

    .line 288
    :cond_11f
    :goto_11f
    return-void
.end method

.method public final setState(I)V
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_15

    .line 4
    iget v1, p0, Landroidx/recyclerview/widget/d;->v:I

    .line 6
    if-eq v1, v0, :cond_15

    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;

    .line 10
    sget-object v2, Landroidx/recyclerview/widget/d;->C:[I

    .line 12
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    iget-object v2, p0, Landroidx/recyclerview/widget/d;->B:Landroidx/recyclerview/widget/d$a;

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 22
    :cond_15
    if-nez p1, :cond_1d

    .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 29
    goto :goto_20

    .line 30
    :cond_1d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/d;->show()V

    .line 33
    :goto_20
    iget v1, p0, Landroidx/recyclerview/widget/d;->v:I

    .line 35
    if-ne v1, v0, :cond_3f

    .line 37
    if-eq p1, v0, :cond_3f

    .line 39
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->c:Landroid/graphics/drawable/StateListDrawable;

    .line 41
    sget-object v1, Landroidx/recyclerview/widget/d;->D:[I

    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 46
    const/16 v0, 0x4b0

    .line 48
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    iget-object v2, p0, Landroidx/recyclerview/widget/d;->B:Landroidx/recyclerview/widget/d$a;

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 55
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    iget-object v2, p0, Landroidx/recyclerview/widget/d;->B:Landroidx/recyclerview/widget/d$a;

    .line 59
    int-to-long v3, v0

    .line 60
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    goto :goto_53

    .line 64
    :cond_3f
    const/4 v0, 0x1

    .line 65
    if-ne p1, v0, :cond_53

    .line 67
    const/16 v0, 0x5dc

    .line 69
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    iget-object v2, p0, Landroidx/recyclerview/widget/d;->B:Landroidx/recyclerview/widget/d$a;

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 76
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    iget-object v2, p0, Landroidx/recyclerview/widget/d;->B:Landroidx/recyclerview/widget/d$a;

    .line 80
    int-to-long v3, v0

    .line 81
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    :cond_53
    :goto_53
    iput p1, p0, Landroidx/recyclerview/widget/d;->v:I

    .line 86
    return-void
.end method

.method public final show()V
    .registers 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/d;->A:I

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_8

    .line 8
    goto :goto_3c

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;

    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    :cond_d
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Landroidx/recyclerview/widget/d;->A:I

    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;

    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [F

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/Float;

    .line 29
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 32
    move-result v4

    .line 33
    aput v4, v2, v3

    .line 35
    const/high16 v3, 0x3f800000  # 1.0f

    .line 37
    aput v3, v2, v0

    .line 39
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 42
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;

    .line 44
    const-wide/16 v1, 0x1f4

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;

    .line 51
    const-wide/16 v1, 0x0

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 56
    iget-object v0, p0, Landroidx/recyclerview/widget/d;->z:Landroid/animation/ValueAnimator;

    .line 58
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    :goto_3c
    return-void
.end method
