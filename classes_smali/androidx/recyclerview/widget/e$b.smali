.class public final Landroidx/recyclerview/widget/e$b;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "VisibleForTests"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 8

    .line 1
    if-ltz p1, :cond_3b

    .line 3
    if-ltz p2, :cond_33

    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/e$b;->d:I

    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 11
    if-nez v1, :cond_16

    .line 13
    const/4 v1, 0x4

    .line 14
    new-array v1, v1, [I

    .line 16
    iput-object v1, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 22
    goto :goto_24

    .line 23
    :cond_16
    array-length v2, v1

    .line 24
    if-lt v0, v2, :cond_24

    .line 26
    mul-int/lit8 v2, v0, 0x2

    .line 28
    new-array v2, v2, [I

    .line 30
    iput-object v2, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 32
    array-length v3, v1

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_24
    :goto_24
    iget-object v1, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 39
    aput p1, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 43
    aput p2, v1, v0

    .line 45
    iget p1, p0, Landroidx/recyclerview/widget/e$b;->d:I

    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 49
    iput p1, p0, Landroidx/recyclerview/widget/e$b;->d:I

    .line 51
    return-void

    .line 52
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string p2, "Pixel distance must be non-negative"

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1

    .line 60
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    const-string p2, "Layout positions must be non-negative"

    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/e$b;->d:I

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 12
    :cond_b
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 14
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 16
    if-eqz v1, :cond_4b

    .line 18
    if-eqz v0, :cond_4b

    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_4b

    .line 26
    if-eqz p2, :cond_2d

    .line 28
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 30
    invoke-virtual {v1}, Landroidx/recyclerview/widget/a;->g()Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_3c

    .line 36
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 38
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$c;)V

    .line 45
    goto :goto_3c

    .line 46
    :cond_2d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3c

    .line 52
    iget v1, p0, Landroidx/recyclerview/widget/e$b;->a:I

    .line 54
    iget v2, p0, Landroidx/recyclerview/widget/e$b;->b:I

    .line 56
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 58
    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;)V

    .line 61
    :cond_3c
    :goto_3c
    iget v1, p0, Landroidx/recyclerview/widget/e$b;->d:I

    .line 63
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 65
    if-le v1, v2, :cond_4b

    .line 67
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 69
    iput-boolean p2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 71
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->m()V

    .line 76
    :cond_4b
    return-void
.end method
