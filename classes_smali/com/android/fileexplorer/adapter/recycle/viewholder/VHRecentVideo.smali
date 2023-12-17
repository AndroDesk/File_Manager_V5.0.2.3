.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentVideo;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedEditableView;
.source "VHRecentVideo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedEditableView<",
        "Lcom/android/fileexplorer/model/group/FileGroupChild<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedEditableView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getDragInfo()Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 8
    instance-of v2, v1, Lcom/android/fileexplorer/view/VideoGroupItemR;

    .line 10
    if-eqz v2, :cond_12

    .line 12
    check-cast v1, Lcom/android/fileexplorer/view/VideoGroupItemR;

    .line 14
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/VideoGroupItemR;->getIcon()Landroid/widget/ImageView;

    .line 17
    move-result-object v1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v1, 0x0

    .line 20
    :goto_13
    iput-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    .line 22
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/android/fileexplorer/model/group/FileGroupChild;

    .line 5
    iget-object v0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_1b

    .line 11
    :cond_a
    new-instance v0, Ljava/io/File;

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 15
    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupChild;

    .line 17
    iget-object v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 19
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 21
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    :goto_1b
    return-object v0
.end method

.method public isPinnedView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Lcom/android/fileexplorer/model/group/FileGroupChild;IZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/group/FileGroupChild<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;IZZ)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 3
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p4, p2, Lcom/android/fileexplorer/view/VideoGroupItemR;

    if-eqz p4, :cond_17

    .line 4
    check-cast p2, Lcom/android/fileexplorer/view/VideoGroupItemR;

    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->isChecked()Z

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p4, p3, v0}, Lcom/android/fileexplorer/view/VideoGroupItemR;->bindViewForRV(Lcom/android/fileexplorer/dao/file/FileItem;ZZZ)V

    :cond_17
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupChild;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentVideo;->onBind(Lcom/android/fileexplorer/model/group/FileGroupChild;IZZ)V

    return-void
.end method
