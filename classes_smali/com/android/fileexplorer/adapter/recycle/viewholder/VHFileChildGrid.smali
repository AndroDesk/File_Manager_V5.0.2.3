.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileChildGrid;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedEditableView;
.source "VHFileChildGrid.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedEditableView<",
        "Lcom/android/fileexplorer/model/group/FileGroupChild<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VHFileChildGrid"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedEditableView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
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
    const v2, 0x7f0a031b

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
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/android/fileexplorer/model/group/FileGroupChild;

    .line 5
    iget-object v0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 7
    instance-of v1, v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_10

    .line 12
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 14
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 16
    goto :goto_1c

    .line 17
    :cond_10
    instance-of v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 19
    if-eqz v1, :cond_1b

    .line 21
    check-cast v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 23
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move-object v0, v2

    .line 29
    :goto_1c
    if-nez v0, :cond_1f

    .line 31
    goto :goto_24

    .line 32
    :cond_1f
    new-instance v2, Ljava/io/File;

    .line 34
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    :goto_24
    return-object v2
.end method

.method public isPinnedView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Lcom/android/fileexplorer/model/group/FileGroupChild;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/group/FileGroupChild<",
            "TK;>;IZZ)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    if-nez p1, :cond_d

    const-string p1, "VHFileChildGrid"

    const-string p2, "onBind mData is null"

    .line 3
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_d
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p4, p2, Lcom/android/fileexplorer/view/PictureItemView;

    if-eqz p4, :cond_1c

    .line 5
    check-cast p2, Lcom/android/fileexplorer/view/PictureItemView;

    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    iget-boolean p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    invoke-virtual {p2, p1, p4, p3}, Lcom/android/fileexplorer/view/PictureItemView;->bindViewForRV(Ljava/lang/Object;ZZ)V

    :cond_1c
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupChild;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHFileChildGrid;->onBind(Lcom/android/fileexplorer/model/group/FileGroupChild;IZZ)V

    return-void
.end method

.method public onUpdateEditable(Z)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lcom/android/fileexplorer/view/PictureItemView;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lcom/android/fileexplorer/view/PictureItemView;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PictureItemView;->updateViewOnScreenByActionMode(Z)V

    .line 12
    :cond_b
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onUpdateEditable(Z)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method
