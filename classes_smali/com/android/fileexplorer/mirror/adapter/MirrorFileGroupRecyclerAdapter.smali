.class public Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;
.super Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;
.source "MirrorFileGroupRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter<",
        "Lcom/android/fileexplorer/model/group/FileGroupData<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileGroupRecyclerAdapter"


# instance fields
.field private mUpdateGroupActionMode:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TK;>;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->mUpdateGroupActionMode:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TK;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;-><init>(Ljava/util/List;)V

    .line 2
    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->mUpdateGroupActionMode:Z

    return-void
.end method

.method private refreshGroupView(ILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    if-ne v1, p1, :cond_b

    .line 5
    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p2, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updatePinnedView(IZ)V

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 20
    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 22
    instance-of v1, p2, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 24
    if-nez v1, :cond_1a

    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 30
    move-result-object v1

    .line 31
    instance-of v2, v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    .line 33
    if-eqz v2, :cond_36

    .line 35
    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 37
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updatePinnedView(IZ)V

    .line 40
    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    .line 42
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 44
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 50
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mIsActionMode:Z

    .line 52
    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/group/FileGroupData;IZ)V

    .line 55
    :cond_36
    return-void
.end method


# virtual methods
.method public getEditableItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->getEditableCount(Ljava/util/List;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_15

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 19
    iget-wide v0, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->id:J

    .line 21
    return-wide v0

    .line 22
    :cond_15
    const-wide/16 v0, -0x1

    .line 24
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 9
    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    .line 11
    return p1
.end method

.method public isItemCheckable(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_16

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-gt v0, p1, :cond_b

    .line 11
    goto :goto_16

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 20
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    .line 22
    return p1

    .line 23
    :cond_16
    :goto_16
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/group/FileGroupData;IZ)V
    .registers 6

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    return-void
.end method

.method public bridge synthetic onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZ)V
    .registers 5

    .line 1
    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/group/FileGroupData;IZ)V

    return-void
.end method

.method public setIfUpdateGroupActionMode(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->mUpdateGroupActionMode:Z

    .line 3
    return-void
.end method

.method public updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->mUpdateGroupActionMode:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 9
    invoke-static {p1, v0, p2, v1}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->updateDataByActionMode(ZLjava/util/List;ILjava/util/HashMap;)V

    .line 12
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->refreshGroupView(ILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    .line 15
    :cond_e
    return-void
.end method
