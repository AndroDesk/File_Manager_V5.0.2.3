.class public Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchBodyItem;
.super Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;
.source "VHMirrorSearchBodyItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;",
        ">",
        "Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder<",
        "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;TV;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VhSearchBodyItem"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getDragInfo()Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 8
    const v2, 0x7f0a0185

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    .line 17
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 5
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_17

    .line 11
    :cond_a
    new-instance v0, Ljava/io/File;

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 15
    check-cast v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 17
    iget-object v1, v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 19
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 21
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    :goto_17
    return-object v0
.end method

.method public onAnimationStart(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStart(Z)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    instance-of v1, v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 8
    if-eqz v1, :cond_17

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 14
    check-cast v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 16
    iget-object v1, v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 18
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    .line 24
    :cond_17
    return-void
.end method

.method public onAnimationStop(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStop(Z)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    instance-of v1, v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 8
    if-eqz v1, :cond_17

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 14
    check-cast v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 16
    iget-object v1, v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 18
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    .line 24
    :cond_17
    return-void
.end method

.method public onAnimationUpdate(ZF)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationUpdate(ZF)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    instance-of v1, v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 8
    if-eqz v1, :cond_16

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 14
    check-cast v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 16
    iget-object v1, v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 18
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 20
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    .line 23
    :cond_16
    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/adapter/search/SearchResultData;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;IZZ)V"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

    .line 4
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p2, p2, Lcom/android/fileexplorer/view/FileListItemWithFav;

    if-eqz p2, :cond_3c

    const-string p2, "data.fileInfo = "

    .line 5
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 6
    iget-object p4, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "VhSearchBodyItem"

    invoke-static {p4, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p2, Lcom/android/fileexplorer/view/FileListItemWithFav;

    iget-object p4, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez p3, :cond_2e

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->isChoiceMode(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Z

    move-result p3

    if-eqz p3, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 p3, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 p3, 0x1

    :goto_2f
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

    iget-object p1, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    const-string v1, "searchText"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p3, v0, p1}, Lcom/android/fileexplorer/view/FileListItemWithFav;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    :cond_3c
    return-void
.end method

.method public bridge synthetic onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchBodyItem;->onBind(Lcom/android/fileexplorer/adapter/search/SearchResultData;IZZ)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 2
    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchBodyItem;->onBind(Lcom/android/fileexplorer/adapter/search/SearchResultData;IZZ)V

    return-void
.end method
