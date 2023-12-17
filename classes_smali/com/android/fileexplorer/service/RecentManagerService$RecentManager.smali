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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/service/IRecentManager$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Lcom/android/fileexplorer/service/IInitCallback;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->notifyDoneInit(Lcom/android/fileexplorer/service/IInitCallback;)V

    .line 4
    return-void
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mIsInit:Z

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;)Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mOnScanListener:Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method private notifyDoneInit(Lcom/android/fileexplorer/service/IInitCallback;)V
    .registers 2

    .line 1
    if-eqz p1, :cond_a

    .line 3
    :try_start_2
    invoke-interface {p1}, Lcom/android/fileexplorer/service/IInitCallback;->onComplete()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 6
    goto :goto_a

    .line 7
    :catch_6
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_a
    :goto_a
    return-void
.end method

.method private registerReceiver()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMiuiCameraCaptureReceiver:Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;-><init>(Lcom/android/fileexplorer/service/RecentManagerService$1;)V

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMiuiCameraCaptureReceiver:Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mContext:Landroid/content/Context;

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMiuiCameraCaptureReceiver:Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

    .line 17
    new-instance v2, Landroid/content/IntentFilter;

    .line 19
    const-string v3, "com.android.camera.IMAGE_READY"

    .line 21
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    return-void
.end method

.method private unRegisterReceiver()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMiuiCameraCaptureReceiver:Lcom/android/fileexplorer/service/RecentManagerService$MiuiCameraCaptureReceiver;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    :cond_9
    return-void
.end method

.method private watchFiles()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mFileObserverManager:Lcom/android/fileexplorer/service/RecentFileObserverManager;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/android/fileexplorer/service/RecentFileObserverManager;

    .line 7
    invoke-direct {v0}, Lcom/android/fileexplorer/service/RecentFileObserverManager;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mFileObserverManager:Lcom/android/fileexplorer/service/RecentFileObserverManager;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mFileObserverManager:Lcom/android/fileexplorer/service/RecentFileObserverManager;

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/RecentFileObserverManager;->startWatching()V

    .line 17
    return-void
.end method

.method private watchMediaStore()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMediaFileContentObserver:Landroid/database/ContentObserver;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$2;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$2;-><init>(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Landroid/os/Handler;)V

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMediaFileContentObserver:Landroid/database/ContentObserver;

    .line 13
    :cond_c
    const-string v0, "external"

    .line 15
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x1

    .line 28
    iget-object v3, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMediaFileContentObserver:Landroid/database/ContentObserver;

    .line 30
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/model/FileIconHelper;->getThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public init(Lcom/android/fileexplorer/service/IInitCallback;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/service/RecentManagerService;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "init start"

    .line 7
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-boolean v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mIsInit:Z

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->notifyDoneInit(Lcom/android/fileexplorer/service/IInitCallback;)V

    .line 17
    :cond_10
    invoke-direct {p0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->registerReceiver()V

    .line 20
    invoke-direct {p0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->watchMediaStore()V

    .line 23
    invoke-direct {p0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->watchFiles()V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mOnScanListener:Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    .line 28
    if-nez v0, :cond_24

    .line 30
    new-instance v0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;

    .line 32
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;-><init>(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Lcom/android/fileexplorer/service/IInitCallback;)V

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mOnScanListener:Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    .line 37
    :cond_24
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mOnScanListener:Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 46
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 49
    move-result-object p1

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 54
    return-void
.end method

.method public refresh()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mIsInit:Z

    .line 3
    if-nez v0, :cond_e

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/service/RecentManagerService;->access$000()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "initialization hasn\'t be done"

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 23
    return-void
.end method

.method public release()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mOnScanListener:Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->unRegisterOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mFileObserverManager:Lcom/android/fileexplorer/service/RecentFileObserverManager;

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/service/RecentFileObserverManager;->stopWatching()V

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMediaFileContentObserver:Landroid/database/ContentObserver;

    .line 19
    if-eqz v0, :cond_21

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->mMediaFileContentObserver:Landroid/database/ContentObserver;

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 34
    :cond_21
    invoke-direct {p0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->unRegisterReceiver()V

    .line 37
    return-void
.end method
