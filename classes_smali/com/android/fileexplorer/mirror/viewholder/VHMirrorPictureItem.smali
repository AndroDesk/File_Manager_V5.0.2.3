.class public Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPictureItem;
.super Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;
.source "VHMirrorPictureItem.java"


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

    const v2, 0x7f032e8d

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_11

    :cond_6
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_11
    return-object v0
.end method

.method public bridge synthetic isChoiceMode(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Z
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPictureItem;->isChoiceMode(Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public isChoiceMode(Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mViewMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    const/4 v3, 0x2

    if-eq v1, v3, :cond_12

    const/4 p1, 0x3

    if-eq v1, p1, :cond_10

    goto :goto_19

    :cond_10
    move v0, v2

    goto :goto_19

    :cond_12
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    goto :goto_19

    :cond_15
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    xor-int/lit8 v0, p1, 0x1

    :goto_19
    return v0
.end method

.method public bridge synthetic onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V
    .registers 5

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPictureItem;->onBind(Lcom/android/fileexplorer/model/FileInfo;IZZ)V

    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/model/FileInfo;IZZ)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p4, p2, Lcom/android/fileexplorer/view/PictureItemView;

    if-eqz p4, :cond_1f

    check-cast p2, Lcom/android/fileexplorer/view/PictureItemView;

    iget-boolean p4, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

    if-nez p3, :cond_1b

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPictureItem;->isChoiceMode(Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p3

    if-eqz p3, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p3, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p3, 0x1

    :goto_1c
    invoke-virtual {p2, p1, p4, p3}, Lcom/android/fileexplorer/view/PictureItemView;->bindViewForRV(Ljava/lang/Object;ZZ)V

    :cond_1f
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPictureItem;->onBind(Lcom/android/fileexplorer/model/FileInfo;IZZ)V

    return-void
.end method

.method public onUpdateEditable(Z)Z
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/fileexplorer/view/PictureItemView;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/fileexplorer/view/PictureItemView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PictureItemView;->updateViewOnScreenByActionMode(Z)V

    :cond_b
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->onUpdateEditable(Z)Z

    move-result p1

    return p1
.end method
