.class public Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;
.super Ljava/lang/Object;
.source "MirrorEditableRecyclerViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ":",
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MirrorEditableRecyclerViewWrapper"


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation
.end field

.field private mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

.field private mCheckedIdStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mLastCheckedIndex:I

.field private final mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mLastCheckedIndex:I

    .line 7
    new-instance v0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$1;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$1;-><init>(Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;)V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 14
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 16
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setRecyclerViewTouchListener()V

    .line 19
    new-instance p1, Ljava/util/HashMap;

    .line 21
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 26
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->lambda$setRecyclerViewTouchListener$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->confirmCheckedPositionsById()V

    .line 4
    return-void
.end method

.method private confirmCheckedPositionsById()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_75

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Long;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 32
    move-result-wide v2

    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Integer;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v1

    .line 43
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 45
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 48
    move-result-wide v4

    .line 49
    const-wide/16 v6, -0x1

    .line 51
    cmp-long v6, v4, v6

    .line 53
    if-nez v6, :cond_3a

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 58
    goto :goto_a

    .line 59
    :cond_3a
    cmp-long v4, v2, v4

    .line 61
    if-eqz v4, :cond_a

    .line 63
    add-int/lit8 v4, v1, -0x14

    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 69
    move-result v4

    .line 70
    add-int/lit8 v1, v1, 0x14

    .line 72
    iget-object v6, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 74
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 77
    move-result v6

    .line 78
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 81
    move-result v1

    .line 82
    :goto_51
    if-ge v4, v1, :cond_6f

    .line 84
    iget-object v6, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 86
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 89
    move-result-wide v6

    .line 90
    cmp-long v6, v2, v6

    .line 92
    if-nez v6, :cond_6c

    .line 94
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 96
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    move-result-object v2

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 v5, 0x1

    .line 108
    goto :goto_6f

    .line 109
    :cond_6c
    add-int/lit8 v4, v4, 0x1

    .line 111
    goto :goto_51

    .line 112
    :cond_6f
    :goto_6f
    if-nez v5, :cond_a

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 117
    goto :goto_a

    .line 118
    :cond_75
    return-void
.end method

.method private getViewByItemId(J)Landroid/view/View;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 18
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    .line 21
    move-result-wide v3

    .line 22
    cmp-long v3, v3, p1

    .line 24
    if-nez v3, :cond_1a

    .line 26
    return-object v2

    .line 27
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_7

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method private isItemEditable(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$setRecyclerViewTouchListener$0(Ljava/util/List;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1d

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZ)V

    .line 29
    goto :goto_8

    .line 30
    :cond_1d
    return-void
.end method

.method private notifyOffScreenItemsChanged()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 9
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_d
    if-ge v3, v0, :cond_25

    .line 16
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 18
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v4

    .line 22
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 24
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 27
    move-result v4

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 37
    goto :goto_d

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 40
    if-eqz v0, :cond_41

    .line 42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 45
    move-result v0

    .line 46
    :goto_2d
    if-ge v2, v0, :cond_41

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_3e

    .line 58
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 60
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 63
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_2d

    .line 66
    :cond_41
    return-void
.end method

.method private notifyOnScreenItemsChanged()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_31

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 18
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 21
    move-result-object v3

    .line 22
    instance-of v4, v3, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 24
    if-eqz v4, :cond_2e

    .line 26
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 28
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 30
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    .line 33
    move-result-wide v5

    .line 34
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    check-cast v3, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 44
    invoke-interface {v3, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onUpdateEditable(Z)Z

    .line 47
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_7

    .line 50
    :cond_31
    return-void
.end method

.method private setItemChecked(IZZ)V
    .registers 9

    .line 4
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v0, p3, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    if-eqz v0, :cond_d

    .line 5
    check-cast p3, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {p3, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->isItemCheckable(I)Z

    move-result p3

    goto :goto_e

    :cond_d
    const/4 p3, 0x0

    :goto_e
    if-nez p3, :cond_11

    return-void

    .line 6
    :cond_11
    iput p1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mLastCheckedIndex:I

    .line 7
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_20

    return-void

    .line 8
    :cond_20
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setItemChecked: id = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", pos = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "MirrorEditableRecyclerViewWrapper"

    invoke-static {v2, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eq p2, p3, :cond_b1

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setItemChecked1: id = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_82

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setItemChecked2: id = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    .line 13
    :cond_82
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :goto_8b
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v3, p3, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    if-eqz v3, :cond_98

    .line 15
    check-cast p3, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-interface {p3, p2, p1, v3}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    .line 16
    :cond_98
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->getViewByItemId(J)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_a9

    const-string p2, "setItemChecked:1 "

    .line 17
    invoke-static {v2, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_b1

    :cond_a9
    const-string p3, "setItemChecked:2 position = "

    .line 19
    invoke-static {p3, p1, v2}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    :cond_b1
    :goto_b1
    return-void
.end method

.method private setRecyclerViewTouchListener()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    new-instance v1, Lcom/android/cloud/fragment/presenter/b;

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setOnSelectListener(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;)V

    .line 14
    :cond_d
    return-void
.end method

.method private updateCheckAllButton(ZLmiuix/view/EditActionMode;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    const v0, 0x7f0802e3

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    const v0, 0x7f0802e4

    .line 14
    :goto_d
    const v1, 0x1020019

    .line 17
    const v2, 0x102001a

    .line 20
    const-string v3, ""

    .line 22
    if-eqz p1, :cond_2b

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_21

    .line 30
    const p1, 0x7f0802ed

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    const p1, 0x7f0802ee

    .line 37
    :goto_24
    invoke-interface {p2, v2, v3, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 40
    invoke-interface {p2, v1, v3, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 43
    goto :goto_3e

    .line 44
    :cond_2b
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_35

    .line 50
    const p1, 0x7f08032b

    .line 53
    goto :goto_38

    .line 54
    :cond_35
    const p1, 0x7f08032c

    .line 57
    :goto_38
    invoke-interface {p2, v2, v3, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 60
    invoke-interface {p2, v1, v3, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 63
    :goto_3e
    return-void
.end method

.method private updateCheckStatus(Landroid/view/ActionMode;I)V
    .registers 6

    .line 1
    if-eqz p1, :cond_2d

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    if-nez p2, :cond_15

    .line 11
    const p2, 0x7f11025d

    .line 14
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    goto :goto_2d

    .line 22
    :cond_15
    const v1, 0x7f0f0021

    .line 25
    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x1

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p2

    .line 37
    aput-object p2, v1, v2

    .line 39
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method

.method private updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .registers 7

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 6
    move-result-object p1

    .line 7
    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 9
    if-eqz p2, :cond_37

    .line 11
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 13
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    move-result p2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v1, "updateOnScreenCheckedView: checked = "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", id = "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p3

    .line 46
    const-string p4, "MirrorEditableRecyclerViewWrapper"

    .line 48
    invoke-static {p4, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 53
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onUpdateEditable(Z)Z

    .line 56
    :cond_37
    return-void
.end method


# virtual methods
.method public clearChoices()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    return-object v0
.end method

.method public getCheckedItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCheckedItemIds()[J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 11
    move-result v0

    .line 12
    new-array v0, v0, [J

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 16
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2d

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Long;

    .line 37
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 40
    move-result-wide v3

    .line 41
    aput-wide v3, v0, v2

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_18

    .line 46
    :cond_2d
    return-object v0
.end method

.method public getCheckedItemIndexs()[I
    .registers 5

    .line 1
    const-string v0, "getCheckedItemIndexs: mCheckedIdStates = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "MirrorEditableRecyclerViewWrapper"

    .line 22
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 32
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 35
    move-result v0

    .line 36
    new-array v0, v0, [I

    .line 38
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 40
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x0

    .line 49
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_45

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/Integer;

    .line 61
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result v3

    .line 65
    aput v3, v0, v2

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_30

    .line 70
    :cond_45
    return-object v0
.end method

.method public getCheckedItems()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public isAllItemsChecked()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 5
    if-eqz v1, :cond_16

    .line 7
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 9
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->getEditableItemCount()I

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    return v0
.end method

.method public isItemChecked(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public isItemIdChecked(J)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 12
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 17
    instance-of v0, p1, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 19
    if-eqz v0, :cond_1c

    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 24
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 26
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setCheckItemIds(Ljava/util/HashMap;)V

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 31
    if-eqz v0, :cond_36

    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2e

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 43
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 46
    goto :goto_36

    .line 47
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string v0, "adapter must has stable id"

    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1

    .line 55
    :cond_36
    :goto_36
    if-eqz p1, :cond_3b

    .line 57
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->confirmCheckedPositionsById()V

    .line 60
    :cond_3b
    return-void
.end method

.method public setAllItemsChecked(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "setAllItemsChecked: N = "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, ", value = "

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    const-string v2, "MirrorEditableRecyclerViewWrapper"

    .line 34
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x0

    .line 38
    move v2, v1

    .line 39
    :goto_26
    if-ge v2, v0, :cond_2f

    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-direct {p0, v2, p1, v3}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZZ)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_26

    .line 48
    :cond_2f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 50
    instance-of v2, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 52
    if-eqz v2, :cond_3d

    .line 54
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 56
    const/4 v2, -0x1

    .line 57
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 59
    invoke-interface {v0, p1, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    .line 62
    :cond_3d
    iput v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mLastCheckedIndex:I

    .line 64
    return-void
.end method

.method public setGroupItemsChecked(ZII)V
    .registers 5

    .line 1
    if-le p2, p3, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    :goto_3
    if-gt p2, p3, :cond_c

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p2, p1, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZZ)V

    .line 10
    add-int/lit8 p2, p2, 0x1

    .line 12
    goto :goto_3

    .line 13
    :cond_c
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZZ)V

    return-void
.end method

.method public setItemChecked(Landroid/view/View;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZ)V

    :cond_c
    return-void
.end method

.method public setItemLinearChecked(I)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mLastCheckedIndex:I

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    .line 7
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result v1

    .line 11
    :goto_a
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result v2

    .line 15
    if-gt v1, v2, :cond_17

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p0, v1, v2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZ)V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_a

    .line 24
    :cond_17
    iput v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mLastCheckedIndex:I

    .line 26
    return-void
.end method

.method public setItemRadioChecked(IZ)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_e

    .line 8
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 10
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->isItemCheckable(I)Z

    .line 13
    move-result v0

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v0, v2

    .line 16
    :goto_f
    if-nez v0, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 21
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 24
    move-result-wide v0

    .line 25
    const-wide/16 v3, -0x1

    .line 27
    cmp-long v3, v0, v3

    .line 29
    if-nez v3, :cond_1f

    .line 31
    return-void

    .line 32
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v4, "setItemChecked: id = "

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    const-string v4, ", pos = "

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    const-string v4, "MirrorEditableRecyclerViewWrapper"

    .line 59
    invoke-static {v4, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    .line 65
    iput p1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mLastCheckedIndex:I

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v3, "setItemChecked1: id = "

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    invoke-static {v4, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-eqz p2, :cond_66

    .line 89
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    move-result-object v3

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    goto :goto_6f

    .line 103
    :cond_66
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_6f
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 114
    instance-of v3, v2, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 116
    if-eqz v3, :cond_7c

    .line 118
    check-cast v2, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 120
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 122
    invoke-interface {v2, p2, p1, v3}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    .line 125
    :cond_7c
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->getViewByItemId(J)Landroid/view/View;

    .line 128
    move-result-object p2

    .line 129
    if-nez p2, :cond_8d

    .line 131
    const-string p2, "setItemChecked:1 "

    .line 133
    invoke-static {v4, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 138
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 141
    goto :goto_95

    .line 142
    :cond_8d
    const-string v2, "setItemChecked:2 position = "

    .line 144
    invoke-static {v2, p1, v4}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 150
    :goto_95
    return-void
.end method

.method public setToggleAllItemsChecked()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->isAllItemsChecked()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    .line 10
    return-void
.end method

.method public swapCheckedStates(II)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 19
    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 22
    move-result-wide v3

    .line 23
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 32
    move-result v5

    .line 33
    if-eqz v2, :cond_2f

    .line 35
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_2f
    if-eqz v5, :cond_3e

    .line 50
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 52
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_3e
    return-void
.end method

.method public toggleItemChecked(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->isItemChecked(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZ)V

    :cond_c
    return-void
.end method

.method public toggleItemChecked(Landroid/view/View;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->isItemChecked(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZ)V

    :cond_12
    return-void
.end method

.method public toggleItemRadioChecked(I)V
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_c

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->isItemChecked(I)Z

    .line 7
    move-result v0

    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemRadioChecked(IZ)V

    .line 13
    :cond_c
    return-void
.end method
