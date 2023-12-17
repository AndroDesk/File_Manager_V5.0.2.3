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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedEditableView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-void
.end method


# virtual methods
.method public getDragInfo()Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/fileexplorer/view/VideoGroupItemR;

    if-eqz v2, :cond_12

    check-cast v1, Lcom/android/fileexplorer/view/VideoGroupItemR;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/VideoGroupItemR;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    iput-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/model/group/FileGroupChild;

    iget-object v0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_1b

    :cond_a
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupChild;

    iget-object v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p4, p2, Lcom/android/fileexplorer/view/VideoGroupItemR;

    if-eqz p4, :cond_17

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

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupChild;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentVideo;->onBind(Lcom/android/fileexplorer/model/group/FileGroupChild;IZZ)V

    return-void
.end method
