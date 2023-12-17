.class public Landroidx/recyclerview/widget/s$a;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "RemixRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public h:I

.field public i:I

.field public j:Lmiuix/overscroller/widget/OverScroller;

.field public k:Landroid/view/animation/Interpolator;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:Z

.field public r:Lmiuix/util/HapticFeedbackCompat;

.field public final synthetic s:Landroidx/recyclerview/widget/s;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/s;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/s$a;->k:Landroid/view/animation/Interpolator;

    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Landroidx/recyclerview/widget/s$a;->l:Z

    .line 13
    iput-boolean v1, p0, Landroidx/recyclerview/widget/s$a;->m:Z

    .line 15
    iput v1, p0, Landroidx/recyclerview/widget/s$a;->o:I

    .line 17
    iput v1, p0, Landroidx/recyclerview/widget/s$a;->p:I

    .line 19
    iput-boolean v1, p0, Landroidx/recyclerview/widget/s$a;->q:Z

    .line 21
    new-instance v1, Lmiuix/overscroller/widget/OverScroller;

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v1, p1, v0}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 30
    iput-object v1, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 32
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/s$a;->l:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/s$a;->m:Z

    .line 8
    goto :goto_14

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 16
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 18
    invoke-static {v0, p0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 21
    :goto_14
    return-void
.end method

.method public final c(IILandroid/view/animation/Interpolator;I)V
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/s;->isOverScrolling()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    const/high16 v0, -0x80000000

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne p4, v0, :cond_78

    .line 16
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 19
    move-result p4

    .line 20
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 23
    move-result v0

    .line 24
    if-le p4, v0, :cond_1b

    .line 26
    move v3, v1

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v3, v2

    .line 29
    :goto_1c
    int-to-double v4, v2

    .line 30
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 33
    move-result-wide v4

    .line 34
    double-to-int v4, v4

    .line 35
    mul-int v5, p1, p1

    .line 37
    mul-int v6, p2, p2

    .line 39
    add-int/2addr v6, v5

    .line 40
    int-to-double v5, v6

    .line 41
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 44
    move-result-wide v5

    .line 45
    double-to-int v5, v5

    .line 46
    iget-object v6, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 48
    if-eqz v3, :cond_36

    .line 50
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 53
    move-result v6

    .line 54
    goto :goto_3a

    .line 55
    :cond_36
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 58
    move-result v6

    .line 59
    :goto_3a
    div-int/lit8 v7, v6, 0x2

    .line 61
    int-to-float v5, v5

    .line 62
    const/high16 v8, 0x3f800000  # 1.0f

    .line 64
    mul-float/2addr v5, v8

    .line 65
    int-to-float v6, v6

    .line 66
    div-float/2addr v5, v6

    .line 67
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    .line 70
    move-result v5

    .line 71
    int-to-float v7, v7

    .line 72
    const/high16 v9, 0x3f000000  # 0.5f

    .line 74
    sub-float/2addr v5, v9

    .line 75
    const v9, 0x3ef1463b

    .line 78
    mul-float/2addr v5, v9

    .line 79
    float-to-double v9, v5

    .line 80
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 83
    move-result-wide v9

    .line 84
    double-to-float v5, v9

    .line 85
    mul-float/2addr v5, v7

    .line 86
    add-float/2addr v5, v7

    .line 87
    if-lez v4, :cond_68

    .line 89
    const/high16 p4, 0x447a0000  # 1000.0f

    .line 91
    int-to-float v0, v4

    .line 92
    div-float/2addr v5, v0

    .line 93
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 96
    move-result v0

    .line 97
    mul-float/2addr v0, p4

    .line 98
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 101
    move-result p4

    .line 102
    mul-int/lit8 p4, p4, 0x4

    .line 104
    goto :goto_73

    .line 105
    :cond_68
    if-eqz v3, :cond_6b

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move p4, v0

    .line 109
    :goto_6c
    int-to-float p4, p4

    .line 110
    div-float/2addr p4, v6

    .line 111
    add-float/2addr p4, v8

    .line 112
    const/high16 v0, 0x43960000  # 300.0f

    .line 114
    mul-float/2addr p4, v0

    .line 115
    float-to-int p4, p4

    .line 116
    :goto_73
    const/16 v0, 0x7d0

    .line 118
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    .line 121
    :cond_78
    if-nez p3, :cond_7c

    .line 123
    sget-object p3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 125
    :cond_7c
    iget-object p4, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 127
    invoke-virtual {p4}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    .line 130
    move-result p4

    .line 131
    const/4 v0, 0x2

    .line 132
    if-ne p4, v0, :cond_9b

    .line 134
    iget-boolean p4, p0, Landroidx/recyclerview/widget/s$a;->q:Z

    .line 136
    if-nez p4, :cond_9b

    .line 138
    iget-object p4, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 140
    invoke-virtual {p4}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    .line 143
    move-result p4

    .line 144
    float-to-int p4, p4

    .line 145
    iput p4, p0, Landroidx/recyclerview/widget/s$a;->p:I

    .line 147
    iget-object p4, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 149
    invoke-virtual {p4}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    .line 152
    move-result p4

    .line 153
    float-to-int p4, p4

    .line 154
    iput p4, p0, Landroidx/recyclerview/widget/s$a;->o:I

    .line 156
    :cond_9b
    iget-object p4, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 158
    iget-object v3, p4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 160
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 162
    instance-of v4, v3, Landroidx/recyclerview/widget/k;

    .line 164
    if-eqz v4, :cond_bd

    .line 166
    const v4, 0x3f99999a  # 1.2f

    .line 169
    check-cast v3, Landroidx/recyclerview/widget/k;

    .line 171
    iget v5, v3, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    .line 173
    int-to-float v5, v5

    .line 174
    mul-float/2addr v5, v4

    .line 175
    iget v3, v3, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    .line 177
    int-to-float v3, v3

    .line 178
    mul-float/2addr v3, v4

    .line 179
    int-to-float v4, p1

    .line 180
    cmpl-float v4, v5, v4

    .line 182
    if-nez v4, :cond_bd

    .line 184
    int-to-float v4, p2

    .line 185
    cmpl-float v3, v3, v4

    .line 187
    if-nez v3, :cond_bd

    .line 189
    goto :goto_be

    .line 190
    :cond_bd
    move v1, v2

    .line 191
    :goto_be
    iput-boolean v1, p0, Landroidx/recyclerview/widget/s$a;->q:Z

    .line 193
    iget-object v1, p0, Landroidx/recyclerview/widget/s$a;->k:Landroid/view/animation/Interpolator;

    .line 195
    if-eq v1, p3, :cond_d1

    .line 197
    iput-object p3, p0, Landroidx/recyclerview/widget/s$a;->k:Landroid/view/animation/Interpolator;

    .line 199
    new-instance v1, Lmiuix/overscroller/widget/OverScroller;

    .line 201
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 204
    move-result-object p4

    .line 205
    invoke-direct {v1, p4, p3}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 208
    iput-object v1, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 210
    :cond_d1
    iput v2, p0, Landroidx/recyclerview/widget/s$a;->i:I

    .line 212
    iput v2, p0, Landroidx/recyclerview/widget/s$a;->h:I

    .line 214
    iget-object p3, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 216
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 219
    iget-object v1, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 221
    const/4 v2, 0x0

    .line 222
    const/4 v3, 0x0

    .line 223
    iget v6, p0, Landroidx/recyclerview/widget/s$a;->o:I

    .line 225
    iget v7, p0, Landroidx/recyclerview/widget/s$a;->p:I

    .line 227
    move v4, p1

    .line 228
    move v5, p2

    .line 229
    invoke-virtual/range {v1 .. v7}, Lmiuix/overscroller/widget/OverScroller;->startScrollByFling(IIIIII)V

    .line 232
    invoke-virtual {p0}, Landroidx/recyclerview/widget/s$a;->b()V

    .line 235
    return-void
.end method

.method public final d()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 8
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->abortAnimation()V

    .line 11
    return-void
.end method

.method public final run()V
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 5
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    if-nez v2, :cond_c

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s$a;->d()V

    .line 12
    return-void

    .line 13
    :cond_c
    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v0, Landroidx/recyclerview/widget/s$a;->m:Z

    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v0, Landroidx/recyclerview/widget/s$a;->l:Z

    .line 19
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 22
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 24
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_251

    .line 30
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrX()I

    .line 33
    move-result v4

    .line 34
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrY()I

    .line 37
    move-result v5

    .line 38
    iget-object v6, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 40
    invoke-virtual {v6}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    .line 43
    move-result v6

    .line 44
    if-ne v6, v3, :cond_3b

    .line 46
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    .line 49
    move-result v6

    .line 50
    float-to-int v6, v6

    .line 51
    iput v6, v0, Landroidx/recyclerview/widget/s$a;->o:I

    .line 53
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    .line 56
    move-result v6

    .line 57
    float-to-int v6, v6

    .line 58
    iput v6, v0, Landroidx/recyclerview/widget/s$a;->p:I

    .line 60
    :cond_3b
    iget v6, v0, Landroidx/recyclerview/widget/s$a;->h:I

    .line 62
    sub-int v6, v4, v6

    .line 64
    iget v7, v0, Landroidx/recyclerview/widget/s$a;->i:I

    .line 66
    sub-int v13, v5, v7

    .line 68
    iput v4, v0, Landroidx/recyclerview/widget/s$a;->h:I

    .line 70
    iput v5, v0, Landroidx/recyclerview/widget/s$a;->i:I

    .line 72
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 74
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 76
    aput v2, v4, v2

    .line 78
    aput v2, v4, v3

    .line 80
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 82
    invoke-virtual {v4}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    .line 85
    move-result v4

    .line 86
    if-ne v4, v3, :cond_92

    .line 88
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 90
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 93
    move-result-object v4

    .line 94
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 96
    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 99
    move-result-object v5

    .line 100
    const v7, 0x1020002

    .line 103
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object v5

    .line 107
    :goto_6a
    if-eqz v4, :cond_92

    .line 109
    instance-of v7, v4, Lmiuix/core/view/NestedCurrentFling;

    .line 111
    if-eqz v7, :cond_86

    .line 113
    move-object v7, v4

    .line 114
    check-cast v7, Lmiuix/core/view/NestedCurrentFling;

    .line 116
    iget-object v8, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 118
    invoke-virtual {v8}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    .line 121
    move-result v8

    .line 122
    iget-object v9, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 124
    invoke-virtual {v9}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    .line 127
    move-result v9

    .line 128
    invoke-interface {v7, v8, v9}, Lmiuix/core/view/NestedCurrentFling;->onNestedCurrentFling(FF)Z

    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_86

    .line 134
    goto :goto_92

    .line 135
    :cond_86
    instance-of v7, v4, Landroid/view/ViewGroup;

    .line 137
    if-eqz v7, :cond_8d

    .line 139
    if-ne v4, v5, :cond_8d

    .line 141
    goto :goto_92

    .line 142
    :cond_8d
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 145
    move-result-object v4

    .line 146
    goto :goto_6a

    .line 147
    :cond_92
    :goto_92
    iget-object v7, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 149
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 151
    const/4 v11, 0x0

    .line 152
    const/4 v12, 0x1

    .line 153
    move v8, v6

    .line 154
    move v9, v13

    .line 155
    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_aa

    .line 161
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 163
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 165
    aget v5, v4, v2

    .line 167
    sub-int/2addr v6, v5

    .line 168
    aget v4, v4, v3

    .line 170
    sub-int/2addr v13, v4

    .line 171
    :cond_aa
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 173
    invoke-virtual {v4}, Landroid/view/View;->getOverScrollMode()I

    .line 176
    move-result v4

    .line 177
    const/4 v5, 0x2

    .line 178
    if-eq v4, v5, :cond_b8

    .line 180
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 182
    invoke-virtual {v4, v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 185
    :cond_b8
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 187
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 189
    if-eqz v7, :cond_103

    .line 191
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 193
    aput v2, v7, v2

    .line 195
    aput v2, v7, v3

    .line 197
    invoke-virtual {v4, v6, v13, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 200
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 202
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 204
    aget v8, v7, v2

    .line 206
    aget v7, v7, v3

    .line 208
    sub-int/2addr v6, v8

    .line 209
    sub-int/2addr v13, v7

    .line 210
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 212
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 214
    if-eqz v4, :cond_105

    .line 216
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->isPendingInitialRun()Z

    .line 219
    move-result v9

    .line 220
    if-nez v9, :cond_105

    .line 222
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->isRunning()Z

    .line 225
    move-result v9

    .line 226
    if-eqz v9, :cond_105

    .line 228
    iget-object v9, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 230
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 232
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 235
    move-result v9

    .line 236
    if-nez v9, :cond_f1

    .line 238
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    .line 241
    goto :goto_105

    .line 242
    :cond_f1
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->getTargetPosition()I

    .line 245
    move-result v10

    .line 246
    if-lt v10, v9, :cond_ff

    .line 248
    sub-int/2addr v9, v3

    .line 249
    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView$x;->setTargetPosition(I)V

    .line 252
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$x;->onAnimation(II)V

    .line 255
    goto :goto_105

    .line 256
    :cond_ff
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$x;->onAnimation(II)V

    .line 259
    goto :goto_105

    .line 260
    :cond_103
    move v7, v2

    .line 261
    move v8, v7

    .line 262
    :cond_105
    :goto_105
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 264
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 269
    move-result v4

    .line 270
    if-nez v4, :cond_114

    .line 272
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 274
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 277
    :cond_114
    iget-object v14, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 279
    iget-object v4, v14, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 281
    aput v2, v4, v2

    .line 283
    aput v2, v4, v3

    .line 285
    const/16 v19, 0x0

    .line 287
    const/16 v20, 0x1

    .line 289
    move v15, v8

    .line 290
    move/from16 v16, v7

    .line 292
    move/from16 v17, v6

    .line 294
    move/from16 v18, v13

    .line 296
    move-object/from16 v21, v4

    .line 298
    invoke-virtual/range {v14 .. v21}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 301
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 303
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 305
    aget v10, v9, v2

    .line 307
    sub-int/2addr v6, v10

    .line 308
    aget v9, v9, v3

    .line 310
    sub-int/2addr v13, v9

    .line 311
    if-nez v8, :cond_13a

    .line 313
    if-eqz v7, :cond_13d

    .line 315
    :cond_13a
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 318
    :cond_13d
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 320
    invoke-static {v4}, Landroidx/recyclerview/widget/s;->access$000(Landroidx/recyclerview/widget/s;)Z

    .line 323
    move-result v4

    .line 324
    if-nez v4, :cond_14a

    .line 326
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 328
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 331
    :cond_14a
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrX()I

    .line 334
    move-result v4

    .line 335
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getFinalX()I

    .line 338
    move-result v9

    .line 339
    if-ne v4, v9, :cond_156

    .line 341
    move v4, v3

    .line 342
    goto :goto_157

    .line 343
    :cond_156
    move v4, v2

    .line 344
    :goto_157
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrY()I

    .line 347
    move-result v9

    .line 348
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getFinalY()I

    .line 351
    move-result v10

    .line 352
    if-ne v9, v10, :cond_163

    .line 354
    move v9, v3

    .line 355
    goto :goto_164

    .line 356
    :cond_163
    move v9, v2

    .line 357
    :goto_164
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 360
    move-result v10

    .line 361
    if-nez v10, :cond_175

    .line 363
    if-nez v4, :cond_16e

    .line 365
    if-eqz v6, :cond_173

    .line 367
    :cond_16e
    if-nez v9, :cond_175

    .line 369
    if-eqz v13, :cond_173

    .line 371
    goto :goto_175

    .line 372
    :cond_173
    move v4, v2

    .line 373
    goto :goto_176

    .line 374
    :cond_175
    :goto_175
    move v4, v3

    .line 375
    :goto_176
    iget-object v9, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 377
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 379
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 381
    if-eqz v9, :cond_186

    .line 383
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$x;->isPendingInitialRun()Z

    .line 386
    move-result v9

    .line 387
    if-eqz v9, :cond_186

    .line 389
    move v9, v3

    .line 390
    goto :goto_187

    .line 391
    :cond_186
    move v9, v2

    .line 392
    :goto_187
    if-nez v9, :cond_245

    .line 394
    if-eqz v4, :cond_245

    .line 396
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 398
    invoke-virtual {v4}, Landroid/view/View;->getOverScrollMode()I

    .line 401
    move-result v4

    .line 402
    if-eq v4, v5, :cond_1ae

    .line 404
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocity()F

    .line 407
    move-result v1

    .line 408
    float-to-int v1, v1

    .line 409
    if-gez v6, :cond_19c

    .line 411
    neg-int v4, v1

    .line 412
    goto :goto_1a1

    .line 413
    :cond_19c
    if-lez v6, :cond_1a0

    .line 415
    move v4, v1

    .line 416
    goto :goto_1a1

    .line 417
    :cond_1a0
    move v4, v2

    .line 418
    :goto_1a1
    if-gez v13, :cond_1a5

    .line 420
    neg-int v1, v1

    .line 421
    goto :goto_1a9

    .line 422
    :cond_1a5
    if-lez v13, :cond_1a8

    .line 424
    goto :goto_1a9

    .line 425
    :cond_1a8
    move v1, v2

    .line 426
    :goto_1a9
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 428
    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 431
    :cond_1ae
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 433
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 435
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 438
    move-result v1

    .line 439
    const/4 v4, -0x1

    .line 440
    if-eqz v1, :cond_1d1

    .line 442
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 444
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getFinalY()I

    .line 447
    move-result v1

    .line 448
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 450
    invoke-virtual {v5}, Lmiuix/overscroller/widget/OverScroller;->getStartY()I

    .line 453
    move-result v5

    .line 454
    if-le v1, v5, :cond_1c9

    .line 456
    move v1, v3

    .line 457
    goto :goto_1ca

    .line 458
    :cond_1c9
    move v1, v4

    .line 459
    :goto_1ca
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 461
    invoke-virtual {v5, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 464
    move-result v1

    .line 465
    goto :goto_1f2

    .line 466
    :cond_1d1
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 468
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 470
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 473
    move-result v1

    .line 474
    if-eqz v1, :cond_1f4

    .line 476
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 478
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getFinalX()I

    .line 481
    move-result v1

    .line 482
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 484
    invoke-virtual {v5}, Lmiuix/overscroller/widget/OverScroller;->getStartX()I

    .line 487
    move-result v5

    .line 488
    if-le v1, v5, :cond_1eb

    .line 490
    move v1, v3

    .line 491
    goto :goto_1ec

    .line 492
    :cond_1eb
    move v1, v4

    .line 493
    :goto_1ec
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 495
    invoke-virtual {v5, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 498
    move-result v1

    .line 499
    :goto_1f2
    xor-int/2addr v1, v3

    .line 500
    goto :goto_1f5

    .line 501
    :cond_1f4
    move v1, v2

    .line 502
    :goto_1f5
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 504
    invoke-static {v5}, Landroidx/recyclerview/widget/s;->access$100(Landroidx/recyclerview/widget/s;)Z

    .line 507
    move-result v5

    .line 508
    if-nez v5, :cond_233

    .line 510
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 512
    invoke-virtual {v5}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    .line 515
    move-result v5

    .line 516
    if-ne v5, v3, :cond_233

    .line 518
    iget-boolean v5, v0, Landroidx/recyclerview/widget/s$a;->n:Z

    .line 520
    if-nez v5, :cond_233

    .line 522
    if-eqz v1, :cond_233

    .line 524
    const-string v1, "2.0"

    .line 526
    invoke-static {v1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 529
    move-result v1

    .line 530
    if-eqz v1, :cond_22c

    .line 532
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->r:Lmiuix/util/HapticFeedbackCompat;

    .line 534
    if-nez v1, :cond_224

    .line 536
    new-instance v1, Lmiuix/util/HapticFeedbackCompat;

    .line 538
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 540
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 543
    move-result-object v5

    .line 544
    invoke-direct {v1, v5}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 547
    iput-object v1, v0, Landroidx/recyclerview/widget/s$a;->r:Lmiuix/util/HapticFeedbackCompat;

    .line 549
    :cond_224
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->r:Lmiuix/util/HapticFeedbackCompat;

    .line 551
    const/16 v5, 0xc9

    .line 553
    invoke-virtual {v1, v5}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    .line 556
    goto :goto_233

    .line 557
    :cond_22c
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 559
    sget v5, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    .line 561
    invoke-static {v1, v5}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    .line 564
    :cond_233
    :goto_233
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 566
    if-eqz v1, :cond_251

    .line 568
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 570
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    .line 572
    iget-object v5, v1, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 574
    if-eqz v5, :cond_242

    .line 576
    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([II)V

    .line 579
    :cond_242
    iput v2, v1, Landroidx/recyclerview/widget/e$b;->d:I

    .line 581
    goto :goto_251

    .line 582
    :cond_245
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s$a;->b()V

    .line 585
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 587
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/e;

    .line 589
    if-eqz v4, :cond_251

    .line 591
    invoke-virtual {v4, v1, v8, v7}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 594
    :cond_251
    :goto_251
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 596
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 598
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 600
    if-eqz v1, :cond_262

    .line 602
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->isPendingInitialRun()Z

    .line 605
    move-result v4

    .line 606
    if-eqz v4, :cond_262

    .line 608
    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$x;->onAnimation(II)V

    .line 611
    :cond_262
    iput-boolean v2, v0, Landroidx/recyclerview/widget/s$a;->l:Z

    .line 613
    iget-boolean v1, v0, Landroidx/recyclerview/widget/s$a;->m:Z

    .line 615
    if-eqz v1, :cond_275

    .line 617
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 619
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 622
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 624
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 626
    invoke-static {v1, v0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 629
    goto :goto_283

    .line 630
    :cond_275
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 632
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 635
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 637
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 640
    iput v2, v0, Landroidx/recyclerview/widget/s$a;->p:I

    .line 642
    iput v2, v0, Landroidx/recyclerview/widget/s$a;->o:I

    .line 644
    :goto_283
    return-void
.end method
