.class public Lcom/android/fileexplorer/mirror/viewholder/VHMirrorDocGridItem;
.super Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;
.source "VHMirrorDocGridItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;",
        ">",
        "Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        "TV;>;"
    }
.end annotation


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
    instance-of v2, v1, Lcom/android/fileexplorer/view/DocsGridItemWithFav;

    .line 10
    if-eqz v2, :cond_13

    .line 12
    check-cast v1, Lcom/android/fileexplorer/view/DocsGridItemWithFav;

    .line 14
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->getDocImageView()Landroid/widget/ImageView;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    .line 20
    :cond_13
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 9
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 11
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 13
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return-object v0
.end method

.method public bridge synthetic onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorDocGridItem;->onBind(Lcom/android/fileexplorer/model/FileInfo;IZZ)V

    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/model/FileInfo;IZZ)V
    .registers 5

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p2, p1, Lcom/android/fileexplorer/view/DocsGridItemWithFav;

    if-eqz p2, :cond_16

    .line 5
    check-cast p1, Lcom/android/fileexplorer/view/DocsGridItemWithFav;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->isChecked()Z

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZ)V

    :cond_16
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 2
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorDocGridItem;->onBind(Lcom/android/fileexplorer/model/FileInfo;IZZ)V

    return-void
.end method
