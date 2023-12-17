.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;
.source "BaseVHFileListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseVHFileListItem"


# instance fields
.field private mCountDownTask:Ljava/lang/Runnable;

.field private mInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mInfoVO:Lcom/android/fileexplorer/view/fileitem/FileListItemVO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mCountDownTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getDragInfo()Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x7f032c13

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method public getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;
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

.method public getFileListItemVO(Ljava/lang/Object;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;"
        }
    .end annotation

    check-cast p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    return-object p1
.end method

.method public isChoiceMode(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

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

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

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

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onAnimationStart(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;

    if-eqz v2, :cond_16

    check-cast v1, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;

    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-virtual {v1, v0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->updateViewByCheckedStatueChange(ZZ)V

    goto :goto_22

    :cond_16
    instance-of v2, v1, Lcom/android/fileexplorer/view/FileListItemWithFav;

    if-eqz v2, :cond_22

    check-cast v1, Lcom/android/fileexplorer/view/FileListItemWithFav;

    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    :cond_22
    :goto_22
    return-void
.end method

.method public onAnimationStop(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onAnimationStop(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

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

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    :cond_30
    return-void
.end method

.method public onAnimationUpdate(ZF)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onAnimationUpdate(ZF)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

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

.method public onBind(Ljava/lang/Object;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZZ)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    goto :goto_1b

    :cond_b
    instance-of v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->getFileListItemVO(Ljava/lang/Object;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfoVO:Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    iget-object v0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    :cond_1b
    :goto_1b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p4, p2, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_3d

    instance-of p4, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    if-eqz p4, :cond_3d

    check-cast p2, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;

    iget-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfoVO:Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    if-nez p3, :cond_36

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->isChoiceMode(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    :cond_36
    move v0, v1

    :cond_37
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    invoke-virtual {p2, p4, v0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->onBind(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZ)V

    goto :goto_53

    :cond_3d
    instance-of p4, p2, Lcom/android/fileexplorer/view/FileListItemWithFav;

    if-eqz p4, :cond_53

    check-cast p2, Lcom/android/fileexplorer/view/FileListItemWithFav;

    iget-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez p3, :cond_4d

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->isChoiceMode(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    :cond_4d
    move v0, v1

    :cond_4e
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    invoke-virtual {p2, p4, v0, p1}, Lcom/android/fileexplorer/view/FileListItemWithFav;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZ)V

    :cond_53
    :goto_53
    return-void
.end method

.method public processHover(Z)V
    .registers 4

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->isFolder()Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "BaseVHFileListItem"

    const-string v0, "processHover isHover isFolder"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mCountDownTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x320

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    goto :goto_1c

    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mCountDownTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    :cond_1c
    :goto_1c
    return-void
.end method
