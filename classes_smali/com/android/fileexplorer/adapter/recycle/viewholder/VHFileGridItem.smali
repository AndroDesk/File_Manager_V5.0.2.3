.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;
.source "VHFileGridItem.java"


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
.field private static final TAG:Ljava/lang/String; = "VHFileGridItem"


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
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem$1;

    .line 6
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;)V

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mCountDownTask:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

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
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_28

    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v1, v3, :cond_12

    .line 13
    const/4 p1, 0x3

    .line 14
    if-eq v1, p1, :cond_10

    .line 16
    goto :goto_40

    .line 17
    :cond_10
    move v0, v2

    .line 18
    goto :goto_40

    .line 19
    :cond_12
    instance-of v1, p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 21
    if-eqz v1, :cond_1d

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    .line 26
    move-result-object p1

    .line 27
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 29
    goto :goto_40

    .line 30
    :cond_1d
    instance-of v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 32
    if-eqz v1, :cond_40

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->getFileListItemVO(Ljava/lang/Object;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 37
    move-result-object p1

    .line 38
    iget-boolean v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    .line 40
    goto :goto_40

    .line 41
    :cond_28
    instance-of v1, p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 43
    if-eqz v1, :cond_35

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    .line 48
    move-result-object p1

    .line 49
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 51
    :goto_32
    xor-int/lit8 v0, p1, 0x1

    .line 53
    goto :goto_40

    .line 54
    :cond_35
    instance-of v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 56
    if-eqz v1, :cond_40

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->getFileListItemVO(Ljava/lang/Object;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 61
    move-result-object p1

    .line 62
    iget-boolean p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    .line 64
    goto :goto_32

    .line 65
    :cond_40
    :goto_40
    return v0
.end method

.method public isFolder()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 7
    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public onAnimationStart(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onAnimationStart(Z)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    check-cast v0, Lcom/android/fileexplorer/view/FileGridItemWithFav;

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->updateViewByCheckedStatueChange(Z)V

    .line 11
    return-void
.end method

.method public onBind(Ljava/lang/Object;IZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZZ)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 4
    instance-of p4, p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    if-eqz p4, :cond_e

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    .line 11
    move-result-object p4

    .line 12
    iput-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 14
    goto :goto_1e

    .line 15
    :cond_e
    instance-of p4, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 17
    if-eqz p4, :cond_1e

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->getFileListItemVO(Ljava/lang/Object;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 22
    move-result-object p4

    .line 23
    iput-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mInfoVO:Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 25
    iget-object p4, p4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 27
    check-cast p4, Lcom/android/fileexplorer/model/FileInfo;

    .line 29
    iput-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 31
    :cond_1e
    :goto_1e
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 33
    instance-of p4, p4, Lcom/android/fileexplorer/view/FileGridItemWithFav;

    .line 35
    if-eqz p4, :cond_67

    .line 37
    new-instance p4, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v0, "onBind: isActionMode = "

    .line 44
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    const-string v0, ", mChecked = "

    .line 52
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    .line 57
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, ", position = "

    .line 62
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    const-string p4, "VHFileGridItem"

    .line 74
    invoke-static {p4, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 79
    check-cast p2, Lcom/android/fileexplorer/view/FileGridItemWithFav;

    .line 81
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 84
    move-result-object p4

    .line 85
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 87
    if-nez p3, :cond_61

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->isChoiceMode(Ljava/lang/Object;)Z

    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_5f

    .line 95
    goto :goto_61

    .line 96
    :cond_5f
    const/4 p1, 0x0

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    :goto_61
    const/4 p1, 0x1

    .line 99
    :goto_62
    iget-boolean p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    .line 101
    invoke-virtual {p2, p4, v0, p1, p3}, Lcom/android/fileexplorer/view/FileGridItemWithFav;->onBind(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;ZZ)V

    .line 104
    :cond_67
    return-void
.end method

.method public processHover(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_17

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->isFolder()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1c

    .line 9
    const-string p1, "VHFileGridItem"

    .line 11
    const-string v0, "processHover isHover isFolder"

    .line 13
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mCountDownTask:Ljava/lang/Runnable;

    .line 18
    const-wide/16 v0, 0x320

    .line 20
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mCountDownTask:Ljava/lang/Runnable;

    .line 26
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method
