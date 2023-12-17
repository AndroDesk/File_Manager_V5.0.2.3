.class public Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;
.super Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;
.source "BaseVHMirrorFileListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;",
        "V:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;",
        ">",
        "Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder<",
        "TT;TV;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseVHFileListItem"


# instance fields
.field private mInfo:Lcom/android/fileexplorer/model/FileInfo;


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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 9
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 11
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return-object v0
.end method

.method public getFileInfo(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/fileexplorer/model/FileInfo;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 7
    return-object p1

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public isChoiceMode(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_6

    .line 6
    return v0

    .line 7
    :cond_6
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_17

    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v1, v3, :cond_14

    .line 15
    const/4 p1, 0x3

    .line 16
    if-eq v1, p1, :cond_12

    .line 18
    goto :goto_1b

    .line 19
    :cond_12
    move v0, v2

    .line 20
    goto :goto_1b

    .line 21
    :cond_14
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 26
    xor-int/lit8 v0, p1, 0x1

    .line 28
    :goto_1b
    return v0
.end method

.method public isFolder()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public onAnimationStart(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStart(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 11
    instance-of v2, v1, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 13
    if-eqz v2, :cond_16

    .line 15
    check-cast v1, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 17
    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, p1, v2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    .line 23
    :cond_16
    return-void
.end method

.method public onAnimationStop(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStop(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 11
    instance-of v0, v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 13
    if-eqz v0, :cond_30

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v1, "onAnimationStop animateToVisible = "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "BaseVHFileListItem"

    .line 34
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 39
    check-cast v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 41
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 43
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    .line 49
    :cond_30
    return-void
.end method

.method public onAnimationUpdate(ZF)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationUpdate(ZF)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 11
    instance-of v2, v1, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 13
    if-eqz v2, :cond_15

    .line 15
    check-cast v1, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 17
    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 19
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    .line 22
    :cond_15
    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZZ)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->getFileInfo(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBind: isActionMode = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mChecked = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mViewMode = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", position = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "BaseVHFileListItem"

    invoke-static {p4, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p4, p2, Lcom/android/fileexplorer/view/FileListItemWithFav;

    if-eqz p4, :cond_56

    .line 6
    check-cast p2, Lcom/android/fileexplorer/view/FileListItemWithFav;

    iget-object p4, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez p3, :cond_50

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->isChoiceMode(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 p1, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    const/4 p1, 0x1

    :goto_51
    iget-boolean p3, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

    invoke-virtual {p2, p4, p1, p3}, Lcom/android/fileexplorer/view/FileListItemWithFav;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZ)V

    :cond_56
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

    return-void
.end method
