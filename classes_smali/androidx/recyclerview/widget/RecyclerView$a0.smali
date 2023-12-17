.class public Landroidx/recyclerview/widget/RecyclerView$a0;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a0"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/widget/OverScroller;

.field public d:Landroid/view/animation/Interpolator;

.field public e:Z

.field public f:Z

.field public final synthetic g:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->d:Landroid/view/animation/Interpolator;

    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->e:Z

    .line 13
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->f:Z

    .line 15
    new-instance v1, Landroid/widget/OverScroller;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 24
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Landroid/widget/OverScroller;

    .line 26
    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 15

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->b:I

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->a:I

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->d:Landroid/view/animation/Interpolator;

    .line 14
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 16
    if-eq v0, v1, :cond_20

    .line 18
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->d:Landroid/view/animation/Interpolator;

    .line 20
    new-instance v0, Landroid/widget/OverScroller;

    .line 22
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v2, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 31
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Landroid/widget/OverScroller;

    .line 33
    :cond_20
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Landroid/widget/OverScroller;

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/high16 v8, -0x80000000

    .line 39
    const v9, 0x7fffffff

    .line 42
    const/high16 v10, -0x80000000

    .line 44
    const v11, 0x7fffffff

    .line 47
    move v6, p1

    .line 48
    move v7, p2

    .line 49
    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->b()V

    .line 55
    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->e:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->f:Z

    .line 8
    goto :goto_14

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 18
    invoke-static {v0, p0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 21
    :goto_14
    return-void
.end method

.method public c(IILandroid/view/animation/Interpolator;I)V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    if-ne p4, v1, :cond_33

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 9
    move-result p4

    .line 10
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 13
    move-result v1

    .line 14
    if-le p4, v1, :cond_11

    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v2, v0

    .line 19
    :goto_12
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    if-eqz v2, :cond_1b

    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 26
    move-result v3

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 31
    move-result v3

    .line 32
    :goto_1f
    if-eqz v2, :cond_22

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move p4, v1

    .line 36
    :goto_23
    int-to-float p4, p4

    .line 37
    int-to-float v1, v3

    .line 38
    div-float/2addr p4, v1

    .line 39
    const/high16 v1, 0x3f800000  # 1.0f

    .line 41
    add-float/2addr p4, v1

    .line 42
    const/high16 v1, 0x43960000  # 300.0f

    .line 44
    mul-float/2addr p4, v1

    .line 45
    float-to-int p4, p4

    .line 46
    const/16 v1, 0x7d0

    .line 48
    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    .line 51
    move-result p4

    .line 52
    :cond_33
    move v6, p4

    .line 53
    if-nez p3, :cond_38

    .line 55
    sget-object p3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 57
    :cond_38
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->d:Landroid/view/animation/Interpolator;

    .line 59
    if-eq p4, p3, :cond_4b

    .line 61
    iput-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->d:Landroid/view/animation/Interpolator;

    .line 63
    new-instance p4, Landroid/widget/OverScroller;

    .line 65
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    move-result-object v1

    .line 71
    invoke-direct {p4, v1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 74
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Landroid/widget/OverScroller;

    .line 76
    :cond_4b
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->b:I

    .line 78
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->a:I

    .line 80
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    const/4 p4, 0x2

    .line 83
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 86
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Landroid/widget/OverScroller;

    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    move v4, p1

    .line 91
    move v5, p2

    .line 92
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 95
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->b()V

    .line 98
    return-void
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Landroid/widget/OverScroller;

    .line 8
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 11
    return-void
.end method

.method public run()V
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    if-nez v2, :cond_c

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()V

    .line 12
    return-void

    .line 13
    :cond_c
    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->f:Z

    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->e:Z

    .line 19
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 22
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Landroid/widget/OverScroller;

    .line 24
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_170

    .line 30
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    .line 33
    move-result v4

    .line 34
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 37
    move-result v5

    .line 38
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->a:I

    .line 40
    sub-int v6, v4, v6

    .line 42
    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->b:I

    .line 44
    sub-int v13, v5, v7

    .line 46
    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->a:I

    .line 48
    iput v5, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->b:I

    .line 50
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 54
    aput v2, v10, v2

    .line 56
    aput v2, v10, v3

    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v12, 0x1

    .line 60
    move v8, v6

    .line 61
    move v9, v13

    .line 62
    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_4d

    .line 68
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 72
    aget v5, v4, v2

    .line 74
    sub-int/2addr v6, v5

    .line 75
    aget v4, v4, v3

    .line 77
    sub-int/2addr v13, v4

    .line 78
    :cond_4d
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    invoke-virtual {v4}, Landroid/view/View;->getOverScrollMode()I

    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x2

    .line 85
    if-eq v4, v5, :cond_5b

    .line 87
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    invoke-virtual {v4, v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 92
    :cond_5b
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 96
    if-eqz v7, :cond_a6

    .line 98
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 100
    aput v2, v7, v2

    .line 102
    aput v2, v7, v3

    .line 104
    invoke-virtual {v4, v6, v13, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 107
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 111
    aget v8, v7, v2

    .line 113
    aget v7, v7, v3

    .line 115
    sub-int/2addr v6, v8

    .line 116
    sub-int/2addr v13, v7

    .line 117
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 119
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 121
    if-eqz v4, :cond_a8

    .line 123
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->isPendingInitialRun()Z

    .line 126
    move-result v9

    .line 127
    if-nez v9, :cond_a8

    .line 129
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->isRunning()Z

    .line 132
    move-result v9

    .line 133
    if-eqz v9, :cond_a8

    .line 135
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 139
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 142
    move-result v9

    .line 143
    if-nez v9, :cond_94

    .line 145
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    .line 148
    goto :goto_a8

    .line 149
    :cond_94
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->getTargetPosition()I

    .line 152
    move-result v10

    .line 153
    if-lt v10, v9, :cond_a2

    .line 155
    sub-int/2addr v9, v3

    .line 156
    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView$x;->setTargetPosition(I)V

    .line 159
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$x;->onAnimation(II)V

    .line 162
    goto :goto_a8

    .line 163
    :cond_a2
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$x;->onAnimation(II)V

    .line 166
    goto :goto_a8

    .line 167
    :cond_a6
    move v7, v2

    .line 168
    move v8, v7

    .line 169
    :cond_a8
    :goto_a8
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 176
    move-result v4

    .line 177
    if-nez v4, :cond_b7

    .line 179
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 184
    :cond_b7
    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 186
    iget-object v4, v14, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 188
    aput v2, v4, v2

    .line 190
    aput v2, v4, v3

    .line 192
    const/16 v19, 0x0

    .line 194
    const/16 v20, 0x1

    .line 196
    move v15, v8

    .line 197
    move/from16 v16, v7

    .line 199
    move/from16 v17, v6

    .line 201
    move/from16 v18, v13

    .line 203
    move-object/from16 v21, v4

    .line 205
    invoke-virtual/range {v14 .. v21}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 208
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 212
    aget v10, v9, v2

    .line 214
    sub-int/2addr v6, v10

    .line 215
    aget v9, v9, v3

    .line 217
    sub-int/2addr v13, v9

    .line 218
    if-nez v8, :cond_dd

    .line 220
    if-eqz v7, :cond_e0

    .line 222
    :cond_dd
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 225
    :cond_e0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 230
    move-result v4

    .line 231
    if-nez v4, :cond_ed

    .line 233
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 238
    :cond_ed
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    .line 241
    move-result v4

    .line 242
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    .line 245
    move-result v9

    .line 246
    if-ne v4, v9, :cond_f9

    .line 248
    move v4, v3

    .line 249
    goto :goto_fa

    .line 250
    :cond_f9
    move v4, v2

    .line 251
    :goto_fa
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 254
    move-result v9

    .line 255
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    .line 258
    move-result v10

    .line 259
    if-ne v9, v10, :cond_106

    .line 261
    move v9, v3

    .line 262
    goto :goto_107

    .line 263
    :cond_106
    move v9, v2

    .line 264
    :goto_107
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 267
    move-result v10

    .line 268
    if-nez v10, :cond_118

    .line 270
    if-nez v4, :cond_111

    .line 272
    if-eqz v6, :cond_116

    .line 274
    :cond_111
    if-nez v9, :cond_118

    .line 276
    if-eqz v13, :cond_116

    .line 278
    goto :goto_118

    .line 279
    :cond_116
    move v4, v2

    .line 280
    goto :goto_119

    .line 281
    :cond_118
    :goto_118
    move v4, v3

    .line 282
    :goto_119
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 284
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 286
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 288
    if-eqz v9, :cond_129

    .line 290
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$x;->isPendingInitialRun()Z

    .line 293
    move-result v9

    .line 294
    if-eqz v9, :cond_129

    .line 296
    move v9, v3

    .line 297
    goto :goto_12a

    .line 298
    :cond_129
    move v9, v2

    .line 299
    :goto_12a
    if-nez v9, :cond_164

    .line 301
    if-eqz v4, :cond_164

    .line 303
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 305
    invoke-virtual {v4}, Landroid/view/View;->getOverScrollMode()I

    .line 308
    move-result v4

    .line 309
    if-eq v4, v5, :cond_151

    .line 311
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 314
    move-result v1

    .line 315
    float-to-int v1, v1

    .line 316
    if-gez v6, :cond_13f

    .line 318
    neg-int v4, v1

    .line 319
    goto :goto_144

    .line 320
    :cond_13f
    if-lez v6, :cond_143

    .line 322
    move v4, v1

    .line 323
    goto :goto_144

    .line 324
    :cond_143
    move v4, v2

    .line 325
    :goto_144
    if-gez v13, :cond_148

    .line 327
    neg-int v1, v1

    .line 328
    goto :goto_14c

    .line 329
    :cond_148
    if-lez v13, :cond_14b

    .line 331
    goto :goto_14c

    .line 332
    :cond_14b
    move v1, v2

    .line 333
    :goto_14c
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 335
    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 338
    :cond_151
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 340
    if-eqz v1, :cond_170

    .line 342
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 344
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    .line 346
    iget-object v4, v1, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 348
    if-eqz v4, :cond_161

    .line 350
    const/4 v5, -0x1

    .line 351
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 354
    :cond_161
    iput v2, v1, Landroidx/recyclerview/widget/e$b;->d:I

    .line 356
    goto :goto_170

    .line 357
    :cond_164
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->b()V

    .line 360
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 362
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/e;

    .line 364
    if-eqz v4, :cond_170

    .line 366
    invoke-virtual {v4, v1, v8, v7}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 369
    :cond_170
    :goto_170
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 371
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 373
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 375
    if-eqz v1, :cond_181

    .line 377
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->isPendingInitialRun()Z

    .line 380
    move-result v4

    .line 381
    if-eqz v4, :cond_181

    .line 383
    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$x;->onAnimation(II)V

    .line 386
    :cond_181
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->e:Z

    .line 388
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->f:Z

    .line 390
    if-eqz v1, :cond_194

    .line 392
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 394
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 397
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 399
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 401
    invoke-static {v1, v0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 404
    goto :goto_19e

    .line 405
    :cond_194
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 407
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 410
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 412
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 415
    :goto_19e
    return-void
.end method
