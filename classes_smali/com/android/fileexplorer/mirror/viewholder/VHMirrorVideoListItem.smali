.class public Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;
.super Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;
.source "VHMirrorVideoListItem.java"


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
    const v2, 0x7f0a01dc

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_11

    .line 7
    :cond_6
    new-instance v0, Ljava/io/File;

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 11
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 13
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 15
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    :goto_11
    return-object v0
.end method

.method public bridge synthetic isChoiceMode(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Z
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;->isChoiceMode(Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public isChoiceMode(Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2
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

    .line 3
    :cond_12
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    goto :goto_19

    .line 4
    :cond_15
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    xor-int/lit8 v0, p1, 0x1

    :goto_19
    return v0
.end method

.method public bridge synthetic onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;->onBind(Lcom/android/fileexplorer/model/FileInfo;IZZ)V

    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/model/FileInfo;IZZ)V
    .registers 6

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

    .line 4
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p4, p2, Lcom/android/fileexplorer/view/VideoListItem;

    if-eqz p4, :cond_1d

    .line 5
    check-cast p2, Lcom/android/fileexplorer/view/VideoListItem;

    const/4 p4, 0x0

    if-nez p3, :cond_17

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;->isChoiceMode(Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p3

    if-eqz p3, :cond_15

    goto :goto_17

    :cond_15
    move p3, p4

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p3, 0x1

    :goto_18
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

    invoke-virtual {p2, p1, p3, v0, p4}, Lcom/android/fileexplorer/view/VideoListItem;->bindView(Lcom/android/fileexplorer/model/FileInfo;ZZZ)V

    :cond_1d
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 2
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorVideoListItem;->onBind(Lcom/android/fileexplorer/model/FileInfo;IZZ)V

    return-void
.end method
