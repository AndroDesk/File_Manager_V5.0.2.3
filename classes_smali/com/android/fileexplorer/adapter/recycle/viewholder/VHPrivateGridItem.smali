.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;
.source "VHPrivateGridItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder<",
        "Lcom/android/fileexplorer/encryption/PrivateFile;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VHFileGridItem"


# instance fields
.field private mCountDownTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;

    .line 6
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;)V

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->mCountDownTask:Ljava/lang/Runnable;

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
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isChoiceMode(Lcom/android/fileexplorer/encryption/PrivateFile;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2
    :cond_4
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    const/4 v3, 0x2

    if-eq v1, v3, :cond_12

    const/4 p1, 0x3

    if-eq v1, p1, :cond_10

    goto :goto_1d

    :cond_10
    move v0, v2

    goto :goto_1d

    .line 3
    :cond_12
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v0

    goto :goto_1d

    .line 4
    :cond_17
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    :goto_1d
    return v0
.end method

.method public bridge synthetic isChoiceMode(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->isChoiceMode(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    move-result p1

    return p1
.end method

.method public isFolder()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    check-cast v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 7
    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
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

.method public onBind(Lcom/android/fileexplorer/encryption/PrivateFile;IZZ)V
    .registers 6

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 3
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p4, p4, Lcom/android/fileexplorer/view/FileGridItemWithFav;

    if-eqz p4, :cond_4a

    .line 4
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

    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p2, Lcom/android/fileexplorer/view/FileGridItemWithFav;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p4

    if-nez p3, :cond_44

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->isChoiceMode(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    move-result p3

    if-eqz p3, :cond_42

    goto :goto_44

    :cond_42
    const/4 p3, 0x0

    goto :goto_45

    :cond_44
    :goto_44
    const/4 p3, 0x1

    :goto_45
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    invoke-virtual {p2, p4, p1, p3, v0}, Lcom/android/fileexplorer/view/FileGridItem;->onBind(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;ZZ)V

    :cond_4a
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->onBind(Lcom/android/fileexplorer/encryption/PrivateFile;IZZ)V

    return-void
.end method

.method public processHover(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_17

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->isFolder()Z

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
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->mCountDownTask:Ljava/lang/Runnable;

    .line 18
    const-wide/16 v0, 0x320

    .line 20
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->mCountDownTask:Ljava/lang/Runnable;

    .line 26
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method
