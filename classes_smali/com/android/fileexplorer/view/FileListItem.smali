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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    .line 16
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    .line 10
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/R$styleable;->FileListItem:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->isMirror:Z

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    .line 3
    sget-boolean p3, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    iput-boolean p3, p0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/android/fileexplorer/R$styleable;->FileListItem:[I

    invoke-virtual {p3, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->isMirror:Z

    .line 6
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->isGrid:Z

    .line 7
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

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    const-string v0, "video/"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    .line 17
    if-eqz v0, :cond_1b

    .line 19
    if-eqz p1, :cond_16

    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    const/16 p1, 0x8

    .line 25
    :goto_18
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    :cond_1b
    return-void
.end method

.method private dealCloudFile(Lcom/android/cloud/bean/CloudFileInfo;Z)V
    .registers 8

    .line 1
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 3
    const/16 v1, 0x8

    .line 5
    if-eqz v0, :cond_11

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string v2, "video"

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/FileListItem;->needShowVideoTag(Z)V

    .line 31
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getUploadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudLocalFileId()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_44

    .line 65
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileListItem;->markOnlyCloudFile()V

    .line 68
    return-void

    .line 69
    :cond_44
    if-nez v0, :cond_5f

    .line 71
    if-nez v2, :cond_5f

    .line 73
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_5b

    .line 81
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 91
    return-void

    .line 92
    :cond_5b
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileListItem;->markOnlyCloudFile()V

    .line 95
    return-void

    .line 96
    :cond_5f
    const/4 v3, 0x0

    .line 97
    if-eqz v0, :cond_e1

    .line 99
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 102
    move-result-object v2

    .line 103
    sget-object v4, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_b3

    .line 111
    iget-object p2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 113
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_a8

    .line 119
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 122
    move-result-object p2

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    move-result p2

    .line 127
    if-nez p2, :cond_a4

    .line 129
    new-instance p2, Ljava/io/File;

    .line 131
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_a0

    .line 144
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 147
    move-result-object p2

    .line 148
    iput-object p2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 150
    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 155
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 157
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    goto :goto_a8

    .line 161
    :cond_a0
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileListItem;->markOnlyCloudFile()V

    .line 164
    return-void

    .line 165
    :cond_a4
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileListItem;->markOnlyCloudFile()V

    .line 168
    return-void

    .line 169
    :cond_a8
    :goto_a8
    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 171
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 174
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 176
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    goto :goto_dd

    .line 180
    :cond_b3
    sget-object v2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_DOWNLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 182
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 185
    if-nez p2, :cond_d8

    .line 187
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 189
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 194
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {p2, v1}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    .line 201
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 204
    move-result p2

    .line 205
    if-ltz p2, :cond_dd

    .line 207
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 209
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 212
    move-result v1

    .line 213
    invoke-virtual {p2, v1}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    .line 216
    goto :goto_dd

    .line 217
    :cond_d8
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 219
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_dd
    :goto_dd
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/FileListItem;->updateTvByStatus(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileInfo;)V

    .line 225
    goto :goto_127

    .line 226
    :cond_e1
    if-eqz v2, :cond_127

    .line 228
    invoke-virtual {v2}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 231
    move-result-object v0

    .line 232
    sget-object v4, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 234
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_fa

    .line 240
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 242
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 247
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 250
    goto :goto_124

    .line 251
    :cond_fa
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_UPLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 253
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 256
    if-nez p2, :cond_11f

    .line 258
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 260
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 265
    invoke-virtual {v2}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    .line 272
    invoke-virtual {v2}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 275
    move-result p2

    .line 276
    if-ltz p2, :cond_124

    .line 278
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 280
    invoke-virtual {v2}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 283
    move-result v0

    .line 284
    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    .line 287
    goto :goto_124

    .line 288
    :cond_11f
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 290
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :cond_124
    :goto_124
    invoke-direct {p0, v2, p1}, Lcom/android/fileexplorer/view/FileListItem;->updateTvByStatus(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileInfo;)V

    .line 296
    :cond_127
    :goto_127
    return-void
.end method

.method private static isValidContextForGlide(Landroid/content/Context;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p0, Landroid/app/Activity;

    .line 7
    if-eqz v1, :cond_17

    .line 9
    check-cast p0, Landroid/app/Activity;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_16

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_17

    .line 23
    :cond_16
    return v0

    .line 24
    :cond_17
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method private synthetic lambda$onBind$0(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    return-void
.end method

.method private updateTvByStatus(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileInfo;)V
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const v1, 0x7f11012a

    .line 9
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    if-nez p1, :cond_2d

    .line 15
    iget-wide v2, p2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 17
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatDateString(J)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-wide p1, p2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 29
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void

    .line 46
    :cond_2d
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 49
    move-result-object v2

    .line 50
    sget-object v3, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 52
    if-eq v2, v3, :cond_6c

    .line 54
    sget-object v3, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 56
    if-ne v2, v3, :cond_3a

    .line 58
    goto :goto_6c

    .line 59
    :cond_3a
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    .line 62
    move-result-wide v3

    .line 63
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-wide p1, p2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 75
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {v2}, Lcom/android/cloud/util/TransferUtil;->getTransStateDescription(Lcom/android/cloud/bean/TransferState$Status;)I

    .line 88
    move-result p1

    .line 89
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    .line 108
    goto :goto_8d

    .line 109
    :cond_6c
    :goto_6c
    iget-wide v2, p2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 111
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatDateString(J)Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-wide p1, p2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 123
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    .line 142
    :goto_8d
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/widget/ImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    .line 3
    return-object v0
.end method

.method public markOnlyCloudFile()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 13
    return-void
.end method

.method public needShowVideoTag(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz p1, :cond_33

    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/view/FileListItem;->isValidContextForGlide(Landroid/content/Context;)Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1a

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 30
    move-result-object p1

    .line 31
    :goto_1e
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 34
    move-result-object p1

    .line 35
    const v0, 0x7f0801cf

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 45
    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 51
    goto :goto_38

    .line 52
    :cond_33
    const/16 p1, 0x8

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    :goto_38
    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/encryption/PrivateFile;ZZ)V
    .registers 10

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_15

    .line 93
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 95
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d

    .line 96
    :cond_15
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
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

    .line 98
    :goto_2d
    invoke-virtual {p0, p3}, Landroid/view/View;->setSelected(Z)V

    .line 99
    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 101
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 102
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 103
    :cond_4d
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    .line 105
    sget-object p3, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11012a

    .line 107
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 110
    invoke-static {v2, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_87

    :cond_83
    invoke-static {v3, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    :goto_87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v2

    if-eqz v2, :cond_a0

    const v2, 0x7f0f0014

    .line 113
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_a8

    .line 114
    :cond_a0
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    .line 115
    :goto_a8
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/fileexplorer/view/FileListItem;->addStroke(Ljava/lang/String;)V

    .line 119
    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p3

    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p1, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->setPrivateFileIcon(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/widget/ImageView;)V

    .line 121
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result p3

    if-nez p3, :cond_e3

    iget-boolean p3, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    if-eqz p3, :cond_dd

    goto :goto_e3

    .line 122
    :cond_dd
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f1

    :cond_e3
    :goto_e3
    if-nez p2, :cond_f1

    .line 123
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

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/view/FileListItem;->onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 2
    instance-of v4, v1, Lcom/android/fileexplorer/model/PcModeFileInfo;

    if-eqz v4, :cond_10

    .line 3
    move-object v4, v1

    check-cast v4, Lcom/android/fileexplorer/model/PcModeFileInfo;

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    .line 4
    :goto_11
    instance-of v5, v1, Lcom/android/cloud/bean/CloudFileInfo;

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-eqz v5, :cond_1c

    .line 5
    move-object v5, v1

    check-cast v5, Lcom/android/cloud/bean/CloudFileInfo;

    goto :goto_4c

    .line 6
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x2e

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_44

    .line 7
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

    .line 8
    invoke-static {v5}, Lcom/android/fileexplorer/apptag/FileUtils;->isMovie(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/fileexplorer/view/FileListItem;->needShowVideoTag(Z)V

    goto :goto_4b

    .line 9
    :cond_44
    iget-object v5, v0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    if-eqz v5, :cond_4b

    .line 10
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4b
    :goto_4b
    const/4 v5, 0x0

    :goto_4c
    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz v2, :cond_60

    .line 11
    iget-object v10, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v10, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 13
    iget-object v10, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_75

    .line 14
    :cond_60
    iget-object v10, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 15
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

    .line 16
    :goto_75
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    const v3, 0x7f11012a

    .line 17
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v8

    const-string v10, ""

    if-eqz v8, :cond_a1

    .line 19
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

    .line 20
    invoke-static {v10, v11, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 21
    :goto_9d
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bc

    .line 22
    :cond_a1
    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    iget-object v11, v1, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_ac

    goto :goto_b9

    .line 23
    :cond_ac
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 24
    iget-object v11, v1, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_b9
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :goto_bc
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_dd

    .line 26
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

    .line 27
    :cond_dd
    iget-boolean v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mOnPcMode:Z

    if-eqz v8, :cond_f3

    if-eqz v4, :cond_f3

    iget-object v8, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f3

    .line 28
    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v10, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_110

    .line 29
    :cond_f3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_105

    .line 30
    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_110

    .line 31
    :cond_105
    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    new-instance v10, Landroidx/appcompat/app/s;

    const/4 v11, 0x7

    invoke-direct {v10, v11, v0, v1}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    :goto_110
    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_159

    .line 34
    invoke-virtual {v5}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v10, "folder"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_134

    .line 35
    iget-wide v10, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean v3, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {v10, v11, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14b

    .line 36
    :cond_134
    iget-wide v10, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean v6, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {v10, v11, v6}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 38
    invoke-static {v10, v11}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :goto_14b
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-direct {v0, v5, v2}, Lcom/android/fileexplorer/view/FileListItem;->dealCloudFile(Lcom/android/cloud/bean/CloudFileInfo;Z)V

    goto/16 :goto_1f3

    .line 41
    :cond_159
    iget-boolean v10, v1, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    if-nez v10, :cond_16c

    .line 42
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    const v6, 0x7f11001b

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 43
    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    goto/16 :goto_1f3

    .line 44
    :cond_16c
    iget-boolean v10, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v10, :cond_1d0

    .line 45
    instance-of v11, v1, Lcom/android/fileexplorer/model/StorageFileInfo;

    if-eqz v11, :cond_1ae

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f11003f

    new-array v12, v6, [Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Lcom/android/fileexplorer/model/StorageFileInfo;

    iget-wide v14, v13, Lcom/android/fileexplorer/model/StorageFileInfo;->availableSize:J

    .line 47
    invoke-static {v14, v15}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v9

    .line 48
    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f110452

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v13, v13, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 50
    invoke-static {v13, v14}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v9

    .line 51
    invoke-virtual {v11, v12, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-static {v8, v10, v3, v6}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1ee

    .line 54
    :cond_1ae
    iget-wide v11, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v11, v12, v10}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0f0014

    iget v6, v1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 56
    invoke-static {v3, v6}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1ee

    .line 58
    :cond_1d0
    iget-wide v11, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v11, v12, v10}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 60
    invoke-static {v10, v11}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_1ee
    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/FileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 63
    :goto_1f3
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_287

    const/4 v6, 0x0

    .line 64
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
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

    .line 66
    iget-boolean v3, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v3, :cond_282

    iget-object v3, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_282

    .line 67
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v3, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getResID(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_242

    .line 69
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

    .line 70
    :cond_242
    iget-object v3, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v3, v6}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 71
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

    .line 72
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/android/fileexplorer/model/FileIconHelper;->loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V

    goto :goto_287

    .line 73
    :cond_27c
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_287

    .line 74
    :cond_282
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_287
    :goto_287
    if-nez v5, :cond_28e

    .line 75
    iget-object v3, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/android/fileexplorer/view/FileListItem;->addStroke(Ljava/lang/String;)V

    .line 76
    :cond_28e
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    const v5, 0x7f0a027a

    iget-boolean v6, v0, Lcom/android/fileexplorer/view/FileListItem;->isGrid:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 78
    iget-boolean v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mOnPcMode:Z

    if-eqz v3, :cond_2c1

    if-eqz v4, :cond_2c1

    iget-object v3, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2c1

    .line 79
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

    .line 80
    :cond_2c1
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    const v4, 0x7f0700ff

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v1, v3, v4, v9}, Lcom/android/fileexplorer/model/FileIconHelper;->setIcon(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZ)V

    .line 81
    :goto_2cd
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v1, :cond_2dc

    iget-boolean v3, v0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    if-eqz v3, :cond_2d6

    goto :goto_2dc

    .line 82
    :cond_2d6
    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2e6

    :cond_2dc
    :goto_2dc
    if-nez v2, :cond_2e6

    .line 83
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

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 6
    and-int/lit16 p1, p1, 0x2000

    .line 8
    if-eqz p1, :cond_b

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mOnPcMode:Z

    .line 15
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    move-result-object v0

    .line 18
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 20
    and-int/lit16 v0, v0, 0x2000

    .line 22
    if-eqz v0, :cond_19

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mOnPcMode:Z

    .line 29
    const v0, 0x7f0a0186

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0a0187

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0a018a

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0a0185

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/ImageView;

    .line 71
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    .line 73
    const v0, 0x1020001

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/CheckBox;

    .line 82
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 84
    const v0, 0x7f0a01d4

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/ImageView;

    .line 93
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f0a0197

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/FrameLayout;

    .line 104
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mChoiceView:Landroid/widget/FrameLayout;

    .line 106
    const v0, 0x7f0a0098

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/widget/ImageView;

    .line 115
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f0a0489

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/widget/ImageView;

    .line 126
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0a00f5

    .line 131
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/widget/ImageView;

    .line 137
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mCloudState:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f0a00f6

    .line 142
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/android/cloud/widget/TransferStatusProgress;

    .line 148
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 150
    return-void
.end method

.method public onShowGoList(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    .line 12
    return-void
.end method

.method public setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mCloudState:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_3f

    .line 5
    const/4 v0, -0x1

    .line 6
    sget-object v1, Lcom/android/fileexplorer/view/FileListItem$1;->$SwitchMap$com$android$cloud$util$CloudFileUtils$FileCloudState:[I

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    move-result p1

    .line 12
    aget p1, v1, p1

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq p1, v1, :cond_38

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq p1, v1, :cond_29

    .line 20
    const/4 v1, 0x3

    .line 21
    if-eq p1, v1, :cond_25

    .line 23
    const/4 v1, 0x4

    .line 24
    if-eq p1, v1, :cond_21

    .line 26
    const/4 v1, 0x5

    .line 27
    if-eq p1, v1, :cond_1d

    .line 29
    goto :goto_2c

    .line 30
    :cond_1d
    const v0, 0x7f080226

    .line 33
    goto :goto_2c

    .line 34
    :cond_21
    const v0, 0x7f080225

    .line 37
    goto :goto_2c

    .line 38
    :cond_25
    const v0, 0x7f080224

    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    const v0, 0x7f080223

    .line 45
    :goto_2c
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mCloudState:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mCloudState:Landroid/widget/ImageView;

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    goto :goto_3f

    .line 57
    :cond_38
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mCloudState:Landroid/widget/ImageView;

    .line 59
    const/16 v0, 0x8

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method

.method public updateViewByCheckedStatueChange(ZZF)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v1, 0x1

    .line 7
    if-eqz p2, :cond_1f

    .line 9
    const/16 p2, 0x8

    .line 11
    if-eqz p1, :cond_1b

    .line 13
    cmpl-float p1, v1, p3

    .line 15
    if-eqz p1, :cond_17

    .line 17
    const/high16 p1, 0x3f800000  # 1.0f

    .line 19
    sub-float/2addr p1, p3

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 23
    goto :goto_52

    .line 24
    :cond_17
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    goto :goto_52

    .line 28
    :cond_1b
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    goto :goto_52

    .line 32
    :cond_1f
    if-eqz p1, :cond_52

    .line 34
    cmpl-float p1, v1, p3

    .line 36
    const-string p2, "FileListItem"

    .line 38
    if-eqz p1, :cond_4d

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v0, "updateViewByCheckedStatueChange isChecked = true, progress = "

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 62
    const/4 p2, 0x0

    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 68
    const/4 p2, 0x0

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 72
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 77
    goto :goto_52

    .line 78
    :cond_4d
    const-string p1, "updateViewByCheckedStatueChange isChecked = true, show"

    .line 80
    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_52
    :goto_52
    return-void
.end method
