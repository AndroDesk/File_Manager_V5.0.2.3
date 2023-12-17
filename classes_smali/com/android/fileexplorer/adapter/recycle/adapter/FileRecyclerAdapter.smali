.class public abstract Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FileRecyclerAdapter.java"

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

.field public mIsPendingActionModeAnim:Z

.field private mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
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
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public getCheckedItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

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
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 8
    if-eqz v1, :cond_40

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

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
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

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
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 49
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 52
    move-result v3

    .line 53
    if-le v3, v2, :cond_1e

    .line 55
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

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

.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

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

.method public abstract onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "TT;>;TT;IZZ)V"
        }
    .end annotation
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->onBindViewHolder(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

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
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->isItemChecked(I)Z

    move-result v0

    .line 5
    instance-of v1, p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    if-eqz v1, :cond_1e

    .line 6
    move-object v1, p1

    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->setChecked(Z)V

    .line 7
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mIsActionMode:Z

    iget-boolean v6, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mIsPendingActionModeAnim:Z

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZZ)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_23

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d006c

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getCacheView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    new-instance p2, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileListItem;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    invoke-direct {p2, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileListItem;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-object p2

    .line 5
    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/ViewHolderFactory;->getView(Landroid/view/ViewGroup;ILcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setActionModeState(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mIsActionMode:Z

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
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 3
    return-void
.end method

.method public setIsPendingActionModeAnim(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mIsPendingActionModeAnim:Z

    .line 3
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 3
    return-void
.end method
