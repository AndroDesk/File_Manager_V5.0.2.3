.class public Lcom/android/fileexplorer/filemanager/FileOperationManager;
.super Ljava/lang/Object;
.source "FileOperationManager.java"

# interfaces
.implements Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;


# static fields
.field public static final CHOICE_MODE_PICK:I = 0x1

.field public static final CHOICE_MODE_PICK_FOLDER:I = 0x2

.field public static final CHOICE_MODE_PICK_MULTIPLE:I = 0x3

.field public static final CHOICE_MODE_PICK_MULTIPLE_NO_FOLDER:I = 0x4

.field public static final CHOICE_MODE_VIEW:I = 0x0

.field private static final DCIM:Ljava/lang/String; = "DCIM"

.field public static final FILE_SIZE_TRIGGER_SYNC:I = 0x6400000

.field public static final LARGE_BUFFER:I = 0x8000

.field public static final LOCAL_HUGE_BUFFER_SIZE:I = 0xa00000

.field public static final LOCAL_MEDIAN_BUFFER_SIZE:I = 0x100000

.field public static final MEDIAN_BUFFER:I = 0x4000

.field public static final SMALL_BUFFER:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "FileOperationManager"

.field private static final TAG_COPY_MOVE_WAKELOCK:Ljava/lang/String; = "FileExplorer:tag_copy_move"

.field public static futureRes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCopyOrMoveWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mCurrentOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFileOperationTask:Landroid/os/AsyncTask;

.field public mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/Runnable;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->lambda$deleteFilesMirror$1(Ljava/lang/Runnable;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCreateFolderThread(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCompressThread(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/filemanager/FileOperationManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isOperation()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->acquireCopyOrMoveWakeLock()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->doCopyOrMoveFile(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->releaseCopyOrMoveWakeLock()V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/filemanager/FileOperationManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->jumpToMiShareIfNeed(I)V

    return-void
.end method

.method private acquireCopyOrMoveWakeLock()V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->releaseCopyOrMoveWakeLock()V

    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "FileExplorer:tag_copy_move"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCopyOrMoveWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCopyOrMoveWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception v0

    sget-object v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string v2, "acquire lock"

    invoke-static {v1, v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    return-void
.end method

.method public static synthetic b(Landroid/os/CountDownTimer;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->lambda$deleteFiles$0(Landroid/os/CountDownTimer;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(ILjava/io/InputStream;Landroid/content/Context;Ljava/io/File;Ljava/io/OutputStream;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/CountDownLatch;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->lambda$writeFileThreadPoolWay$2(ILjava/io/InputStream;Landroid/content/Context;Ljava/io/File;Ljava/io/OutputStream;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private cancelFileOperationTask()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mFileOperationTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mFileOperationTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_12
    return-void
.end method

.method private createName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const-string p1, ""

    return-object p1

    :cond_b
    const v0, 0x7f110238

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->A(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f110237

    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v5, v0

    :goto_37
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_54

    add-int/2addr v5, v0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_37

    :cond_54
    return-object v1

    :cond_55
    return-object v0
.end method

.method private doCopyOrMoveFile(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I
    .registers 15

    const/4 v0, 0x2

    if-eqz p1, :cond_26a

    if-eqz p2, :cond_26a

    iget-object v1, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_26a

    :cond_f
    iget-object v1, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_269

    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto/16 :goto_269

    :cond_22
    sget-object v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string v3, "CopyFile >>> "

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const v4, 0x7f1102e1

    const-string v5, " "

    const/4 v6, 0x3

    if-ne v3, v6, :cond_ba

    iget p5, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-nez p5, :cond_6b

    const-string p3, "Copy from smb to volume"

    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-object p5, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {p3, p2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p2, p1, p3, p4}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->download(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;Z)I

    move-result p1

    return p1

    :cond_6b
    if-ne p5, v6, :cond_94

    const-string p5, "Copy from smb to smb"

    invoke-static {v1, p5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_83

    iget-object p4, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p4, p1, p2, p3}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->move(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Z)I

    move-result p1

    return p1

    :cond_83
    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->copyTo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_94
    if-ne p5, v2, :cond_9f

    const-string p1, "Copy from smb to mtp"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_ed

    :cond_9f
    const-string p1, "Copy from smb to unknown path "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_ba
    const-string v7, "Copy from mtp to unknown path "

    if-ne v3, v2, :cond_121

    iget p3, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-nez p3, :cond_e3

    const-string p3, "Copy from mtp to volume"

    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-object p5, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {p3, p2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    invoke-static {p3, p1, p2, p4}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/mtp/DocumentInfo;Landroid/net/Uri;Z)I

    move-result p1

    return p1

    :cond_e3
    if-ne p3, v6, :cond_ee

    const-string p1, "Copy from mtp to smb"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    :goto_ed
    return v2

    :cond_ee
    if-ne p3, v2, :cond_108

    const-string p3, "Copy from mtp to mtp"

    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    iget-object p2, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    invoke-static {p3, p1, p2, p4}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->copyFileAndDirectoryToMtp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/mtp/DocumentInfo;Landroid/net/Uri;Z)I

    move-result p1

    return p1

    :cond_108
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_121
    if-nez v3, :cond_1b7

    iget p6, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-nez p6, :cond_163

    iget-object p6, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p6}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->noSDWritePermission(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_15b

    if-eqz p4, :cond_13a

    iget-object p6, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p6}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->noSDWritePermission(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_13a

    goto :goto_15b

    :cond_13a
    const-string p6, "Copy from volume to volume"

    invoke-static {v1, p6}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-object p6, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {v4, p2, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v3, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    move-result p1

    return p1

    :cond_15b
    :goto_15b
    const-string p1, "has No permission, request"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x11

    return p1

    :cond_163
    if-ne p6, v6, :cond_17b

    const-string p3, "Copy from volume to smb"

    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p3, p1, p2, p4}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->upload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1

    :cond_17b
    if-ne p6, v2, :cond_19e

    const-string p3, "Copy from volume to mtp"

    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p3

    new-instance p5, Ljava/io/File;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {p5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    iget-object p1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    invoke-static {p3, p5, p1, p4}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyOrMoveFileAndDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;Z)I

    move-result p1

    return p1

    :cond_19e
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1b7
    const/4 v4, 0x5

    if-ne v3, v4, :cond_24e

    iget v3, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-nez v3, :cond_1f9

    const-string v0, "Copy from uri to volume"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_1df

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/model/ContentFile;->generateFromMirrorUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    move-result-object v1

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    const/4 v5, 0x1

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->copySingleFileToLocalFromMirror(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;ZZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    move-result p1

    return p1

    :cond_1df
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/model/ContentFile;->generateFromUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    move-result-object v1

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    const/4 v5, 0x1

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->copySingleFileToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;ZZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    move-result p1

    return p1

    :cond_1f9
    if-ne v3, v6, :cond_215

    const-string p3, "Copy from uri to smb"

    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/model/ContentFile;->generateFromUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    move-result-object p1

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p3, p1, p2, p4}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->uploadSingleContentFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;Z)I

    move-result p1

    return p1

    :cond_215
    if-ne v3, v2, :cond_233

    const-string p3, "Copy from uri to mtp"

    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/model/ContentFile;->generateFromUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    move-result-object p1

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    iget-object p2, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    invoke-static {p3, p1, p2, p4}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->copyOrMoveSingleFileToMtp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Landroid/net/Uri;Z)I

    move-result p1

    return p1

    :cond_233
    const-string p1, "Copy from uri to unknown path "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_24e
    const-string p2, "Copy from unknown path "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_269
    :goto_269
    return v2

    :cond_26a
    :goto_26a
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string p2, "CopyFile: null parameter"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private doPickFile(Ljava/lang/String;Landroid/app/Activity;)V
    .registers 7

    if-eqz p2, :cond_a3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_a3

    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9b

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.OPEN_DOCUMENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->checkSDRootPathWritable()Z

    move-result v2

    if-nez v2, :cond_52

    new-instance v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    const v1, 0x7f0a0319

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setDistPath(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V

    invoke-static {p2, p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_52
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_5b

    :cond_57
    invoke-static {v0}, Lcom/android/fileexplorer/model/OpenDocumentUtil;->buildOpenDocumentResultUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_5b
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 p1, 0x43

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_7d

    :cond_64
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    move-result p1

    if-eqz p1, :cond_76

    invoke-static {v0}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_7d

    :cond_76
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_7d
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_96

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getIntentByRingtonePicker(Ljava/io/File;Landroid/content/Intent;)V

    :cond_96
    const/4 p1, -0x1

    invoke-virtual {p2, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_9f

    :cond_9b
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/app/Activity;->setResult(I)V

    :goto_9f
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-void

    :cond_a3
    :goto_a3
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string p2, "activity or path is null, return"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getIntentByRingtonePicker(Ljava/io/File;Landroid/content/Intent;)V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    move-result v0

    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_17

    :cond_10
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_17
    return-void
.end method

.method public static getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I
    .registers 2

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickFolderMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x2

    return p0

    :cond_18
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 p0, 0x3

    return p0

    :cond_24
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleNoFolderMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x4

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public static ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    if-eqz p0, :cond_15

    new-instance v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$17;

    invoke-direct {v1, v0, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$17;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {p0, p1, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showOverwriteDialog(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V

    :cond_15
    :try_start_15
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public static ifUserChooseOverwrite2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)I
    .registers 5

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    if-eqz p0, :cond_16

    new-instance v2, Lcom/android/fileexplorer/filemanager/FileOperationManager$16;

    invoke-direct {v2, v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$16;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {p0, p1, v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showOverwriteDialog2(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V

    :cond_16
    :try_start_16
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method private isOperation()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public static isPickFolderMode(Landroid/app/Activity;)Z
    .registers 2

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miui.intent.action.PICK_FOLDER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private isPickFromInner(Landroid/app/Activity;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "inner_call"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_e
    return v0
.end method

.method public static isPickMode(Landroid/app/Activity;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    :cond_31
    const/4 v0, 0x1

    :cond_32
    return v0
.end method

.method public static isPickMultipleMode(I)Z
    .registers 2

    const/4 v0, 0x3

    if-eq v0, p0, :cond_9

    const/4 v0, 0x4

    if-ne v0, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public static isPickMultipleMode(Landroid/app/Activity;)Z
    .registers 2

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miui.intent.action.PICK_MULTIPLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static isPickMultipleNoFolderMode(Landroid/app/Activity;)Z
    .registers 2

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miui.intent.action.PICK_MULTIPLE_NO_FOLDER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static isSingleChoiceMode(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq v0, p0, :cond_8

    const/4 v1, 0x2

    if-ne v1, p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static isViewMode(I)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static isViewMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private jumpToMiShareIfNeed(I)V
    .registers 6

    const-class v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFrom()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_28

    sget v1, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_FIXED_MIRROR:I

    if-ne v1, p1, :cond_28

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->viewToMiShare(Landroid/app/Activity;)V

    const p1, 0x7f1103a5

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_a9

    :cond_28
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFrom()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v3, v1, :cond_6a

    sget v1, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_FIXED_MIRROR:I

    if-ne v1, p1, :cond_6a

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a9

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    if-eqz p1, :cond_a9

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    new-instance v1, Landroidx/lifecycle/c0;

    invoke-direct {v1, p1}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    invoke-virtual {v1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    new-instance v0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;-><init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    goto :goto_a9

    :cond_6a
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFrom()I

    move-result v1

    if-ne v3, v1, :cond_a9

    sget v1, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT_MIRROR:I

    if-ne v1, p1, :cond_a9

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a9

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    if-eqz p1, :cond_a9

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    new-instance v1, Landroidx/lifecycle/c0;

    invoke-direct {v1, p1}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    invoke-virtual {v1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    new-instance v0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;-><init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :cond_a9
    :goto_a9
    return-void
.end method

.method private static synthetic lambda$deleteFiles$0(Landroid/os/CountDownTimer;Landroid/content/DialogInterface;)V
    .registers 2

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$deleteFilesMirror$1(Ljava/lang/Runnable;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startDeleteThread()V

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method

.method private static synthetic lambda$writeFileThreadPoolWay$2(ILjava/io/InputStream;Landroid/content/Context;Ljava/io/File;Ljava/io/OutputStream;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/CountDownLatch;)V
    .registers 12

    :try_start_0
    new-array p0, p0, [B

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_5
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_39

    instance-of v4, p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v4, :cond_32

    const/16 v4, 0x64

    if-ne v2, v4, :cond_19

    invoke-static {p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->updateUI(Landroid/content/Context;I)V

    move v1, v0

    move v2, v1

    :cond_19
    move-object v4, p2

    check-cast v4, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v4}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-static {p3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_46
    .catchall {:try_start_0 .. :try_end_25} :catchall_44

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_32
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v3

    :try_start_35
    invoke-virtual {p4, p0, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    :cond_39
    instance-of p0, p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz p0, :cond_40

    invoke-static {p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->updateUI(Landroid/content/Context;I)V

    :cond_40
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_43} :catch_46
    .catchall {:try_start_35 .. :try_end_43} :catchall_44

    goto :goto_4a

    :catchall_44
    move-exception p0

    goto :goto_57

    :catch_46
    move-exception p0

    :try_start_47
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_44

    :goto_4a
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_57
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p0
.end method

.method private releaseCopyOrMoveWakeLock()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCopyOrMoveWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_13

    :try_start_4
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCopyOrMoveWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception v0

    sget-object v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string v2, "release lock"

    invoke-static {v1, v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method private startCompressThread(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/util/ArrayList;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startCopyOrMoveThread(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->getDestParentFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->isForceOverWrite()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->isMove()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->getDestType()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCopyOrMoveThread(Lcom/android/fileexplorer/model/FileInfo;ZZI)V

    return-void
.end method

.method private startCopyOrMoveThread(Lcom/android/fileexplorer/model/FileInfo;ZZ)V
    .registers 5

    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCopyOrMoveThread(Lcom/android/fileexplorer/model/FileInfo;ZZI)V

    return-void
.end method

.method private startCopyOrMoveThread(Lcom/android/fileexplorer/model/FileInfo;ZZI)V
    .registers 12

    new-instance v6, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;ZZI)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v6, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startCreateFolderThread(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCreateFolderThread(Ljava/lang/String;Z)V

    return-void
.end method

.method private startCreateFolderThread(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$9;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Z)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startCreateFolderThreadMirror(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$10;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$10;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static updateUI(Landroid/content/Context;I)V
    .registers 4

    instance-of v0, p0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    :cond_a
    return-void
.end method

.method public static writeDocumentFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;ZI)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p3, :cond_31

    :try_start_4
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_56
    .catchall {:try_start_4 .. :try_end_8} :catchall_53

    if-nez p3, :cond_11

    :goto_a
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :cond_11
    :try_start_11
    check-cast p3, Ls0/c;

    iget-object p3, p3, Ls0/c;->c:Landroid/net/Uri;

    if-nez p3, :cond_18

    goto :goto_a

    :cond_18
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rw"

    invoke-virtual {v2, p3, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_26} :catch_56
    .catchall {:try_start_11 .. :try_end_26} :catchall_53

    :try_start_26
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_51
    .catchall {:try_start_26 .. :try_end_2f} :catchall_7a

    move-object v0, v2

    goto :goto_43

    :cond_31
    :try_start_31
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_40} :catch_56
    .catchall {:try_start_31 .. :try_end_40} :catchall_53

    move-object v4, v0

    move-object v0, p3

    move-object p3, v4

    :goto_43
    :try_start_43
    invoke-static {p0, p1, v0, p4}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_51
    .catchall {:try_start_43 .. :try_end_4a} :catchall_7a

    :goto_4a
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_73

    :catch_51
    move-exception p0

    goto :goto_58

    :catchall_53
    move-exception p0

    move-object p3, v0

    goto :goto_7b

    :catch_56
    move-exception p0

    move-object p3, v0

    :goto_58
    :try_start_58
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeDocumentFile error: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_7a

    goto :goto_4a

    :goto_73
    const/4 p0, 0x5

    if-ne v1, p0, :cond_79

    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    :cond_79
    return v1

    :catchall_7a
    move-exception p0

    :goto_7b
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    .registers 8

    :try_start_0
    new-array p3, p3, [B

    :goto_2
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_29

    instance-of v1, p0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v1, :cond_25

    if-nez v0, :cond_17

    sget-object v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string v3, "len is 0"

    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-static {p0, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->updateUI(Landroid/content/Context;I)V

    move-object v1, p0

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 p0, 0x5

    return p0

    :cond_25
    invoke-virtual {p2, p3, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_2a

    goto :goto_2

    :cond_29
    return v2

    :catch_2a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string p2, "writeFile error:"

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x4

    return p0
.end method

.method public static writeFileThreadPoolWay(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/File;ILjava/util/concurrent/ThreadPoolExecutor;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/CountDownLatch;)V
    .registers 17

    new-instance v8, Lcom/android/fileexplorer/filemanager/a;

    move-object v0, v8

    move v1, p4

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/filemanager/a;-><init>(ILjava/io/InputStream;Landroid/content/Context;Ljava/io/File;Ljava/io/OutputStream;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p5

    invoke-virtual {p5, v8}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static zipDecompressWriteDocumentFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;ZILjava/util/concurrent/ThreadPoolExecutor;Ljava/util/concurrent/CountDownLatch;)V
    .registers 16

    if-eqz p3, :cond_28

    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p3

    if-nez p3, :cond_9

    return-void

    :cond_9
    check-cast p3, Ls0/c;

    iget-object p3, p3, Ls0/c;->c:Landroid/net/Uri;

    if-nez p3, :cond_10

    return-void

    :cond_10
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rw"

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_38

    :cond_28
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p3, 0x0

    :goto_38
    move-object v7, p3

    move-object v3, v0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFileThreadPoolWay(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/File;ILjava/util/concurrent/ThreadPoolExecutor;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public addOrRemoveFavorite(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;ZLjava/util/List;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_46

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_46

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v2, :cond_29

    const p1, 0x7f110297

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void

    :cond_29
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_32
    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->cancelFileOperationTask()V

    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;

    invoke-direct {p2, p0, v0, p1, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/util/ArrayList;ILjava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mFileOperationTask:Landroid/os/AsyncTask;

    return-void

    :cond_46
    :goto_46
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string p2, "addToPrivateFolder checked infos isEmpty"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public buildDeleteMessage(Landroid/content/Context;Ljava/util/List;)Lcom/android/fileexplorer/model/BuildDeleteInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Lcom/android/fileexplorer/model/BuildDeleteInfo;"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/model/BuildDeleteInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/BuildDeleteInfo;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v4, :cond_b

    iget-boolean v6, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v6, :cond_b

    iget-object v4, v4, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    const-string v6, "DCIM"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move v1, v5

    goto :goto_2e

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2d
    move v1, v2

    :goto_2e
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/BuildDeleteInfo;->setContainDCIM(Z)V

    if-eqz v1, :cond_43

    const p2, 0x7f182f6c

    invoke-static/range {p2 .. p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/BuildDeleteInfo;->setDeleteMessage(Ljava/lang/String;)V

    goto/16 :goto_dc

    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    if-lez v3, :cond_b1

    const v4, 0x7f182f6a

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_84

    if-ne v3, v5, :cond_6d

    const p2, 0x7f182c8c

    invoke-static/range {p2 .. p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_80

    :cond_6d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0011

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1, p2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d5

    :cond_84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0f0010

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v6, p2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0012

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1, p2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d5

    :cond_b1
    if-ne p2, v5, :cond_bf

    const p2, 0x7f182c8e

    invoke-static/range {p2 .. p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_d2

    :cond_bf
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0f000f

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1, v3, p2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_d2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/BuildDeleteInfo;->setDeleteMessage(Ljava/lang/String;)V

    :goto_dc
    return-object v0
.end method

.method public checkRename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Z
    .registers 5

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {p2, v0}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegal(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    return v1

    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startRenameThread(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    return v1
.end method

.method public compress(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    const v1, 0x7f1100ea

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1100e9

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/model/ArchiveHelper;->buildZipName(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/fileexplorer/filemanager/FileOperationManager$6;

    invoke-direct {v6, p0, p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$6;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public copyOrMoveFiles(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V
    .registers 4

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->checkValid()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4c

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getPasteFileInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string v0, "copyOrMoveFiles mCurrentOperationList is Empty"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_32
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->getSourceFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setSourceFrom(I)V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setIsMove(Z)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCopyOrMoveThread(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    return-void

    :cond_4c
    :goto_4c
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string v0, "copyOrMoveFiles params is null or invalid, return"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createFolder(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->createFolder(Ljava/lang/String;Z)V

    return-void
.end method

.method public createFolder(Ljava/lang/String;Z)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    const v1, 0x7f1102f0

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v1, 0x7f1102c8

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Z)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public createFolderMirror(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->createName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCreateFolderThreadMirror(Ljava/lang/String;)V

    return-void
.end method

.method public deleteFiles(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->buildDeleteMessage(Landroid/content/Context;Ljava/util/List;)Lcom/android/fileexplorer/model/BuildDeleteInfo;

    move-result-object p1

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    const v2, 0x7f12000d

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1102fb

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/BuildDeleteInfo;->getDeleteMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110116

    new-instance v2, Lcom/android/fileexplorer/filemanager/FileOperationManager$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager$2;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/BuildDeleteInfo;->isContainDCIM()Z

    move-result p1

    if-eqz p1, :cond_8b

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager$3;

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x3e8

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/filemanager/FileOperationManager$3;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;JJLandroid/widget/Button;)V

    new-instance v1, Lcom/android/fileexplorer/filemanager/b;

    invoke-direct {v1, p1}, Lcom/android/fileexplorer/filemanager/b;-><init>(Landroid/os/CountDownTimer;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_8b
    return-void
.end method

.method public deleteFilesMirror(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    const v0, 0x7f1102fb

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110116

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->buildDeleteMessage(Landroid/content/Context;Ljava/util/List;)Lcom/android/fileexplorer/model/BuildDeleteInfo;

    move-result-object p1

    const v0, 0x7f110050

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/BuildDeleteInfo;->getDeleteMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/android/fileexplorer/filemanager/c;

    const/4 p1, 0x0

    invoke-direct {v6, p1, p0, p2}, Lcom/android/fileexplorer/filemanager/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public execute(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;)V
    .registers 5

    if-nez p1, :cond_a

    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string v0, "execute storageVolumeAction is null or cancel"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getActionId()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_b6

    goto/16 :goto_b5

    :sswitch_18
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDistPath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->doPickFile(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_b5

    :sswitch_2d
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDistPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCreateFolderThread(Ljava/lang/String;)V

    goto/16 :goto_b5

    :sswitch_36
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getSrcPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDistPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startDecompressThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b5

    :sswitch_4d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startRenameThread(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    goto :goto_b5

    :sswitch_5b
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->isOverwrite()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDestType()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCopyOrMoveThread(Lcom/android/fileexplorer/model/FileInfo;ZZI)V

    goto :goto_b5

    :sswitch_76
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startDeleteThread()V

    goto :goto_b5

    :sswitch_84
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->isOverwrite()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDestType()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCopyOrMoveThread(Lcom/android/fileexplorer/model/FileInfo;ZZI)V

    goto :goto_b5

    :sswitch_9e
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDistPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCompressThread(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_b5

    :sswitch_a6
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getActionType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getFileList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDistPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V

    :goto_b5
    return-void

    :sswitch_data_b6
    .sparse-switch
        0x7f0a0038 -> :sswitch_a6
        0x7f0a0050 -> :sswitch_9e
        0x7f0a0054 -> :sswitch_84
        0x7f0a005a -> :sswitch_76
        0x7f0a006a -> :sswitch_5b
        0x7f0a0072 -> :sswitch_4d
        0x7f0a0125 -> :sswitch_36
        0x7f0a02dc -> :sswitch_2d
        0x7f0a0319 -> :sswitch_18
    .end sparse-switch
.end method

.method public getModeType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickFolderMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x2

    return v0

    :cond_28
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x3

    return v0

    :cond_3c
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleNoFolderMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x4

    return v0

    :cond_50
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->cancelFileOperationTask()V

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->clearActionCache()V

    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->releaseCopyOrMoveWakeLock()V

    return-void
.end method

.method public onPickFiles(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_125

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_125

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_1d} :catch_11d

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v0, v5, :cond_e0

    const/4 v6, 0x2

    const-string v7, "android.intent.extra.STREAM"

    if-eq v0, v6, :cond_c8

    if-eq v0, v4, :cond_2e

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2e

    goto/16 :goto_10d

    :cond_2e
    :try_start_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_38
    if-ge v1, v0, :cond_aa

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/fileexplorer/model/FileInfo;

    iget v8, v8, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-ne v8, v4, :cond_54

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v8, v8, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    :cond_54
    new-instance v8, Ljava/io/File;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v9, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_a7

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    move-result v9

    if-eqz v9, :cond_a0

    iget-object v9, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v9}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickFromInner(Landroid/app/Activity;)Z

    move-result v9

    if-nez v9, :cond_a0

    invoke-static {v8}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_97

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v9, "FileExplorer"

    invoke-static {v2, v9, v8}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    goto :goto_a7

    :cond_97
    new-instance v9, Landroid/content/ClipData$Item;

    invoke-direct {v9, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v9}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_a7

    :cond_a0
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a7
    :goto_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_aa
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_10d

    :cond_c8
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_10d

    :cond_e0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    iget p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-ne p1, v4, :cond_fe

    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_10d

    :cond_fe
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->doPickFile(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_10d
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V
    :try_end_11c
    .catch Ljava/net/URISyntaxException; {:try_start_2e .. :try_end_11c} :catch_11d

    goto :goto_125

    :catch_11d
    move-exception p1

    sget-object v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string v1, "error"

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_125
    :goto_125
    return-void
.end method

.method public renameFile(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_57

    if-nez p1, :cond_b

    goto :goto_57

    :cond_b
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    instance-of v1, p1, Lcom/android/fileexplorer/model/PcModeFileInfo;

    if-eqz v1, :cond_1e

    move-object v1, p1

    check-cast v1, Lcom/android/fileexplorer/model/PcModeFileInfo;

    iget-object v2, v1, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v0, v1, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    :cond_1e
    move-object v5, v0

    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    const v1, 0x7f11031a

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f11031c

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v6, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    new-instance v7, Lcom/android/fileexplorer/filemanager/FileOperationManager$11;

    invoke-direct {v7, p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$11;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V

    iget-boolean v1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/TextInputDialog;->setCheckExt(Z)V

    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/TextInputDialog;->setCheckFileName(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_57
    :goto_57
    return-void
.end method

.method public send(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;)V

    return-void
.end method

.method public send(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "手机tab页"

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_d

    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_d

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f110161

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1100eb

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_56

    const p1, 0x7f11004f

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void

    :cond_56
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$7;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Ljava/util/List;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/android/fileexplorer/view/InformationDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/fileexplorer/view/InformationDialog;-><init>(Landroid/app/Activity;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/InformationDialog;->show()V

    return-void
.end method

.method public showFileInfoMirror(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->show()V

    return-void
.end method

.method public startDecompressThread(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startDeleteThread()V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$14;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager$14;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startRenameThread(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_a

    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string p2, "fileInfo is null, return."

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$12;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startRenameThreadMirror(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    if-nez p1, :cond_a

    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    const-string p2, "fileInfo is null, return."

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
