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
.field private static final ID_USER:I

.field private static final LOG_TAG:Ljava/lang/String; = "InformationDialog"


# instance fields
.field private isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActivity:Landroid/app/Activity;

.field public mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

.field private mCurrentPath:Ljava/lang/String;

.field private mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92df2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/InformationDialog;->ID_USER:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    instance-of v0, p2, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v0, :cond_15

    check-cast p2, Lcom/android/cloud/bean/CloudFileInfo;

    iput-object p2, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    :cond_15
    iput-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCurrentPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/InformationDialog;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/InformationDialog;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/InformationDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCurrentPath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$184(Lcom/android/fileexplorer/view/InformationDialog;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCurrentPath:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/InformationDialog;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    return-object p0
.end method

.method private asyncGetSize()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;

    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/fileexplorer/view/InformationDialog;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/fileexplorer/model/FileInfo;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public asyncGetFilePath(Ljava/lang/String;Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/view/InformationDialog$2;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/fileexplorer/view/InformationDialog$2;-><init>(Lcom/android/fileexplorer/view/InformationDialog;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042d1c

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/InformationDialog$MyHandler;

    invoke-direct {v1, v0}, Lcom/android/fileexplorer/view/InformationDialog$MyHandler;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v3, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v3, :cond_2b

    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/FileIconHelper;->getFolderID(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog;->setIcon(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/InformationDialog;->asyncGetSize()V

    goto :goto_50

    :cond_2b
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    :cond_3c
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v1, :cond_47

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    :cond_47
    const-string v1, ""

    :goto_49
    invoke-static {v1}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog;->setIcon(I)V

    :goto_50
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/view/InformationDialog;->asyncGetFilePath(Ljava/lang/String;Landroid/view/View;)V

    :cond_5b
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f032c6b

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-wide v3, v3, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    const-string v3, "folder"

    const/16 v4, 0x8

    if-eqz v1, :cond_a0

    iget-boolean v5, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v5, :cond_90

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    :cond_90
    const v1, 0x7f0329ac

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a0
    const v1, 0x7f032c6d

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    if-nez v5, :cond_b8

    iget-object v5, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v5, v5, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b8
    new-instance v5, Lcom/android/fileexplorer/view/InformationDialog$1;

    invoke-direct {v5, p0}, Lcom/android/fileexplorer/view/InformationDialog$1;-><init>(Lcom/android/fileexplorer/view/InformationDialog;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    const v6, 0x7f0600cf

    if-eqz v5, :cond_f4

    invoke-virtual {v5}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_110

    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v3}, Lcom/android/cloud/bean/CloudFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e5

    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCurrentPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_110

    :cond_e5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_110

    :cond_f4
    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v3, :cond_110

    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCurrentPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_110

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_110
    :goto_110
    const v1, 0x7f032c6a

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-wide v5, v3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v5, v6}, Lcom/android/fileexplorer/model/DateUtils;->formatDateString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v1, :cond_157

    const v1, 0x7f0329af

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0329ad

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0329ae

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a7

    :cond_157
    const v1, 0x7f032c6e

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    const v4, 0x7f11048e

    const v5, 0x7f1102cc

    if-eqz v3, :cond_172

    move v3, v4

    goto :goto_173

    :cond_172
    move v3, v5

    :goto_173
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f032c6f

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    if-eqz v3, :cond_18b

    move v3, v4

    goto :goto_18c

    :cond_18b
    move v3, v5

    :goto_18c
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f032c6c

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-eqz v3, :cond_1a3

    goto :goto_1a4

    :cond_1a3
    move v4, v5

    :goto_1a4
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_1a7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mActivity:Landroid/app/Activity;

    const v3, 0x7f182d7b

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_12
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz p1, :cond_1a

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1a
    return-void
.end method

.method public show()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x7f110123

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_1c

    :cond_19
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    :goto_1c
    return-void
.end method
