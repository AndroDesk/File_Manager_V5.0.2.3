.class public Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;
.super Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;
.source "FileSimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public mViewType:I


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
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->mViewType:I

    return-void
.end method


# virtual methods
.method public getEditableItemCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_16
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->mViewType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    :cond_6
    return p1
.end method

.method public isItemCheckable(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "TT;>;TT;IZZ)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    return-void
.end method

.method public setViewType(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->mViewType:I

    return-void
.end method

.method public updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 4

    return-void
.end method
