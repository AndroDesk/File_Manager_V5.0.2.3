.class public final Landroidx/recyclerview/widget/RecyclerView$u;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "u"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/RecyclerView$t;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->d:Ljava/util/List;

    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I

    .line 32
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I

    .line 34
    return-void
.end method

.method public static e(Landroid/view/ViewGroup;Z)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_6
    if-ltz v0, :cond_18

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 13
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 15
    if-eqz v3, :cond_15

    .line 17
    check-cast v2, Landroid/view/ViewGroup;

    .line 19
    invoke-static {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$u;->e(Landroid/view/ViewGroup;Z)V

    .line 22
    :cond_15
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_6

    .line 25
    :cond_18
    if-nez p1, :cond_1b

    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 31
    move-result p1

    .line 32
    const/4 v0, 0x4

    .line 33
    if-ne p1, v0, :cond_2a

    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    goto :goto_34

    .line 43
    :cond_2a
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :goto_34
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/r;

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_23

    .line 13
    invoke-virtual {v1}, Landroidx/recyclerview/widget/r;->getItemDelegate()Lm0/a;

    .line 16
    move-result-object v1

    .line 17
    instance-of v3, v1, Landroidx/recyclerview/widget/r$a;

    .line 19
    if-eqz v3, :cond_1f

    .line 21
    check-cast v1, Landroidx/recyclerview/widget/r$a;

    .line 23
    iget-object v1, v1, Landroidx/recyclerview/widget/r$a;->b:Ljava/util/WeakHashMap;

    .line 25
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lm0/a;

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move-object v1, v2

    .line 33
    :goto_20
    invoke-static {v0, v1}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 36
    :cond_23
    if-eqz p2, :cond_5d

    .line 38
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 42
    if-eqz p2, :cond_2e

    .line 44
    invoke-interface {p2}, Landroidx/recyclerview/widget/RecyclerView$v;->a()V

    .line 47
    :cond_2e
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 51
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 54
    move-result p2

    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_37
    if-ge v0, p2, :cond_49

    .line 58
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 62
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$v;

    .line 68
    invoke-interface {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->a()V

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 73
    goto :goto_37

    .line 74
    :cond_49
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 78
    if-eqz p2, :cond_52

    .line 80
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 83
    :cond_52
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 87
    if-eqz v0, :cond_5d

    .line 89
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 91
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/z;->d(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 94
    :cond_5d
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 96
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$u;->d()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 108
    move-result v0

    .line 109
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$t;->b(I)Landroidx/recyclerview/widget/RecyclerView$t$a;

    .line 112
    move-result-object v1

    .line 113
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;

    .line 115
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;

    .line 117
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$t$a;

    .line 123
    iget p2, p2, Landroidx/recyclerview/widget/RecyclerView$t$a;->b:I

    .line 125
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 128
    move-result v0

    .line 129
    if-gt p2, v0, :cond_83

    .line 131
    goto :goto_89

    .line 132
    :cond_83
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->resetInternal()V

    .line 135
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_89
    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$u;->f()V

    .line 9
    return-void
.end method

.method public final c(I)I
    .registers 5

    .line 1
    if-ltz p1, :cond_1d

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_1d

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 17
    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 19
    if-nez v1, :cond_15

    .line 21
    return p1

    .line 22
    :cond_15
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/a;->f(II)I

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 32
    const-string v1, "invalid position "

    .line 34
    const-string v2, ". State item count is "

    .line 36
    invoke-static {v1, p1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object p1

    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 44
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    invoke-static {v1, p1}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0
.end method

.method public final d()Landroidx/recyclerview/widget/RecyclerView$t;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$t;

    .line 7
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 14
    return-object v0
.end method

.method public final f()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    :goto_8
    if-ltz v0, :cond_10

    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->g(I)V

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    goto :goto_8

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 24
    if-eqz v0, :cond_27

    .line 26
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    .line 30
    iget-object v2, v0, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 32
    if-eqz v2, :cond_24

    .line 34
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 37
    :cond_24
    const/4 v1, 0x0

    .line 38
    iput v1, v0, Landroidx/recyclerview/widget/e$b;->d:I

    .line 40
    :cond_27
    return-void
.end method

.method public final g(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public final h(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isTmpDetached()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_10

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 17
    :cond_10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isScrap()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1a

    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->unScrap()V

    .line 26
    goto :goto_23

    .line 27
    :cond_1a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_23

    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearReturnedFromScrapFlag()V

    .line 36
    :cond_23
    :goto_23
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->i(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 39
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 43
    if-eqz p1, :cond_39

    .line 45
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRecyclable()Z

    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_39

    .line 51
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 55
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$l;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 58
    :cond_39
    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isScrap()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_fb

    .line 9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    goto/16 :goto_fb

    .line 19
    :cond_12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isTmpDetached()Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_e2

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_d0

    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->doesTransientStatePreventRecycling()Z

    .line 34
    move-result v0

    .line 35
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 39
    if-eqz v3, :cond_32

    .line 41
    if-eqz v0, :cond_32

    .line 43
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_32

    .line 49
    move v3, v1

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v3, v2

    .line 52
    :goto_33
    if-nez v3, :cond_3f

    .line 54
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRecyclable()Z

    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3c

    .line 60
    goto :goto_3f

    .line 61
    :cond_3c
    move v1, v2

    .line 62
    goto/16 :goto_bd

    .line 64
    :cond_3f
    :goto_3f
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I

    .line 66
    if-lez v3, :cond_b4

    .line 68
    const/16 v3, 0x20e

    .line 70
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->hasAnyOfTheFlags(I)Z

    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_b4

    .line 76
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 81
    move-result v3

    .line 82
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I

    .line 84
    if-lt v3, v4, :cond_5c

    .line 86
    if-lez v3, :cond_5c

    .line 88
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$u;->g(I)V

    .line 91
    add-int/lit8 v3, v3, -0x1

    .line 93
    :cond_5c
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 95
    if-eqz v4, :cond_ad

    .line 97
    if-lez v3, :cond_ad

    .line 99
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    .line 103
    iget v5, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 105
    iget-object v6, v4, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 107
    if-eqz v6, :cond_7e

    .line 109
    iget v6, v4, Landroidx/recyclerview/widget/e$b;->d:I

    .line 111
    mul-int/lit8 v6, v6, 0x2

    .line 113
    move v7, v2

    .line 114
    :goto_71
    if-ge v7, v6, :cond_7e

    .line 116
    iget-object v8, v4, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 118
    aget v8, v8, v7

    .line 120
    if-ne v8, v5, :cond_7b

    .line 122
    move v4, v1

    .line 123
    goto :goto_7f

    .line 124
    :cond_7b
    add-int/lit8 v7, v7, 0x2

    .line 126
    goto :goto_71

    .line 127
    :cond_7e
    move v4, v2

    .line 128
    :goto_7f
    if-nez v4, :cond_ad

    .line 130
    :cond_81
    add-int/lit8 v3, v3, -0x1

    .line 132
    if-ltz v3, :cond_ac

    .line 134
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    move-result-object v4

    .line 140
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 142
    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 144
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    .line 148
    iget-object v6, v5, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 150
    if-eqz v6, :cond_a9

    .line 152
    iget v6, v5, Landroidx/recyclerview/widget/e$b;->d:I

    .line 154
    mul-int/lit8 v6, v6, 0x2

    .line 156
    move v7, v2

    .line 157
    :goto_9c
    if-ge v7, v6, :cond_a9

    .line 159
    iget-object v8, v5, Landroidx/recyclerview/widget/e$b;->c:[I

    .line 161
    aget v8, v8, v7

    .line 163
    if-ne v8, v4, :cond_a6

    .line 165
    move v4, v1

    .line 166
    goto :goto_aa

    .line 167
    :cond_a6
    add-int/lit8 v7, v7, 0x2

    .line 169
    goto :goto_9c

    .line 170
    :cond_a9
    move v4, v2

    .line 171
    :goto_aa
    if-nez v4, :cond_81

    .line 173
    :cond_ac
    add-int/2addr v3, v1

    .line 174
    :cond_ad
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 179
    move v3, v1

    .line 180
    goto :goto_b5

    .line 181
    :cond_b4
    move v3, v2

    .line 182
    :goto_b5
    if-nez v3, :cond_bb

    .line 184
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 187
    goto :goto_bc

    .line 188
    :cond_bb
    move v1, v2

    .line 189
    :goto_bc
    move v2, v3

    .line 190
    :goto_bd
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 192
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/z;

    .line 194
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/z;->d(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 197
    if-nez v2, :cond_cf

    .line 199
    if-nez v1, :cond_cf

    .line 201
    if-eqz v0, :cond_cf

    .line 203
    const/4 v0, 0x0

    .line 204
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 206
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 208
    :cond_cf
    return-void

    .line 209
    :cond_d0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 211
    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 213
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    move-result-object v0

    .line 217
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 219
    invoke-static {v1, v0}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 226
    throw p1

    .line 227
    :cond_e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 244
    invoke-static {p1, v1}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 247
    move-result-object p1

    .line 248
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 251
    throw v0

    .line 252
    :cond_fb
    :goto_fb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 254
    const-string v3, "Scrapped or attached views may not be recycled. isScrap:"

    .line 256
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isScrap()Z

    .line 263
    move-result v4

    .line 264
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 267
    const-string v4, " isAttached:"

    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 277
    move-result-object p1

    .line 278
    if-eqz p1, :cond_118

    .line 280
    goto :goto_119

    .line 281
    :cond_118
    move v1, v2

    .line 282
    :goto_119
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 285
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 287
    invoke-static {p1, v3}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 290
    move-result-object p1

    .line 291
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 294
    throw v0
.end method

.method public final j(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0xc

    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->hasAnyOfTheFlags(I)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_30

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isUpdated()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_30

    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    goto :goto_30

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 30
    if-nez v0, :cond_26

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 39
    :cond_26
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$u;Z)V

    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    goto :goto_62

    .line 49
    :cond_30
    :goto_30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_59

    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_59

    .line 61
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 65
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_47

    .line 71
    goto :goto_59

    .line 72
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 76
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    invoke-static {v1, v0}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p1

    .line 90
    :cond_59
    :goto_59
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$u;Z)V

    .line 94
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :goto_62
    return-void
.end method

.method public final k(JI)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p3

    .line 5
    if-ltz v1, :cond_541

    .line 7
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 11
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_541

    .line 17
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 21
    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 23
    const/4 v3, 0x0

    .line 24
    const/16 v4, 0x20

    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v2, :cond_93

    .line 29
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 31
    if-eqz v2, :cond_8c

    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_27

    .line 39
    goto :goto_8c

    .line 40
    :cond_27
    move v6, v3

    .line 41
    :goto_28
    if-ge v6, v2, :cond_45

    .line 43
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v7

    .line 49
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 51
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    .line 54
    move-result v8

    .line 55
    if-nez v8, :cond_42

    .line 57
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 60
    move-result v8

    .line 61
    if-ne v8, v1, :cond_42

    .line 63
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 66
    goto :goto_8d

    .line 67
    :cond_42
    add-int/lit8 v6, v6, 0x1

    .line 69
    goto :goto_28

    .line 70
    :cond_45
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 74
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_8c

    .line 80
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 84
    invoke-virtual {v6, v1, v3}, Landroidx/recyclerview/widget/a;->f(II)I

    .line 87
    move-result v6

    .line 88
    if-lez v6, :cond_8c

    .line 90
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 94
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 97
    move-result v7

    .line 98
    if-ge v6, v7, :cond_8c

    .line 100
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 104
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 107
    move-result-wide v6

    .line 108
    move v8, v3

    .line 109
    :goto_6c
    if-ge v8, v2, :cond_8c

    .line 111
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v9

    .line 117
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 119
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    .line 122
    move-result v10

    .line 123
    if-nez v10, :cond_89

    .line 125
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    .line 128
    move-result-wide v10

    .line 129
    cmp-long v10, v10, v6

    .line 131
    if-nez v10, :cond_89

    .line 133
    invoke-virtual {v9, v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 136
    move-object v7, v9

    .line 137
    goto :goto_8d

    .line 138
    :cond_89
    add-int/lit8 v8, v8, 0x1

    .line 140
    goto :goto_6c

    .line 141
    :cond_8c
    :goto_8c
    move-object v7, v5

    .line 142
    :goto_8d
    if-eqz v7, :cond_91

    .line 144
    const/4 v2, 0x1

    .line 145
    goto :goto_95

    .line 146
    :cond_91
    move v2, v3

    .line 147
    goto :goto_95

    .line 148
    :cond_93
    move v2, v3

    .line 149
    move-object v7, v5

    .line 150
    :goto_95
    const/4 v6, -0x1

    .line 151
    if-nez v7, :cond_252

    .line 153
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 158
    move-result v7

    .line 159
    move v8, v3

    .line 160
    :goto_9f
    if-ge v8, v7, :cond_d1

    .line 162
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    move-result-object v9

    .line 168
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 170
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    .line 173
    move-result v10

    .line 174
    if-nez v10, :cond_ce

    .line 176
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 179
    move-result v10

    .line 180
    if-ne v10, v1, :cond_ce

    .line 182
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 185
    move-result v10

    .line 186
    if-nez v10, :cond_ce

    .line 188
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 190
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 192
    iget-boolean v10, v10, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 194
    if-nez v10, :cond_c9

    .line 196
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 199
    move-result v10

    .line 200
    if-nez v10, :cond_ce

    .line 202
    :cond_c9
    invoke-virtual {v9, v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 205
    goto/16 :goto_1b8

    .line 207
    :cond_ce
    add-int/lit8 v8, v8, 0x1

    .line 209
    goto :goto_9f

    .line 210
    :cond_d1
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 212
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 214
    iget-object v8, v7, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 219
    move-result v8

    .line 220
    move v9, v3

    .line 221
    :goto_dc
    if-ge v9, v8, :cond_107

    .line 223
    iget-object v10, v7, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    move-result-object v10

    .line 229
    check-cast v10, Landroid/view/View;

    .line 231
    iget-object v11, v7, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 233
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 235
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 241
    move-result-object v11

    .line 242
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 245
    move-result v12

    .line 246
    if-ne v12, v1, :cond_104

    .line 248
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 251
    move-result v12

    .line 252
    if-nez v12, :cond_104

    .line 254
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 257
    move-result v11

    .line 258
    if-nez v11, :cond_104

    .line 260
    goto :goto_108

    .line 261
    :cond_104
    add-int/lit8 v9, v9, 0x1

    .line 263
    goto :goto_dc

    .line 264
    :cond_107
    move-object v10, v5

    .line 265
    :goto_108
    if-eqz v10, :cond_190

    .line 267
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 270
    move-result-object v7

    .line 271
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 273
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 275
    iget-object v9, v8, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 277
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 279
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 281
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 284
    move-result v9

    .line 285
    if-ltz v9, :cond_179

    .line 287
    iget-object v11, v8, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 289
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/b$a;->d(I)Z

    .line 292
    move-result v11

    .line 293
    if-eqz v11, :cond_162

    .line 295
    iget-object v11, v8, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 297
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/b$a;->a(I)V

    .line 300
    invoke-virtual {v8, v10}, Landroidx/recyclerview/widget/b;->m(Landroid/view/View;)V

    .line 303
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 305
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 307
    invoke-virtual {v8, v10}, Landroidx/recyclerview/widget/b;->j(Landroid/view/View;)I

    .line 310
    move-result v8

    .line 311
    if-eq v8, v6, :cond_149

    .line 313
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 315
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 317
    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/b;->c(I)V

    .line 320
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$u;->j(Landroid/view/View;)V

    .line 323
    const/16 v8, 0x2020

    .line 325
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 328
    goto/16 :goto_1be

    .line 330
    :cond_149
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    .line 334
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    const-string v3, "layout index should not be -1 after unhiding a view:"

    .line 339
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 347
    invoke-static {v3, v2}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 350
    move-result-object v2

    .line 351
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 354
    throw v1

    .line 355
    :cond_162
    new-instance v1, Ljava/lang/RuntimeException;

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    .line 359
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    const-string v3, "trying to unhide a view that was not hidden"

    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    move-result-object v2

    .line 374
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 377
    throw v1

    .line 378
    :cond_179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 382
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    const-string v3, "view is not a child, cannot hide "

    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object v2

    .line 397
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 400
    throw v1

    .line 401
    :cond_190
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 403
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 406
    move-result v7

    .line 407
    move v8, v3

    .line 408
    :goto_197
    if-ge v8, v7, :cond_1bd

    .line 410
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 412
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    move-result-object v9

    .line 416
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 418
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 421
    move-result v10

    .line 422
    if-nez v10, :cond_1ba

    .line 424
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 427
    move-result v10

    .line 428
    if-ne v10, v1, :cond_1ba

    .line 430
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$b0;->isAttachedToTransitionOverlay()Z

    .line 433
    move-result v10

    .line 434
    if-nez v10, :cond_1ba

    .line 436
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 438
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 441
    :goto_1b8
    move-object v7, v9

    .line 442
    goto :goto_1be

    .line 443
    :cond_1ba
    add-int/lit8 v8, v8, 0x1

    .line 445
    goto :goto_197

    .line 446
    :cond_1bd
    move-object v7, v5

    .line 447
    :goto_1be
    if-eqz v7, :cond_252

    .line 449
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 452
    move-result v8

    .line 453
    if-eqz v8, :cond_1cd

    .line 455
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 457
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 459
    iget-boolean v8, v8, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 461
    goto :goto_212

    .line 462
    :cond_1cd
    iget v8, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 464
    if-ltz v8, :cond_239

    .line 466
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 468
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 470
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 473
    move-result v9

    .line 474
    if-ge v8, v9, :cond_239

    .line 476
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 478
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 480
    iget-boolean v9, v9, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 482
    if-nez v9, :cond_1f2

    .line 484
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 486
    iget v9, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 488
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 491
    move-result v8

    .line 492
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 495
    move-result v9

    .line 496
    if-eq v8, v9, :cond_1f2

    .line 498
    goto :goto_20f

    .line 499
    :cond_1f2
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 501
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 503
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 506
    move-result v8

    .line 507
    if-eqz v8, :cond_211

    .line 509
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    .line 512
    move-result-wide v8

    .line 513
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 515
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 517
    iget v11, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 519
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 522
    move-result-wide v10

    .line 523
    cmp-long v8, v8, v10

    .line 525
    if-nez v8, :cond_20f

    .line 527
    goto :goto_211

    .line 528
    :cond_20f
    :goto_20f
    move v8, v3

    .line 529
    goto :goto_212

    .line 530
    :cond_211
    :goto_211
    const/4 v8, 0x1

    .line 531
    :goto_212
    if-nez v8, :cond_237

    .line 533
    const/4 v8, 0x4

    .line 534
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 537
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->isScrap()Z

    .line 540
    move-result v8

    .line 541
    if-eqz v8, :cond_229

    .line 543
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 545
    iget-object v9, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 547
    invoke-virtual {v8, v9, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 550
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->unScrap()V

    .line 553
    goto :goto_232

    .line 554
    :cond_229
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    .line 557
    move-result v8

    .line 558
    if-eqz v8, :cond_232

    .line 560
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearReturnedFromScrapFlag()V

    .line 563
    :cond_232
    :goto_232
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$u;->i(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 566
    move-object v7, v5

    .line 567
    goto :goto_252

    .line 568
    :cond_237
    const/4 v2, 0x1

    .line 569
    goto :goto_252

    .line 570
    :cond_239
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    .line 574
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    .line 579
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 587
    invoke-static {v3, v2}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 590
    move-result-object v2

    .line 591
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 594
    throw v1

    .line 595
    :cond_252
    :goto_252
    const-wide v8, 0x7fffffffffffffffL

    .line 600
    if-nez v7, :cond_3f0

    .line 602
    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 604
    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 606
    invoke-virtual {v12, v1, v3}, Landroidx/recyclerview/widget/a;->f(II)I

    .line 609
    move-result v12

    .line 610
    if-ltz v12, :cond_3cf

    .line 612
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 614
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 616
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 619
    move-result v13

    .line 620
    if-ge v12, v13, :cond_3cf

    .line 622
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 624
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 626
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 629
    move-result v13

    .line 630
    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 632
    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 634
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 637
    move-result v14

    .line 638
    if-eqz v14, :cond_31e

    .line 640
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 642
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 644
    invoke-virtual {v7, v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 647
    move-result-wide v14

    .line 648
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 650
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 653
    move-result v7

    .line 654
    add-int/2addr v7, v6

    .line 655
    :goto_28e
    if-ltz v7, :cond_2e6

    .line 657
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 659
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 662
    move-result-object v10

    .line 663
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 665
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    .line 668
    move-result-wide v16

    .line 669
    cmp-long v11, v16, v14

    .line 671
    if-nez v11, :cond_2e1

    .line 673
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$b0;->wasReturnedFromScrap()Z

    .line 676
    move-result v11

    .line 677
    if-nez v11, :cond_2e1

    .line 679
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 682
    move-result v11

    .line 683
    if-ne v13, v11, :cond_2c5

    .line 685
    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 688
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 691
    move-result v4

    .line 692
    if-eqz v4, :cond_2c3

    .line 694
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 696
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 698
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 700
    if-nez v4, :cond_2c3

    .line 702
    const/4 v4, 0x2

    .line 703
    const/16 v7, 0xe

    .line 705
    invoke-virtual {v10, v4, v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->setFlags(II)V

    .line 708
    :cond_2c3
    move-object v7, v10

    .line 709
    goto :goto_319

    .line 710
    :cond_2c5
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 712
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 715
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 717
    iget-object v4, v10, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 719
    invoke-virtual {v11, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 722
    iget-object v4, v10, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 724
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 727
    move-result-object v4

    .line 728
    iput-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$b0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 730
    iput-boolean v3, v4, Landroidx/recyclerview/widget/RecyclerView$b0;->mInChangeScrap:Z

    .line 732
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearReturnedFromScrapFlag()V

    .line 735
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$u;->i(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 738
    :cond_2e1
    add-int/lit8 v7, v7, -0x1

    .line 740
    const/16 v4, 0x20

    .line 742
    goto :goto_28e

    .line 743
    :cond_2e6
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 745
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 748
    move-result v4

    .line 749
    add-int/2addr v4, v6

    .line 750
    :goto_2ed
    if-ltz v4, :cond_318

    .line 752
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 754
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 757
    move-result-object v7

    .line 758
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 760
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemId()J

    .line 763
    move-result-wide v10

    .line 764
    cmp-long v10, v10, v14

    .line 766
    if-nez v10, :cond_315

    .line 768
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->isAttachedToTransitionOverlay()Z

    .line 771
    move-result v10

    .line 772
    if-nez v10, :cond_315

    .line 774
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 777
    move-result v10

    .line 778
    if-ne v13, v10, :cond_311

    .line 780
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 782
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 785
    goto :goto_319

    .line 786
    :cond_311
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$u;->g(I)V

    .line 789
    goto :goto_318

    .line 790
    :cond_315
    add-int/lit8 v4, v4, -0x1

    .line 792
    goto :goto_2ed

    .line 793
    :cond_318
    :goto_318
    move-object v7, v5

    .line 794
    :goto_319
    if-eqz v7, :cond_31e

    .line 796
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 798
    const/4 v2, 0x1

    .line 799
    :cond_31e
    if-nez v7, :cond_36b

    .line 801
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$u;->d()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 804
    move-result-object v4

    .line 805
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;

    .line 807
    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 810
    move-result-object v4

    .line 811
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$t$a;

    .line 813
    if-eqz v4, :cond_355

    .line 815
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;

    .line 817
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 820
    move-result v7

    .line 821
    if-nez v7, :cond_355

    .line 823
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;

    .line 825
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 828
    move-result v7

    .line 829
    add-int/2addr v7, v6

    .line 830
    :goto_33d
    if-ltz v7, :cond_355

    .line 832
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 835
    move-result-object v6

    .line 836
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 838
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$b0;->isAttachedToTransitionOverlay()Z

    .line 841
    move-result v6

    .line 842
    if-nez v6, :cond_352

    .line 844
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 847
    move-result-object v4

    .line 848
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 850
    goto :goto_356

    .line 851
    :cond_352
    add-int/lit8 v7, v7, -0x1

    .line 853
    goto :goto_33d

    .line 854
    :cond_355
    move-object v4, v5

    .line 855
    :goto_356
    if-eqz v4, :cond_36a

    .line 857
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->resetInternal()V

    .line 860
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 862
    if-eqz v6, :cond_36a

    .line 864
    iget-object v6, v4, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 866
    instance-of v7, v6, Landroid/view/ViewGroup;

    .line 868
    if-eqz v7, :cond_36a

    .line 870
    check-cast v6, Landroid/view/ViewGroup;

    .line 872
    invoke-static {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$u;->e(Landroid/view/ViewGroup;Z)V

    .line 875
    :cond_36a
    move-object v7, v4

    .line 876
    :cond_36b
    if-nez v7, :cond_3f0

    .line 878
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 880
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 883
    move-result-wide v6

    .line 884
    cmp-long v4, p1, v8

    .line 886
    if-eqz v4, :cond_391

    .line 888
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 890
    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/RecyclerView$t;->b(I)Landroidx/recyclerview/widget/RecyclerView$t$a;

    .line 893
    move-result-object v4

    .line 894
    iget-wide v10, v4, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:J

    .line 896
    const-wide/16 v14, 0x0

    .line 898
    cmp-long v4, v10, v14

    .line 900
    if-eqz v4, :cond_38d

    .line 902
    add-long/2addr v10, v6

    .line 903
    cmp-long v4, v10, p1

    .line 905
    if-gez v4, :cond_38b

    .line 907
    goto :goto_38d

    .line 908
    :cond_38b
    move v4, v3

    .line 909
    goto :goto_38e

    .line 910
    :cond_38d
    :goto_38d
    const/4 v4, 0x1

    .line 911
    :goto_38e
    if-nez v4, :cond_391

    .line 913
    return-object v5

    .line 914
    :cond_391
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 916
    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 918
    invoke-virtual {v10, v4, v13}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 921
    move-result-object v4

    .line 922
    sget-boolean v10, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 924
    if-eqz v10, :cond_3ac

    .line 926
    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 928
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 931
    move-result-object v10

    .line 932
    if-eqz v10, :cond_3ac

    .line 934
    new-instance v11, Ljava/lang/ref/WeakReference;

    .line 936
    invoke-direct {v11, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 939
    iput-object v11, v4, Landroidx/recyclerview/widget/RecyclerView$b0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 941
    :cond_3ac
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 943
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 946
    move-result-wide v10

    .line 947
    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 949
    sub-long/2addr v10, v6

    .line 950
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView$t;->b(I)Landroidx/recyclerview/widget/RecyclerView$t$a;

    .line 953
    move-result-object v6

    .line 954
    iget-wide v12, v6, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:J

    .line 956
    const-wide/16 v14, 0x0

    .line 958
    cmp-long v7, v12, v14

    .line 960
    if-nez v7, :cond_3c2

    .line 962
    goto :goto_3cb

    .line 963
    :cond_3c2
    const-wide/16 v14, 0x4

    .line 965
    div-long/2addr v12, v14

    .line 966
    const-wide/16 v16, 0x3

    .line 968
    mul-long v12, v12, v16

    .line 970
    div-long/2addr v10, v14

    .line 971
    add-long/2addr v10, v12

    .line 972
    :goto_3cb
    iput-wide v10, v6, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:J

    .line 974
    move-object v7, v4

    .line 975
    goto :goto_3f0

    .line 976
    :cond_3cf
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 978
    const-string v3, "Inconsistency detected. Invalid item position "

    .line 980
    const-string v4, "(offset:"

    .line 982
    const-string v5, ").state:"

    .line 984
    invoke-static {v3, v1, v4, v12, v5}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    move-result-object v1

    .line 988
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 990
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 992
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 995
    move-result v3

    .line 996
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 999
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1001
    invoke-static {v3, v1}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1004
    move-result-object v1

    .line 1005
    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1008
    throw v2

    .line 1009
    :cond_3f0
    :goto_3f0
    if-eqz v2, :cond_426

    .line 1011
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1013
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 1015
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 1017
    if-nez v4, :cond_426

    .line 1019
    const/16 v4, 0x2000

    .line 1021
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->hasAnyOfTheFlags(I)Z

    .line 1024
    move-result v6

    .line 1025
    if-eqz v6, :cond_426

    .line 1027
    invoke-virtual {v7, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->setFlags(II)V

    .line 1030
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1032
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 1034
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$y;->j:Z

    .line 1036
    if-eqz v4, :cond_426

    .line 1038
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$l;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 1041
    move-result v4

    .line 1042
    or-int/lit16 v4, v4, 0x1000

    .line 1044
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1046
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$l;

    .line 1048
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 1050
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getUnmodifiedPayloads()Ljava/util/List;

    .line 1053
    move-result-object v11

    .line 1054
    invoke-virtual {v10, v6, v7, v4, v11}, Landroidx/recyclerview/widget/RecyclerView$l;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 1057
    move-result-object v4

    .line 1058
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1060
    invoke-virtual {v6, v7, v4}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;)V

    .line 1063
    :cond_426
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1065
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 1067
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 1069
    if-eqz v4, :cond_437

    .line 1071
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->isBound()Z

    .line 1074
    move-result v4

    .line 1075
    if-eqz v4, :cond_437

    .line 1077
    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    .line 1079
    goto :goto_47e

    .line 1080
    :cond_437
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->isBound()Z

    .line 1083
    move-result v4

    .line 1084
    if-eqz v4, :cond_449

    .line 1086
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->needsUpdate()Z

    .line 1089
    move-result v4

    .line 1090
    if-nez v4, :cond_449

    .line 1092
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 1095
    move-result v4

    .line 1096
    if-eqz v4, :cond_47e

    .line 1098
    :cond_449
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1100
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 1102
    invoke-virtual {v4, v1, v3}, Landroidx/recyclerview/widget/a;->f(II)I

    .line 1105
    move-result v4

    .line 1106
    iput-object v5, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1108
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1110
    iput-object v6, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1112
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 1115
    move-result v6

    .line 1116
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1118
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1121
    move-result-wide v10

    .line 1122
    cmp-long v8, p1, v8

    .line 1124
    if-eqz v8, :cond_482

    .line 1126
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 1128
    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/RecyclerView$t;->b(I)Landroidx/recyclerview/widget/RecyclerView$t$a;

    .line 1131
    move-result-object v6

    .line 1132
    iget-wide v8, v6, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:J

    .line 1134
    const-wide/16 v12, 0x0

    .line 1136
    cmp-long v6, v8, v12

    .line 1138
    if-eqz v6, :cond_47b

    .line 1140
    add-long/2addr v8, v10

    .line 1141
    cmp-long v6, v8, p1

    .line 1143
    if-gez v6, :cond_479

    .line 1145
    goto :goto_47b

    .line 1146
    :cond_479
    move v6, v3

    .line 1147
    goto :goto_47c

    .line 1148
    :cond_47b
    :goto_47b
    const/4 v6, 0x1

    .line 1149
    :goto_47c
    if-nez v6, :cond_482

    .line 1151
    :cond_47e
    :goto_47e
    const/4 v1, 0x1

    .line 1152
    move v4, v3

    .line 1153
    goto/16 :goto_509

    .line 1155
    :cond_482
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1157
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1159
    invoke-virtual {v6, v7, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 1162
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1164
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1167
    move-result-wide v8

    .line 1168
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 1170
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 1173
    move-result v6

    .line 1174
    sub-long/2addr v8, v10

    .line 1175
    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView$t;->b(I)Landroidx/recyclerview/widget/RecyclerView$t$a;

    .line 1178
    move-result-object v4

    .line 1179
    iget-wide v10, v4, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:J

    .line 1181
    const-wide/16 v12, 0x0

    .line 1183
    cmp-long v6, v10, v12

    .line 1185
    if-nez v6, :cond_4a3

    .line 1187
    goto :goto_4ab

    .line 1188
    :cond_4a3
    const-wide/16 v12, 0x4

    .line 1190
    div-long/2addr v10, v12

    .line 1191
    const-wide/16 v14, 0x3

    .line 1193
    mul-long/2addr v10, v14

    .line 1194
    div-long/2addr v8, v12

    .line 1195
    add-long/2addr v8, v10

    .line 1196
    :goto_4ab
    iput-wide v8, v4, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:J

    .line 1198
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1200
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    .line 1203
    move-result v4

    .line 1204
    if-eqz v4, :cond_4fd

    .line 1206
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 1208
    sget-object v6, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 1210
    invoke-static {v4}, Lm0/g0$d;->c(Landroid/view/View;)I

    .line 1213
    move-result v6

    .line 1214
    if-nez v6, :cond_4c4

    .line 1216
    const/4 v6, 0x1

    .line 1217
    invoke-static {v4, v6}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 1220
    goto :goto_4c5

    .line 1221
    :cond_4c4
    const/4 v6, 0x1

    .line 1222
    :goto_4c5
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1224
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/r;

    .line 1226
    if-nez v8, :cond_4cc

    .line 1228
    goto :goto_4fb

    .line 1229
    :cond_4cc
    invoke-virtual {v8}, Landroidx/recyclerview/widget/r;->getItemDelegate()Lm0/a;

    .line 1232
    move-result-object v8

    .line 1233
    instance-of v9, v8, Landroidx/recyclerview/widget/r$a;

    .line 1235
    if-eqz v9, :cond_4f8

    .line 1237
    move-object v9, v8

    .line 1238
    check-cast v9, Landroidx/recyclerview/widget/r$a;

    .line 1240
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1243
    invoke-static {v4}, Lm0/g0;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 1246
    move-result-object v10

    .line 1247
    if-nez v10, :cond_4e1

    .line 1249
    goto :goto_4ef

    .line 1250
    :cond_4e1
    instance-of v5, v10, Lm0/a$a;

    .line 1252
    if-eqz v5, :cond_4ea

    .line 1254
    check-cast v10, Lm0/a$a;

    .line 1256
    iget-object v5, v10, Lm0/a$a;->a:Lm0/a;

    .line 1258
    goto :goto_4ef

    .line 1259
    :cond_4ea
    new-instance v5, Lm0/a;

    .line 1261
    invoke-direct {v5, v10}, Lm0/a;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 1264
    :goto_4ef
    if-eqz v5, :cond_4f8

    .line 1266
    if-eq v5, v9, :cond_4f8

    .line 1268
    iget-object v9, v9, Landroidx/recyclerview/widget/r$a;->b:Ljava/util/WeakHashMap;

    .line 1270
    invoke-virtual {v9, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    :cond_4f8
    invoke-static {v4, v8}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 1276
    :goto_4fb
    move v4, v6

    .line 1277
    goto :goto_4fe

    .line 1278
    :cond_4fd
    const/4 v4, 0x1

    .line 1279
    :goto_4fe
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1281
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 1283
    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 1285
    if-eqz v5, :cond_508

    .line 1287
    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    .line 1289
    :cond_508
    move v1, v4

    .line 1290
    :goto_509
    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 1292
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1295
    move-result-object v5

    .line 1296
    if-nez v5, :cond_51f

    .line 1298
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1300
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1303
    move-result-object v5

    .line 1304
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 1306
    iget-object v6, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 1308
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1311
    goto :goto_537

    .line 1312
    :cond_51f
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1314
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1317
    move-result v6

    .line 1318
    if-nez v6, :cond_535

    .line 1320
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1322
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1325
    move-result-object v5

    .line 1326
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 1328
    iget-object v6, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 1330
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1333
    goto :goto_537

    .line 1334
    :cond_535
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 1336
    :goto_537
    iput-object v7, v5, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 1338
    if-eqz v2, :cond_53e

    .line 1340
    if-eqz v4, :cond_53e

    .line 1342
    move v3, v1

    .line 1343
    :cond_53e
    iput-boolean v3, v5, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    .line 1345
    return-object v7

    .line 1346
    :cond_541
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 1348
    const-string v3, "Invalid item position "

    .line 1350
    const-string v4, "("

    .line 1352
    const-string v5, "). Item count:"

    .line 1354
    invoke-static {v3, v1, v4, v1, v5}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    move-result-object v1

    .line 1358
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1360
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 1362
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 1365
    move-result v3

    .line 1366
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1369
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 1371
    invoke-static {v3, v1}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1374
    move-result-object v1

    .line 1375
    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1378
    throw v2
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mInChangeScrap:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    goto :goto_f

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    :goto_f
    const/4 v0, 0x0

    .line 17
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->mInChangeScrap:Z

    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearReturnedFromScrapFlag()V

    .line 25
    return-void
.end method

.method public final m()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I

    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I

    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 24
    :goto_17
    if-ltz v0, :cond_29

    .line 26
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v1

    .line 32
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I

    .line 34
    if-le v1, v2, :cond_29

    .line 36
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->g(I)V

    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_17

    .line 42
    :cond_29
    return-void
.end method
