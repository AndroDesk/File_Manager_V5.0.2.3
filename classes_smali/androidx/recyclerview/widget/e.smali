.class public final Landroidx/recyclerview/widget/e;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/e$b;,
        Landroidx/recyclerview/widget/e$c;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/recyclerview/widget/e;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Landroidx/recyclerview/widget/e$a;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:J

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    sput-object v0, Landroidx/recyclerview/widget/e;->e:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v0, Landroidx/recyclerview/widget/e$a;

    .line 10
    invoke-direct {v0}, Landroidx/recyclerview/widget/e$a;-><init>()V

    .line 13
    sput-object v0, Landroidx/recyclerview/widget/e;->f:Landroidx/recyclerview/widget/e$a;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v2, v0, :cond_23

    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 13
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 20
    move-result-object v3

    .line 21
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 23
    if-ne v4, p1, :cond_20

    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_20

    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_8

    .line 36
    :cond_23
    move v0, v1

    .line 37
    :goto_24
    if-eqz v0, :cond_28

    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0

    .line 41
    :cond_28
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 43
    :try_start_2a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 46
    invoke-virtual {v0, p2, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$u;->k(JI)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_48

    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isBound()Z

    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_45

    .line 58
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_45

    .line 64
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 66
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$u;->h(Landroid/view/View;)V

    .line 69
    goto :goto_48

    .line 70
    :cond_45
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_4c

    .line 73
    :cond_48
    :goto_48
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 76
    return-object p1

    .line 77
    :catchall_4c
    move-exception p1

    .line 78
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 81
    throw p1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    iget-wide v0, p0, Landroidx/recyclerview/widget/e;->b:J

    .line 9
    const-wide/16 v2, 0x0

    .line 11
    cmp-long v0, v0, v2

    .line 13
    if-nez v0, :cond_17

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->b:J

    .line 21
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    :cond_17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    .line 26
    iput p2, p1, Landroidx/recyclerview/widget/e$b;->a:I

    .line 28
    iput p3, p1, Landroidx/recyclerview/widget/e$b;->b:I

    .line 30
    return-void
.end method

.method public final b(J)V
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    :goto_9
    if-ge v2, v0, :cond_26

    .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_23

    .line 26
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    .line 28
    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/e$b;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 31
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    .line 33
    iget v4, v4, Landroidx/recyclerview/widget/e$b;->d:I

    .line 35
    add-int/2addr v3, v4

    .line 36
    :cond_23
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_9

    .line 39
    :cond_26
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 44
    move v2, v1

    .line 45
    move v3, v2

    .line 46
    :goto_2d
    const/4 v4, 0x1

    .line 47
    if-ge v2, v0, :cond_8f

    .line 49
    iget-object v5, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    invoke-virtual {v5}, Landroid/view/View;->getWindowVisibility()I

    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_3f

    .line 63
    goto :goto_8c

    .line 64
    :cond_3f
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    .line 66
    iget v7, v6, Landroidx/recyclerview/widget/e$b;->a:I

    .line 68
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 71
    move-result v7

    .line 72
    iget v8, v6, Landroidx/recyclerview/widget/e$b;->b:I

    .line 74
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 77
    move-result v8

    .line 78
    add-int/2addr v8, v7

    .line 79
    move v7, v1

    .line 80
    :goto_4f
    iget v9, v6, Landroidx/recyclerview/widget/e$b;->d:I

    .line 82
    mul-int/lit8 v9, v9, 0x2

    .line 84
    if-ge v7, v9, :cond_8c

    .line 86
    iget-object v9, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 91
    move-result v9

    .line 92
    if-lt v3, v9, :cond_68

    .line 94
    new-instance v9, Landroidx/recyclerview/widget/e$c;

    .line 96
    invoke-direct {v9}, Landroidx/recyclerview/widget/e$c;-><init>()V

    .line 99
    iget-object v10, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_70

    .line 105
    :cond_68
    iget-object v9, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Landroidx/recyclerview/widget/e$c;

    .line 113
    :goto_70
    iget-object v10, v6, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 115
    add-int/lit8 v11, v7, 0x1

    .line 117
    aget v11, v10, v11

    .line 119
    if-gt v11, v8, :cond_7a

    .line 121
    move v12, v4

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    move v12, v1

    .line 124
    :goto_7b
    iput-boolean v12, v9, Landroidx/recyclerview/widget/e$c;->a:Z

    .line 126
    iput v8, v9, Landroidx/recyclerview/widget/e$c;->b:I

    .line 128
    iput v11, v9, Landroidx/recyclerview/widget/e$c;->c:I

    .line 130
    iput-object v5, v9, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    aget v10, v10, v7

    .line 134
    iput v10, v9, Landroidx/recyclerview/widget/e$c;->e:I

    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 138
    add-int/lit8 v7, v7, 0x2

    .line 140
    goto :goto_4f

    .line 141
    :cond_8c
    :goto_8c
    add-int/lit8 v2, v2, 0x1

    .line 143
    goto :goto_2d

    .line 144
    :cond_8f
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    .line 146
    sget-object v2, Landroidx/recyclerview/widget/e;->f:Landroidx/recyclerview/widget/e$a;

    .line 148
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 151
    move v0, v1

    .line 152
    :goto_97
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 157
    move-result v2

    .line 158
    if-ge v0, v2, :cond_137

    .line 160
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Landroidx/recyclerview/widget/e$c;

    .line 168
    iget-object v3, v2, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 170
    if-nez v3, :cond_ad

    .line 172
    goto/16 :goto_137

    .line 174
    :cond_ad
    iget-boolean v5, v2, Landroidx/recyclerview/widget/e$c;->a:Z

    .line 176
    if-eqz v5, :cond_b7

    .line 178
    const-wide v5, 0x7fffffffffffffffL

    .line 183
    goto :goto_b8

    .line 184
    :cond_b7
    move-wide v5, p1

    .line 185
    :goto_b8
    iget v7, v2, Landroidx/recyclerview/widget/e$c;->e:I

    .line 187
    invoke-static {v3, v7, v5, v6}, Landroidx/recyclerview/widget/e;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 190
    move-result-object v3

    .line 191
    if-eqz v3, :cond_128

    .line 193
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 195
    if-eqz v5, :cond_128

    .line 197
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->isBound()Z

    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_128

    .line 203
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 206
    move-result v5

    .line 207
    if-nez v5, :cond_128

    .line 209
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 211
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 217
    if-nez v3, :cond_db

    .line 219
    goto :goto_128

    .line 220
    :cond_db
    iget-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 222
    if-eqz v5, :cond_ea

    .line 224
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 226
    invoke-virtual {v5}, Landroidx/recyclerview/widget/b;->h()I

    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_ea

    .line 232
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 235
    :cond_ea
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    .line 237
    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/e$b;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 240
    iget v6, v5, Landroidx/recyclerview/widget/e$b;->d:I

    .line 242
    if-eqz v6, :cond_128

    .line 244
    :try_start_f3
    const-string v6, "RV Nested Prefetch"

    .line 246
    sget v7, Li0/i;->a:I

    .line 248
    invoke-static {v6}, Li0/i$a;->a(Ljava/lang/String;)V

    .line 251
    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 253
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 255
    iput v4, v6, Landroidx/recyclerview/widget/RecyclerView$y;->d:I

    .line 257
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 260
    move-result v7

    .line 261
    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView$y;->e:I

    .line 263
    iput-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 265
    iput-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView$y;->h:Z

    .line 267
    iput-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView$y;->i:Z

    .line 269
    move v6, v1

    .line 270
    :goto_10d
    iget v7, v5, Landroidx/recyclerview/widget/e$b;->d:I

    .line 272
    mul-int/lit8 v7, v7, 0x2

    .line 274
    if-ge v6, v7, :cond_11d

    .line 276
    iget-object v7, v5, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 278
    aget v7, v7, v6

    .line 280
    invoke-static {v3, v7, p1, p2}, Landroidx/recyclerview/widget/e;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$b0;
    :try_end_11a
    .catchall {:try_start_f3 .. :try_end_11a} :catchall_121

    .line 283
    add-int/lit8 v6, v6, 0x2

    .line 285
    goto :goto_10d

    .line 286
    :cond_11d
    invoke-static {}, Li0/i$a;->b()V

    .line 289
    goto :goto_128

    .line 290
    :catchall_121
    move-exception p1

    .line 291
    sget p2, Li0/i;->a:I

    .line 293
    invoke-static {}, Li0/i$a;->b()V

    .line 296
    throw p1

    .line 297
    :cond_128
    :goto_128
    iput-boolean v1, v2, Landroidx/recyclerview/widget/e$c;->a:Z

    .line 299
    iput v1, v2, Landroidx/recyclerview/widget/e$c;->b:I

    .line 301
    iput v1, v2, Landroidx/recyclerview/widget/e$c;->c:I

    .line 303
    const/4 v3, 0x0

    .line 304
    iput-object v3, v2, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 306
    iput v1, v2, Landroidx/recyclerview/widget/e$c;->e:I

    .line 308
    add-int/lit8 v0, v0, 0x1

    .line 310
    goto/16 :goto_97

    .line 312
    :cond_137
    :goto_137
    return-void
.end method

.method public final run()V
    .registers 9

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    :try_start_2
    const-string v2, "RV Prefetch"

    .line 5
    sget v3, Li0/i;->a:I

    .line 7
    invoke-static {v2}, Li0/i$a;->a(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v2
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_56

    .line 16
    if-eqz v2, :cond_17

    .line 18
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->b:J

    .line 20
    invoke-static {}, Li0/i$a;->b()V

    .line 23
    return-void

    .line 24
    :cond_17
    :try_start_17
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    move-wide v4, v0

    .line 32
    :goto_1f
    if-ge v3, v2, :cond_3a

    .line 34
    iget-object v6, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    .line 45
    move-result v7

    .line 46
    if-nez v7, :cond_37

    .line 48
    invoke-virtual {v6}, Landroid/view/View;->getDrawingTime()J

    .line 51
    move-result-wide v6

    .line 52
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 55
    move-result-wide v4
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_56

    .line 56
    :cond_37
    add-int/lit8 v3, v3, 0x1

    .line 58
    goto :goto_1f

    .line 59
    :cond_3a
    cmp-long v2, v4, v0

    .line 61
    if-nez v2, :cond_44

    .line 63
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->b:J

    .line 65
    invoke-static {}, Li0/i$a;->b()V

    .line 68
    return-void

    .line 69
    :cond_44
    :try_start_44
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 71
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 74
    move-result-wide v2

    .line 75
    iget-wide v4, p0, Landroidx/recyclerview/widget/e;->c:J

    .line 77
    add-long/2addr v2, v4

    .line 78
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/e;->b(J)V
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_56

    .line 81
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->b:J

    .line 83
    invoke-static {}, Li0/i$a;->b()V

    .line 86
    return-void

    .line 87
    :catchall_56
    move-exception v2

    .line 88
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->b:J

    .line 90
    sget v0, Li0/i;->a:I

    .line 92
    invoke-static {}, Li0/i$a;->b()V

    .line 95
    throw v2
.end method
