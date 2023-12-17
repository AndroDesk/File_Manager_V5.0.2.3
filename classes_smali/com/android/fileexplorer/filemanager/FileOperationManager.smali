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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/Runnable;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->lambda$deleteFilesMirror$1(Ljava/lang/Runnable;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCreateFolderThread(Ljava/lang/String;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCompressThread(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/filemanager/FileOperationManager;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isOperation()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->acquireCopyOrMoveWakeLock()V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->doCopyOrMoveFile(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->releaseCopyOrMoveWakeLock()V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/filemanager/FileOperationManager;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->jumpToMiShareIfNeed(I)V

    .line 4
    return-void
.end method

.method private acquireCopyOrMoveWakeLock()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->releaseCopyOrMoveWakeLock()V

    .line 4
    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "power"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/os/PowerManager;

    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, "FileExplorer:tag_copy_move"

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCopyOrMoveWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCopyOrMoveWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 31
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_22

    .line 34
    goto :goto_2a

    .line 35
    :catch_22
    move-exception v0

    .line 36
    sget-object v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 38
    const-string v2, "acquire lock"

    .line 40
    invoke-static {v1, v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mFileOperationTask:Landroid/os/AsyncTask;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    .line 11
    if-ne v0, v1, :cond_12

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mFileOperationTask:Landroid/os/AsyncTask;

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 19
    :cond_12
    return-void
.end method

.method private createName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    const-string p1, ""

    .line 11
    return-object p1

    .line 12
    :cond_b
    const v0, 0x7f110238

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, La/a;->A(Ljava/lang/String;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_55

    .line 29
    const/4 v0, 0x1

    .line 30
    new-array v1, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object v2, v1, v3

    .line 39
    const v2, 0x7f110237

    .line 42
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    new-instance v4, Ljava/io/File;

    .line 52
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    move v5, v0

    .line 56
    :goto_37
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_54

    .line 62
    add-int/2addr v5, v0

    .line 63
    new-array v1, v0, [Ljava/lang/Object;

    .line 65
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    aput-object v4, v1, v3

    .line 71
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    new-instance v4, Ljava/io/File;

    .line 81
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    goto :goto_37

    .line 85
    :cond_54
    return-object v1

    .line 86
    :cond_55
    return-object v0
.end method

.method private doCopyOrMoveFile(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I
    .registers 15

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p1, :cond_26a

    .line 4
    if-eqz p2, :cond_26a

    .line 6
    iget-object v1, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_f

    .line 14
    goto/16 :goto_26a

    .line 16
    :cond_f
    iget-object v1, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 18
    invoke-static {v1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x4

    .line 23
    if-nez v1, :cond_269

    .line 25
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 27
    invoke-static {v1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_22

    .line 33
    goto/16 :goto_269

    .line 35
    :cond_22
    sget-object v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 37
    const-string v3, "CopyFile >>> "

    .line 39
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v3

    .line 43
    iget-object v4, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v4, ","

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v4, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget v3, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 67
    const v4, 0x7f1102e1

    .line 70
    const-string v5, " "

    .line 72
    const/4 v6, 0x3

    .line 73
    if-ne v3, v6, :cond_ba

    .line 75
    iget p5, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 77
    if-nez p5, :cond_6b

    .line 79
    const-string p3, "Copy from smb to volume"

    .line 81
    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance p3, Ljava/io/File;

    .line 86
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 88
    iget-object p5, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 90
    invoke-direct {p3, p2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 95
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 101
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 103
    invoke-static {p2, p1, p3, p4}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->download(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;Z)I

    .line 106
    move-result p1

    .line 107
    return p1

    .line 108
    :cond_6b
    if-ne p5, v6, :cond_94

    .line 110
    const-string p5, "Copy from smb to smb"

    .line 112
    invoke-static {v1, p5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-eqz p4, :cond_83

    .line 117
    iget-object p4, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 119
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 122
    move-result-object p4

    .line 123
    check-cast p4, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 125
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 127
    invoke-static {p4, p1, p2, p3}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->move(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Z)I

    .line 130
    move-result p1

    .line 131
    return p1

    .line 132
    :cond_83
    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 134
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 137
    move-result-object p3

    .line 138
    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 140
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 142
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 144
    invoke-static {p3, p1, p2}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->copyTo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-result p1

    .line 148
    return p1

    .line 149
    :cond_94
    if-ne p5, v2, :cond_9f

    .line 151
    const-string p1, "Copy from smb to mtp"

    .line 153
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {v4}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 159
    goto :goto_ed

    .line 160
    :cond_9f
    const-string p1, "Copy from smb to unknown path "

    .line 162
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    move-result-object p1

    .line 166
    iget p3, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 168
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return v0

    .line 187
    :cond_ba
    const-string v7, "Copy from mtp to unknown path "

    .line 189
    if-ne v3, v2, :cond_121

    .line 191
    iget p3, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 193
    if-nez p3, :cond_e3

    .line 195
    const-string p3, "Copy from mtp to volume"

    .line 197
    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance p3, Ljava/io/File;

    .line 202
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 204
    iget-object p5, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 206
    invoke-direct {p3, p2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {p3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 212
    move-result-object p2

    .line 213
    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 215
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 218
    move-result-object p3

    .line 219
    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 221
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 223
    invoke-static {p3, p1, p2, p4}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/mtp/DocumentInfo;Landroid/net/Uri;Z)I

    .line 226
    move-result p1

    .line 227
    return p1

    .line 228
    :cond_e3
    if-ne p3, v6, :cond_ee

    .line 230
    const-string p1, "Copy from mtp to smb"

    .line 232
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {v4}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 238
    :goto_ed
    return v2

    .line 239
    :cond_ee
    if-ne p3, v2, :cond_108

    .line 241
    const-string p3, "Copy from mtp to mtp"

    .line 243
    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 248
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 251
    move-result-object p3

    .line 252
    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 254
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 256
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 258
    iget-object p2, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 260
    invoke-static {p3, p1, p2, p4}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->copyFileAndDirectoryToMtp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/mtp/DocumentInfo;Landroid/net/Uri;Z)I

    .line 263
    move-result p1

    .line 264
    return p1

    .line 265
    :cond_108
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    move-result-object p1

    .line 269
    iget p3, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 271
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 279
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object p1

    .line 286
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return v0

    .line 290
    :cond_121
    if-nez v3, :cond_1b7

    .line 292
    iget p6, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 294
    if-nez p6, :cond_163

    .line 296
    iget-object p6, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 298
    invoke-static {p6}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->noSDWritePermission(Ljava/lang/String;)Z

    .line 301
    move-result p6

    .line 302
    if-nez p6, :cond_15b

    .line 304
    if-eqz p4, :cond_13a

    .line 306
    iget-object p6, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 308
    invoke-static {p6}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->noSDWritePermission(Ljava/lang/String;)Z

    .line 311
    move-result p6

    .line 312
    if-eqz p6, :cond_13a

    .line 314
    goto :goto_15b

    .line 315
    :cond_13a
    const-string p6, "Copy from volume to volume"

    .line 317
    invoke-static {v1, p6}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v4, Ljava/io/File;

    .line 322
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 324
    iget-object p6, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 326
    invoke-direct {v4, p2, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 331
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 334
    move-result-object p2

    .line 335
    move-object v2, p2

    .line 336
    check-cast v2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 338
    iget-object v3, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 340
    move v5, p3

    .line 341
    move v6, p4

    .line 342
    move-object v7, p5

    .line 343
    invoke-static/range {v2 .. v7}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    .line 346
    move-result p1

    .line 347
    return p1

    .line 348
    :cond_15b
    :goto_15b
    const-string p1, "has No permission, request"

    .line 350
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/16 p1, 0x11

    .line 355
    return p1

    .line 356
    :cond_163
    if-ne p6, v6, :cond_17b

    .line 358
    const-string p3, "Copy from volume to smb"

    .line 360
    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 365
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 368
    move-result-object p3

    .line 369
    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 371
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 373
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 375
    invoke-static {p3, p1, p2, p4}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->upload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 378
    move-result p1

    .line 379
    return p1

    .line 380
    :cond_17b
    if-ne p6, v2, :cond_19e

    .line 382
    const-string p3, "Copy from volume to mtp"

    .line 384
    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 389
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 392
    move-result-object p3

    .line 393
    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 395
    invoke-interface {p3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 398
    move-result-object p3

    .line 399
    new-instance p5, Ljava/io/File;

    .line 401
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 403
    invoke-direct {p5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    iget-object p1, p2, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 408
    iget-object p1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 410
    invoke-static {p3, p5, p1, p4}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyOrMoveFileAndDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;Z)I

    .line 413
    move-result p1

    .line 414
    return p1

    .line 415
    :cond_19e
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    move-result-object p1

    .line 419
    iget p3, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 421
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 429
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    move-result-object p1

    .line 436
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return v0

    .line 440
    :cond_1b7
    const/4 v4, 0x5

    .line 441
    if-ne v3, v4, :cond_24e

    .line 443
    iget v3, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 445
    if-nez v3, :cond_1f9

    .line 447
    const-string v0, "Copy from uri to volume"

    .line 449
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-eqz p6, :cond_1df

    .line 454
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 456
    invoke-static {p1}, Lcom/android/fileexplorer/model/ContentFile;->generateFromMirrorUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    .line 459
    move-result-object v1

    .line 460
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 462
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 465
    move-result-object p1

    .line 466
    move-object v0, p1

    .line 467
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 469
    iget-object v2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 471
    const/4 v5, 0x1

    .line 472
    move v3, p3

    .line 473
    move v4, p4

    .line 474
    move-object v6, p5

    .line 475
    invoke-static/range {v0 .. v6}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->copySingleFileToLocalFromMirror(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;ZZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    .line 478
    move-result p1

    .line 479
    return p1

    .line 480
    :cond_1df
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 482
    invoke-static {p1}, Lcom/android/fileexplorer/model/ContentFile;->generateFromUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    .line 485
    move-result-object v1

    .line 486
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 488
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 491
    move-result-object p1

    .line 492
    move-object v0, p1

    .line 493
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 495
    iget-object v2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 497
    const/4 v5, 0x1

    .line 498
    move v3, p3

    .line 499
    move v4, p4

    .line 500
    move-object v6, p5

    .line 501
    invoke-static/range {v0 .. v6}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->copySingleFileToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;ZZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    .line 504
    move-result p1

    .line 505
    return p1

    .line 506
    :cond_1f9
    if-ne v3, v6, :cond_215

    .line 508
    const-string p3, "Copy from uri to smb"

    .line 510
    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 515
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 518
    move-result-object p3

    .line 519
    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 521
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 523
    invoke-static {p1}, Lcom/android/fileexplorer/model/ContentFile;->generateFromUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    .line 526
    move-result-object p1

    .line 527
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 529
    invoke-static {p3, p1, p2, p4}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->uploadSingleContentFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;Z)I

    .line 532
    move-result p1

    .line 533
    return p1

    .line 534
    :cond_215
    if-ne v3, v2, :cond_233

    .line 536
    const-string p3, "Copy from uri to mtp"

    .line 538
    invoke-static {v1, p3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 543
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 546
    move-result-object p3

    .line 547
    check-cast p3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 549
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 551
    invoke-static {p1}, Lcom/android/fileexplorer/model/ContentFile;->generateFromUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    .line 554
    move-result-object p1

    .line 555
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 557
    iget-object p2, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 559
    invoke-static {p3, p1, p2, p4}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->copyOrMoveSingleFileToMtp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Landroid/net/Uri;Z)I

    .line 562
    move-result p1

    .line 563
    return p1

    .line 564
    :cond_233
    const-string p1, "Copy from uri to unknown path "

    .line 566
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    move-result-object p1

    .line 570
    iget p3, p2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 572
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 580
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    move-result-object p1

    .line 587
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return v0

    .line 591
    :cond_24e
    const-string p2, "Copy from unknown path "

    .line 593
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    move-result-object p2

    .line 597
    iget p3, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 599
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 607
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    move-result-object p1

    .line 614
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return v0

    .line 618
    :cond_269
    :goto_269
    return v2

    .line 619
    :cond_26a
    :goto_26a
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 621
    const-string p2, "CopyFile: null parameter"

    .line 623
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return v0
.end method

.method private doPickFile(Ljava/lang/String;Landroid/app/Activity;)V
    .registers 7

    .line 1
    if-eqz p2, :cond_a3

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    goto/16 :goto_a3

    .line 11
    :cond_a
    new-instance v0, Ljava/io/File;

    .line 13
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_9b

    .line 22
    new-instance v1, Landroid/content/Intent;

    .line 24
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 27
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_64

    .line 33
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    const-string v3, "android.intent.action.OPEN_DOCUMENT"

    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_64

    .line 49
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_57

    .line 55
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->checkSDRootPathWritable()Z

    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_52

    .line 61
    new-instance v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    .line 63
    const v1, 0x7f0a0319

    .line 66
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    .line 69
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setDistPath(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v0, p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V

    .line 79
    invoke-static {p2, p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V

    .line 82
    return-void

    .line 83
    :cond_52
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentUri(Ljava/io/File;)Landroid/net/Uri;

    .line 86
    move-result-object p1

    .line 87
    goto :goto_5b

    .line 88
    :cond_57
    invoke-static {v0}, Lcom/android/fileexplorer/model/OpenDocumentUtil;->buildOpenDocumentResultUri(Ljava/io/File;)Landroid/net/Uri;

    .line 91
    move-result-object p1

    .line 92
    :goto_5b
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    const/16 p1, 0x43

    .line 97
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    goto :goto_7d

    .line 101
    :cond_64
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_76

    .line 107
    invoke-static {v0}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    const/4 p1, 0x1

    .line 115
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    goto :goto_7d

    .line 119
    :cond_76
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    :goto_7d
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_96

    .line 132
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    const-string v2, "android.intent.action.RINGTONE_PICKER"

    .line 142
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_96

    .line 148
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getIntentByRingtonePicker(Ljava/io/File;Landroid/content/Intent;)V

    .line 151
    :cond_96
    const/4 p1, -0x1

    .line 152
    invoke-virtual {p2, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 155
    goto :goto_9f

    .line 156
    :cond_9b
    const/4 p1, 0x0

    .line 157
    invoke-virtual {p2, p1}, Landroid/app/Activity;->setResult(I)V

    .line 160
    :goto_9f
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 163
    return-void

    .line 164
    :cond_a3
    :goto_a3
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 166
    const-string p2, "activity or path is null, return"

    .line 168
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private getIntentByRingtonePicker(Ljava/io/File;Landroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-static {p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    :goto_17
    return-void
.end method

.method public static getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I
    .registers 2

    .line 5
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_c
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickFolderMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x2

    return p0

    .line 7
    :cond_18
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 p0, 0x3

    return p0

    .line 8
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

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 9
    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 12
    if-eqz p0, :cond_15

    .line 14
    new-instance v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$17;

    .line 16
    invoke-direct {v1, v0, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$17;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    .line 19
    invoke-interface {p0, p1, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showOverwriteDialog(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V

    .line 22
    :cond_15
    :try_start_15
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    .line 25
    goto :goto_20

    .line 26
    :catch_19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 33
    :goto_20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public static ifUserChooseOverwrite2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)I
    .registers 5

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 13
    if-eqz p0, :cond_16

    .line 15
    new-instance v2, Lcom/android/fileexplorer/filemanager/FileOperationManager$16;

    .line 17
    invoke-direct {v2, v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$16;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 20
    invoke-interface {p0, p1, v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showOverwriteDialog2(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V

    .line 23
    :cond_16
    :try_start_16
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 26
    goto :goto_21

    .line 27
    :catch_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 34
    :goto_21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method private isOperation()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_12

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_12

    .line 18
    const/4 v1, 0x1

    .line 19
    :cond_12
    return v1
.end method

.method public static isPickFolderMode(Landroid/app/Activity;)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_17

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    const-string v0, "miui.intent.action.PICK_FOLDER"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_17
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method private isPickFromInner(Landroid/app/Activity;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_e

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    move-result-object p1

    .line 8
    const-string v1, "inner_call"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_e
    return v0
.end method

.method public static isPickMode(Landroid/app/Activity;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_32

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_32

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    const-string v1, "android.intent.action.PICK"

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_31

    .line 26
    const-string v1, "android.intent.action.GET_CONTENT"

    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_31

    .line 34
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_31

    .line 42
    const-string v1, "android.intent.action.RINGTONE_PICKER"

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_32

    .line 50
    :cond_31
    const/4 v0, 0x1

    .line 51
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

    .line 1
    if-eqz p0, :cond_17

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    const-string v0, "miui.intent.action.PICK_MULTIPLE"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_17
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static isPickMultipleNoFolderMode(Landroid/app/Activity;)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_17

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    const-string v0, "miui.intent.action.PICK_MULTIPLE_NO_FOLDER"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_17
    const/4 p0, 0x0

    .line 25
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

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_8

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p0, 0x0

    .line 10
    :goto_9
    return p0
.end method

.method private jumpToMiShareIfNeed(I)V
    .registers 6

    .line 1
    const-class v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFrom()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v2, v1, :cond_28

    .line 14
    sget v1, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_FIXED_MIRROR:I

    .line 16
    if-ne v1, p1, :cond_28

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 26
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->viewToMiShare(Landroid/app/Activity;)V

    .line 33
    const p1, 0x7f1103a5

    .line 36
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 39
    goto/16 :goto_a9

    .line 41
    :cond_28
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFrom()I

    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x3

    .line 51
    if-ne v3, v1, :cond_6a

    .line 53
    sget v1, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_FIXED_MIRROR:I

    .line 55
    if-ne v1, p1, :cond_6a

    .line 57
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 59
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_a9

    .line 65
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 67
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    instance-of p1, p1, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 73
    if-eqz p1, :cond_a9

    .line 75
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 77
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 83
    new-instance v1, Landroidx/lifecycle/c0;

    .line 85
    invoke-direct {v1, p1}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 88
    invoke-virtual {v1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 94
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    .line 96
    new-instance v0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 98
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 100
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;-><init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)V

    .line 103
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 106
    goto :goto_a9

    .line 107
    :cond_6a
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFrom()I

    .line 114
    move-result v1

    .line 115
    if-ne v3, v1, :cond_a9

    .line 117
    sget v1, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT_MIRROR:I

    .line 119
    if-ne v1, p1, :cond_a9

    .line 121
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 123
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_a9

    .line 129
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 131
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    instance-of p1, p1, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 137
    if-eqz p1, :cond_a9

    .line 139
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 141
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 147
    new-instance v1, Landroidx/lifecycle/c0;

    .line 149
    invoke-direct {v1, p1}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 152
    invoke-virtual {v1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 158
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    .line 160
    new-instance v0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;

    .line 162
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 164
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;-><init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)V

    .line 167
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 170
    :cond_a9
    :goto_a9
    return-void
.end method

.method private static synthetic lambda$deleteFiles$0(Landroid/os/CountDownTimer;Landroid/content/DialogInterface;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_5

    .line 3
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    :cond_5
    return-void
.end method

.method private synthetic lambda$deleteFilesMirror$1(Ljava/lang/Runnable;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_5

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startDeleteThread()V

    .line 9
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 12
    return-void
.end method

.method private static synthetic lambda$writeFileThreadPoolWay$2(ILjava/io/InputStream;Landroid/content/Context;Ljava/io/File;Ljava/io/OutputStream;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/CountDownLatch;)V
    .registers 12

    .line 1
    :try_start_0
    new-array p0, p0, [B

    .line 3
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    move v2, v1

    .line 6
    :goto_5
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    .line 9
    move-result v3

    .line 10
    const/4 v4, -0x1

    .line 11
    if-eq v3, v4, :cond_39

    .line 13
    instance-of v4, p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 15
    if-eqz v4, :cond_32

    .line 17
    const/16 v4, 0x64

    .line 19
    if-ne v2, v4, :cond_19

    .line 21
    invoke-static {p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->updateUI(Landroid/content/Context;I)V

    .line 24
    move v1, v0

    .line 25
    move v2, v1

    .line 26
    :cond_19
    move-object v4, p2

    .line 27
    check-cast v4, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 29
    invoke-interface {v4}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_32

    .line 35
    invoke-static {p3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_46
    .catchall {:try_start_0 .. :try_end_25} :catchall_44

    .line 38
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 41
    invoke-static {p4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
    invoke-static {p5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 47
    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 50
    return-void

    .line 51
    :cond_32
    add-int/lit8 v2, v2, 0x1

    .line 53
    add-int/2addr v1, v3

    .line 54
    :try_start_35
    invoke-virtual {p4, p0, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 57
    goto :goto_5

    .line 58
    :cond_39
    instance-of p0, p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 60
    if-eqz p0, :cond_40

    .line 62
    invoke-static {p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->updateUI(Landroid/content/Context;I)V

    .line 65
    :cond_40
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_43} :catch_46
    .catchall {:try_start_35 .. :try_end_43} :catchall_44

    .line 68
    goto :goto_4a

    .line 69
    :catchall_44
    move-exception p0

    .line 70
    goto :goto_57

    .line 71
    :catch_46
    move-exception p0

    .line 72
    :try_start_47
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_44

    .line 75
    :goto_4a
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    invoke-static {p4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    invoke-static {p5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 87
    return-void

    .line 88
    :goto_57
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    invoke-static {p4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    invoke-static {p5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 97
    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 100
    throw p0
.end method

.method private releaseCopyOrMoveWakeLock()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCopyOrMoveWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    :try_start_4
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCopyOrMoveWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    .line 11
    goto :goto_13

    .line 12
    :catch_b
    move-exception v0

    .line 13
    sget-object v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 15
    const-string v2, "release lock"

    .line 17
    invoke-static {v1, v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 6
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 p2, 0x0

    .line 9
    new-array p2, p2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    return-void
.end method

.method private startCopyOrMoveThread(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V
    .registers 5

    .line 2
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

    .line 1
    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCopyOrMoveThread(Lcom/android/fileexplorer/model/FileInfo;ZZI)V

    return-void
.end method

.method private startCopyOrMoveThread(Lcom/android/fileexplorer/model/FileInfo;ZZI)V
    .registers 12

    .line 3
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

    .line 4
    invoke-virtual {v6, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startCreateFolderThread(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCreateFolderThread(Ljava/lang/String;Z)V

    return-void
.end method

.method private startCreateFolderThread(Ljava/lang/String;Z)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 3
    :cond_9
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$9;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Z)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 4
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$10;

    .line 12
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$10;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;)V

    .line 15
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Ljava/lang/Void;

    .line 20
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    return-void
.end method

.method private static updateUI(Landroid/content/Context;I)V
    .registers 4

    .line 1
    instance-of v0, p0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    check-cast p0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 7
    int-to-long v0, p1

    .line 8
    invoke-interface {p0, v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    .line 11
    :cond_a
    return-void
.end method

.method public static writeDocumentFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;ZI)I
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    if-eqz p3, :cond_31

    .line 5
    :try_start_4
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    .line 8
    move-result-object p3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_56
    .catchall {:try_start_4 .. :try_end_8} :catchall_53

    .line 9
    if-nez p3, :cond_11

    .line 11
    :goto_a
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 14
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 17
    return v1

    .line 18
    :cond_11
    :try_start_11
    check-cast p3, Ls0/c;

    .line 20
    iget-object p3, p3, Ls0/c;->c:Landroid/net/Uri;

    .line 22
    if-nez p3, :cond_18

    .line 24
    goto :goto_a

    .line 25
    :cond_18
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    move-result-object v2

    .line 33
    const-string v3, "rw"

    .line 35
    invoke-virtual {v2, p3, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 38
    move-result-object p3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_26} :catch_56
    .catchall {:try_start_11 .. :try_end_26} :catchall_53

    .line 39
    :try_start_26
    new-instance v2, Ljava/io/FileOutputStream;

    .line 41
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 44
    move-result-object v3

    .line 45
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_51
    .catchall {:try_start_26 .. :try_end_2f} :catchall_7a

    .line 48
    move-object v0, v2

    .line 49
    goto :goto_43

    .line 50
    :cond_31
    :try_start_31
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 57
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 60
    new-instance p3, Ljava/io/FileOutputStream;

    .line 62
    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_40} :catch_56
    .catchall {:try_start_31 .. :try_end_40} :catchall_53

    .line 65
    move-object v4, v0

    .line 66
    move-object v0, p3

    .line 67
    move-object p3, v4

    .line 68
    :goto_43
    :try_start_43
    invoke-static {p0, p1, v0, p4}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_51
    .catchall {:try_start_43 .. :try_end_4a} :catchall_7a

    .line 75
    :goto_4a
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    invoke-static {p3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    goto :goto_73

    .line 82
    :catch_51
    move-exception p0

    .line 83
    goto :goto_58

    .line 84
    :catchall_53
    move-exception p0

    .line 85
    move-object p3, v0

    .line 86
    goto :goto_7b

    .line 87
    :catch_56
    move-exception p0

    .line 88
    move-object p3, v0

    .line 89
    :goto_58
    :try_start_58
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 91
    new-instance p4, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string v2, "writeDocumentFile error: "

    .line 98
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_7a

    .line 115
    goto :goto_4a

    .line 116
    :goto_73
    const/4 p0, 0x5

    .line 117
    if-ne v1, p0, :cond_79

    .line 119
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 122
    :cond_79
    return v1

    .line 123
    :catchall_7a
    move-exception p0

    .line 124
    :goto_7b
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 127
    invoke-static {p3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 130
    throw p0
.end method

.method public static writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    .registers 8

    .line 1
    :try_start_0
    new-array p3, p3, [B

    .line 3
    :goto_2
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_29

    .line 11
    instance-of v1, p0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 13
    if-eqz v1, :cond_25

    .line 15
    if-nez v0, :cond_17

    .line 17
    sget-object v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 19
    const-string v3, "len is 0"

    .line 21
    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_17
    invoke-static {p0, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->updateUI(Landroid/content/Context;I)V

    .line 27
    move-object v1, p0

    .line 28
    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 30
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_25

    .line 36
    const/4 p0, 0x5

    .line 37
    return p0

    .line 38
    :cond_25
    invoke-virtual {p2, p3, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_2a

    .line 41
    goto :goto_2

    .line 42
    :cond_29
    return v2

    .line 43
    :catch_2a
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 49
    const-string p2, "writeFile error:"

    .line 51
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 p0, 0x4

    .line 70
    return p0
.end method

.method public static writeFileThreadPoolWay(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/File;ILjava/util/concurrent/ThreadPoolExecutor;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/CountDownLatch;)V
    .registers 17

    .line 1
    new-instance v8, Lcom/android/fileexplorer/filemanager/a;

    .line 3
    move-object v0, v8

    .line 4
    move v1, p4

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p0

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p2

    .line 9
    move-object v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/filemanager/a;-><init>(ILjava/io/InputStream;Landroid/content/Context;Ljava/io/File;Ljava/io/OutputStream;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/CountDownLatch;)V

    .line 15
    move-object v0, p5

    .line 16
    invoke-virtual {p5, v8}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 19
    return-void
.end method

.method public static zipDecompressWriteDocumentFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;ZILjava/util/concurrent/ThreadPoolExecutor;Ljava/util/concurrent/CountDownLatch;)V
    .registers 16

    .line 1
    if-eqz p3, :cond_28

    .line 3
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    .line 6
    move-result-object p3

    .line 7
    if-nez p3, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    check-cast p3, Ls0/c;

    .line 12
    iget-object p3, p3, Ls0/c;->c:Landroid/net/Uri;

    .line 14
    if-nez p3, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v0

    .line 25
    const-string v1, "rw"

    .line 27
    invoke-virtual {v0, p3, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 30
    move-result-object p3

    .line 31
    new-instance v0, Ljava/io/FileOutputStream;

    .line 33
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 40
    goto :goto_38

    .line 41
    :cond_28
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 48
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 51
    new-instance v0, Ljava/io/FileOutputStream;

    .line 53
    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 56
    const/4 p3, 0x0

    .line 57
    :goto_38
    move-object v7, p3

    .line 58
    move-object v3, v0

    .line 59
    move-object v1, p0

    .line 60
    move-object v2, p1

    .line 61
    move-object v4, p2

    .line 62
    move v5, p4

    .line 63
    move-object v6, p5

    .line 64
    move-object v8, p6

    .line 65
    invoke-static/range {v1 .. v8}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFileThreadPoolWay(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/File;ILjava/util/concurrent/ThreadPoolExecutor;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/CountDownLatch;)V

    .line 68
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;

    .line 3
    invoke-direct {v0, p0, p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;ZLjava/util/List;)V

    .line 6
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 p2, 0x0

    .line 9
    new-array p2, p2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
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

    .line 1
    if-eqz p2, :cond_46

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_46

    .line 10
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p2

    .line 19
    :cond_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_32

    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 31
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 33
    if-eqz v2, :cond_29

    .line 35
    const p1, 0x7f110297

    .line 38
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 41
    return-void

    .line 42
    :cond_29
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 44
    invoke-static {v1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_12

    .line 50
    return-void

    .line 51
    :cond_32
    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->cancelFileOperationTask()V

    .line 54
    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;

    .line 56
    invoke-direct {p2, p0, v0, p1, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 59
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 61
    const/4 p3, 0x0

    .line 62
    new-array p3, p3, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p2, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mFileOperationTask:Landroid/os/AsyncTask;

    .line 70
    return-void

    .line 71
    :cond_46
    :goto_46
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 73
    const-string p2, "addToPrivateFolder checked infos isEmpty"

    .line 75
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/BuildDeleteInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/model/BuildDeleteInfo;-><init>()V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x1

    .line 17
    if-eqz v4, :cond_2d

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 25
    if-eqz v4, :cond_b

    .line 27
    iget-boolean v6, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 29
    if-eqz v6, :cond_b

    .line 31
    iget-object v4, v4, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 33
    const-string v6, "DCIM"

    .line 35
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2a

    .line 41
    move v1, v5

    .line 42
    goto :goto_2e

    .line 43
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_b

    .line 46
    :cond_2d
    move v1, v2

    .line 47
    :goto_2e
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/BuildDeleteInfo;->setContainDCIM(Z)V

    .line 50
    if-eqz v1, :cond_3f

    .line 52
    const p2, 0x7f1102fa

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/BuildDeleteInfo;->setDeleteMessage(Ljava/lang/String;)V

    .line 62
    goto/16 :goto_cc

    .line 64
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 72
    move-result p2

    .line 73
    sub-int/2addr p2, v3

    .line 74
    if-lez v3, :cond_a5

    .line 76
    const v4, 0x7f1102fc

    .line 79
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    if-nez p2, :cond_78

    .line 88
    if-ne v3, v5, :cond_61

    .line 90
    const p2, 0x7f11011a

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    goto :goto_74

    .line 98
    :cond_61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object p1

    .line 102
    const p2, 0x7f0f0011

    .line 105
    new-array v4, v5, [Ljava/lang/Object;

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v5

    .line 111
    aput-object v5, v4, v2

    .line 113
    invoke-virtual {p1, p2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    :goto_74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    goto :goto_c5

    .line 121
    :cond_78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object v4

    .line 125
    const v6, 0x7f0f0010

    .line 128
    new-array v7, v5, [Ljava/lang/Object;

    .line 130
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v8

    .line 134
    aput-object v8, v7, v2

    .line 136
    invoke-virtual {v4, v6, p2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    move-result-object p1

    .line 147
    const p2, 0x7f0f0012

    .line 150
    new-array v4, v5, [Ljava/lang/Object;

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v5

    .line 156
    aput-object v5, v4, v2

    .line 158
    invoke-virtual {p1, p2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    goto :goto_c5

    .line 166
    :cond_a5
    if-ne p2, v5, :cond_af

    .line 168
    const p2, 0x7f110118

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    goto :goto_c2

    .line 176
    :cond_af
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    move-result-object p1

    .line 180
    const v3, 0x7f0f000f

    .line 183
    new-array v4, v5, [Ljava/lang/Object;

    .line 185
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v5

    .line 189
    aput-object v5, v4, v2

    .line 191
    invoke-virtual {p1, v3, p2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    move-result-object p1

    .line 195
    :goto_c2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :goto_c5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/BuildDeleteInfo;->setDeleteMessage(Ljava/lang/String;)V

    .line 205
    :goto_cc
    return-object v0
.end method

.method public checkRename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Z
    .registers 5

    .line 1
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 3
    invoke-static {p2, v0}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegal(Ljava/lang/String;Z)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startRenameThread(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 24
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 20
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 23
    move-result-object v2

    .line 24
    const v1, 0x7f1100ea

    .line 27
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    const v1, 0x7f1100e9

    .line 34
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/model/ArchiveHelper;->buildZipName(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    new-instance v6, Lcom/android/fileexplorer/filemanager/FileOperationManager$6;

    .line 48
    invoke-direct {v6, p0, p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$6;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    move-object v1, v0

    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V

    .line 55
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 58
    return-void
.end method

.method public copyOrMoveFiles(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_4c

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->checkValid()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_4c

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getPasteFileInfos()Ljava/util/ArrayList;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_32

    .line 43
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "copyOrMoveFiles mCurrentOperationList is Empty"

    .line 47
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 51
    :cond_32
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->getSourceFrom()I

    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setSourceFrom(I)V

    .line 62
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    .line 69
    move-result v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setIsMove(Z)V

    .line 73
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCopyOrMoveThread(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    .line 76
    return-void

    .line 77
    :cond_4c
    :goto_4c
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 79
    const-string v0, "copyOrMoveFiles params is null or invalid, return"

    .line 81
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public createFolder(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->createFolder(Ljava/lang/String;Z)V

    return-void
.end method

.method public createFolder(Ljava/lang/String;Z)V
    .registers 10

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 3
    :cond_9
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    const v1, 0x7f1102f0

    .line 4
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v1, 0x7f1102c8

    .line 5
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$4;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Z)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public createFolderMirror(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->createName(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCreateFolderThreadMirror(Ljava/lang/String;)V

    .line 17
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1c

    .line 28
    return-void

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 31
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 37
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->buildDeleteMessage(Landroid/content/Context;Ljava/util/List;)Lcom/android/fileexplorer/model/BuildDeleteInfo;

    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 47
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 49
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 55
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 58
    move-result-object v1

    .line 59
    const v2, 0x7f12000d

    .line 62
    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 65
    const v1, 0x7f1102fb

    .line 68
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/BuildDeleteInfo;->getDeleteMessage()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 79
    move-result-object v0

    .line 80
    const v1, 0x7f110116

    .line 83
    new-instance v2, Lcom/android/fileexplorer/filemanager/FileOperationManager$2;

    .line 85
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager$2;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V

    .line 88
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 91
    move-result-object v0

    .line 92
    const v1, 0x7f110050

    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 107
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/BuildDeleteInfo;->isContainDCIM()Z

    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_8b

    .line 113
    const/4 p1, -0x1

    .line 114
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 117
    move-result-object v7

    .line 118
    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager$3;

    .line 120
    const-wide/16 v3, 0x2710

    .line 122
    const-wide/16 v5, 0x3e8

    .line 124
    move-object v1, p1

    .line 125
    move-object v2, p0

    .line 126
    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/filemanager/FileOperationManager$3;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;JJLandroid/widget/Button;)V

    .line 129
    new-instance v1, Lcom/android/fileexplorer/filemanager/b;

    .line 131
    invoke-direct {v1, p1}, Lcom/android/fileexplorer/filemanager/b;-><init>(Landroid/os/CountDownTimer;)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 137
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 140
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1c

    .line 28
    return-void

    .line 29
    :cond_1c
    const v0, 0x7f1102fb

    .line 32
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    const v0, 0x7f110116

    .line 39
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 45
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 51
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->buildDeleteMessage(Landroid/content/Context;Ljava/util/List;)Lcom/android/fileexplorer/model/BuildDeleteInfo;

    .line 58
    move-result-object p1

    .line 59
    const v0, 0x7f110050

    .line 62
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 68
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 74
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/BuildDeleteInfo;->getDeleteMessage()Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    new-instance v6, Lcom/android/fileexplorer/filemanager/c;

    .line 84
    const/4 p1, 0x0

    .line 85
    invoke-direct {v6, p1, p0, p2}, Lcom/android/fileexplorer/filemanager/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 88
    const/4 v7, 0x0

    .line 89
    invoke-static/range {v1 .. v7}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    .line 92
    return-void
.end method

.method public execute(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;)V
    .registers 5

    .line 1
    if-nez p1, :cond_a

    .line 3
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 5
    const-string v0, "execute storageVolumeAction is null or cancel"

    .line 7
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getFileList()Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getActionId()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    sparse-switch v1, :sswitch_data_b6

    .line 23
    goto/16 :goto_b5

    .line 25
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDistPath()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 31
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 37
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->doPickFile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 44
    goto/16 :goto_b5

    .line 46
    :sswitch_2d
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDistPath()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCreateFolderThread(Ljava/lang/String;)V

    .line 53
    goto/16 :goto_b5

    .line 55
    :sswitch_36
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getSrcPath()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDistPath()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getPassword()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startDecompressThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    goto :goto_b5

    .line 78
    :sswitch_4d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 84
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getName()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startRenameThread(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 91
    goto :goto_b5

    .line 92
    :sswitch_5b
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->isOverwrite()Z

    .line 109
    move-result v1

    .line 110
    const/4 v2, 0x1

    .line 111
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDestType()I

    .line 114
    move-result p1

    .line 115
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCopyOrMoveThread(Lcom/android/fileexplorer/model/FileInfo;ZZI)V

    .line 118
    goto :goto_b5

    .line 119
    :sswitch_76
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startDeleteThread()V

    .line 132
    goto :goto_b5

    .line 133
    :sswitch_84
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 138
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->isOverwrite()Z

    .line 150
    move-result v1

    .line 151
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDestType()I

    .line 154
    move-result p1

    .line 155
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCopyOrMoveThread(Lcom/android/fileexplorer/model/FileInfo;ZZI)V

    .line 158
    goto :goto_b5

    .line 159
    :sswitch_9e
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDistPath()Ljava/lang/String;

    .line 162
    move-result-object p1

    .line 163
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCompressThread(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 166
    goto :goto_b5

    .line 167
    :sswitch_a6
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getActionType()I

    .line 170
    move-result v0

    .line 171
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getFileList()Ljava/util/ArrayList;

    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getDistPath()Ljava/lang/String;

    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V

    .line 182
    :goto_b5
    return-void

    .line 183
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

    .line 1
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

    .line 2
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

    .line 3
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

    .line 4
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

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->cancelFileOperationTask()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->clearActionCache()V

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->releaseCopyOrMoveWakeLock()V

    .line 14
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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_125

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_10

    .line 15
    goto/16 :goto_125

    .line 17
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 28
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_1d} :catch_11d

    .line 30
    const/4 v3, -0x1

    .line 31
    const/4 v4, 0x3

    .line 32
    const/4 v5, 0x1

    .line 33
    if-eq v0, v5, :cond_e0

    .line 35
    const/4 v6, 0x2

    .line 36
    const-string v7, "android.intent.extra.STREAM"

    .line 38
    if-eq v0, v6, :cond_c8

    .line 40
    if-eq v0, v4, :cond_2e

    .line 42
    const/4 v2, 0x4

    .line 43
    if-eq v0, v2, :cond_2e

    .line 45
    goto/16 :goto_10d

    .line 47
    :cond_2e
    :try_start_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    move-result v0

    .line 51
    const/4 v2, 0x0

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    .line 54
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 57
    :goto_38
    if-ge v1, v0, :cond_aa

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Lcom/android/fileexplorer/model/FileInfo;

    .line 65
    iget v8, v8, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 67
    if-ne v8, v4, :cond_54

    .line 69
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v8

    .line 73
    check-cast v8, Lcom/android/fileexplorer/model/FileInfo;

    .line 75
    iget-object v8, v8, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 77
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 80
    move-result-object v8

    .line 81
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_a7

    .line 85
    :cond_54
    new-instance v8, Ljava/io/File;

    .line 87
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v9

    .line 91
    check-cast v9, Lcom/android/fileexplorer/model/FileInfo;

    .line 93
    iget-object v9, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 95
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_a7

    .line 104
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_a0

    .line 110
    iget-object v9, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 112
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 115
    move-result-object v9

    .line 116
    check-cast v9, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 118
    invoke-interface {v9}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 121
    move-result-object v9

    .line 122
    invoke-direct {p0, v9}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickFromInner(Landroid/app/Activity;)Z

    .line 125
    move-result v9

    .line 126
    if-nez v9, :cond_a0

    .line 128
    invoke-static {v8}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 131
    move-result-object v8

    .line 132
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    if-nez v2, :cond_97

    .line 137
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 144
    move-result-object v2

    .line 145
    const-string v9, "FileExplorer"

    .line 147
    invoke-static {v2, v9, v8}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 150
    move-result-object v2

    .line 151
    goto :goto_a7

    .line 152
    :cond_97
    new-instance v9, Landroid/content/ClipData$Item;

    .line 154
    invoke-direct {v9, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 157
    invoke-virtual {v2, v9}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 160
    goto :goto_a7

    .line 161
    :cond_a0
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 164
    move-result-object v8

    .line 165
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_a7
    :goto_a7
    add-int/lit8 v1, v1, 0x1

    .line 170
    goto :goto_38

    .line 171
    :cond_aa
    new-instance p1, Landroid/content/Intent;

    .line 173
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 176
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 179
    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 187
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 193
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0, v3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 200
    goto :goto_10d

    .line 201
    :cond_c8
    new-instance p1, Landroid/content/Intent;

    .line 203
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 206
    invoke-virtual {p1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 211
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 217
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0, v3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 224
    goto :goto_10d

    .line 225
    :cond_e0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 231
    iget p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 233
    if-ne p1, v4, :cond_fe

    .line 235
    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    move-result-object p1

    .line 239
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 241
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 247
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0, v3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 254
    goto :goto_10d

    .line 255
    :cond_fe
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 257
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 263
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 266
    move-result-object p1

    .line 267
    invoke-direct {p0, v2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->doPickFile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 270
    :goto_10d
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 272
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 275
    move-result-object p1

    .line 276
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 278
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V
    :try_end_11c
    .catch Ljava/net/URISyntaxException; {:try_start_2e .. :try_end_11c} :catch_11d

    .line 285
    goto :goto_125

    .line 286
    :catch_11d
    move-exception p1

    .line 287
    sget-object v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 289
    const-string v1, "error"

    .line 291
    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    :cond_125
    :goto_125
    return-void
.end method

.method public renameFile(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_57

    .line 9
    if-nez p1, :cond_b

    .line 11
    goto :goto_57

    .line 12
    :cond_b
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 14
    instance-of v1, p1, Lcom/android/fileexplorer/model/PcModeFileInfo;

    .line 16
    if-eqz v1, :cond_1e

    .line 18
    move-object v1, p1

    .line 19
    check-cast v1, Lcom/android/fileexplorer/model/PcModeFileInfo;

    .line 21
    iget-object v2, v1, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1e

    .line 29
    iget-object v0, v1, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    .line 31
    :cond_1e
    move-object v5, v0

    .line 32
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog;

    .line 34
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 36
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 42
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 45
    move-result-object v2

    .line 46
    const v1, 0x7f11031a

    .line 49
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    const v1, 0x7f11031c

    .line 56
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    iget-boolean v6, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 62
    new-instance v7, Lcom/android/fileexplorer/filemanager/FileOperationManager$11;

    .line 64
    invoke-direct {v7, p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$11;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 67
    move-object v1, v0

    .line 68
    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V

    .line 71
    iget-boolean v1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 73
    xor-int/lit8 v1, v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/TextInputDialog;->setCheckExt(Z)V

    .line 78
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 80
    xor-int/lit8 p1, p1, 0x1

    .line 82
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/TextInputDialog;->setCheckFileName(Z)V

    .line 85
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 88
    :cond_57
    :goto_57
    return-void
.end method

.method public send(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
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

    .line 4
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

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 6
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

    .line 7
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_d

    .line 8
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f110161

    .line 9
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1100eb

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 12
    :cond_47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_56

    const p1, 0x7f11004f

    .line 13
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void

    .line 14
    :cond_56
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$7;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Ljava/util/List;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Lcom/android/fileexplorer/view/InformationDialog;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 20
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1, p1, p2}, Lcom/android/fileexplorer/view/InformationDialog;-><init>(Landroid/app/Activity;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/InformationDialog;->show()V

    .line 30
    return-void
.end method

.method public showFileInfoMirror(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 20
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->show()V

    .line 30
    return-void
.end method

.method public startDecompressThread(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 p2, 0x0

    .line 9
    new-array p2, p2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    return-void
.end method

.method public startDeleteThread()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$14;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager$14;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V

    .line 6
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    return-void
.end method

.method public startRenameThread(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 4

    .line 1
    if-nez p1, :cond_a

    .line 3
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 5
    const-string p2, "fileInfo is null, return."

    .line 7
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$12;

    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$12;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 16
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 18
    const/4 p2, 0x0

    .line 19
    new-array p2, p2, [Ljava/lang/Void;

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 24
    return-void
.end method

.method public startRenameThreadMirror(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_a

    .line 3
    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->TAG:Ljava/lang/String;

    .line 5
    const-string p2, "fileInfo is null, return."

    .line 7
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;

    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 16
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 18
    const/4 p2, 0x0

    .line 19
    new-array p2, p2, [Ljava/lang/Void;

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 24
    return-void
.end method
