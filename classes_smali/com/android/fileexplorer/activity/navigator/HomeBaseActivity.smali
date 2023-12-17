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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseNavigatorActivity;-><init>()V

    .line 4
    const/16 v0, 0x3e8

    .line 6
    iput v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->SPEED_INTERVAL:I

    .line 8
    return-void
.end method


# virtual methods
.method public addDisposable(Lk2/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mCompositeDisposable:Lk2/a;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    iget-boolean v0, v0, Lk2/a;->b:Z

    .line 7
    if-eqz v0, :cond_f

    .line 9
    :cond_8
    new-instance v0, Lk2/a;

    .line 11
    invoke-direct {v0}, Lk2/a;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mCompositeDisposable:Lk2/a;

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mCompositeDisposable:Lk2/a;

    .line 18
    invoke-virtual {v0, p1}, Lk2/a;->c(Lk2/b;)Z

    .line 21
    return-void
.end method

.method public calculateProgressDivider(J)D
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_1
    int-to-long v1, v0

    .line 3
    div-long v1, p1, v1

    .line 5
    const-wide/32 v3, 0xc350

    .line 8
    cmp-long v1, v1, v3

    .line 10
    if-lez v1, :cond_e

    .line 12
    mul-int/lit16 v0, v0, 0x400

    .line 14
    goto :goto_1

    .line 15
    :cond_e
    int-to-double p1, v0

    .line 16
    return-wide p1
.end method

.method public cancelOverWrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V
    .registers 2

    .line 1
    if-eqz p1, :cond_5

    .line 3
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;->cancel()V

    .line 6
    :cond_5
    return-void
.end method

.method public cancelProcessDialog()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->cancel()V

    .line 8
    :cond_7
    return-void
.end method

.method public dismissProgress()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->stopSpeedTimer()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    .line 8
    sput-wide v0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mPreUpdataUiTime:J

    .line 10
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAllSize:J

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 14
    if-eqz v0, :cond_34

    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_34

    .line 22
    const-string v0, "BaseActivity"

    .line 24
    const-string v1, "dismissProgress"

    .line 26
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 31
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->dismissCancelDialog()V

    .line 34
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_31

    .line 40
    const-string v1, "realDismiss: "

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 47
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 50
    :cond_31
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 53
    :cond_34
    return-void
.end method

.method public getOverWriteDialog()Lmiuix/appcompat/app/AlertDialog;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    return-object v0
.end method

.method public getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .registers 1

    return-object p0
.end method

.method public getRequestDocumentPermissionDialog()Lmiuix/appcompat/app/AlertDialog;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mRequestDocumentPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    return-object v0
.end method

.method public getTotalSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    .line 3
    return-wide v0
.end method

.method public handleGesturePromptLineIfNeed()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "force_fsg_nav_bar"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_e

    .line 14
    const/4 v2, 0x1

    .line 15
    :cond_e
    if-eqz v2, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    move-result-object v0

    .line 22
    const/high16 v1, 0x8000000

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 27
    return-void
.end method

.method public ignoreParentResponsiveLayout()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized increaseProgressBy(J)V
    .registers 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    .line 4
    add-long/2addr v0, p1

    .line 5
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    move-result-wide p1

    .line 11
    sget-wide v0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mPreUpdataUiTime:J

    .line 13
    const-wide/16 v2, 0x0

    .line 15
    cmp-long v4, v0, v2

    .line 17
    const-wide/16 v5, 0x3e8

    .line 19
    if-ltz v4, :cond_1a

    .line 21
    sub-long v0, p1, v0

    .line 23
    cmp-long v0, v0, v5

    .line 25
    if-gez v0, :cond_25

    .line 27
    :cond_1a
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    .line 29
    iget-wide v7, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAllSize:J
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_41

    .line 31
    sub-long/2addr v7, v5

    .line 32
    cmp-long v0, v0, v7

    .line 34
    if-gez v0, :cond_25

    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :cond_25
    :try_start_25
    sput-wide p1, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mPreUpdataUiTime:J

    .line 40
    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 42
    if-eqz p1, :cond_3f

    .line 44
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mDivider:D

    .line 46
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 48
    cmpl-double p2, v0, v4

    .line 50
    if-ltz p2, :cond_3f

    .line 52
    iget-wide v4, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    .line 54
    cmp-long p2, v4, v2

    .line 56
    if-eqz p2, :cond_3f

    .line 58
    long-to-double v2, v4

    .line 59
    div-double/2addr v2, v0

    .line 60
    double-to-int p2, v2

    .line 61
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ProgressDialog;->setProgress(I)V
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_41

    .line 64
    :cond_3f
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :catchall_41
    move-exception p1

    .line 67
    monitor-exit p0

    .line 68
    throw p1
.end method

.method public isActivityFinish()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 17
    :goto_10
    return v0
.end method

.method public isProgressCancelled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->isCancelled()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isProgressShowing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
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

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mResumed:Z

    .line 3
    return v0
.end method

.method public isShowFab()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isStop()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mStop:Z

    .line 3
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    invoke-static {p1, p2, p3}, Lcom/android/fileexplorer/util/BaseActivityHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseNavigatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->addActivity(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v0, "current Activity: "

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const-string v0, "main1"

    .line 34
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 39
    if-eqz p1, :cond_2c

    .line 41
    const/4 p1, -0x1

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 45
    :cond_2c
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->handleGesturePromptLineIfNeed()V

    .line 48
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/navigator/app/NavigatorActivity;->onDestroy()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->dismissProgress()V

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->unDisposable()V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mRequestDocumentPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 12
    if-eqz v0, :cond_1b

    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1b

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mRequestDocumentPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 22
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mRequestDocumentPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mContentObserver:Landroid/database/ContentObserver;

    .line 30
    if-eqz v0, :cond_28

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mContentObserver:Landroid/database/ContentObserver;

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 41
    :cond_28
    invoke-static {p0}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->remove(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 44
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mResumed:Z

    .line 7
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/navigator/app/NavigatorActivity;->onResume()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mResumed:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mStop:Z

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->refreshRTL()V

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->stopDocFileObserver()V

    .line 16
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/util/BaseActivityHelper;->removeKillMessages()V

    .line 7
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mStop:Z

    .line 7
    invoke-static {p0}, Lcom/android/fileexplorer/util/BaseActivityHelper;->sendKillMessages(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 10
    return-void
.end method

.method public resetProgress()V
    .registers 3

    .line 1
    const-string v0, "BaseActivity"

    .line 3
    const-string v1, "resetProgress"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    .line 12
    sput-wide v0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mPreUpdataUiTime:J

    .line 14
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAllSize:J

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->stopSpeedTimer()V

    .line 19
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->startSpeedTimer()V

    .line 22
    return-void
.end method

.method public setCompressProgress(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/ProgressDialog;->setProgress(Ljava/lang/String;I)V

    .line 9
    return-void
.end method

.method public setOnProgressDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6
    return-void
.end method

.method public setOverWriteDialog(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    return-void
.end method

.method public setProgressMax(J)V
    .registers 8

    .line 1
    iput-wide p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAllSize:J

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->calculateProgressDivider(J)D

    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mDivider:D

    .line 9
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 11
    cmpg-double v0, v0, v2

    .line 13
    if-gez v0, :cond_10

    .line 15
    iput-wide v2, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mDivider:D

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 19
    if-eqz v0, :cond_27

    .line 21
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_27

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 29
    const-wide/16 v1, 0x1

    .line 31
    add-long/2addr v1, p1

    .line 32
    long-to-double v1, v1

    .line 33
    iget-wide v3, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mDivider:D

    .line 35
    div-double/2addr v1, v3

    .line 36
    double-to-int v1, v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/ProgressDialog;->setMax(I)V

    .line 40
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v1, "Total file size to be operated:"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    const-string p2, "BaseActivity"

    .line 59
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setProgressSpeed(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/ProgressDialog;->setSpeed(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setRequestDocumentPermissionDialog(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mRequestDocumentPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    return-void
.end method

.method public setSingleSizeDone(J)V
    .registers 9

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    .line 3
    add-long/2addr v0, p1

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 6
    if-eqz p1, :cond_1b

    .line 8
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mDivider:D

    .line 10
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 12
    cmpl-double p2, v2, v4

    .line 14
    if-ltz p2, :cond_1b

    .line 16
    const-wide/16 v4, 0x0

    .line 18
    cmp-long p2, v0, v4

    .line 20
    if-eqz p2, :cond_1b

    .line 22
    long-to-double v0, v0

    .line 23
    div-double/2addr v0, v2

    .line 24
    double-to-int p2, v0

    .line 25
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ProgressDialog;->setProgress(I)V

    .line 28
    :cond_1b
    return-void
.end method

.method public showCancelOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/BaseActivityHelper;->showCancelOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V

    .line 4
    return-void
.end method

.method public showLoadingDialog(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->showLoadingDialog(IZ)V

    return-void
.end method

.method public showLoadingDialog(IZ)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->dismissProgress()V

    .line 3
    new-instance v0, Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/CancelableProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->setCancelable(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/ProgressDialog;->setIndeterminate(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ProgressDialog;->setProgress(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_38

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_38

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_38
    return-void
.end method

.method public showOverwriteDialog(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/util/BaseActivityHelper;->showOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V

    .line 4
    return-void
.end method

.method public showOverwriteDialog2(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/util/BaseActivityHelper;->showOverwriteDialog2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V

    .line 4
    return-void
.end method

.method public showProgressDialog(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->showProgressDialog(IZ)V

    return-void
.end method

.method public showProgressDialog(II)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->showProgressDialog(IIZZ)V

    return-void
.end method

.method public showProgressDialog(IIZZ)V
    .registers 5

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->dismissProgress()V

    .line 6
    new-instance p4, Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-direct {p4, p0}, Lcom/android/fileexplorer/view/CancelableProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object p4, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/android/fileexplorer/view/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->setCancelable(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/ProgressDialog;->setIndeterminate(Z)V

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ProgressDialog;->setProgressStyle(I)V

    const-wide/16 p1, 0x0

    .line 12
    iput-wide p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mTotalSize:J

    const-wide/16 p3, 0x0

    .line 13
    iput-wide p3, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mDivider:D

    .line 14
    sput-wide p1, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mPreUpdataUiTime:J

    .line 15
    iput-wide p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mAllSize:J

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_43

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_43

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_43
    return-void
.end method

.method public showProgressDialog(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->showProgressDialog(IZZ)V

    return-void
.end method

.method public showProgressDialog(IZZ)V
    .registers 5

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->showProgressDialog(IIZZ)V

    return-void
.end method

.method public startSpeedTimer()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mProgressDialog:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    .line 3
    if-eqz v0, :cond_20

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_20

    .line 11
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->stopSpeedTimer()V

    .line 14
    new-instance v1, Ljava/util/Timer;

    .line 16
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    .line 21
    new-instance v2, Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;

    .line 23
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 26
    const-wide/16 v3, 0x0

    .line 28
    const-wide/16 v5, 0x3e8

    .line 30
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 33
    :cond_20
    return-void
.end method

.method public stopSpeedTimer()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    .line 10
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    .line 16
    :cond_f
    return-void
.end method

.method public unDisposable()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->mCompositeDisposable:Lk2/a;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lk2/a;->dispose()V

    .line 8
    :cond_7
    return-void
.end method
