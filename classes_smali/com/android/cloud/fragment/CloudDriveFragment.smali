.class public Lcom/android/cloud/fragment/CloudDriveFragment;
.super Lcom/android/cloud/fragment/BaseCloudFragment;
.source "CloudDriveFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/fragment/CloudDriveFragment$MiDriveAvailabilityCheckAndResetTaskInner;
    }
.end annotation


# static fields
.field public static final ACTION_OPEN_CLOUD_DRIVE:Ljava/lang/String; = "action_open_cloud_drive"

.field private static final TAG:Ljava/lang/String; = "CloudDriveFragment"


# instance fields
.field private mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudBar:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;

.field private mCloudGuideView:Landroid/view/ViewGroup;

.field private mCloudLoginView:Landroid/view/View;

.field private mHeaderSortView:Landroid/view/ViewGroup;

.field private mIndicatorRl:Landroid/widget/RelativeLayout;

.field private mIsReceiverRegistered:Z

.field private mLoginAccountLauncher:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLoginContain:Landroid/widget/RelativeLayout;

.field private mMiDriveCheckAndResetTask:Lcom/android/cloud/fragment/CloudDriveFragment$MiDriveAvailabilityCheckAndResetTaskInner;

.field private mNotifyBarView:Lcom/android/cloud/widget/notificationbar/NotificationBarView;

.field private mOpenCloudDriveButton:Landroid/widget/Button;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private newFolderView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;-><init>()V

    .line 4
    new-instance v0, Lcom/android/cloud/fragment/CloudDriveFragment$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/cloud/fragment/CloudDriveFragment$1;-><init>(Lcom/android/cloud/fragment/CloudDriveFragment;)V

    .line 9
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 11
    new-instance v0, Lg/c;

    .line 13
    invoke-direct {v0}, Lg/c;-><init>()V

    .line 16
    new-instance v1, Lcom/android/cloud/fragment/CloudDriveFragment$4;

    .line 18
    invoke-direct {v1, p0}, Lcom/android/cloud/fragment/CloudDriveFragment$4;-><init>(Lcom/android/cloud/fragment/CloudDriveFragment;)V

    .line 21
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lg/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mLoginAccountLauncher:Landroidx/activity/result/b;

    .line 27
    return-void
.end method

.method public static synthetic access$000(Lcom/android/cloud/fragment/CloudDriveFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->openCloudDriveAndCheckAccount()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/cloud/fragment/CloudDriveFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->unregisterReceiver()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/cloud/fragment/CloudDriveFragment;)Landroidx/activity/result/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mLoginAccountLauncher:Landroidx/activity/result/b;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/cloud/fragment/CloudDriveFragment;Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->handleMiDriveResetAndCheckTaskResult(Ljava/lang/Boolean;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/android/cloud/fragment/CloudDriveFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->lambda$initGuideView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/cloud/fragment/CloudDriveFragment;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/CloudDriveFragment;->lambda$requestAccountPermission$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private cancelMiDriveCheckAndResetTask()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mMiDriveCheckAndResetTask:Lcom/android/cloud/fragment/CloudDriveFragment$MiDriveAvailabilityCheckAndResetTaskInner;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mMiDriveCheckAndResetTask:Lcom/android/cloud/fragment/CloudDriveFragment$MiDriveAvailabilityCheckAndResetTaskInner;

    .line 12
    :cond_b
    return-void
.end method

.method private checkAndEnterMiDrive()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_17

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_17

    .line 13
    const-string v0, "MiDrive_LOG"

    .line 15
    const-string v1, "start sync"

    .line 17
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->startSyncCloudData()V

    .line 23
    goto :goto_1e

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    .line 31
    :goto_1e
    return-void
.end method

.method private closeCloudDrive()V
    .registers 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->saveCloudDriveState(Ljava/lang/Boolean;)V

    .line 6
    sget-object v0, Lcom/android/cloud/constant/PageConstant$PageStatus;->Guide:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/CloudDriveFragment;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 11
    return-void
.end method

.method public static synthetic d(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->lambda$requestAccountPermission$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Lcom/android/cloud/fragment/CloudDriveFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->lambda$initSortView$3(Landroid/view/View;)V

    return-void
.end method

.method private fillListGridModeImageView(Landroid/widget/ImageView;Z)V
    .registers 3

    return-void
.end method

.method private handleActionBar(Z)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "CloudDriveFragment"

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 6
    move-result-object v1

    .line 7
    :try_start_6
    const-string v2, "mActionView"

    .line 9
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/ReflectUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 15
    iget-boolean v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->isActionMode:Z

    .line 17
    if-nez v2, :cond_6d

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v3, "homeFile actionbar show :"

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/16 v2, 0x8

    .line 41
    if-eqz p1, :cond_4b

    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V

    .line 47
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_6d

    .line 57
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_47

    .line 71
    move v2, p1

    .line 72
    :cond_47
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    goto :goto_6d

    .line 76
    :cond_4b
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V
    :try_end_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_4e} :catch_51
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_4e} :catch_4f

    .line 79
    goto :goto_6d

    .line 80
    :catch_4f
    move-exception p1

    .line 81
    goto :goto_52

    .line 82
    :catch_51
    move-exception p1

    .line 83
    :goto_52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const-string v2, "actionbar reflect exception"

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_6d
    :goto_6d
    return-void
.end method

.method private handleMenuView()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_e

    .line 12
    const/16 v0, 0x8

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v0, v1

    .line 16
    :goto_f
    iget-object v2, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mIndicatorRl:Landroid/widget/RelativeLayout;

    .line 18
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2b

    .line 37
    const v1, 0x7f0700f9

    .line 40
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 43
    move-result v1

    .line 44
    :cond_2b
    iget-object v3, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    .line 49
    move-result v3

    .line 50
    iget-object v4, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 52
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 55
    move-result v4

    .line 56
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 59
    return-void
.end method

.method private handleMiDriveResetAndCheckTaskResult(Ljava/lang/Boolean;)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "CloudDriveFragment"

    .line 7
    aput-object v2, v0, v1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v2, "MiDriveResetAndCheckTask mi drive availability = "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x1

    .line 27
    aput-object v1, v0, v2

    .line 29
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    .line 32
    if-nez p1, :cond_31

    .line 34
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->closeCloudDrive()V

    .line 37
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 39
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 42
    move-result-object p1

    .line 43
    const v0, 0x7f110232

    .line 46
    invoke-static {p1, v0}, Lcom/android/cloud/util/ToastOnceUtils;->showShort(Landroid/content/Context;I)V

    .line 49
    goto :goto_4a

    .line 50
    :cond_31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_47

    .line 56
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->closeCloudDrive()V

    .line 59
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 61
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 64
    move-result-object p1

    .line 65
    const v0, 0x7f110231

    .line 68
    invoke-static {p1, v0}, Lcom/android/cloud/util/ToastOnceUtils;->showShort(Landroid/content/Context;I)V

    .line 71
    goto :goto_4a

    .line 72
    :cond_47
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->checkAndEnterMiDrive()V

    .line 75
    :goto_4a
    return-void
.end method

.method private initGuideView(Landroid/view/View;)V
    .registers 4

    .line 1
    const v0, 0x7f0a0363

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudGuideView:Landroid/view/ViewGroup;

    .line 12
    const v0, 0x7f0a023e

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudLoginView:Landroid/view/View;

    .line 21
    const v0, 0x7f0a034c

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 30
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mLoginContain:Landroid/widget/RelativeLayout;

    .line 32
    const v0, 0x7f0a004e

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/widget/Button;

    .line 41
    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mOpenCloudDriveButton:Landroid/widget/Button;

    .line 43
    new-instance v0, Lcom/android/cloud/fragment/a;

    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/a;-><init>(Lcom/android/cloud/fragment/CloudDriveFragment;I)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method private initNotificationBar(Landroid/view/View;)V
    .registers 5

    .line 1
    const v0, 0x7f0a02eb

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/cloud/widget/notificationbar/NotificationBarView;

    .line 10
    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mNotifyBarView:Lcom/android/cloud/widget/notificationbar/NotificationBarView;

    .line 12
    new-instance p1, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;

    .line 14
    const v0, 0x7f1100dc

    .line 17
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;->NORMAL:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    .line 23
    sget-object v2, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;->SPACE_FULL:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 25
    invoke-direct {p1, v0, v1, v2}, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;-><init>(Ljava/lang/String;Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;)V

    .line 28
    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudBar:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;

    .line 30
    return-void
.end method

.method private synthetic lambda$initGuideView$0(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 9
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->isPermissionNotGranted(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1c

    .line 15
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 17
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)I

    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->requestAccountPermission(I)V

    .line 28
    goto :goto_22

    .line 29
    :cond_1c
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->openCloudDriveAndCheckAccount()V

    .line 32
    invoke-static {}, Lcom/android/fileexplorer/statistics/StatHelper;->clickLoginGuide()V

    .line 35
    :goto_22
    return-void
.end method

.method private synthetic lambda$initSortView$3(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onNewFolder()V

    .line 4
    return-void
.end method

.method private synthetic lambda$requestAccountPermission$1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->startNewAppPermsManager(Landroid/content/Context;)V

    .line 10
    return-void
.end method

.method private static synthetic lambda$requestAccountPermission$2(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    .line 4
    return-void
.end method

.method private login()V
    .registers 10

    .line 1
    const-string v0, "login mAccountManagerCallback:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "CloudDriveFragment"

    .line 18
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 23
    if-nez v0, :cond_1f

    .line 25
    new-instance v0, Lcom/android/cloud/fragment/CloudDriveFragment$3;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/cloud/fragment/CloudDriveFragment$3;-><init>(Lcom/android/cloud/fragment/CloudDriveFragment;)V

    .line 30
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 32
    :cond_1f
    new-instance v5, Landroid/os/Bundle;

    .line 34
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 37
    const/4 v0, 0x1

    .line 38
    const-string v1, "show_sync_settings"

    .line 40
    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 54
    move-result-object v1

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    iget-object v7, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 59
    const/4 v8, 0x0

    .line 60
    const-string v2, "com.xiaomi"

    .line 62
    const-string v3, "micloud"

    .line 64
    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 67
    return-void
.end method

.method private openCloudDriveAndCheckAccount()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/micloud/midrive/utils/CheckAccountHelper;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    invoke-static {v1}, Lcom/android/cloud/util/CloudPreferenceUtil;->saveCloudDriveState(Ljava/lang/Boolean;)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_36

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    move-result-object v1

    .line 28
    instance-of v1, v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 30
    if-eqz v1, :cond_36

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 38
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->initCloudDrive()V

    .line 41
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 48
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerUploadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 55
    :cond_36
    if-nez v0, :cond_3c

    .line 57
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->login()V

    .line 60
    goto :goto_75

    .line 61
    :cond_3c
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 63
    const-string v1, "com.xiaomi.unactivated"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_50

    .line 71
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 73
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/android/cloud/util/CloudHelper;->startUnActivatedActivity(Landroid/app/Activity;)V

    .line 80
    goto :goto_75

    .line 81
    :cond_50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/android/cloud/util/NetworkWarningHelper;->showNetworkNotConnectedNoticeIfNeeded(Landroid/content/Context;)Z

    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_5b

    .line 91
    return-void

    .line 92
    :cond_5b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 95
    move-result-object v0

    .line 96
    instance-of v0, v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 98
    if-eqz v0, :cond_6d

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 106
    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->setNavigationMenu(Z)V

    .line 110
    :cond_6d
    sget-object v0, Lcom/android/cloud/constant/PageConstant$PageStatus;->PreLoading:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/CloudDriveFragment;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 115
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->startMiDriveCheckAndResetTask()V

    .line 118
    :goto_75
    return-void
.end method

.method private refreshViewModeAndSortType(Z)V
    .registers 4

    .line 1
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object p1

    .line 11
    iget v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 15
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 17
    if-eq v0, v1, :cond_15

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onViewModeChanged(I)V

    .line 22
    :cond_15
    iget v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 24
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 26
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 28
    if-eq v0, v1, :cond_24

    .line 30
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->getMethod(I)Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 37
    :cond_24
    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 45
    iget-boolean v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3d

    .line 57
    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onSortOrderChanged(Z)V

    .line 62
    :cond_3d
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 64
    return-void
.end method

.method private registerReceiver()V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "action_open_cloud_drive"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 13
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mIsReceiverRegistered:Z

    .line 25
    return-void
.end method

.method private requestAccountPermission(I)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    if-eq v1, p1, :cond_1f

    .line 5
    const/4 v1, -0x2

    .line 6
    if-ne v1, p1, :cond_8

    .line 8
    goto :goto_1f

    .line 9
    :cond_8
    if-ne v0, p1, :cond_63

    .line 11
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->registerReceiver()V

    .line 14
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 16
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const/16 v1, 0x72

    .line 28
    invoke-static {p1, v0, v1}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 31
    goto :goto_63

    .line 32
    :cond_1f
    :goto_1f
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 34
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 36
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 39
    move-result-object v1

    .line 40
    invoke-direct {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 46
    move-result-object p1

    .line 47
    const v0, 0x7f110120

    .line 50
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 53
    move-result-object p1

    .line 54
    const v0, 0x1010355

    .line 57
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 60
    move-result-object p1

    .line 61
    const v0, 0x7f11011d

    .line 64
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 67
    move-result-object p1

    .line 68
    const v0, 0x7f11011f

    .line 71
    new-instance v1, Lcom/android/cloud/fragment/b;

    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/b;-><init>(Ljava/lang/Object;I)V

    .line 77
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 80
    move-result-object p1

    .line 81
    const v0, 0x7f11011e

    .line 84
    new-instance v1, Lcom/android/cloud/fragment/c;

    .line 86
    invoke-direct {v1, v2}, Lcom/android/cloud/fragment/c;-><init>(I)V

    .line 89
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 100
    :cond_63
    :goto_63
    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/CloudDriveFragment;->fillListGridModeImageView(Landroid/widget/ImageView;Z)V

    .line 4
    new-instance v0, Lcom/android/cloud/fragment/CloudDriveFragment$2;

    .line 6
    invoke-direct {v0, p0, p1, p2}, Lcom/android/cloud/fragment/CloudDriveFragment$2;-><init>(Lcom/android/cloud/fragment/CloudDriveFragment;Landroid/widget/ImageView;Z)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    return-void
.end method

.method private setLoginContainerBottom(Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mLoginContain:Landroid/widget/RelativeLayout;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 19
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1e

    .line 25
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 27
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 29
    add-int/2addr v0, p1

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 33
    :goto_20
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 35
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 37
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 39
    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 42
    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mLoginContain:Landroid/widget/RelativeLayout;

    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method

.method private showCloudDriveGuidePage()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudGuideView:Landroid/view/ViewGroup;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudLoginView:Landroid/view/View;

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 29
    const/16 v2, 0x8

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mHeaderSortView:Landroid/view/ViewGroup;

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 46
    iget-object v1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudGuideView:Landroid/view/ViewGroup;

    .line 48
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method private showCloudDrivePage(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    sget-object v0, Lcom/android/cloud/constant/PageConstant$PageStatus;->Loading:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 9
    const/16 v2, 0x8

    .line 11
    if-eq p1, v0, :cond_12

    .line 13
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mHeaderSortView:Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    goto :goto_17

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mHeaderSortView:Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :goto_17
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 30
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudGuideView:Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudLoginView:Landroid/view/View;

    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 42
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 44
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    .line 49
    invoke-virtual {v0, p1}, Lcom/android/cloud/widget/ListContainerView;->display(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 52
    return-void
.end method

.method private showPreLoading()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudGuideView:Landroid/view/ViewGroup;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudLoginView:Landroid/view/View;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    .line 15
    invoke-virtual {v0}, Lcom/android/cloud/widget/ListContainerView;->showLoading()V

    .line 18
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mHeaderSortView:Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    return-void
.end method

.method private startMiDriveCheckAndResetTask()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->cancelMiDriveCheckAndResetTask()V

    .line 4
    new-instance v0, Lcom/android/cloud/fragment/CloudDriveFragment$MiDriveAvailabilityCheckAndResetTaskInner;

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1, p0}, Lcom/android/cloud/fragment/CloudDriveFragment$MiDriveAvailabilityCheckAndResetTaskInner;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/CloudDriveFragment;)V

    .line 17
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mMiDriveCheckAndResetTask:Lcom/android/cloud/fragment/CloudDriveFragment$MiDriveAvailabilityCheckAndResetTaskInner;

    .line 19
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v2, v2, [Ljava/lang/Void;

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 27
    return-void
.end method

.method private unregisterReceiver()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mIsReceiverRegistered:Z

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 7
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mIsReceiverRegistered:Z

    .line 19
    :cond_12
    return-void
.end method


# virtual methods
.method public displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->showNoPermissionView()V

    .line 8
    return-void

    .line 9
    :cond_8
    sget-object v0, Lcom/android/cloud/fragment/CloudDriveFragment$5;->$SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v1

    .line 15
    aget v0, v0, v1

    .line 17
    packed-switch v0, :pswitch_data_20

    .line 20
    return-void

    .line 21
    :pswitch_14  #0x3, 0x4, 0x5, 0x6
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->showCloudDrivePage(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 24
    return-void

    .line 25
    :pswitch_18  #0x2
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->showPreLoading()V

    .line 28
    return-void

    .line 29
    :pswitch_1c  #0x1
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->showCloudDriveGuidePage()V

    .line 32
    return-void

    .line 33
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c  #00000001
        :pswitch_18  #00000002
        :pswitch_14  #00000003
        :pswitch_14  #00000004
        :pswitch_14  #00000005
        :pswitch_14  #00000006
    .end packed-switch
.end method

.method public getButtonInsertView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudLoginView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0074

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "CloudDriveFragment"

    return-object v0
.end method

.method public initActionBar()V
    .registers 1

    return-void
.end method

.method public initPresenter(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    new-instance p1, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 3
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p1, v0, p0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V

    .line 12
    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 14
    return-void
.end method

.method public initSortView(Landroid/view/View;)V
    .registers 4

    .line 1
    const v0, 0x7f0a00f3

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mHeaderSortView:Landroid/view/ViewGroup;

    .line 12
    const v0, 0x7f0a0057

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->newFolderView:Landroid/view/View;

    .line 21
    const v0, 0x7f0a034b

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 30
    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mIndicatorRl:Landroid/widget/RelativeLayout;

    .line 32
    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->newFolderView:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/android/cloud/fragment/a;

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/a;-><init>(Lcom/android/cloud/fragment/CloudDriveFragment;I)V

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->handleMenuView()V

    .line 46
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->showNoPermissionView()V

    .line 10
    goto :goto_3d

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 13
    const v1, 0x7f0a022a

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    const/16 v1, 0x8

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->initGuideView(Landroid/view/View;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->initNotificationBar(Landroid/view/View;)V

    .line 31
    const v0, 0x7f0a02ca

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->initView(Landroid/view/View;)V

    .line 44
    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    .line 46
    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    .line 51
    invoke-virtual {v0}, Lcom/android/cloud/widget/ListContainerView;->getNestedHeader()Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    .line 62
    :goto_3d
    return-void
.end method

.method public isSupportOneCopyShare()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportOneHopShare()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onActionModeChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onActionModeChanged(Z)V

    .line 4
    return-void
.end method

.method public onCloudDataInited()V
    .registers 4

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/fileexplorer/event/FileChangeEvent;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2, v2, v2}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZ)V

    .line 11
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1c

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 26
    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    .line 29
    :cond_1c
    return-void
.end method

.method public onCloudItemLongClick(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_29

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_20

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_19

    .line 25
    goto :goto_20

    .line 26
    :cond_19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lmiuix/appcompat/app/Fragment;

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    :goto_20
    move-object v1, p0

    .line 34
    :goto_21
    invoke-virtual {v0, v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V

    .line 37
    const-string p1, "云盘tab页"

    .line 39
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionExpose(Ljava/lang/String;)V

    .line 42
    :cond_29
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 4
    if-eqz p1, :cond_8

    .line 6
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->setLoginContainerBottom(Landroid/graphics/Rect;)V

    .line 9
    :cond_8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12011e

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onDestroy()V

    .line 4
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->cancelMiDriveCheckAndResetTask()V

    .line 7
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/cloud/fragment/BaseCloudFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    iget-boolean p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->handleMenuView()V

    .line 11
    :cond_a
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onResume()V

    .line 4
    iget-boolean v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Lcom/android/cloud/fragment/CloudDriveFragment;->refreshViewModeAndSortType(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    .line 4
    iget-boolean p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    .line 6
    if-nez p1, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 11
    invoke-virtual {p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->asyncGetMemberStatus()V

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    .line 25
    move-result p1

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 28
    invoke-static {p1, v0}, Lcom/android/fileexplorer/statistics/StatHelper;->showCloudDriverTab(ZLcom/android/fileexplorer/controller/FabPreference;)V

    .line 31
    if-nez p1, :cond_30

    .line 33
    sget-object p1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Guide:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 38
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 40
    invoke-virtual {p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->resetModel()V

    .line 43
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    .line 45
    invoke-virtual {p1}, Lcom/android/cloud/widget/ListContainerView;->resetUi()V

    .line 48
    return-void

    .line 49
    :cond_30
    const/4 p1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->refreshViewModeAndSortType(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->checkAccountIfInvalid()Z

    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3d

    .line 59
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->checkAndEnterMiDrive()V

    .line 62
    :cond_3d
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->checkAccountIfInvalid()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1f

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1f

    .line 21
    if-eqz p1, :cond_1f

    .line 23
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 25
    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->asyncGetMemberStatus()V

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lcom/android/cloud/fragment/CloudDriveFragment;->refreshViewModeAndSortType(Z)V

    .line 32
    :cond_1f
    if-nez p1, :cond_24

    .line 34
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 37
    :cond_24
    return-void
.end method

.method public openFolder(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 8
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 10
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "current_directory"

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    const-string v1, "bundle_key_page_title"

    .line 27
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string p1, "bundle_key_istobackstack"

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 39
    move-result-object p1

    .line 40
    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 42
    const-class v2, Lcom/android/cloud/fragment/CloudFileFragment;

    .line 44
    const/16 v3, 0x3ea

    .line 46
    invoke-direct {v1, v3, v2, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p1, v1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 52
    return-void
.end method

.method public refreshFiles()V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 15
    iget v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 17
    if-eq v1, v2, :cond_17

    .line 19
    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 21
    invoke-virtual {v2, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onViewModeChanged(I)V

    .line 24
    :cond_17
    iget v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 26
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 28
    iget v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 30
    if-ne v1, v2, :cond_33

    .line 32
    iget-boolean v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 40
    iget-boolean v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 42
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3c

    .line 52
    :cond_33
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 54
    iget v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 56
    iget-boolean v3, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    .line 61
    :cond_3c
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 63
    return-void
.end method

.method public setActionBarListener()V
    .registers 1

    return-void
.end method

.method public updateCloudNotify(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_2d

    .line 3
    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudBar:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;

    .line 5
    invoke-virtual {p1}, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->isOperated()Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_2d

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/android/cloud/util/helper/NotificationBarHelper;->shouldShowNotifyBar(Landroid/content/Context;)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2d

    .line 21
    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudBar:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;

    .line 23
    const v0, 0x7f1100dc

    .line 26
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;->SPACE_FULL:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->setMessageAndHintType(Ljava/lang/String;Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;)V

    .line 35
    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mNotifyBarView:Lcom/android/cloud/widget/notificationbar/NotificationBarView;

    .line 37
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudBar:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->show(Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;)V

    .line 42
    invoke-static {}, Lcom/android/fileexplorer/statistics/StatHelper;->showFull()V

    .line 45
    goto :goto_32

    .line 46
    :cond_2d
    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mNotifyBarView:Lcom/android/cloud/widget/notificationbar/NotificationBarView;

    .line 48
    invoke-virtual {p1}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->hide()V

    .line 51
    :goto_32
    return-void
.end method
