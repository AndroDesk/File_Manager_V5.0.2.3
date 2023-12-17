.class public final Landroidx/recyclerview/widget/SpringRecyclerView$c;
.super Landroidx/recyclerview/widget/s$a;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic v:Landroidx/recyclerview/widget/SpringRecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s$a;-><init>(Landroidx/recyclerview/widget/s;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 5
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$100(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->getHorizontalDistance()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 15
    invoke-static {v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$100(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lmiuix/spring/view/SpringHelper;->getVerticalDistance()I

    .line 22
    move-result v2

    .line 23
    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 25
    invoke-static {v3}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$200(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x1

    .line 32
    if-eqz v3, :cond_8b

    .line 34
    if-nez v1, :cond_25

    .line 36
    if-eqz v2, :cond_8b

    .line 38
    :cond_25
    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 40
    if-eqz v1, :cond_2b

    .line 42
    move v7, v6

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v7, v5

    .line 45
    :goto_2c
    invoke-static {v3, v7}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$302(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    .line 48
    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 50
    if-eqz v2, :cond_34

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v6, v5

    .line 54
    :goto_35
    invoke-static {v3, v6}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$402(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    .line 57
    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 59
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    .line 62
    iput v5, v0, Landroidx/recyclerview/widget/s$a;->i:I

    .line 64
    iput v5, v0, Landroidx/recyclerview/widget/s$a;->h:I

    .line 66
    iget-object v3, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 68
    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->resetPosition()V

    .line 71
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->signum(I)I

    .line 74
    move-result v3

    .line 75
    mul-int/2addr v3, v1

    .line 76
    const/high16 v4, -0x80000000

    .line 78
    const v5, 0x7fffffff

    .line 81
    neg-int v1, v1

    .line 82
    if-lez v3, :cond_56

    .line 84
    move v6, v1

    .line 85
    move v7, v6

    .line 86
    goto :goto_5d

    .line 87
    :cond_56
    if-gez p1, :cond_5b

    .line 89
    move v7, v1

    .line 90
    move v6, v4

    .line 91
    goto :goto_5d

    .line 92
    :cond_5b
    move v6, v1

    .line 93
    move v7, v5

    .line 94
    :goto_5d
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->signum(I)I

    .line 97
    move-result v1

    .line 98
    mul-int/2addr v1, v2

    .line 99
    if-lez v1, :cond_68

    .line 101
    neg-int v1, v2

    .line 102
    move v8, v1

    .line 103
    move v9, v8

    .line 104
    goto :goto_6f

    .line 105
    :cond_68
    if-gez p2, :cond_6c

    .line 107
    neg-int v5, v2

    .line 108
    goto :goto_6d

    .line 109
    :cond_6c
    neg-int v4, v2

    .line 110
    :goto_6d
    move v8, v4

    .line 111
    move v9, v5

    .line 112
    :goto_6f
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 114
    const/4 v2, 0x0

    .line 115
    const/4 v3, 0x0

    .line 116
    iget-object v4, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 121
    move-result v10

    .line 122
    iget-object v4, v0, Landroidx/recyclerview/widget/SpringRecyclerView$c;->v:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 124
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 127
    move-result v11

    .line 128
    move/from16 v4, p1

    .line 130
    move/from16 v5, p2

    .line 132
    invoke-virtual/range {v1 .. v11}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s$a;->b()V

    .line 138
    goto/16 :goto_113

    .line 140
    :cond_8b
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 142
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 145
    iput v5, v0, Landroidx/recyclerview/widget/s$a;->i:I

    .line 147
    iput v5, v0, Landroidx/recyclerview/widget/s$a;->h:I

    .line 149
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->k:Landroid/view/animation/Interpolator;

    .line 151
    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 153
    if-eq v1, v2, :cond_a9

    .line 155
    iput-object v2, v0, Landroidx/recyclerview/widget/s$a;->k:Landroid/view/animation/Interpolator;

    .line 157
    new-instance v1, Lmiuix/overscroller/widget/OverScroller;

    .line 159
    iget-object v3, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 161
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 164
    move-result-object v3

    .line 165
    invoke-direct {v1, v3, v2}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 168
    iput-object v1, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 170
    :cond_a9
    if-eqz p1, :cond_b9

    .line 172
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 174
    invoke-static {v1}, Landroidx/recyclerview/widget/s;->access$200(Landroidx/recyclerview/widget/s;)Lmiuix/animation/utils/VelocityMonitor;

    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1, v5}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    .line 181
    move-result v1

    .line 182
    float-to-int v1, v1

    .line 183
    neg-int v1, v1

    .line 184
    move v10, v1

    .line 185
    goto :goto_bb

    .line 186
    :cond_b9
    move/from16 v10, p1

    .line 188
    :goto_bb
    if-eqz p2, :cond_cb

    .line 190
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 192
    invoke-static {v1}, Landroidx/recyclerview/widget/s;->access$200(Landroidx/recyclerview/widget/s;)Lmiuix/animation/utils/VelocityMonitor;

    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v1, v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    .line 199
    move-result v1

    .line 200
    float-to-int v1, v1

    .line 201
    neg-int v1, v1

    .line 202
    move v11, v1

    .line 203
    goto :goto_cd

    .line 204
    :cond_cb
    move/from16 v11, p2

    .line 206
    :goto_cd
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 208
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 210
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 213
    move-result v1

    .line 214
    iget-object v2, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 216
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 218
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_e1

    .line 224
    or-int/lit8 v1, v1, 0x2

    .line 226
    :cond_e1
    const/4 v2, -0x1

    .line 227
    if-ne v1, v4, :cond_f1

    .line 229
    if-lez v11, :cond_e7

    .line 231
    move v2, v6

    .line 232
    :cond_e7
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 234
    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 237
    move-result v1

    .line 238
    xor-int/2addr v1, v6

    .line 239
    iput-boolean v1, v0, Landroidx/recyclerview/widget/s$a;->n:Z

    .line 241
    goto :goto_ff

    .line 242
    :cond_f1
    if-ne v1, v6, :cond_ff

    .line 244
    if-lez v10, :cond_f6

    .line 246
    move v2, v6

    .line 247
    :cond_f6
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    .line 249
    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 252
    move-result v1

    .line 253
    xor-int/2addr v1, v6

    .line 254
    iput-boolean v1, v0, Landroidx/recyclerview/widget/s$a;->n:Z

    .line 256
    :cond_ff
    :goto_ff
    iget-object v7, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    .line 258
    const/4 v8, 0x0

    .line 259
    const/4 v9, 0x0

    .line 260
    const/high16 v12, -0x80000000

    .line 262
    const v13, 0x7fffffff

    .line 265
    const/high16 v14, -0x80000000

    .line 267
    const v15, 0x7fffffff

    .line 270
    invoke-virtual/range {v7 .. v15}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIII)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s$a;->b()V

    .line 276
    :goto_113
    return-void
.end method
