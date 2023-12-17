.class public abstract Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MirrorFileRecyclerAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
        "TT;>;>;",
        "Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileRecyclerAdapter"


# instance fields
.field public mCheckedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mIsActionMode:Z

.field private mListener:Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

.field public renameIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->renameIndex:I

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 9
    return-void
.end method


# virtual methods
.method public getCheckedItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public getCheckedItems()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 8
    if-eqz v1, :cond_40

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 12
    if-eqz v1, :cond_40

    .line 14
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_14

    .line 20
    goto :goto_40

    .line 21
    :cond_14
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_40

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/Integer;

    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v2

    .line 47
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 49
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 52
    move-result v3

    .line 53
    if-le v3, v2, :cond_1e

    .line 55
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 57
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_1e

    .line 65
    :cond_40
    :goto_40
    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isItemChecked(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    return p1
.end method

.method public abstract onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "TT;>;TT;IZ)V"
        }
    .end annotation
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->onBindViewHolder(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "onBindViewHolder mDatas is empty, i = "

    const-string v0, "FileRecyclerAdapter"

    .line 3
    invoke-static {p1, p2, v0}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 4
    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mIsActionMode:Z

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZ)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mListener:Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/mirror/viewholder/MirrorViewHolderFactory;->getView(Landroid/view/ViewGroup;ILcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setActionModeState(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mIsActionMode:Z

    .line 3
    return-void
.end method

.method public setCheckItemIds(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 3
    return-void
.end method

.method public setIsPendingActionModeAnim(Z)V
    .registers 2

    return-void
.end method

.method public setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mListener:Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    .line 3
    return-void
.end method
