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
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->CHECK_POSITION_SEARCH_DISTANCE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mLastCheckedIndex:I

    new-instance v0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$1;-><init>(Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setRecyclerViewTouchListener()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->lambda$setRecyclerViewTouchListener$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->confirmCheckedPositionsById()V

    return-void
.end method

.method private confirmCheckedPositionsById()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_3a
    cmp-long v4, v2, v4

    if-eqz v4, :cond_a

    add-int/lit8 v4, v1, -0x14

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x14

    iget-object v6, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_51
    if-ge v4, v1, :cond_6f

    iget-object v6, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-nez v6, :cond_6c

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_6f

    :cond_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_6f
    :goto_6f
    if-nez v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_75
    return-void
.end method

.method private getViewByItemId(J)Landroid/view/View;
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method private isItemEditable(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$setRecyclerViewTouchListener$0(Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZ)V

    goto :goto_8

    :cond_1d
    return-void
.end method

.method private notifyOffScreenItemsChanged()V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v0, :cond_25

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    :goto_2d
    if-ge v2, v0, :cond_41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_41
    return-void
.end method

.method private notifyOnScreenItemsChanged()V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_31

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v3

    instance-of v4, v3, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    check-cast v3, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    invoke-interface {v3, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onUpdateEditable(Z)Z

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_31
    return-void
.end method

.method private setItemChecked(IZZ)V
    .registers 9

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v0, p3, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    if-eqz v0, :cond_d

    check-cast p3, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {p3, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->isItemCheckable(I)Z

    move-result p3

    goto :goto_e

    :cond_d
    const/4 p3, 0x0

    :goto_e
    if-nez p3, :cond_11

    return-void

    :cond_11
    iput p1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mLastCheckedIndex:I

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_20

    return-void

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

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eq p2, p3, :cond_b1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setItemChecked1: id = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_82

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setItemChecked2: id = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    :cond_82
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8b
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v3, p3, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    if-eqz v3, :cond_98

    check-cast p3, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-interface {p3, p2, p1, v3}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    :cond_98
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->getViewByItemId(J)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_a9

    const-string p2, "setItemChecked:1 "

    invoke-static {v2, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_b1

    :cond_a9
    const-string p3, "setItemChecked:2 position = "

    invoke-static {p3, p1, v2}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    :cond_b1
    :goto_b1
    return-void
.end method

.method private setRecyclerViewTouchListener()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    if-eqz v0, :cond_d

    new-instance v1, Lcom/android/cloud/fragment/presenter/b;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setOnSelectListener(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnSelectListener;)V

    :cond_d
    return-void
.end method

.method private updateCheckAllButton(ZLmiuix/view/EditActionMode;)V
    .registers 7

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0802e3

    goto :goto_d

    :cond_a
    const v0, 0x7f0802e4

    :goto_d
    const v1, 0x1020019

    const v2, 0x102001a

    const-string v3, ""

    if-eqz p1, :cond_2b

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    move-result p1

    if-eqz p1, :cond_21

    const p1, 0x7f0802ed

    goto :goto_24

    :cond_21
    const p1, 0x7f0802ee

    :goto_24
    invoke-interface {p2, v2, v3, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    invoke-interface {p2, v1, v3, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_3e

    :cond_2b
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    move-result p1

    if-eqz p1, :cond_35

    const p1, 0x7f08032b

    goto :goto_38

    :cond_35
    const p1, 0x7f08032c

    :goto_38
    invoke-interface {p2, v2, v3, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    invoke-interface {p2, v1, v3, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    :goto_3e
    return-void
.end method

.method private updateCheckStatus(Landroid/view/ActionMode;I)V
    .registers 6

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p2, :cond_15

    const p2, 0x7f11025d

    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2d

    :cond_15
    const v1, 0x7f0f0021

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .registers 7

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    if-eqz p2, :cond_37

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOnScreenCheckedView: checked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MirrorEditableRecyclerViewWrapper"

    invoke-static {p4, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    invoke-interface {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onUpdateEditable(Z)Z

    :cond_37
    return-void
.end method


# virtual methods
.method public clearChoices()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getCheckedItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedItemIds()[J
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [J

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2d
    return-object v0
.end method

.method public getCheckedItemIndexs()[I
    .registers 5

    const-string v0, "getCheckedItemIndexs: mCheckedIdStates = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorEditableRecyclerViewWrapper"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    return-object v0
.end method

.method public isAllItemsChecked()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    if-eqz v1, :cond_16

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->getEditableItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public isItemChecked(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isItemIdChecked(J)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v0, p1, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setCheckItemIds(Ljava/util/HashMap;)V

    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    goto :goto_36

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adapter must has stable id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    :goto_36
    if-eqz p1, :cond_3b

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->confirmCheckedPositionsById()V

    :cond_3b
    return-void
.end method

.method public setAllItemsChecked(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllItemsChecked: N = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MirrorEditableRecyclerViewWrapper"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_26
    if-ge v2, v0, :cond_2f

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v3}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_2f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v2, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    if-eqz v2, :cond_3d

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-interface {v0, p1, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    :cond_3d
    iput v1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mLastCheckedIndex:I

    return-void
.end method

.method public setGroupItemsChecked(ZII)V
    .registers 5

    if-le p2, p3, :cond_3

    return-void

    :cond_3
    :goto_3
    if-gt p2, p3, :cond_c

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_c
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZZ)V

    return-void
.end method

.method public setItemChecked(Landroid/view/View;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZ)V

    :cond_c
    return-void
.end method

.method public setItemLinearChecked(I)V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mLastCheckedIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_a
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gt v1, v2, :cond_17

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_17
    iput v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mLastCheckedIndex:I

    return-void
.end method

.method public setItemRadioChecked(IZ)V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->isItemCheckable(I)Z

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_1f

    return-void

    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setItemChecked: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MirrorEditableRecyclerViewWrapper"

    invoke-static {v4, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    iput p1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mLastCheckedIndex:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setItemChecked1: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_66

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6f

    :cond_66
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6f
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v3, v2, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    if-eqz v3, :cond_7c

    check-cast v2, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-interface {v2, p2, p1, v3}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    :cond_7c
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->getViewByItemId(J)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_8d

    const-string p2, "setItemChecked:1 "

    invoke-static {v4, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_95

    :cond_8d
    const-string v2, "setItemChecked:2 position = "

    invoke-static {v2, p1, v4}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    :goto_95
    return-void
.end method

.method public setToggleAllItemsChecked()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->isAllItemsChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setAllItemsChecked(Z)V

    return-void
.end method

.method public swapCheckedStates(II)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    if-eqz v5, :cond_3e

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    return-void
.end method

.method public toggleItemChecked(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->isItemChecked(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZ)V

    :cond_c
    return-void
.end method

.method public toggleItemChecked(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->isItemChecked(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemChecked(IZ)V

    :cond_12
    return-void
.end method

.method public toggleItemRadioChecked(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->isItemChecked(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setItemRadioChecked(IZ)V

    :cond_c
    return-void
.end method
