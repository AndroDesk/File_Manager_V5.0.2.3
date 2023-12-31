.class public Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPrivateItem;
.super Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;
.source "VHMirrorPrivateItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;",
        ">",
        "Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder<",
        "Lcom/android/fileexplorer/encryption/PrivateFile;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VHPrivateItem"


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
    .registers 2

    const/4 v0, 0x0

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

.method public bridge synthetic isChoiceMode(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Z
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPrivateItem;->isChoiceMode(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    move-result p1

    return p1
.end method

.method public onAnimationStart(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStart(Z)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    instance-of v1, v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 8
    if-eqz v1, :cond_17

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 14
    check-cast v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 16
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    .line 24
    :cond_17
    return-void
.end method

.method public onAnimationStop(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStop(Z)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    instance-of v0, v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 8
    if-eqz v0, :cond_2f

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v1, "onAnimationStop animateToVisible = "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "VHPrivateItem"

    .line 29
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 34
    check-cast v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 38
    check-cast v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 40
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    .line 48
    :cond_2f
    return-void
.end method

.method public onAnimationUpdate(ZF)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationUpdate(ZF)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    instance-of v1, v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 8
    if-eqz v1, :cond_16

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/FileListItemWithFav;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 14
    check-cast v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 16
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/fileexplorer/view/FileListItem;->updateViewByCheckedStatueChange(ZZF)V

    .line 23
    :cond_16
    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/encryption/PrivateFile;IZZ)V
    .registers 8

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind: isActionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mViewMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VHPrivateItem"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

    const/4 p2, 0x1

    new-array p4, p2, [Landroid/view/View;

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    aput-object v0, p4, v1

    invoke-static {p4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p4

    invoke-interface {p4}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p4

    new-array v0, p2, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v2, v0, v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-interface {p4, v2, v0}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p4, v0, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 6
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v0, p4, Lcom/android/fileexplorer/view/FileListItemWithFav;

    if-eqz v0, :cond_6f

    .line 7
    check-cast p4, Lcom/android/fileexplorer/view/FileListItemWithFav;

    if-nez p3, :cond_6a

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPrivateItem;->isChoiceMode(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    move-result p3

    if-eqz p3, :cond_69

    goto :goto_6a

    :cond_69
    move p2, v1

    :cond_6a
    :goto_6a
    iget-boolean p3, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/fileexplorer/view/FileListItem;->onBind(Lcom/android/fileexplorer/encryption/PrivateFile;ZZ)V

    :cond_6f
    return-void
.end method

.method public bridge synthetic onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPrivateItem;->onBind(Lcom/android/fileexplorer/encryption/PrivateFile;IZZ)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 2
    check-cast p1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPrivateItem;->onBind(Lcom/android/fileexplorer/encryption/PrivateFile;IZZ)V

    return-void
.end method
