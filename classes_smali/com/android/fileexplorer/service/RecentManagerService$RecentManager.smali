.class Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;
.super Lcom/android/fileexplorer/service/IRecentManager$Stub;
.source "RecentManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/RecentManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentManager"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileObserverManager:Lcom/android/fileexplorer/service/RecentFileObserverManager;

.field private mIsInit:Z

.field private mMediaFileContentObserver:Landroid/database/ContentObserver;

.field private mMiuiCameraCaptureReceiver:Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

.field private mOnScanListener:Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/service/IRecentManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Lcom/android/fileexplorer/service/IInitCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->notifyDoneInit(Lcom/android/fileexplorer/service/IInitCallback;)V

    return-void
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mIsInit:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;)Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mOnScanListener:Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private notifyDoneInit(Lcom/android/fileexplorer/service/IInitCallback;)V
    .registers 2

    if-eqz p1, :cond_a

    :try_start_2
    invoke-interface {p1}, Lcom/android/fileexplorer/service/IInitCallback;->onComplete()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_a
    return-void
.end method

.method private registerReceiver()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMiuiCameraCaptureReceiver:Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;-><init>(Lcom/android/fileexplorer/service/RecentManagerService$1;)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMiuiCameraCaptureReceiver:Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMiuiCameraCaptureReceiver:Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.camera.IMAGE_READY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterReceiver()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMiuiCameraCaptureReceiver:Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_9
    return-void
.end method

.method private watchFiles()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mFileObserverManager:Lcom/android/fileexplorer/service/RecentFileObserverManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/fileexplorer/service/RecentFileObserverManager;

    invoke-direct {v0}, Lcom/android/fileexplorer/service/RecentFileObserverManager;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mFileObserverManager:Lcom/android/fileexplorer/service/RecentFileObserverManager;

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mFileObserverManager:Lcom/android/fileexplorer/service/RecentFileObserverManager;

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/RecentFileObserverManager;->startWatching()V

    return-void
.end method

.method private watchMediaStore()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMediaFileContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$2;-><init>(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMediaFileContentObserver:Landroid/database/ContentObserver;

    :cond_c
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMediaFileContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public getThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/model/FileIconHelper;->getThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public init(Lcom/android/fileexplorer/service/IInitCallback;)V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/service/RecentManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init start"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mIsInit:Z

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->notifyDoneInit(Lcom/android/fileexplorer/service/IInitCallback;)V

    :cond_10
    invoke-direct {p0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->registerReceiver()V

    invoke-direct {p0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->watchMediaStore()V

    invoke-direct {p0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->watchFiles()V

    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mOnScanListener:Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    if-nez v0, :cond_24

    new-instance v0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;-><init>(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Lcom/android/fileexplorer/service/IInitCallback;)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mOnScanListener:Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    :cond_24
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mOnScanListener:Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    return-void
.end method

.method public refresh()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mIsInit:Z

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/fileexplorer/service/RecentManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initialization hasn\'t be done"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    return-void
.end method

.method public release()V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mOnScanListener:Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->unRegisterOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mFileObserverManager:Lcom/android/fileexplorer/service/RecentFileObserverManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/fileexplorer/service/RecentFileObserverManager;->stopWatching()V

    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMediaFileContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMediaFileContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_21
    invoke-direct {p0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->unRegisterReceiver()V

    return-void
.end method
