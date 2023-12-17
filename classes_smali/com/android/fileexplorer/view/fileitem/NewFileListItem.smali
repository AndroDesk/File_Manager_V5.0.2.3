.class public Lcom/android/fileexplorer/view/fileitem/NewFileListItem;
.super Lcom/android/fileexplorer/view/FileListItemWithFav;
.source "NewFileListItem.java"


# static fields
.field public static final sItemPaddingSize:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const v0, 0x7f070247

    .line 4
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 7
    move-result v0

    .line 8
    sput v0, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->sItemPaddingSize:I

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FileListItemWithFav;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/FileListItemWithFav;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/FileListItemWithFav;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private dealCloudFile(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;Z)V
    .registers 9

    .line 1
    iget-object v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 3
    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    .line 7
    iget-wide v2, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const-string v2, "video"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/FileListItem;->needShowVideoTag(Z)V

    .line 29
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 31
    const/16 v2, 0x8

    .line 33
    if-eqz v1, :cond_2d

    .line 35
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 45
    return-void

    .line 46
    :cond_2d
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 57
    move-result-object v1

    .line 58
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getUploadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudLocalFileId()Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_53

    .line 80
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->markOnlyCloudFile()V

    .line 83
    return-void

    .line 84
    :cond_53
    if-nez v1, :cond_6e

    .line 86
    if-nez v3, :cond_6e

    .line 88
    iget-object p1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_6a

    .line 96
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 98
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 106
    return-void

    .line 107
    :cond_6a
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->markOnlyCloudFile()V

    .line 110
    return-void

    .line 111
    :cond_6e
    const/4 v4, 0x0

    .line 112
    if-eqz v1, :cond_f6

    .line 114
    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 117
    move-result-object v3

    .line 118
    sget-object v5, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 120
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_c8

    .line 126
    iget-object p2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 128
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_bd

    .line 134
    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 138
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    move-result p2

    .line 142
    if-nez p2, :cond_b9

    .line 144
    new-instance p2, Ljava/io/File;

    .line 146
    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 149
    move-result-object v3

    .line 150
    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_b5

    .line 159
    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 162
    move-result-object p2

    .line 163
    iput-object p2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 165
    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 168
    move-result-object p2

    .line 169
    iput-object p2, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 171
    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 173
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 176
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 178
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    goto :goto_bd

    .line 182
    :cond_b5
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->markOnlyCloudFile()V

    .line 185
    return-void

    .line 186
    :cond_b9
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->markOnlyCloudFile()V

    .line 189
    return-void

    .line 190
    :cond_bd
    :goto_bd
    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 192
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 195
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 197
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    goto :goto_f2

    .line 201
    :cond_c8
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_DOWNLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 206
    if-nez p2, :cond_ed

    .line 208
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 210
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 215
    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    .line 222
    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 225
    move-result p2

    .line 226
    if-ltz p2, :cond_f2

    .line 228
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 230
    invoke-virtual {v1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 233
    move-result v0

    .line 234
    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    .line 237
    goto :goto_f2

    .line 238
    :cond_ed
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 240
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_f2
    :goto_f2
    invoke-direct {p0, v1, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->updateTvByStatus(Lcom/android/cloud/bean/TransferState;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    .line 246
    goto :goto_13c

    .line 247
    :cond_f6
    if-eqz v3, :cond_13c

    .line 249
    invoke-virtual {v3}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 252
    move-result-object v0

    .line 253
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_10f

    .line 261
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 263
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 268
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 271
    goto :goto_139

    .line 272
    :cond_10f
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_UPLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 277
    if-nez p2, :cond_134

    .line 279
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 281
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 286
    invoke-virtual {v3}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    .line 293
    invoke-virtual {v3}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 296
    move-result p2

    .line 297
    if-ltz p2, :cond_139

    .line 299
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 301
    invoke-virtual {v3}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 304
    move-result v0

    .line 305
    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    .line 308
    goto :goto_139

    .line 309
    :cond_134
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 311
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :cond_139
    :goto_139
    invoke-direct {p0, v3, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->updateTvByStatus(Lcom/android/cloud/bean/TransferState;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    .line 317
    :cond_13c
    :goto_13c
    return-void
.end method

.method private setFileSizeText(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iget-object v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_17

    .line 19
    iget-object v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_17
    iget-object v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_24

    .line 32
    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_39

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :cond_39
    return-void
.end method

.method private updateTvByStatus(Lcom/android/cloud/bean/TransferState;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V
    .registers 9

    .line 1
    if-nez p1, :cond_6

    .line 3
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setFileSizeText(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    .line 6
    return-void

    .line 7
    :cond_6
    const v0, 0x7f11012a

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 20
    if-eq v1, v2, :cond_47

    .line 22
    sget-object v2, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 24
    if-ne v1, v2, :cond_1a

    .line 26
    goto :goto_47

    .line 27
    :cond_1a
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileSizeTextView:Landroid/widget/TextView;

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    .line 37
    move-result-wide v4

    .line 38
    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object p1, p2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 47
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {v1}, Lcom/android/cloud/util/TransferUtil;->getTransStateDescription(Lcom/android/cloud/bean/TransferState$Status;)I

    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    goto :goto_4a

    .line 72
    :cond_47
    :goto_47
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setFileSizeText(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    .line 75
    :goto_4a
    return-void
.end method


# virtual methods
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
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 13
    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZ)V
    .registers 6

    .line 1
    iget-object v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 3
    instance-of v1, v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 5
    if-eqz v1, :cond_36

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->onBindForFileInfo(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZ)V

    .line 10
    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 12
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 14
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mFavoriteTagView:Landroid/view/View;

    .line 16
    const/16 p3, 0x8

    .line 18
    if-eqz p2, :cond_2a

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 23
    move-result p2

    .line 24
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p1, :cond_1e

    .line 29
    move v1, v0

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v1, p3

    .line 32
    :goto_1f
    if-eq p2, v1, :cond_2a

    .line 34
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItemWithFav;->mFavoriteTagView:Landroid/view/View;

    .line 36
    if-eqz p1, :cond_26

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v0, p3

    .line 40
    :goto_27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_2a
    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 45
    if-eqz p1, :cond_3d

    .line 47
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    .line 49
    if-eqz p1, :cond_3d

    .line 51
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    goto :goto_3d

    .line 55
    :cond_36
    instance-of v0, v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 57
    if-eqz v0, :cond_3d

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->onBindForPrivateFile(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZ)V

    .line 62
    :cond_3d
    :goto_3d
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_59

    .line 68
    const p1, 0x7f07024a

    .line 71
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 74
    move-result p2

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 78
    move-result p3

    .line 79
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 82
    move-result p1

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 86
    move-result v0

    .line 87
    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 90
    :cond_59
    return-void
.end method

.method public onBindForFileInfo(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZ)V
    .registers 5

    const-string v0, "Trace_onBindForFileInfo"

    .line 1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, ""

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->onBindForFileInfo(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZLjava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBindForFileInfo(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZLjava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 4
    iget-object v3, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz p2, :cond_23

    .line 5
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 7
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_38

    .line 8
    :cond_23
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
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

    .line 10
    :goto_38
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 11
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_5d

    .line 12
    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    const-string v8, "/storage/emulated/0/MIUI"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 13
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5d

    .line 14
    :cond_51
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->owner:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_5d
    :goto_5d
    invoke-direct/range {p0 .. p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setFileSizeText(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    .line 17
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_83

    .line 18
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

    .line 19
    :cond_83
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_8a
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    const v8, 0x7f0a027a

    iget-boolean v9, v0, Lcom/android/fileexplorer/view/FileListItem;->isGrid:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 21
    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    instance-of v7, v7, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v7, :cond_a2

    .line 22
    invoke-direct/range {p0 .. p2}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->dealCloudFile(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;Z)V

    goto :goto_e1

    .line 23
    :cond_a2
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 24
    sget-object v7, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {v0, v7}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 25
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    if-eqz v7, :cond_b5

    .line 26
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :cond_b5
    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_da

    .line 28
    iget-object v8, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v8, v7, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 29
    invoke-static {v7}, Lcom/android/fileexplorer/apptag/FileUtils;->isMovie(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/fileexplorer/view/FileListItem;->needShowVideoTag(Z)V

    goto :goto_e1

    .line 30
    :cond_da
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mVideoTag:Landroid/widget/ImageView;

    if-eqz v7, :cond_e1

    .line 31
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    :cond_e1
    :goto_e1
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_15c

    const/4 v8, 0x0

    .line 33
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_157

    .line 34
    iget-boolean v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    if-eqz v7, :cond_157

    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_157

    .line 35
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    iget v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->resId:I

    if-eqz v7, :cond_118

    .line 37
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

    .line 38
    :cond_118
    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 39
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

    .line 40
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/android/fileexplorer/model/FileIconHelper;->loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V

    goto :goto_15c

    .line 41
    :cond_151
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15c

    .line 42
    :cond_157
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    :cond_15c
    :goto_15c
    iget-object v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    .line 44
    iget-boolean v7, v0, Lcom/android/fileexplorer/view/FileListItem;->mOnPcMode:Z

    if-eqz v7, :cond_189

    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    instance-of v8, v7, Lcom/android/fileexplorer/model/PcModeFileInfo;

    if-eqz v8, :cond_189

    check-cast v7, Lcom/android/fileexplorer/model/PcModeFileInfo;

    iget-object v7, v7, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_189

    .line 45
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

    .line 46
    :cond_189
    iget-object v7, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v7, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v8, v0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    const v9, 0x7f0700ff

    invoke-static {v9}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v9

    invoke-static {v7, v8, v9, v6}, Lcom/android/fileexplorer/model/FileIconHelper;->setIcon(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;IZ)V

    .line 47
    :goto_199
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    if-eqz p2, :cond_1ae

    .line 48
    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 50
    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1cf

    .line 51
    :cond_1ae
    iget-object v2, v0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v2, v0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1ca

    iget-boolean v1, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    if-eqz v1, :cond_1ca

    .line 53
    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 54
    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1cf

    .line 55
    :cond_1ca
    iget-object v1, v0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1cf
    return-void
.end method

.method public onBindForPrivateFile(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;ZZ)V
    .registers 8

    .line 1
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_15

    .line 6
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 8
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 13
    invoke-virtual {v2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 16
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    goto :goto_27

    .line 22
    :cond_15
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 24
    const/4 v3, 0x4

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v2, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 30
    iget-boolean v3, p0, Lcom/android/fileexplorer/view/FileListItem;->forceHideGoList:Z

    .line 32
    if-eqz v3, :cond_23

    .line 34
    move v3, v0

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v3, v1

    .line 37
    :goto_24
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :goto_27
    invoke-virtual {p0, p3}, Landroid/view/View;->setSelected(Z)V

    .line 43
    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    .line 45
    if-eqz p3, :cond_38

    .line 47
    iget-object v2, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->owner:Ljava/lang/String;

    .line 49
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_38
    sget-object p3, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 59
    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 62
    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileNameTextView:Landroid/widget/TextView;

    .line 64
    iget-object v2, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListItem;->setFileSizeText(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    .line 72
    iget-object p3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    .line 74
    iget-object v2, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 76
    check-cast v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 78
    invoke-virtual {v2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSourcePath()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 88
    move-result-object p3

    .line 89
    iget-object v2, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 91
    check-cast v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 93
    iget-object v3, p0, Lcom/android/fileexplorer/view/FileListItem;->mFileImageView:Landroid/widget/ImageView;

    .line 95
    invoke-virtual {p3, v2, v3}, Lcom/android/fileexplorer/model/FileIconHelper;->setPrivateFileIcon(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/widget/ImageView;)V

    .line 98
    iget-object p3, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 100
    check-cast p3, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 102
    invoke-virtual {p3}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 105
    move-result p3

    .line 106
    if-nez p3, :cond_76

    .line 108
    iget-boolean p3, p0, Lcom/android/fileexplorer/view/FileListItem;->forceShowGoList:Z

    .line 110
    if-eqz p3, :cond_70

    .line 112
    goto :goto_76

    .line 113
    :cond_70
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    goto :goto_81

    .line 119
    :cond_76
    :goto_76
    if-nez p2, :cond_81

    .line 121
    iget-boolean p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    .line 123
    if-eqz p1, :cond_81

    .line 125
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 127
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :cond_81
    :goto_81
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
    sget-object v1, Lcom/android/fileexplorer/view/fileitem/NewFileListItem$1;->$SwitchMap$com$android$cloud$util$CloudFileUtils$FileCloudState:[I

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

.method public updateViewByCheckedStatueChange(ZZ)V
    .registers 4

    .line 1
    const/16 v0, 0x8

    .line 3
    if-eqz p2, :cond_13

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 7
    if-eqz p1, :cond_b

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_b
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 14
    if-eqz p1, :cond_2b

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    goto :goto_2b

    .line 20
    :cond_13
    iget-object p2, p0, Lcom/android/fileexplorer/view/FileListItem;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 22
    if-eqz p2, :cond_1d

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_26

    .line 30
    :cond_1d
    if-eqz p1, :cond_26

    .line 32
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    :cond_2b
    :goto_2b
    return-void
.end method
