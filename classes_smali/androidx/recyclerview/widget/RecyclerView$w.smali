.class public final Landroidx/recyclerview/widget/RecyclerView$w;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "w"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 3
    if-eqz v0, :cond_16

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    .line 9
    if-eqz v1, :cond_16

    .line 11
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 13
    if-eqz v1, :cond_16

    .line 15
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 17
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 19
    invoke-static {v0, v1}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 22
    goto :goto_1e

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 28
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 31
    :goto_1e
    return-void
.end method

.method public final onChanged()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 11
    const/4 v2, 0x1

    .line 12
    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$y;->f:Z

    .line 14
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->g()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1f

    .line 27
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 32
    :cond_1f
    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ge p2, v2, :cond_12

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    goto :goto_2a

    .line 19
    :cond_12
    iget-object v3, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 21
    const/4 v4, 0x4

    .line 22
    invoke-virtual {v0, p3, v4, p1, p2}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget p1, v0, Landroidx/recyclerview/widget/a;->f:I

    .line 31
    or-int/2addr p1, v4

    .line 32
    iput p1, v0, Landroidx/recyclerview/widget/a;->f:I

    .line 34
    iget-object p1, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result p1

    .line 40
    if-ne p1, v2, :cond_2a

    .line 42
    move v1, v2

    .line 43
    :cond_2a
    :goto_2a
    if-eqz v1, :cond_2f

    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->a()V

    .line 48
    :cond_2f
    return-void
.end method

.method public final onItemRangeInserted(II)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ge p2, v3, :cond_12

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    goto :goto_29

    .line 19
    :cond_12
    iget-object v4, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0, v1, v3, p1, p2}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget p1, v0, Landroidx/recyclerview/widget/a;->f:I

    .line 30
    or-int/2addr p1, v3

    .line 31
    iput p1, v0, Landroidx/recyclerview/widget/a;->f:I

    .line 33
    iget-object p1, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result p1

    .line 39
    if-ne p1, v3, :cond_29

    .line 41
    move v2, v3

    .line 42
    :cond_29
    :goto_29
    if-eqz v2, :cond_2e

    .line 44
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->a()V

    .line 47
    :cond_2e
    return-void
.end method

.method public final onItemRangeMoved(III)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne p1, p2, :cond_11

    .line 17
    goto :goto_2d

    .line 18
    :cond_11
    const/4 v3, 0x1

    .line 19
    if-ne p3, v3, :cond_33

    .line 21
    iget-object p3, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 23
    const/16 v4, 0x8

    .line 25
    invoke-virtual {v0, v1, v4, p1, p2}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget p1, v0, Landroidx/recyclerview/widget/a;->f:I

    .line 34
    or-int/2addr p1, v4

    .line 35
    iput p1, v0, Landroidx/recyclerview/widget/a;->f:I

    .line 37
    iget-object p1, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result p1

    .line 43
    if-ne p1, v3, :cond_2d

    .line 45
    move v2, v3

    .line 46
    :cond_2d
    :goto_2d
    if-eqz v2, :cond_32

    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->a()V

    .line 51
    :cond_32
    return-void

    .line 52
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string p2, "Moving more than 1 item is not supported yet"

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1
.end method

.method public final onItemRangeRemoved(II)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ge p2, v3, :cond_12

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    goto :goto_2a

    .line 19
    :cond_12
    iget-object v4, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 21
    const/4 v5, 0x2

    .line 22
    invoke-virtual {v0, v1, v5, p1, p2}, Landroidx/recyclerview/widget/a;->h(Ljava/lang/Object;III)Landroidx/recyclerview/widget/a$b;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget p1, v0, Landroidx/recyclerview/widget/a;->f:I

    .line 31
    or-int/2addr p1, v5

    .line 32
    iput p1, v0, Landroidx/recyclerview/widget/a;->f:I

    .line 34
    iget-object p1, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result p1

    .line 40
    if-ne p1, v3, :cond_2a

    .line 42
    move v2, v3

    .line 43
    :cond_2a
    :goto_2a
    if-eqz v2, :cond_2f

    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->a()V

    .line 48
    :cond_2f
    return-void
.end method

.method public final onStateRestorationPolicyChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    if-eqz v0, :cond_16

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->canRestoreState()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_16

    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 23
    :cond_16
    return-void
.end method
