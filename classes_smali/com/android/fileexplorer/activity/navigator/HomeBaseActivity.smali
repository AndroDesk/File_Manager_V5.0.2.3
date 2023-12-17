.class public abstract Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;
.super Lcom/android/fileexplorer/activity/BaseNavigatorActivity;
.source "HomeBaseActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;


# static fields
.field private static final FORCE_FSG_NAV_BAR:Ljava/lang/String; = "force_fsg_nav_bar"

.field private static final TAG:Ljava/lang/String; = "BaseActivity"

.field private static mPreUpdataUiTime:J


# instance fields
.field private final SPEED_INTERVAL:I

.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mAllSize:J

.field private mCompositeDisposable:Lk2/a;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDivider:D

.field private mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

.field private mRequestDocumentPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mResumed:Z

.field private mRootView:Landroid/view/View;

.field private mSpeedUpdateTimer:Ljava/util/Timer;

.field private mStop:Z

.field public mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseNavigatorActivity;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->SPEED_INTERVAL:I

    return-void
.end method


# virtual methods
.method public addDisposable(Lk2/b;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mCompositeDisposable:Lk2/a;

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lk2/a;->b:Z

    if-eqz v0, :cond_f

    :cond_8
    new-instance v0, Lk2/a;

    invoke-direct {v0}, Lk2/a;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mCompositeDisposable:Lk2/a;

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mCompositeDisposable:Lk2/a;

    invoke-virtual {v0, p1}, Lk2/a;->c(Lk2/b;)Z

    return-void
.end method

.method public calculateProgressDivider(J)D
    .registers 8

    const/4 v0, 0x1

    :goto_1
    int-to-long v1, v0

    div-long v1, p1, v1

    const-wide/32 v3, 0xc350

    cmp-long v1, v1, v3

    if-lez v1, :cond_e

    mul-int/lit16 v0, v0, 0x400

    goto :goto_1

    :cond_e
    int-to-double p1, v0

    return-wide p1
.end method

.method public cancelOverWrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;->cancel()V

    :cond_5
    return-void
.end method

.method public cancelProcessDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->cancel()V

    :cond_7
    return-void
.end method

.method public dismissProgress()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->stopSpeedTimer()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    sput-wide v0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mPreUpdataUiTime:J

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAllSize:J

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "BaseActivity"

    const-string v1, "dismissProgress"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->dismissCancelDialog()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "realDismiss: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    :cond_31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    :cond_34
    return-void
.end method

.method public getOverWriteDialog()Lmiuix/appcompat/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object v0
.end method

.method public getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .registers 1

    return-object p0
.end method

.method public getRequestDocumentPermissionDialog()Lmiuix/appcompat/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mRequestDocumentPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object v0
.end method

.method public getTotalSize()J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    return-wide v0
.end method

.method public handleGesturePromptLineIfNeed()V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    if-eqz v2, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public ignoreParentResponsiveLayout()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized increaseProgressBy(J)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide v0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mPreUpdataUiTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x3e8

    if-ltz v4, :cond_1a

    sub-long v0, p1, v0

    cmp-long v0, v0, v5

    if-gez v0, :cond_25

    :cond_1a
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    iget-wide v7, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAllSize:J
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_41

    sub-long/2addr v7, v5

    cmp-long v0, v0, v7

    if-gez v0, :cond_25

    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    sput-wide p1, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mPreUpdataUiTime:J

    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    if-eqz p1, :cond_3f

    iget-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mDivider:D

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    cmpl-double p2, v0, v4

    if-ltz p2, :cond_3f

    iget-wide v4, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    cmp-long p2, v4, v2

    if-eqz p2, :cond_3f

    long-to-double v2, v4

    div-double/2addr v2, v0

    double-to-int p2, v2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ProgressDialog;->setProgress(I)V
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_41

    :cond_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isActivityFinish()Z
    .registers 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isProgressCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isProgressShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isResponsiveEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isResume()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mResumed:Z

    return v0
.end method

.method public isShowFab()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isStop()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mStop:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p1, p2, p3}, Lcom/android/fileexplorer/util/BaseActivityHelper;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseNavigatorActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->addActivity(Lmiuix/appcompat/app/AppCompatActivity;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current Activity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "main1"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz p1, :cond_2c

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2c
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->handleGesturePromptLineIfNeed()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lmiuix/navigator/app/NavigatorActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->dismissProgress()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->unDisposable()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mRequestDocumentPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mRequestDocumentPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mRequestDocumentPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_28
    invoke-static {p0}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->remove(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mResumed:Z

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lmiuix/navigator/app/NavigatorActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mResumed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mStop:Z

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->refreshRTL()V

    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->stopDocFileObserver()V

    return-void
.end method

.method public onStart()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    invoke-static {}, Lcom/android/fileexplorer/util/BaseActivityHelper;->removeKillMessages()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mStop:Z

    invoke-static {p0}, Lcom/android/fileexplorer/util/BaseActivityHelper;->sendKillMessages(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    return-void
.end method

.method public resetProgress()V
    .registers 3

    const-string v0, "BaseActivity"

    const-string v1, "resetProgress"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    sput-wide v0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mPreUpdataUiTime:J

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAllSize:J

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->stopSpeedTimer()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->startSpeedTimer()V

    return-void
.end method

.method public setCompressProgress(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/ProgressDialog;->setProgress(Ljava/lang/String;I)V

    return-void
.end method

.method public setOnProgressDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public setOverWriteDialog(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public setProgressMax(J)V
    .registers 8

    iput-wide p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAllSize:J

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->calculateProgressDivider(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mDivider:D

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_10

    iput-wide v2, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mDivider:D

    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    long-to-double v1, v1

    iget-wide v3, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mDivider:D

    div-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/ProgressDialog;->setMax(I)V

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total file size to be operated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseActivity"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProgressSpeed(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/ProgressDialog;->setSpeed(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setRequestDocumentPermissionDialog(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mRequestDocumentPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public setSingleSizeDone(J)V
    .registers 9

    iget-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    add-long/2addr v0, p1

    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    if-eqz p1, :cond_1b

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mDivider:D

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    cmpl-double p2, v2, v4

    if-ltz p2, :cond_1b

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-eqz p2, :cond_1b

    long-to-double v0, v0

    div-double/2addr v0, v2

    double-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ProgressDialog;->setProgress(I)V

    :cond_1b
    return-void
.end method

.method public showCancelOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/BaseActivityHelper;->showCancelOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V

    return-void
.end method

.method public showLoadingDialog(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->showLoadingDialog(IZ)V

    return-void
.end method

.method public showLoadingDialog(IZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->dismissProgress()V

    new-instance v0, Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/CancelableProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/ProgressDialog;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ProgressDialog;->setProgress(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_38

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_38
    return-void
.end method

.method public showOverwriteDialog(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/util/BaseActivityHelper;->showOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V

    return-void
.end method

.method public showOverwriteDialog2(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/util/BaseActivityHelper;->showOverwriteDialog2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V

    return-void
.end method

.method public showProgressDialog(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->showProgressDialog(IZ)V

    return-void
.end method

.method public showProgressDialog(II)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->showProgressDialog(IIZZ)V

    return-void
.end method

.method public showProgressDialog(IIZZ)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->dismissProgress()V

    new-instance p4, Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-direct {p4, p0}, Lcom/android/fileexplorer/view/CancelableProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object p4, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/android/fileexplorer/view/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/ProgressDialog;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ProgressDialog;->setProgressStyle(I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mDivider:D

    sput-wide p1, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mPreUpdataUiTime:J

    iput-wide p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAllSize:J

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_43

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_43
    return-void
.end method

.method public showProgressDialog(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->showProgressDialog(IZZ)V

    return-void
.end method

.method public showProgressDialog(IZZ)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->showProgressDialog(IIZZ)V

    return-void
.end method

.method public startSpeedTimer()V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->stopSpeedTimer()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_20
    return-void
.end method

.method public stopSpeedTimer()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    :cond_f
    return-void
.end method

.method public unDisposable()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mCompositeDisposable:Lk2/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lk2/a;->dispose()V

    :cond_7
    return-void
.end method
