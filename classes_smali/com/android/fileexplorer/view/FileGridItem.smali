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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mVideoTag:Landroid/widget/ImageView;

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

.method private dealCloudFile(Lcom/android/cloud/bean/CloudFileInfo;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getUploadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    .line 40
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/FileGridItem;->needShowMask(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/TransferState;)Z

    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x1

    .line 45
    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/fileexplorer/model/FileIconHelper;->loadFileIntoImg(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;ZZ)V

    .line 48
    iget-boolean v2, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 50
    const/16 v3, 0x8

    .line 52
    if-eqz v2, :cond_40

    .line 54
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 56
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 64
    return-void

    .line 65
    :cond_40
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudLocalFileId()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4e

    .line 75
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileGridItem;->markOnlyCloudFile()V

    .line 78
    return-void

    .line 79
    :cond_4e
    if-nez v0, :cond_69

    .line 81
    if-nez v1, :cond_69

    .line 83
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_65

    .line 91
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 93
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 101
    return-void

    .line 102
    :cond_65
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileGridItem;->markOnlyCloudFile()V

    .line 105
    return-void

    .line 106
    :cond_69
    const/4 v2, 0x0

    .line 107
    if-eqz v0, :cond_e0

    .line 109
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 112
    move-result-object v1

    .line 113
    sget-object v4, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 115
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_bd

    .line 121
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_b2

    .line 129
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_ae

    .line 139
    new-instance v1, Ljava/io/File;

    .line 141
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_aa

    .line 154
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    iput-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 160
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 165
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 167
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    goto :goto_b2

    .line 171
    :cond_aa
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileGridItem;->markOnlyCloudFile()V

    .line 174
    return-void

    .line 175
    :cond_ae
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/FileGridItem;->markOnlyCloudFile()V

    .line 178
    return-void

    .line 179
    :cond_b2
    :goto_b2
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 184
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 186
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    goto :goto_11b

    .line 190
    :cond_bd
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_DOWNLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 195
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 197
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 202
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {p1, v1}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    .line 209
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 212
    move-result p1

    .line 213
    if-ltz p1, :cond_11b

    .line 215
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 217
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 220
    move-result v0

    .line 221
    invoke-virtual {p1, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    .line 224
    goto :goto_11b

    .line 225
    :cond_e0
    if-eqz v1, :cond_11b

    .line 227
    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 230
    move-result-object p1

    .line 231
    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 236
    move-result p1

    .line 237
    if-eqz p1, :cond_f9

    .line 239
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 241
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 249
    goto :goto_11b

    .line 250
    :cond_f9
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 252
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 257
    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {p1, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    .line 264
    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 267
    move-result p1

    .line 268
    if-ltz p1, :cond_116

    .line 270
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 272
    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 275
    move-result v0

    .line 276
    invoke-virtual {p1, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    .line 279
    :cond_116
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_UPLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 284
    :cond_11b
    :goto_11b
    return-void
.end method

.method private needShowMask(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/TransferState;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_c

    .line 4
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 7
    move-result-object p1

    .line 8
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 10
    if-eq p1, v1, :cond_c

    .line 12
    return v0

    .line 13
    :cond_c
    if-eqz p2, :cond_17

    .line 15
    invoke-virtual {p2}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 18
    move-result-object p1

    .line 19
    sget-object p2, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 21
    if-eq p1, p2, :cond_17

    .line 23
    return v0

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method private updateTvByStatus(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 3
    if-eqz v0, :cond_65

    .line 5
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 8
    move-result-object v0

    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 12
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getCloudFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_41

    .line 22
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 28
    if-eq v1, v2, :cond_41

    .line 30
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 36
    if-ne v1, v2, :cond_26

    .line 38
    goto :goto_41

    .line 39
    :cond_26
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCreateTimeTv:Landroid/widget/TextView;

    .line 41
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    .line 44
    move-result-wide v1

    .line 45
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mSource:Landroid/widget/TextView;

    .line 54
    invoke-virtual {v0}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/android/cloud/util/TransferUtil;->getTransStateDescription(Lcom/android/cloud/bean/TransferState$Status;)I

    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 65
    return-void

    .line 66
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCreateTimeTv:Landroid/widget/TextView;

    .line 68
    iget-wide v1, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 70
    iget-boolean v3, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 72
    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mSource:Landroid/widget/TextView;

    .line 81
    iget-boolean v1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 83
    if-eqz v1, :cond_5b

    .line 85
    iget p1, p1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 87
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->formatDirectoryFileCount(I)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    goto :goto_61

    .line 92
    :cond_5b
    iget-wide v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 94
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    :goto_61
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void

    .line 102
    :cond_65
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCreateTimeTv:Landroid/widget/TextView;

    .line 104
    if-eqz v0, :cond_74

    .line 106
    iget-wide v1, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 108
    iget-boolean v3, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 110
    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_74
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mSource:Landroid/widget/TextView;

    .line 119
    if-eqz v0, :cond_9d

    .line 121
    iget-boolean v1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 123
    if-eqz v1, :cond_94

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    iget p1, p1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 132
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->formatDirectoryFileCount(I)Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string p1, ""

    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    goto :goto_9a

    .line 149
    :cond_94
    iget-wide v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 151
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    :goto_9a
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_9d
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/widget/ImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    .line 3
    return-object v0
.end method

.method public markOnlyCloudFile()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 13
    return-void
.end method

.method public onBind(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;ZZ)V
    .registers 8

    const/4 p1, 0x0

    if-nez p2, :cond_10

    const/4 p2, 0x4

    .line 40
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {p0, p4}, Landroid/view/View;->setSelected(Z)V

    .line 45
    iget-object v1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    if-eqz p3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 47
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 48
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 49
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 50
    :cond_3d
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p4, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a027a

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 52
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p4

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {p4, p2, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->setPrivateFileIcon(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/widget/ImageView;)V

    .line 53
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/FileGridItem;->addStroke(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isCheckedMode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FileGridItem"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    .line 58
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCreateTimeTv:Landroid/widget/TextView;

    if-eqz p1, :cond_8c

    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_8c
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCloudState:Landroid/widget/ImageView;

    if-eqz p1, :cond_93

    .line 61
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :cond_93
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mSource:Landroid/widget/TextView;

    if-eqz p1, :cond_9a

    .line 63
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

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/view/FileGridItem;->onBind(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 2
    instance-of v4, v1, Lcom/android/fileexplorer/model/PcModeFileInfo;

    const/4 v5, 0x0

    if-eqz v4, :cond_11

    .line 3
    move-object v4, v1

    check-cast v4, Lcom/android/fileexplorer/model/PcModeFileInfo;

    goto :goto_12

    :cond_11
    move-object v4, v5

    :goto_12
    if-nez v1, :cond_21

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_21
    const/4 v6, 0x0

    .line 7
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 9
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileGridItem;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v8, 0x8

    if-eqz v2, :cond_30

    move v9, v6

    goto :goto_31

    :cond_30
    move v9, v8

    :goto_31
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileGridItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 11
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 12
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    const/high16 v9, -0x10000

    move-object/from16 v10, p5

    invoke-static {v3, v7, v10, v9}, Lcom/android/fileexplorer/model/Util;->textEmphasize(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_68

    .line 13
    :cond_4b
    iget-boolean v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mOnPcMode:Z

    if-eqz v3, :cond_61

    if-eqz v4, :cond_61

    iget-object v3, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 14
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_68

    .line 15
    :cond_61
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_68
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    const v7, 0x7f0a027a

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v7, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 17
    instance-of v3, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v3, :cond_7d

    .line 18
    move-object v3, v1

    check-cast v3, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-direct {v0, v3}, Lcom/android/fileexplorer/view/FileGridItem;->dealCloudFile(Lcom/android/cloud/bean/CloudFileInfo;)V

    goto :goto_aa

    .line 19
    :cond_7d
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    iget-object v7, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/FileGridItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 21
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    if-eqz v3, :cond_90

    .line 22
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :cond_90
    iget-boolean v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mOnPcMode:Z

    if-eqz v3, :cond_a0

    if-eqz v4, :cond_a0

    iget-object v3, v4, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a0

    .line 24
    iget-object v4, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_aa

    .line 25
    :cond_a0
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v3, v1, v4, v6, v7}, Lcom/android/fileexplorer/model/FileIconHelper;->loadFileIntoImg(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;ZZ)V

    .line 26
    :goto_aa
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/fileexplorer/view/FileGridItem;->addStroke(Ljava/lang/String;)V

    .line 27
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
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

    .line 29
    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v2, :cond_13c

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13c

    .line 30
    iget-object v2, v0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getResID(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_fd

    .line 32
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

    .line 33
    :cond_fd
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 34
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

    .line 35
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/android/fileexplorer/model/FileIconHelper;->loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V

    goto :goto_141

    .line 36
    :cond_136
    iget-object v2, v0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_141

    .line 37
    :cond_13c
    iget-object v2, v0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    :goto_141
    iget-object v2, v0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    .line 39
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/view/FileGridItem;->updateTvByStatus(Lcom/android/fileexplorer/model/FileInfo;)V

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
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mOnPcMode:Z

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
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mContext:Landroid/content/Context;

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
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mOnPcMode:Z

    .line 29
    const v0, 0x7f0a0186

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileNameTextView:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0a0185

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/ImageView;

    .line 49
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mFileImageView:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0a0098

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mAppIcon:Landroid/widget/ImageView;

    .line 62
    const v0, 0x1020001

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/CheckBox;

    .line 71
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 73
    const v0, 0x7f0a0489

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/ImageView;

    .line 82
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mVideoTag:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0a00f5

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/ImageView;

    .line 93
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCloudState:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f0a00f6

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/android/cloud/widget/TransferStatusProgress;

    .line 104
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 106
    const v0, 0x7f0a018b

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/widget/TextView;

    .line 115
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mSource:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0a0179

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/widget/TextView;

    .line 126
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCreateTimeTv:Landroid/widget/TextView;

    .line 128
    return-void
.end method

.method public setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCloudState:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_3f

    .line 5
    const/4 v0, -0x1

    .line 6
    sget-object v1, Lcom/android/fileexplorer/view/FileGridItem$1;->$SwitchMap$com$android$cloud$util$CloudFileUtils$FileCloudState:[I

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
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCloudState:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCloudState:Landroid/widget/ImageView;

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    goto :goto_3f

    .line 57
    :cond_38
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItem;->mCloudState:Landroid/widget/ImageView;

    .line 59
    const/16 v0, 0x8

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method

.method public updateViewByCheckedStatueChange(Z)V
    .registers 2

    return-void
.end method
