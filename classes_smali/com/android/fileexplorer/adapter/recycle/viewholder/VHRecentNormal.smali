.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedEditableView;
.source "VHRecentNormal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedEditableView<",
        "Lcom/android/fileexplorer/model/group/FileGroupChild<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private fileNameTv:Landroid/widget/TextView;

.field private fileSizeTv:Landroid/widget/TextView;

.field private iconIv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedEditableView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    const p2, 0x7f0a00c6

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/widget/ImageView;

    .line 13
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->iconIv:Landroid/widget/ImageView;

    .line 15
    const p2, 0x7f0a0186

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/widget/TextView;

    .line 24
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->fileNameTv:Landroid/widget/TextView;

    .line 26
    const p2, 0x7f0a018a

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/widget/TextView;

    .line 35
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->fileSizeTv:Landroid/widget/TextView;

    .line 37
    const p2, 0x1020001

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/CheckBox;

    .line 46
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->checkBox:Landroid/widget/CheckBox;

    .line 48
    return-void
.end method


# virtual methods
.method public getDragInfo()Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->iconIv:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

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

.method public onBind(Lcom/android/fileexplorer/model/group/FileGroupChild;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/group/FileGroupChild<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;IZZ)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 4
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->iconIv:Landroid/widget/ImageView;

    const/4 p4, 0x0

    if-eqz p2, :cond_2e

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 6
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

    .line 7
    :goto_27
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->iconIv:Landroid/widget/ImageView;

    const-string v1, ""

    invoke-static {p1, v0, v1, p2}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 8
    :cond_2e
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->fileNameTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->fileSizeTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e

    .line 12
    :cond_54
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->fileSizeTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_67

    :cond_65
    const-wide/16 v0, 0x0

    :goto_67
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_6e
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->checkBox:Landroid/widget/CheckBox;

    if-eqz p3, :cond_73

    goto :goto_74

    :cond_73
    const/4 p4, 0x4

    :goto_74
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupChild;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHRecentNormal;->onBind(Lcom/android/fileexplorer/model/group/FileGroupChild;IZZ)V

    return-void
.end method
