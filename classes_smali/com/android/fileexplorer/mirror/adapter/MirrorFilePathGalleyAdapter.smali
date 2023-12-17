.class public Lcom/android/fileexplorer/mirror/adapter/MirrorFilePathGalleyAdapter;
.super Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;
.source "MirrorFilePathGalleyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter<",
        "Lcom/android/fileexplorer/model/PathSegment;",
        ">;"
    }
.end annotation


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
            "Lcom/android/fileexplorer/model/PathSegment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/PathSegment;

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getUniqueId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_19
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/PathSegment;IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "Lcom/android/fileexplorer/model/PathSegment;",
            ">;",
            "Lcom/android/fileexplorer/model/PathSegment;",
            "IZ)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p3, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPathGalleyItem;->setIfLast(Z)V

    :cond_14
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZ)V

    return-void
.end method

.method public bridge synthetic onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZ)V
    .registers 5

    check-cast p2, Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/adapter/MirrorFilePathGalleyAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/PathSegment;IZ)V

    return-void
.end method
