.class public Lcom/android/fileexplorer/view/fileitem/NewFileListItem;
.super Lcom/android/fileexplorer/view/FileListItemWithFav;
.source "NewFileListItem.java"


# static fields
.field public static final sItemPaddingSize:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0x7f070247

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->sItemPaddingSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FileListItemWithFav;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/FileListItemWithFav;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/FileListItemWithFav;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private dealCloudFile(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;Z)V
    .registers 9

    iget-object v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    iget-object v1, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    iget-wide v2, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/FileListItem;->needShowVideoTag(Z)V

    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_2d

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    return-void

    :cond_2d
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object v1

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getUploadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudLocalFileId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->markOnlyCloudFile()V

    return-void

    :cond_53
    if-nez v1, :cond_6e

    if-nez v3, :cond_6e

    iget-object p1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6a

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    return-void

    :cond_6a
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->markOnlyCloudFile()V

    return-void

    :cond_6e
    const/4 v4, 0x0

    if-eqz v1, :cond_f6

    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v3

    sget-object v5, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    iget-object p2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_bd

    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b9

    new-instance p2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_b5

    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_bd

    :cond_b5
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->markOnlyCloudFile()V

    return-void

    :cond_b9
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->markOnlyCloudFile()V

    return-void

    :cond_bd
    :goto_bd
    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f2

    :cond_c8
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_DOWNLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    if-nez p2, :cond_ed

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result p2

    if-ltz p2, :cond_f2

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    goto :goto_f2

    :cond_ed
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f2
    :goto_f2
    invoke-direct {p0, v1, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->updateTvByStatus(Lcom/android/cloud/bean/TransferState;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    goto :goto_13c

    :cond_f6
    if-eqz v3, :cond_13c

    invoke-virtual {v3}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v0

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    goto :goto_139

    :cond_10f
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_UPLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    if-nez p2, :cond_134

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v3}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    invoke-virtual {v3}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result p2

    if-ltz p2, :cond_139

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v3}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    goto :goto_139

    :cond_134
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_139
    :goto_139
    invoke-direct {p0, v3, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->updateTvByStatus(Lcom/android/cloud/bean/TransferState;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    :cond_13c
    :goto_13c
    return-void
.end method

.method private setFileSizeText(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget-object v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_39
    return-void
.end method

.method private updateTvByStatus(Lcom/android/cloud/bean/TransferState;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V
    .registers 9

    if-nez p1, :cond_6

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setFileSizeText(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    return-void

    :cond_6
    const v0, 0x7f11012a

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v1

    sget-object v2, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    if-eq v1, v2, :cond_47

    sget-object v2, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    if-ne v1, v2, :cond_1a

    goto :goto_47

    :cond_1a
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/cloud/util/TransferUtil;->getTransStateDescription(Lcom/android/cloud/bean/TransferState$Status;)I

    move-result p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    :cond_47
    :goto_47
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setFileSizeText(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    :goto_4a
    return-void
.end method


# virtual methods
.method public markOnlyCloudFile()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZ)V
    .registers 6

    iget-object v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    instance-of v1, v0, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_36

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->onBindForFileInfo(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZ)V

    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mFavoriteTagView:Landroid/view/View;

    const/16 p3, 0x8

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    move v1, v0

    goto :goto_1f

    :cond_1e
    move v1, p3

    :goto_1f
    if-eq p2, v1, :cond_2a

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mFavoriteTagView:Landroid/view/View;

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    move v0, p3

    :goto_27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    if-eqz p1, :cond_3d

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3d

    :cond_36
    instance-of v0, v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    if-eqz v0, :cond_3d

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->onBindForPrivateFile(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZ)V

    :cond_3d
    :goto_3d
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result p1

    if-eqz p1, :cond_59

    const p1, 0x7f07024a

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_59
    return-void
.end method

.method public onBindForFileInfo(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZ)V
    .registers 5

    const-string v0, "Trace_onBindForFileInfo"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->onBindForFileInfo(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZLjava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBindForFileInfo(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZLjava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz p2, :cond_23

    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_38

    :cond_23
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    iget-boolean v8, v0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    if-eqz v8, :cond_34

    iget-boolean v8, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    if-nez v8, :cond_34

    move v8, v5

    goto :goto_35

    :cond_34
    move v8, v6

    :goto_35
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_38
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_5d

    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    const-string v8, "/storage/emulated/0/MIUI"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5d

    :cond_51
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->owner:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5d
    :goto_5d
    invoke-direct/range {p0 .. p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setFileSizeText(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_83

    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v8, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v8, v8, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/android/fileexplorer/view/FileListItem;->isMirror:Z

    if-eqz v9, :cond_76

    const v9, 0x7f060102

    goto :goto_79

    :cond_76
    const v9, 0x7f06004f

    :goto_79
    invoke-static {v9}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v9

    move-object/from16 v10, p4

    invoke-static {v7, v8, v10, v9}, Lcom/android/fileexplorer/model/Util;->textEmphasize(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_8a

    :cond_83
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8a
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    const v8, 0x7f0a027a

    iget-boolean v9, v0, Lcom/android/fileexplorer/view/FileListItem;->isGrid:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    instance-of v7, v7, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v7, :cond_a2

    invoke-direct/range {p0 .. p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->dealCloudFile(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;Z)V

    goto :goto_e1

    :cond_a2
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget-object v7, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {v0, v7}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    if-eqz v7, :cond_b5

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_b5
    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_da

    iget-object v8, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v8, v7, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/android/fileexplorer/apptag/FileUtils;->isMovie(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/fileexplorer/view/FileListItem;->needShowVideoTag(Z)V

    goto :goto_e1

    :cond_da
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    if-eqz v7, :cond_e1

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e1
    :goto_e1
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_15c

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_157

    iget-boolean v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    if-eqz v7, :cond_157

    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_157

    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->resId:I

    if-eqz v7, :cond_118

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    iget v8, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->resId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_15c

    :cond_118
    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppIconHelper;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/fileexplorer/apptag/AppIconHelper;->APP_ICON_FILE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/fileexplorer/apptag/AppIconHelper;->existsAppIconInAssets(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_151

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/android/fileexplorer/model/FileIconHelper;->loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V

    goto :goto_15c

    :cond_151
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15c

    :cond_157
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15c
    :goto_15c
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    iget-boolean v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mOnPcMode:Z

    if-eqz v7, :cond_189

    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    instance-of v8, v7, Lcom/android/fileexplorer/model/PcModeFileInfo;

    if-eqz v8, :cond_189

    check-cast v7, Lcom/android/fileexplorer/model/PcModeFileInfo;

    iget-object v7, v7, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_189

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    iget-object v8, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v8, Lcom/android/fileexplorer/model/PcModeFileInfo;

    iget-object v8, v8, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_199

    :cond_189
    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v7, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    const v9, 0x7f0700ff

    invoke-static {v9}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v9

    invoke-static {v7, v8, v9, v6}, Lcom/android/fileexplorer/model/FileIconHelper;->setIcon(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZ)V

    :goto_199
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    if-eqz p2, :cond_1ae

    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1cf

    :cond_1ae
    iget-object v2, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1ca

    iget-boolean v1, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    if-eqz v1, :cond_1ca

    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1cf

    :cond_1ca
    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1cf
    return-void
.end method

.method public onBindForPrivateFile(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZ)V
    .registers 8

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_15

    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_27

    :cond_15
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    if-eqz v3, :cond_23

    move v3, v0

    goto :goto_24

    :cond_23
    move v3, v1

    :goto_24
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_27
    invoke-virtual {p0, p3}, Landroid/view/View;->setSelected(Z)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_38

    iget-object v2, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->owner:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    sget-object p3, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setFileSizeText(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p3

    iget-object v2, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    iget-object v3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, v2, v3}, Lcom/android/fileexplorer/model/FileIconHelper;->setPrivateFileIcon(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/widget/ImageView;)V

    iget-object p3, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast p3, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p3}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result p3

    if-nez p3, :cond_76

    iget-boolean p3, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    if-eqz p3, :cond_70

    goto :goto_76

    :cond_70
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_81

    :cond_76
    :goto_76
    if-nez p2, :cond_81

    iget-boolean p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    if-eqz p1, :cond_81

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_81
    :goto_81
    return-void
.end method

.method public setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mCloudState:Landroid/widget/ImageView;

    if-eqz v0, :cond_3f

    const/4 v0, -0x1

    sget-object v1, Lcom/android/fileexplorer/view/fileitem/NewFileListItem$1;->$SwitchMap$com$android$cloud$util$CloudFileUtils$FileCloudState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_38

    const/4 v1, 0x2

    if-eq p1, v1, :cond_29

    const/4 v1, 0x3

    if-eq p1, v1, :cond_25

    const/4 v1, 0x4

    if-eq p1, v1, :cond_21

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1d

    goto :goto_2c

    :cond_1d
    const v0, 0x7f080226

    goto :goto_2c

    :cond_21
    const v0, 0x7f080225

    goto :goto_2c

    :cond_25
    const v0, 0x7f080224

    goto :goto_2c

    :cond_29
    const v0, 0x7f080223

    :goto_2c
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mCloudState:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mCloudState:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3f

    :cond_38
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mCloudState:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public updateViewByCheckedStatueChange(ZZ)V
    .registers 4

    const/16 v0, 0x8

    if-eqz p2, :cond_13

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    if-eqz p1, :cond_2b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2b

    :cond_13
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_26

    :cond_1d
    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2b

    :cond_26
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2b
    :goto_2b
    return-void
.end method
