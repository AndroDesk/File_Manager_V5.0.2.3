.class public Lcom/android/fileexplorer/view/FileGridItem;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FileGridItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileGridItem"


# instance fields
.field private mAppIcon:Landroid/widget/ImageView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field public mCloudState:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field public mCreateTimeTv:Landroid/widget/TextView;

.field private mFileImageView:Landroid/widget/ImageView;

.field private mFileNameTextView:Landroid/widget/TextView;

.field private mOnPcMode:Z

.field public mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

.field public mSource:Landroid/widget/TextView;

.field private mVideoTag:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private addStroke(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mVideoTag:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    goto :goto_18

    :cond_16
    const/16 p1, 0x8

    :goto_18
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1b
    return-void
.end method

.method private dealCloudFile(Lcom/android/cloud/bean/CloudFileInfo;)V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object v0

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getUploadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object v1

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/FileGridItem;->needShowMask(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/TransferState;)Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/fileexplorer/model/FileIconHelper;->loadFileIntoImg(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;ZZ)V

    iget-boolean v2, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_40

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    return-void

    :cond_40
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudLocalFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileGridItem;->markOnlyCloudFile()V

    return-void

    :cond_4e
    if-nez v0, :cond_69

    if-nez v1, :cond_69

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_65

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    return-void

    :cond_65
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileGridItem;->markOnlyCloudFile()V

    return-void

    :cond_69
    const/4 v2, 0x0

    if-eqz v0, :cond_e0

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v1

    sget-object v4, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ae

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b2

    :cond_aa
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileGridItem;->markOnlyCloudFile()V

    return-void

    :cond_ae
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileGridItem;->markOnlyCloudFile()V

    return-void

    :cond_b2
    :goto_b2
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11b

    :cond_bd
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_DOWNLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result p1

    if-ltz p1, :cond_11b

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    goto :goto_11b

    :cond_e0
    if-eqz v1, :cond_11b

    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object p1

    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f9

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    goto :goto_11b

    :cond_f9
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result p1

    if-ltz p1, :cond_116

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    :cond_116
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_UPLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    :cond_11b
    :goto_11b
    return-void
.end method

.method private needShowMask(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/TransferState;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object p1

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    if-eq p1, v1, :cond_c

    return v0

    :cond_c
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object p1

    sget-object p2, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    if-eq p1, p2, :cond_17

    return v0

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method private updateTvByStatus(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 6

    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getCloudFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v1

    sget-object v2, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    if-eq v1, v2, :cond_41

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v1

    sget-object v2, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    if-ne v1, v2, :cond_26

    goto :goto_41

    :cond_26
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCreateTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mSource:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cloud/util/TransferUtil;->getTransStateDescription(Lcom/android/cloud/bean/TransferState$Status;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCreateTimeTv:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean v3, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mSource:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_5b

    iget p1, p1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->formatDirectoryFileCount(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_61

    :cond_5b
    iget-wide v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    :goto_61
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_65
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCreateTimeTv:Landroid/widget/TextView;

    if-eqz v0, :cond_74

    iget-wide v1, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean v3, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_74
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mSource:Landroid/widget/TextView;

    if-eqz v0, :cond_9d

    iget-boolean v1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_94

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->formatDirectoryFileCount(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9a

    :cond_94
    iget-wide v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    :goto_9a
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9d
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public markOnlyCloudFile()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    return-void
.end method

.method public onBind(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;ZZ)V
    .registers 8

    const/4 p1, 0x0

    if-nez p2, :cond_10

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p4}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    if-eqz p3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_3d
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a027a

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p4

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {p4, p2, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->setPrivateFileIcon(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/widget/ImageView;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/FileGridItem;->addStroke(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isCheckedMode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FileGridItem"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCreateTimeTv:Landroid/widget/TextView;

    if-eqz p1, :cond_8c

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8c
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCloudState:Landroid/widget/ImageView;

    if-eqz p1, :cond_93

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_93
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mSource:Landroid/widget/TextView;

    if-eqz p1, :cond_9a

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9a
    return-void
.end method

.method public onBind(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;ZZ)V
    .registers 11

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/view/FileGridItem;->onBind(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    instance-of v4, v1, Lcom/android/fileexplorer/model/PcModeFileInfo;

    const/4 v5, 0x0

    if-eqz v4, :cond_11

    move-object v4, v1

    check-cast v4, Lcom/android/fileexplorer/model/PcModeFileInfo;

    goto :goto_12

    :cond_11
    move-object v4, v5

    :goto_12
    if-nez v1, :cond_21

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_21
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v7, v0, Lcom/android/fileexplorer/view/FileGridItem;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v8, 0x8

    if-eqz v2, :cond_30

    move v9, v6

    goto :goto_31

    :cond_30
    move v9, v8

    :goto_31
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Lcom/android/fileexplorer/view/FileGridItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    const/high16 v9, -0x10000

    move-object/from16 v10, p5

    invoke-static {v3, v7, v10, v9}, Lcom/android/fileexplorer/model/Util;->textEmphasize(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_68

    :cond_4b
    iget-boolean v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mOnPcMode:Z

    if-eqz v3, :cond_61

    if-eqz v4, :cond_61

    iget-object v3, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_68

    :cond_61
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_68
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    const v7, 0x7f0a027a

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v7, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    instance-of v3, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v3, :cond_7d

    move-object v3, v1

    check-cast v3, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-direct {v0, v3}, Lcom/android/fileexplorer/view/FileGridItem;->dealCloudFile(Lcom/android/cloud/bean/CloudFileInfo;)V

    goto :goto_aa

    :cond_7d
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    iget-object v7, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    if-eqz v3, :cond_90

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_90
    iget-boolean v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mOnPcMode:Z

    if-eqz v3, :cond_a0

    if-eqz v4, :cond_a0

    iget-object v3, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a0

    iget-object v4, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_aa

    :cond_a0
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v3, v1, v4, v6, v7}, Lcom/android/fileexplorer/model/FileIconHelper;->loadFileIntoImg(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;ZZ)V

    :goto_aa
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/fileexplorer/view/FileGridItem;->addStroke(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCheckedMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FileGridItem"

    invoke-static {v4, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_13c

    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v2, :cond_13c

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13c

    iget-object v2, v0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getResID(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_fd

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_141

    :cond_fd
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppIconHelper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/fileexplorer/apptag/AppIconHelper;->APP_ICON_FILE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/apptag/AppIconHelper;->existsAppIconInAssets(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_136

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/android/fileexplorer/model/FileIconHelper;->loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V

    goto :goto_141

    :cond_136
    iget-object v2, v0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_141

    :cond_13c
    iget-object v2, v0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_141
    iget-object v2, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/view/FileGridItem;->updateTvByStatus(Lcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mOnPcMode:Z

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mOnPcMode:Z

    const v0, 0x7f032c10

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    const v0, 0x7f032c13

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    const v0, 0x7f032d0e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    const v0, 0x1020001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f03291f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mVideoTag:Landroid/widget/ImageView;

    const v0, 0x7f032d63

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCloudState:Landroid/widget/ImageView;

    const v0, 0x7f032d60

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/widget/TransferStatusProgress;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    const v0, 0x7f032c1d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mSource:Landroid/widget/TextView;

    const v0, 0x7f032cef

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCreateTimeTv:Landroid/widget/TextView;

    return-void
.end method

.method public setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCloudState:Landroid/widget/ImageView;

    if-eqz v0, :cond_3f

    const/4 v0, -0x1

    sget-object v1, Lcom/android/fileexplorer/view/FileGridItem$1;->$SwitchMap$com$android$cloud$util$CloudFileUtils$FileCloudState:[I

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
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCloudState:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCloudState:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3f

    :cond_38
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCloudState:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public updateViewByCheckedStatueChange(Z)V
    .registers 2

    return-void
.end method
