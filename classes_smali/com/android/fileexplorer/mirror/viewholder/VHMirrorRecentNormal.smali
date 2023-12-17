.class public Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;
.super Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPinnedEditableView;
.source "VHMirrorRecentNormal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;",
        ">",
        "Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPinnedEditableView<",
        "Lcom/android/fileexplorer/model/group/FileGroupChild<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;TV;>;"
    }
.end annotation


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private fileNameTv:Landroid/widget/TextView;

.field private fileSizeTv:Landroid/widget/TextView;

.field private iconIv:Landroid/widget/ImageView;


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
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPinnedEditableView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 4
    const p2, 0x7f0a00c6

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/widget/ImageView;

    .line 13
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->iconIv:Landroid/widget/ImageView;

    .line 15
    const p2, 0x7f0a0186

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/widget/TextView;

    .line 24
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->fileNameTv:Landroid/widget/TextView;

    .line 26
    const p2, 0x7f0a018a

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/widget/TextView;

    .line 35
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->fileSizeTv:Landroid/widget/TextView;

    .line 37
    const p2, 0x1020001

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/CheckBox;

    .line 46
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->checkBox:Landroid/widget/CheckBox;

    .line 48
    return-void
.end method


# virtual methods
.method public getDragInfo()Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->iconIv:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    .line 10
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/android/fileexplorer/model/group/FileGroupChild;

    .line 5
    iget-object v0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 7
    if-eqz v0, :cond_1a

    .line 9
    new-instance v0, Ljava/io/File;

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 13
    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupChild;

    .line 15
    iget-object v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 17
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 19
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    return-object v0
.end method

.method public isPinnedView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupChild;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->onBind(Lcom/android/fileexplorer/model/group/FileGroupChild;IZZ)V

    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/model/group/FileGroupChild;IZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/group/FileGroupChild<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;IZZ)V"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

    .line 4
    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 5
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->iconIv:Landroid/widget/ImageView;

    const/4 p4, 0x0

    if-eqz p2, :cond_3a

    .line 6
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_26

    const p2, 0x7f080165

    goto :goto_27

    :cond_26
    move p2, p4

    .line 8
    :goto_27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->iconIv:Landroid/widget/ImageView;

    const v1, 0x7f0a027a

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->iconIv:Landroid/widget/ImageView;

    invoke-static {v0, v1, p2}, Lcom/android/fileexplorer/model/FileIconHelper;->setIcon(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 10
    :cond_3a
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->fileNameTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->fileSizeTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7a

    .line 14
    :cond_60
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->fileSizeTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_73

    :cond_71
    const-wide/16 v0, 0x0

    :goto_73
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_7a
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->checkBox:Landroid/widget/CheckBox;

    if-eqz p3, :cond_7f

    goto :goto_80

    :cond_7f
    const/4 p4, 0x4

    :goto_80
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 2
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupChild;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorRecentNormal;->onBind(Lcom/android/fileexplorer/model/group/FileGroupChild;IZZ)V

    return-void
.end method
