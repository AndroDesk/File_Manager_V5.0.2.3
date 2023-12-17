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

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/e;->e:Ljava/lang/ThreadLocal;

    new-instance v0, Landroidx/recyclerview/widget/e$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/e$a;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/e;->f:Landroidx/recyclerview/widget/e$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->g(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v3

    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    if-ne v4, p1, :cond_20

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_20

    const/4 v0, 0x1

    goto :goto_24

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    move v0, v1

    :goto_24
    if-eqz v0, :cond_28

    const/4 p0, 0x0

    return-object p0

    :cond_28
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    :try_start_2a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-virtual {v0, p2, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$u;->k(JI)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isBound()Z

    move-result p2

    if-eqz p2, :cond_45

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    move-result p2

    if-nez p2, :cond_45

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$u;->h(Landroid/view/View;)V

    goto :goto_48

    :cond_45
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_4c

    :cond_48
    :goto_48
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-object p1

    :catchall_4c
    move-exception p1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    throw p1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-wide v0, p0, Landroidx/recyclerview/widget/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->b:J

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    iput p2, p1, Landroidx/recyclerview/widget/e$b;->a:I

    iput p3, p1, Landroidx/recyclerview/widget/e$b;->b:I

    return-void
.end method

.method public final b(J)V
    .registers 16

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    if-ge v2, v0, :cond_26

    iget-object v4, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_23

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/e$b;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    iget v4, v4, Landroidx/recyclerview/widget/e$b;->d:I

    add-int/2addr v3, v4

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_26
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v2, v1

    move v3, v2

    :goto_2d
    const/4 v4, 0x1

    if-ge v2, v0, :cond_8f

    iget-object v5, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    if-eqz v6, :cond_3f

    goto :goto_8c

    :cond_3f
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    iget v7, v6, Landroidx/recyclerview/widget/e$b;->a:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v6, Landroidx/recyclerview/widget/e$b;->b:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v7

    move v7, v1

    :goto_4f
    iget v9, v6, Landroidx/recyclerview/widget/e$b;->d:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v7, v9, :cond_8c

    iget-object v9, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v3, v9, :cond_68

    new-instance v9, Landroidx/recyclerview/widget/e$c;

    invoke-direct {v9}, Landroidx/recyclerview/widget/e$c;-><init>()V

    iget-object v10, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_68
    iget-object v9, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/e$c;

    :goto_70
    iget-object v10, v6, Landroidx/recyclerview/widget/e$b;->c:[I

    add-int/lit8 v11, v7, 0x1

    aget v11, v10, v11

    if-gt v11, v8, :cond_7a

    move v12, v4

    goto :goto_7b

    :cond_7a
    move v12, v1

    :goto_7b
    iput-boolean v12, v9, Landroidx/recyclerview/widget/e$c;->a:Z

    iput v8, v9, Landroidx/recyclerview/widget/e$c;->b:I

    iput v11, v9, Landroidx/recyclerview/widget/e$c;->c:I

    iput-object v5, v9, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    aget v10, v10, v7

    iput v10, v9, Landroidx/recyclerview/widget/e$c;->e:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x2

    goto :goto_4f

    :cond_8c
    :goto_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_8f
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    sget-object v2, Landroidx/recyclerview/widget/e;->f:Landroidx/recyclerview/widget/e$a;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v0, v1

    :goto_97
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_137

    iget-object v2, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/e$c;

    iget-object v3, v2, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_ad

    goto/16 :goto_137

    :cond_ad
    iget-boolean v5, v2, Landroidx/recyclerview/widget/e$c;->a:Z

    if-eqz v5, :cond_b7

    const-wide v5, 0x7fffffffffffffffL

    goto :goto_b8

    :cond_b7
    move-wide v5, p1

    :goto_b8
    iget v7, v2, Landroidx/recyclerview/widget/e$c;->e:I

    invoke-static {v3, v7, v5, v6}, Landroidx/recyclerview/widget/e;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v3

    if-eqz v3, :cond_128

    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_128

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->isBound()Z

    move-result v5

    if-eqz v5, :cond_128

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_128

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_db

    goto :goto_128

    :cond_db
    iget-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v5, :cond_ea

    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/b;->h()I

    move-result v5

    if-eqz v5, :cond_ea

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    :cond_ea
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/e$b;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v6, v5, Landroidx/recyclerview/widget/e$b;->d:I

    if-eqz v6, :cond_128

    :try_start_f3
    const-string v6, "RV Nested Prefetch"

    sget v7, Li0/i;->a:I

    invoke-static {v6}, Li0/i$a;->a(Ljava/lang/String;)V

    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput v4, v6, Landroidx/recyclerview/widget/RecyclerView$y;->d:I

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView$y;->e:I

    iput-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    iput-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView$y;->h:Z

    iput-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView$y;->i:Z

    move v6, v1

    :goto_10d
    iget v7, v5, Landroidx/recyclerview/widget/e$b;->d:I

    mul-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_11d

    iget-object v7, v5, Landroidx/recyclerview/widget/e$b;->c:[I

    aget v7, v7, v6

    invoke-static {v3, v7, p1, p2}, Landroidx/recyclerview/widget/e;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$b0;
    :try_end_11a
    .catchall {:try_start_f3 .. :try_end_11a} :catchall_121

    add-int/lit8 v6, v6, 0x2

    goto :goto_10d

    :cond_11d
    invoke-static {}, Li0/i$a;->b()V

    goto :goto_128

    :catchall_121
    move-exception p1

    sget p2, Li0/i;->a:I

    invoke-static {}, Li0/i$a;->b()V

    throw p1

    :cond_128
    :goto_128
    iput-boolean v1, v2, Landroidx/recyclerview/widget/e$c;->a:Z

    iput v1, v2, Landroidx/recyclerview/widget/e$c;->b:I

    iput v1, v2, Landroidx/recyclerview/widget/e$c;->c:I

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput v1, v2, Landroidx/recyclerview/widget/e$c;->e:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_97

    :cond_137
    :goto_137
    return-void
.end method

.method public final run()V
    .registers 9

    const-wide/16 v0, 0x0

    :try_start_2
    const-string v2, "RV Prefetch"

    sget v3, Li0/i;->a:I

    invoke-static {v2}, Li0/i$a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_56

    if-eqz v2, :cond_17

    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->b:J

    invoke-static {}, Li0/i$a;->b()V

    return-void

    :cond_17
    :try_start_17
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_1f
    if-ge v3, v2, :cond_3a

    iget-object v6, p0, Landroidx/recyclerview/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_37

    invoke-virtual {v6}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_56

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_3a
    cmp-long v2, v4, v0

    if-nez v2, :cond_44

    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->b:J

    invoke-static {}, Li0/i$a;->b()V

    return-void

    :cond_44
    :try_start_44
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/recyclerview/widget/e;->c:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/e;->b(J)V
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_56

    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->b:J

    invoke-static {}, Li0/i$a;->b()V

    return-void

    :catchall_56
    move-exception v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->b:J

    sget v0, Li0/i;->a:I

    invoke-static {}, Li0/i$a;->b()V

    throw v2
.end method
