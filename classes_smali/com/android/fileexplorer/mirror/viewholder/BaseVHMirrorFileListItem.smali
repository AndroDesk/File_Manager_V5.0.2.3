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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    return-void
.end method


# virtual methods
.method public getDragInfo()Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x7f032c13

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

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

    instance-of v0, p1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public isChoiceMode(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    :cond_6
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    const/4 v3, 0x2

    if-eq v1, v3, :cond_14

    const/4 p1, 0x3

    if-eq v1, p1, :cond_12

    goto :goto_1b

    :cond_12
    move v0, v2

    goto :goto_1b

    :cond_14
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    goto :goto_1b

    :cond_17
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    xor-int/lit8 v0, p1, 0x1

    :goto_1b
    return v0
.end method

.method public isFolder()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onAnimationStart(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStart(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/fileexplorer/view/FileListItemWithFav;

    if-eqz v2, :cond_16

    check-cast v1, Lcom/android/fileexplorer/view/FileListItemWithFav;

    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    :cond_16
    return-void
.end method

.method public onAnimationStop(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStop(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationStop animateToVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseVHFileListItem"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    :cond_30
    return-void
.end method

.method public onAnimationUpdate(ZF)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationUpdate(ZF)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/fileexplorer/view/FileListItemWithFav;

    if-eqz v2, :cond_15

    check-cast v1, Lcom/android/fileexplorer/view/FileListItemWithFav;

    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

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

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->getFileInfo(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

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

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p4, p2, Lcom/android/fileexplorer/view/FileListItemWithFav;

    if-eqz p4, :cond_56

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

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/BaseVHMirrorFileListItem;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

    return-void
.end method
