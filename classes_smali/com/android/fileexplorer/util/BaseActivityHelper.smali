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

    new-instance v0, Lcom/android/fileexplorer/util/BaseActivityHelper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/util/BaseActivityHelper$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/fileexplorer/util/BaseActivityHelper;->mKillPidHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/fileexplorer/util/BaseActivityHelper;->isSendKillSignal:Z

    return p0
.end method

.method private static isNotProcessTask(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->getActivityAccount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1e

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressShowing()Z

    move-result p0

    if-nez p0, :cond_1e

    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->getTaskActivityAccount()I

    move-result p0

    if-gt p0, v1, :cond_1e

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/cloud/CloudDriveManager;->isMiDriveJobWorking()Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_27

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1a

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object p0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->cacheUri(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->doCacheAction()V

    goto :goto_20

    :cond_1a
    const p0, 0x7f110174

    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    :goto_20
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->clearActionCache()V

    :cond_27
    return-void
.end method

.method public static removeKillMessages()V
    .registers 2

    sget-boolean v0, Lcom/android/fileexplorer/util/BaseActivityHelper;->isSendKillSignal:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/fileexplorer/util/BaseActivityHelper;->mKillPidHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/fileexplorer/util/BaseActivityHelper;->isSendKillSignal:Z

    :cond_d
    return-void
.end method

.method public static sendKillMessages(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V
    .registers 4

    sget-boolean v0, Lcom/android/fileexplorer/util/BaseActivityHelper;->isSendKillSignal:Z

    if-nez v0, :cond_1b

    invoke-static {p0}, Lcom/android/fileexplorer/util/BaseActivityHelper;->isNotProcessTask(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, "BaseActivityHelper"

    const-string v0, "Enter Background"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/fileexplorer/util/BaseActivityHelper;->isSendKillSignal:Z

    sget-object v0, Lcom/android/fileexplorer/util/BaseActivityHelper;->mKillPidHandler:Landroid/os/Handler;

    sget-wide v1, Lcom/android/fileexplorer/util/BaseActivityHelper;->DELAY_TIME:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1b
    return-void
.end method

.method public static showCancelOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/util/BaseActivityHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/util/BaseActivityHelper$4;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/util/BaseActivityHelper$2;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/fileexplorer/util/BaseActivityHelper$2;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showOverwriteDialog2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/util/BaseActivityHelper$3;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/fileexplorer/util/BaseActivityHelper$3;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
