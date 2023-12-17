.class public Lcom/android/fileexplorer/view/InformationDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "InformationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;,
        Lcom/android/fileexplorer/view/InformationDialog$MyHandler;
    }
.end annotation


# static fields
.field private static final ID_USER:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "InformationDialog"


# instance fields
.field private isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActivity:Landroid/app/Activity;

.field public mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

.field private mCurrentPath:Ljava/lang/String;

.field private mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    iput-object p2, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 14
    instance-of v0, p2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 16
    if-eqz v0, :cond_15

    .line 18
    check-cast p2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 20
    iput-object p2, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 22
    :cond_15
    iput-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mActivity:Landroid/app/Activity;

    .line 24
    iput-object p3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCurrentPath:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/InformationDialog;)Landroid/app/Activity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/InformationDialog;->mActivity:Landroid/app/Activity;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/InformationDialog;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCurrentPath:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$184(Lcom/android/fileexplorer/view/InformationDialog;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCurrentPath:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCurrentPath:Ljava/lang/String;

    .line 20
    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/InformationDialog;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    return-object p0
.end method

.method private asyncGetSize()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mHandler:Landroid/os/Handler;

    .line 5
    iget-object v2, p0, Lcom/android/fileexplorer/view/InformationDialog;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 15
    return-void
.end method


# virtual methods
.method public asyncGetFilePath(Ljava/lang/String;Landroid/view/View;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/InformationDialog$2;

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/fileexplorer/view/InformationDialog$2;-><init>(Lcom/android/fileexplorer/view/InformationDialog;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    .line 10
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/String;

    .line 13
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d008a

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/android/fileexplorer/view/InformationDialog$MyHandler;

    .line 15
    invoke-direct {v1, v0}, Lcom/android/fileexplorer/view/InformationDialog$MyHandler;-><init>(Landroid/view/View;)V

    .line 18
    iput-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mHandler:Landroid/os/Handler;

    .line 20
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    iget-boolean v3, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 24
    if-eqz v3, :cond_27

    .line 26
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mActivity:Landroid/app/Activity;

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/FileIconHelper;->getFolderID(Landroid/content/Context;Z)I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog;->setIcon(I)V

    .line 36
    invoke-direct {p0}, Lcom/android/fileexplorer/view/InformationDialog;->asyncGetSize()V

    .line 39
    goto :goto_4c

    .line 40
    :cond_27
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_38

    .line 48
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 50
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 52
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    goto :goto_45

    .line 57
    :cond_38
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 59
    if-eqz v1, :cond_43

    .line 61
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    goto :goto_45

    .line 68
    :cond_43
    const-string v1, ""

    .line 70
    :goto_45
    invoke-static {v1}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    .line 73
    move-result v1

    .line 74
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog;->setIcon(I)V

    .line 77
    :goto_4c
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 79
    if-eqz v1, :cond_57

    .line 81
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/view/InformationDialog;->asyncGetFilePath(Ljava/lang/String;Landroid/view/View;)V

    .line 88
    :cond_57
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 90
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    const v1, 0x7f0a01fd

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/widget/TextView;

    .line 104
    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 106
    iget-wide v3, v3, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 108
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 117
    const-string v3, "folder"

    .line 119
    const/16 v4, 0x8

    .line 121
    if-eqz v1, :cond_94

    .line 123
    iget-boolean v5, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 125
    if-nez v5, :cond_88

    .line 127
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_94

    .line 137
    :cond_88
    const v1, 0x7f0a043a

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_94

    .line 146
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_94
    const v1, 0x7f0a01fb

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Landroid/widget/TextView;

    .line 158
    iget-object v5, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 160
    if-nez v5, :cond_a8

    .line 162
    iget-object v5, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 164
    iget-object v5, v5, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 166
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_a8
    new-instance v5, Lcom/android/fileexplorer/view/InformationDialog$1;

    .line 171
    invoke-direct {v5, p0}, Lcom/android/fileexplorer/view/InformationDialog$1;-><init>(Lcom/android/fileexplorer/view/InformationDialog;)V

    .line 174
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v5, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 179
    const v6, 0x7f0600cf

    .line 182
    if-eqz v5, :cond_e4

    .line 184
    invoke-virtual {v5}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v3

    .line 192
    if-nez v3, :cond_100

    .line 194
    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 196
    invoke-virtual {v3}, Lcom/android/cloud/bean/CloudFileInfo;->getParentId()Ljava/lang/String;

    .line 199
    move-result-object v3

    .line 200
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    move-result v3

    .line 204
    if-nez v3, :cond_d5

    .line 206
    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCurrentPath:Ljava/lang/String;

    .line 208
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 211
    move-result v3

    .line 212
    if-nez v3, :cond_100

    .line 214
    :cond_d5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    .line 221
    move-result v3

    .line 222
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    goto :goto_100

    .line 229
    :cond_e4
    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 231
    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 233
    if-nez v3, :cond_100

    .line 235
    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCurrentPath:Ljava/lang/String;

    .line 237
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_100

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    .line 250
    move-result v3

    .line 251
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    :cond_100
    :goto_100
    const v1, 0x7f0a01fc

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 263
    move-result-object v1

    .line 264
    check-cast v1, Landroid/widget/TextView;

    .line 266
    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 268
    iget-wide v5, v3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 270
    invoke-static {v5, v6}, Lcom/android/fileexplorer/model/DateUtils;->formatDateString(J)Ljava/lang/String;

    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 279
    if-eqz v1, :cond_137

    .line 281
    const v1, 0x7f0a0439

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 291
    const v1, 0x7f0a043b

    .line 294
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 301
    const v1, 0x7f0a0438

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 311
    goto :goto_17b

    .line 312
    :cond_137
    const v1, 0x7f0a01f8

    .line 315
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 318
    move-result-object v1

    .line 319
    check-cast v1, Landroid/widget/TextView;

    .line 321
    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 323
    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 325
    const v4, 0x7f11048e

    .line 328
    const v5, 0x7f1102cc

    .line 331
    if-eqz v3, :cond_14e

    .line 333
    move v3, v4

    .line 334
    goto :goto_14f

    .line 335
    :cond_14e
    move v3, v5

    .line 336
    :goto_14f
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 339
    const v1, 0x7f0a01f9

    .line 342
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 345
    move-result-object v1

    .line 346
    check-cast v1, Landroid/widget/TextView;

    .line 348
    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 350
    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    .line 352
    if-eqz v3, :cond_163

    .line 354
    move v3, v4

    .line 355
    goto :goto_164

    .line 356
    :cond_163
    move v3, v5

    .line 357
    :goto_164
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 360
    const v1, 0x7f0a01fa

    .line 363
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 366
    move-result-object v1

    .line 367
    check-cast v1, Landroid/widget/TextView;

    .line 369
    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 371
    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 373
    if-eqz v3, :cond_177

    .line 375
    goto :goto_178

    .line 376
    :cond_177
    move v4, v5

    .line 377
    :goto_178
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 380
    :goto_17b
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 383
    const/4 v0, -0x2

    .line 384
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mActivity:Landroid/app/Activity;

    .line 386
    const v3, 0x7f1100ed

    .line 389
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 392
    move-result-object v1

    .line 393
    invoke-virtual {p0, v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 396
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 399
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog;->mHandler:Landroid/os/Handler;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    const/16 v1, 0x64

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    :cond_12
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 4
    if-eqz p1, :cond_1a

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 8
    if-eqz p1, :cond_1a

    .line 10
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1a

    .line 24
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 27
    :cond_1a
    return-void
.end method

.method public show()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_19

    .line 19
    const v0, 0x7f110123

    .line 22
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 29
    :goto_1c
    return-void
.end method
