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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

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

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;-><init>(Ljava/util/List;)V

    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->mUpdateGroupActionMode:Z

    return-void
.end method

.method private refreshGroupView(ILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v1, p1, :cond_b

    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/4 p1, 0x1

    invoke-virtual {p2, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updatePinnedView(IZ)V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    instance-of v1, p2, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    if-nez v1, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v1

    instance-of v2, v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    if-eqz v2, :cond_36

    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updatePinnedView(IZ)V

    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mIsActionMode:Z

    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/group/FileGroupData;IZ)V

    :cond_36
    return-void
.end method


# virtual methods
.method public getEditableItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->getEditableCount(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget-wide v0, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->id:J

    return-wide v0

    :cond_15
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    return p1
.end method

.method public isItemCheckable(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_b

    goto :goto_16

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget-boolean p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    return p1

    :cond_16
    :goto_16
    const/4 p1, 0x0

    return p1
.end method

.method public onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/group/FileGroupData;IZ)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    return-void
.end method

.method public bridge synthetic onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZ)V
    .registers 5

    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/group/FileGroupData;IZ)V

    return-void
.end method

.method public setIfUpdateGroupActionMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->mUpdateGroupActionMode:Z

    return-void
.end method

.method public updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->mUpdateGroupActionMode:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, v0, p2, v1}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->updateDataByActionMode(ZLjava/util/List;ILjava/util/HashMap;)V

    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->refreshGroupView(ILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    :cond_e
    return-void
.end method
