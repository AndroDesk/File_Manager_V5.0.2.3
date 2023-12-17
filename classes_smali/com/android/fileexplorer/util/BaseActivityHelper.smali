.class public Lcom/android/fileexplorer/util/BaseActivityHelper;
.super Ljava/lang/Object;
.source "BaseActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;
    }
.end annotation


# static fields
.field private static DELAY_TIME:J = 0x29810L

.field private static final KILL_PID:I = 0x1

.field private static final SPEED_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BaseActivityHelper"

.field private static isSendKillSignal:Z

.field private static mKillPidHandler:Landroid/os/Handler;


# instance fields
.field private mCompositeDisposable:Lk2/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/BaseActivityHelper$1;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/util/BaseActivityHelper$1;-><init>(Landroid/os/Looper;)V

    .line 10
    sput-object v0, Lcom/android/fileexplorer/util/BaseActivityHelper;->mKillPidHandler:Landroid/os/Handler;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Z)Z
    .registers 1

    .line 1
    sput-boolean p0, Lcom/android/fileexplorer/util/BaseActivityHelper;->isSendKillSignal:Z

    .line 3
    return p0
.end method

.method private static isNotProcessTask(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->getActivityAccount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-gt v0, v1, :cond_1e

    .line 8
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressShowing()Z

    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_1e

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->getTaskActivityAccount()I

    .line 17
    move-result p0

    .line 18
    if-gt p0, v1, :cond_1e

    .line 20
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/android/cloud/CloudDriveManager;->isMiDriveJobWorking()Z

    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1e

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 v1, 0x0

    .line 32
    :goto_1f
    return v1
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    const/16 v0, 0x7f

    .line 3
    if-ne p0, v0, :cond_27

    .line 5
    const/4 p0, -0x1

    .line 6
    if-ne p1, p0, :cond_1a

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 11
    move-result-object p0

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->cacheUri(Landroid/content/Context;Landroid/content/Intent;)V

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->doCacheAction()V

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    const p0, 0x7f110174

    .line 30
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 33
    :goto_20
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->clearActionCache()V

    .line 40
    :cond_27
    return-void
.end method

.method public static removeKillMessages()V
    .registers 2

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/BaseActivityHelper;->isSendKillSignal:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    sget-object v0, Lcom/android/fileexplorer/util/BaseActivityHelper;->mKillPidHandler:Landroid/os/Handler;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/android/fileexplorer/util/BaseActivityHelper;->isSendKillSignal:Z

    .line 14
    :cond_d
    return-void
.end method

.method public static sendKillMessages(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/BaseActivityHelper;->isSendKillSignal:Z

    .line 3
    if-nez v0, :cond_1b

    .line 5
    invoke-static {p0}, Lcom/android/fileexplorer/util/BaseActivityHelper;->isNotProcessTask(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_1b

    .line 11
    const-string p0, "BaseActivityHelper"

    .line 13
    const-string v0, "Enter Background"

    .line 15
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const/4 p0, 0x1

    .line 19
    sput-boolean p0, Lcom/android/fileexplorer/util/BaseActivityHelper;->isSendKillSignal:Z

    .line 21
    sget-object v0, Lcom/android/fileexplorer/util/BaseActivityHelper;->mKillPidHandler:Landroid/os/Handler;

    .line 23
    sget-wide v1, Lcom/android/fileexplorer/util/BaseActivityHelper;->DELAY_TIME:J

    .line 25
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 28
    :cond_1b
    return-void
.end method

.method public static showCancelOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/fileexplorer/util/BaseActivityHelper$4;

    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/util/BaseActivityHelper$4;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public static showOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/fileexplorer/util/BaseActivityHelper$2;

    .line 7
    invoke-direct {v1, p1, p0, p2}, Lcom/android/fileexplorer/util/BaseActivityHelper$2;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public static showOverwriteDialog2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/fileexplorer/util/BaseActivityHelper$3;

    .line 7
    invoke-direct {v1, p1, p0, p2}, Lcom/android/fileexplorer/util/BaseActivityHelper$3;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method
