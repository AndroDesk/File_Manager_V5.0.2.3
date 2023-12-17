.class public Lcom/android/fileexplorer/view/FileListItem;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FileListItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileListItem"


# instance fields
.field public forceHideGoList:Z

.field public forceShowGoList:Z

.field public isGrid:Z

.field public isMirror:Z

.field public mAppIcon:Landroid/widget/ImageView;

.field public mCheckBox:Landroid/widget/CheckBox;

.field public mChoiceView:Landroid/widget/FrameLayout;

.field public mCloudState:Landroid/widget/ImageView;

.field public mContext:Landroid/content/Context;

.field public mFileImageView:Landroid/widget/ImageView;

.field public mFileNameTextView:Landroid/widget/TextView;

.field public mFileOwnerTextView:Landroid/widget/TextView;

.field public mFileSizeTextView:Landroid/widget/TextView;

.field public mIcoGoList:Landroid/widget/ImageView;

.field public mOnPcMode:Z

.field public mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

.field public mVideoTag:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/R$styleable;->FileListItem:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->isMirror:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    sget-boolean p3, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    iput-boolean p3, p0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/android/fileexplorer/R$styleable;->FileListItem:[I

    invoke-virtual {p3, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->isMirror:Z

    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->isGrid:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/view/FileListItem;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FileListItem;->lambda$onBind$0(Lcom/android/fileexplorer/model/FileInfo;)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

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

.method private dealCloudFile(Lcom/android/cloud/bean/CloudFileInfo;Z)V
    .registers 8

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_11

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/FileListItem;->needShowVideoTag(Z)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object v0

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getUploadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudLocalFileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileListItem;->markOnlyCloudFile()V

    return-void

    :cond_44
    if-nez v0, :cond_5f

    if-nez v2, :cond_5f

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5b

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    return-void

    :cond_5b
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileListItem;->markOnlyCloudFile()V

    return-void

    :cond_5f
    const/4 v3, 0x0

    if-eqz v0, :cond_e1

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v2

    sget-object v4, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    iget-object p2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a8

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a4

    new-instance p2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_a0

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a8

    :cond_a0
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileListItem;->markOnlyCloudFile()V

    return-void

    :cond_a4
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileListItem;->markOnlyCloudFile()V

    return-void

    :cond_a8
    :goto_a8
    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_dd

    :cond_b3
    sget-object v2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_DOWNLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    if-nez p2, :cond_d8

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result p2

    if-ltz p2, :cond_dd

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    goto :goto_dd

    :cond_d8
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_dd
    :goto_dd
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/FileListItem;->updateTvByStatus(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileInfo;)V

    goto :goto_127

    :cond_e1
    if-eqz v2, :cond_127

    invoke-virtual {v2}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v0

    sget-object v4, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    goto :goto_124

    :cond_fa
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_UPLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    if-nez p2, :cond_11f

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v2}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    invoke-virtual {v2}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result p2

    if-ltz p2, :cond_124

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v2}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    goto :goto_124

    :cond_11f
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_124
    :goto_124
    invoke-direct {p0, v2, p1}, Lcom/android/fileexplorer/view/FileListItem;->updateTvByStatus(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileInfo;)V

    :cond_127
    :goto_127
    return-void
.end method

.method private static isValidContextForGlide(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_17

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_17

    :cond_16
    return v0

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onBind$0(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTvByStatus(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileInfo;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f11012a

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_2d

    iget-wide v2, p2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatDateString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2d
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v2

    sget-object v3, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    if-eq v2, v3, :cond_6c

    sget-object v3, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    if-ne v2, v3, :cond_3a

    goto :goto_6c

    :cond_3a
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/cloud/util/TransferUtil;->getTransStateDescription(Lcom/android/cloud/bean/TransferState$Status;)I

    move-result p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    goto :goto_8d

    :cond_6c
    :goto_6c
    iget-wide v2, p2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatDateString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    :goto_8d
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public markOnlyCloudFile()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    return-void
.end method

.method public needShowVideoTag(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_33

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/view/FileListItem;->isValidContextForGlide(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1e

    :cond_1a
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    :goto_1e
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    const v0, 0x7f0801cf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_38

    :cond_33
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_38
    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/encryption/PrivateFile;ZZ)V
    .registers 10

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_15

    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d

    :cond_15
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    if-eqz v3, :cond_29

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v3

    if-nez v3, :cond_29

    move v3, v0

    goto :goto_2a

    :cond_29
    move v3, v1

    :goto_2a
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2d
    invoke-virtual {p0, p3}, Landroid/view/View;->setSelected(Z)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_4d
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    sget-object p3, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11012a

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-static {v2, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_87

    :cond_83
    invoke-static {v3, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v2

    if-eqz v2, :cond_a0

    const v2, 0x7f0f0014

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_a8

    :cond_a0
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    :goto_a8
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/fileexplorer/view/FileListItem;->addStroke(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p3

    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p1, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->setPrivateFileIcon(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result p3

    if-nez p3, :cond_e3

    iget-boolean p3, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    if-eqz p3, :cond_dd

    goto :goto_e3

    :cond_dd
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f1

    :cond_e3
    :goto_e3
    if-nez p2, :cond_f1

    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result p1

    if-eqz p1, :cond_ee

    move v0, v1

    :cond_ee
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f1
    :goto_f1
    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/model/FileInfo;ZZ)V
    .registers 5

    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/view/FileListItem;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    instance-of v4, v1, Lcom/android/fileexplorer/model/PcModeFileInfo;

    if-eqz v4, :cond_10

    move-object v4, v1

    check-cast v4, Lcom/android/fileexplorer/model/PcModeFileInfo;

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    :goto_11
    instance-of v5, v1, Lcom/android/cloud/bean/CloudFileInfo;

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-eqz v5, :cond_1c

    move-object v5, v1

    check-cast v5, Lcom/android/cloud/bean/CloudFileInfo;

    goto :goto_4c

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x2e

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_44

    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/2addr v5, v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/fileexplorer/apptag/FileUtils;->isMovie(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/fileexplorer/view/FileListItem;->needShowVideoTag(Z)V

    goto :goto_4b

    :cond_44
    iget-object v5, v0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    if-eqz v5, :cond_4b

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4b
    :goto_4b
    const/4 v5, 0x0

    :goto_4c
    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz v2, :cond_60

    iget-object v10, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v10, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_75

    :cond_60
    iget-object v10, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    iget-boolean v10, v0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    if-eqz v10, :cond_71

    iget-boolean v10, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v10, :cond_71

    move v10, v7

    goto :goto_72

    :cond_71
    move v10, v9

    :goto_72
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_75
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    const v3, 0x7f11012a

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v8

    const-string v10, ""

    if-eqz v8, :cond_a1

    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    iget-object v11, v1, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_92

    goto :goto_9d

    :cond_92
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    invoke-static {v10, v11, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_9d
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bc

    :cond_a1
    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    iget-object v11, v1, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_ac

    goto :goto_b9

    :cond_ac
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_b9
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_bc
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_dd

    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v10

    iget-boolean v11, v0, Lcom/android/fileexplorer/view/FileListItem;->isMirror:Z

    if-eqz v11, :cond_d0

    const v11, 0x7f060102

    goto :goto_d3

    :cond_d0
    const v11, 0x7f06004f

    :goto_d3
    invoke-static {v11}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v11

    move-object/from16 v12, p4

    invoke-static {v8, v10, v12, v11}, Lcom/android/fileexplorer/model/Util;->textEmphasize(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_110

    :cond_dd
    iget-boolean v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mOnPcMode:Z

    if-eqz v8, :cond_f3

    if-eqz v4, :cond_f3

    iget-object v8, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f3

    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v10, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_110

    :cond_f3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_105

    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_110

    :cond_105
    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    new-instance v10, Landroidx/appcompat/app/s;

    const/4 v11, 0x7

    invoke-direct {v10, v11, v0, v1}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_110
    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_159

    invoke-virtual {v5}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v10, "folder"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_134

    iget-wide v10, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean v3, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {v10, v11, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14b

    :cond_134
    iget-wide v10, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean v6, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {v10, v11, v6}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v10, v11}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_14b
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v5, v2}, Lcom/android/fileexplorer/view/FileListItem;->dealCloudFile(Lcom/android/cloud/bean/CloudFileInfo;Z)V

    goto/16 :goto_1f3

    :cond_159
    iget-boolean v10, v1, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    if-nez v10, :cond_16c

    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    const v6, 0x7f11001b

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    goto/16 :goto_1f3

    :cond_16c
    iget-boolean v10, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v10, :cond_1d0

    instance-of v11, v1, Lcom/android/fileexplorer/model/StorageFileInfo;

    if-eqz v11, :cond_1ae

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f11003f

    new-array v12, v6, [Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Lcom/android/fileexplorer/model/StorageFileInfo;

    iget-wide v14, v13, Lcom/android/fileexplorer/model/StorageFileInfo;->availableSize:J

    invoke-static {v14, v15}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f110452

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v13, v13, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v13, v14}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v9

    invoke-virtual {v11, v12, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v10, v3, v6}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1ee

    :cond_1ae
    iget-wide v11, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v11, v12, v10}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0f0014

    iget v6, v1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    invoke-static {v3, v6}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1ee

    :cond_1d0
    iget-wide v11, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v11, v12, v10}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v10, v11}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1ee
    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    :goto_1f3
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_287

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCheckedMode = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "FileListItem"

    invoke-static {v6, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_282

    iget-boolean v3, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v3, :cond_282

    iget-object v3, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_282

    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getResID(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_242

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_287

    :cond_242
    iget-object v3, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v3, v6}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppIconHelper;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/fileexplorer/apptag/AppIconHelper;->APP_ICON_FILE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/fileexplorer/apptag/AppIconHelper;->existsAppIconInAssets(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27c

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/android/fileexplorer/model/FileIconHelper;->loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V

    goto :goto_287

    :cond_27c
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_287

    :cond_282
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_287
    :goto_287
    if-nez v5, :cond_28e

    iget-object v3, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/android/fileexplorer/view/FileListItem;->addStroke(Ljava/lang/String;)V

    :cond_28e
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    const v5, 0x7f0a027a

    iget-boolean v6, v0, Lcom/android/fileexplorer/view/FileListItem;->isGrid:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mOnPcMode:Z

    if-eqz v3, :cond_2c1

    if-eqz v4, :cond_2c1

    iget-object v3, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2c1

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2cd

    :cond_2c1
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    const v4, 0x7f0700ff

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v1, v3, v4, v9}, Lcom/android/fileexplorer/model/FileIconHelper;->setIcon(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZ)V

    :goto_2cd
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v1, :cond_2dc

    iget-boolean v3, v0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    if-eqz v3, :cond_2d6

    goto :goto_2dc

    :cond_2d6
    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2e6

    :cond_2dc
    :goto_2dc
    if-nez v2, :cond_2e6

    iget-object v2, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    if-eqz v1, :cond_2e3

    move v7, v9

    :cond_2e3
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2e6
    :goto_2e6
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
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mOnPcMode:Z

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mContext:Landroid/content/Context;

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
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mOnPcMode:Z

    const v0, 0x7f032c10

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    const v0, 0x7f032c11

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    const v0, 0x7f032c1c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    const v0, 0x7f032c13

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    const v0, 0x1020001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f032c42

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    const v0, 0x7f032c01

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mChoiceView:Landroid/widget/FrameLayout;

    const v0, 0x7f032d0e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    const v0, 0x7f03291f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    const v0, 0x7f032d63

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mCloudState:Landroid/widget/ImageView;

    const v0, 0x7f032d60

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/widget/TransferStatusProgress;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    return-void
.end method

.method public onShowGoList(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    return-void
.end method

.method public setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mCloudState:Landroid/widget/ImageView;

    if-eqz v0, :cond_3f

    const/4 v0, -0x1

    sget-object v1, Lcom/android/fileexplorer/view/FileListItem$1;->$SwitchMap$com$android$cloud$util$CloudFileUtils$FileCloudState:[I

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

.method public updateViewByCheckedStatueChange(ZZF)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    if-eqz p2, :cond_1f

    const/16 p2, 0x8

    if-eqz p1, :cond_1b

    cmpl-float p1, v1, p3

    if-eqz p1, :cond_17

    const/high16 p1, 0x3f800000  # 1.0f

    sub-float/2addr p1, p3

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_52

    :cond_17
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_52

    :cond_1b
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_52

    :cond_1f
    if-eqz p1, :cond_52

    cmpl-float p1, v1, p3

    const-string p2, "FileListItem"

    if-eqz p1, :cond_4d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateViewByCheckedStatueChange isChecked = true, progress = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_52

    :cond_4d
    const-string p1, "updateViewByCheckedStatueChange isChecked = true, show"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    :goto_52
    return-void
.end method
