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
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem$1;

    .line 6
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;)V

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mCountDownTask:Ljava/lang/Runnable;

    .line 11
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
    const v2, 0x7f0a0185

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    .line 17
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

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

.method public getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;
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

.method public getFileListItemVO(Ljava/lang/Object;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 3
    return-object p1
.end method

.method public isChoiceMode(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

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
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onAnimationStart(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 11
    instance-of v2, v1, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;

    .line 13
    if-eqz v2, :cond_16

    .line 15
    check-cast v1, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;

    .line 17
    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 19
    invoke-virtual {v1, v0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->updateViewByCheckedStatueChange(ZZ)V

    .line 22
    goto :goto_22

    .line 23
    :cond_16
    instance-of v2, v1, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 25
    if-eqz v2, :cond_22

    .line 27
    check-cast v1, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 29
    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v1, v0, p1, v2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    .line 35
    :cond_22
    :goto_22
    return-void
.end method

.method public onAnimationStop(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onAnimationStop(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

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
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

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
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onAnimationUpdate(ZF)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

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

.method public onBind(Ljava/lang/Object;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZZ)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 11
    goto :goto_1b

    .line 12
    :cond_b
    instance-of v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 14
    if-eqz v0, :cond_1b

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->getFileListItemVO(Ljava/lang/Object;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfoVO:Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 22
    iget-object v0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 24
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 26
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 28
    :cond_1b
    :goto_1b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 31
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 33
    instance-of p4, p2, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;

    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-eqz p4, :cond_3d

    .line 39
    instance-of p4, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 41
    if-eqz p4, :cond_3d

    .line 43
    check-cast p2, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;

    .line 45
    iget-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfoVO:Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 47
    if-nez p3, :cond_36

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->isChoiceMode(Ljava/lang/Object;)Z

    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_37

    .line 55
    :cond_36
    move v0, v1

    .line 56
    :cond_37
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    .line 58
    invoke-virtual {p2, p4, v0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->onBind(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZ)V

    .line 61
    goto :goto_53

    .line 62
    :cond_3d
    instance-of p4, p2, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 64
    if-eqz p4, :cond_53

    .line 66
    check-cast p2, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 68
    iget-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 70
    if-nez p3, :cond_4d

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->isChoiceMode(Ljava/lang/Object;)Z

    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_4e

    .line 78
    :cond_4d
    move v0, v1

    .line 79
    :cond_4e
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    .line 81
    invoke-virtual {p2, p4, v0, p1}, Lcom/android/fileexplorer/view/FileListItemWithFav;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZ)V

    .line 84
    :cond_53
    :goto_53
    return-void
.end method

.method public processHover(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_17

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->isFolder()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1c

    .line 9
    const-string p1, "BaseVHFileListItem"

    .line 11
    const-string v0, "processHover isHover isFolder"

    .line 13
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mCountDownTask:Ljava/lang/Runnable;

    .line 18
    const-wide/16 v0, 0x320

    .line 20
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseVHFileListItem;->mCountDownTask:Ljava/lang/Runnable;

    .line 26
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method
