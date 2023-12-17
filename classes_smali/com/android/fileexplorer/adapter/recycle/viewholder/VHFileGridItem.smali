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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mCountDownTask:Ljava/lang/Runnable;

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

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

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

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_28

    const/4 v3, 0x2

    if-eq v1, v3, :cond_12

    const/4 p1, 0x3

    if-eq v1, p1, :cond_10

    goto :goto_40

    :cond_10
    move v0, v2

    goto :goto_40

    :cond_12
    instance-of v1, p1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_1d

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    goto :goto_40

    :cond_1d
    instance-of v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    if-eqz v1, :cond_40

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->getFileListItemVO(Ljava/lang/Object;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    move-result-object p1

    iget-boolean v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    goto :goto_40

    :cond_28
    instance-of v1, p1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_35

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    :goto_32
    xor-int/lit8 v0, p1, 0x1

    goto :goto_40

    :cond_35
    instance-of v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    if-eqz v1, :cond_40

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->getFileListItemVO(Ljava/lang/Object;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    goto :goto_32

    :cond_40
    :goto_40
    return v0
.end method

.method public isFolder()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onAnimationStart(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onAnimationStart(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/fileexplorer/view/FileGridItemWithFav;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->updateViewByCheckedStatueChange(Z)V

    return-void
.end method

.method public onBind(Ljava/lang/Object;IZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZZ)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    instance-of p4, p1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz p4, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p4

    iput-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    goto :goto_1e

    :cond_e
    instance-of p4, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    if-eqz p4, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->getFileListItemVO(Ljava/lang/Object;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    move-result-object p4

    iput-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mInfoVO:Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    iget-object p4, p4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast p4, Lcom/android/fileexplorer/model/FileInfo;

    iput-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    :cond_1e
    :goto_1e
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p4, p4, Lcom/android/fileexplorer/view/FileGridItemWithFav;

    if-eqz p4, :cond_67

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBind: isActionMode = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mChecked = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", position = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "VHFileGridItem"

    invoke-static {p4, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p2, Lcom/android/fileexplorer/view/FileGridItemWithFav;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez p3, :cond_61

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->isChoiceMode(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 p1, 0x0

    goto :goto_62

    :cond_61
    :goto_61
    const/4 p1, 0x1

    :goto_62
    iget-boolean p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    invoke-virtual {p2, p4, v0, p1, p3}, Lcom/android/fileexplorer/view/FileGridItemWithFav;->onBind(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;ZZ)V

    :cond_67
    return-void
.end method

.method public processHover(Z)V
    .registers 4

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->isFolder()Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "VHFileGridItem"

    const-string v0, "processHover isHover isFolder"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mCountDownTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x320

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    goto :goto_1c

    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileGridItem;->mCountDownTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    :cond_1c
    :goto_1c
    return-void
.end method
