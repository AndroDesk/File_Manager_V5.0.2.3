.class public Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;
.super Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;
.source "MirrorFileSimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mViewType:I


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
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;-><init>(Ljava/util/List;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->mViewType:I

    .line 7
    return-void
.end method


# virtual methods
.method public getEditableItemCount()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_16

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_16

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 20
    move-result p1

    .line 21
    int-to-long v0, p1

    .line 22
    return-wide v0

    .line 23
    :cond_16
    const-wide/16 v0, -0x1

    .line 25
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    iget p1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->mViewType:I

    .line 3
    const/4 v0, -0x1

    .line 4
    if-ne p1, v0, :cond_6

    .line 6
    const/4 p1, 0x0

    .line 7
    :cond_6
    return p1
.end method

.method public isItemCheckable(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "TT;>;TT;IZ)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 5
    return-void
.end method

.method public setViewType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->mViewType:I

    .line 3
    return-void
.end method

.method public updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 4

    return-void
.end method
