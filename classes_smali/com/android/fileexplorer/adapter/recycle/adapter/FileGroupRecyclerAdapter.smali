.class public Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;
.super Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;
.source "FileGroupRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter<",
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

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;->mUpdateGroupActionMode:Z

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

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;-><init>(Ljava/util/List;)V

    iput-boolean p2, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;->mUpdateGroupActionMode:Z

    return-void
.end method

.method private refreshGroupView(ILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v1, p1, :cond_b

    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    const/4 p1, 0x1

    invoke-virtual {p2, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updatePinnedView(IZ)V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget v4, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    instance-of p1, p2, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    instance-of v1, p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    if-eqz v1, :cond_3b

    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-virtual {p2, v4, v0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updatePinnedView(IZ)V

    move-object v2, p1

    check-cast v2, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget-boolean v5, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mIsActionMode:Z

    iget-boolean v6, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mIsPendingActionModeAnim:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/group/FileGroupData;IZZ)V

    :cond_3b
    return-void
.end method


# virtual methods
.method public getEditableItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->getEditableCount(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

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

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    return p1
.end method

.method public isItemCheckable(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_b

    goto :goto_16

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

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

.method public onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/group/FileGroupData;IZZ)V
    .registers 6

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    return-void
.end method

.method public bridge synthetic onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZZ)V
    .registers 6

    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupData;

    invoke-virtual/range {p0 .. p5}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/group/FileGroupData;IZZ)V

    return-void
.end method

.method public setIfUpdateGroupActionMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;->mUpdateGroupActionMode:Z

    return-void
.end method

.method public updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;->mUpdateGroupActionMode:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, v0, p2, v1}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->updateDataByActionMode(ZLjava/util/List;ILjava/util/HashMap;)V

    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileGroupRecyclerAdapter;->refreshGroupView(ILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    :cond_e
    return-void
.end method
