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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->mCountDownTask:Ljava/lang/Runnable;

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
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isChoiceMode(Lcom/android/fileexplorer/encryption/PrivateFile;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

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

    :cond_12
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v0

    goto :goto_1d

    :cond_17
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    :goto_1d
    return v0
.end method

.method public bridge synthetic isChoiceMode(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->isChoiceMode(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    move-result p1

    return p1
.end method

.method public isFolder()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_e

    check-cast v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v0}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
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

.method public onBind(Lcom/android/fileexplorer/encryption/PrivateFile;IZZ)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p4, p4, Lcom/android/fileexplorer/view/FileGridItemWithFav;

    if-eqz p4, :cond_4a

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

    check-cast p1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->onBind(Lcom/android/fileexplorer/encryption/PrivateFile;IZZ)V

    return-void
.end method

.method public processHover(Z)V
    .registers 4

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->isFolder()Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "VHFileGridItem"

    const-string v0, "processHover isHover isFolder"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->mCountDownTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x320

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    goto :goto_1c

    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPrivateGridItem;->mCountDownTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    :cond_1c
    :goto_1c
    return-void
.end method
