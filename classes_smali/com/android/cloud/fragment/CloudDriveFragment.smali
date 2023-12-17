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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;-><init>()V

    new-instance v0, Lcom/android/cloud/fragment/CloudDriveFragment$1;

    invoke-direct {v0, p0}, Lcom/android/cloud/fragment/CloudDriveFragment$1;-><init>(Lcom/android/cloud/fragment/CloudDriveFragment;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lg/c;

    invoke-direct {v0}, Lg/c;-><init>()V

    new-instance v1, Lcom/android/cloud/fragment/CloudDriveFragment$4;

    invoke-direct {v1, p0}, Lcom/android/cloud/fragment/CloudDriveFragment$4;-><init>(Lcom/android/cloud/fragment/CloudDriveFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lg/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mLoginAccountLauncher:Landroidx/activity/result/b;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/cloud/fragment/CloudDriveFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->openCloudDriveAndCheckAccount()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/cloud/fragment/CloudDriveFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->unregisterReceiver()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/cloud/fragment/CloudDriveFragment;)Landroidx/activity/result/b;
    .registers 1

    iget-object p0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mLoginAccountLauncher:Landroidx/activity/result/b;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/cloud/fragment/CloudDriveFragment;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->handleMiDriveResetAndCheckTaskResult(Ljava/lang/Boolean;)V

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

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mMiDriveCheckAndResetTask:Lcom/android/cloud/fragment/CloudDriveFragment$MiDriveAvailabilityCheckAndResetTaskInner;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mMiDriveCheckAndResetTask:Lcom/android/cloud/fragment/CloudDriveFragment$MiDriveAvailabilityCheckAndResetTaskInner;

    :cond_b
    return-void
.end method

.method private checkAndEnterMiDrive()V
    .registers 4

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "MiDrive_LOG"

    const-string v1, "start sync"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->startSyncCloudData()V

    goto :goto_1e

    :cond_17
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->updateUI(ZZ)V

    :goto_1e
    return-void
.end method

.method private closeCloudDrive()V
    .registers 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->saveCloudDriveState(Ljava/lang/Boolean;)V

    sget-object v0, Lcom/android/cloud/constant/PageConstant$PageStatus;->Guide:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/CloudDriveFragment;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

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

    const-string v0, "CloudDriveFragment"

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    :try_start_6
    const-string v2, "mActionView"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/ReflectUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-boolean v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->isActionMode:Z

    if-nez v2, :cond_6d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "homeFile actionbar show :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    if-eqz p1, :cond_4b

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result v3

    if-eqz v3, :cond_47

    move v2, p1

    :cond_47
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6d

    :cond_4b
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V
    :try_end_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_4e} :catch_51
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_4e} :catch_4f

    goto :goto_6d

    :catch_4f
    move-exception p1

    goto :goto_52

    :catch_51
    move-exception p1

    :goto_52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionbar reflect exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method private handleMenuView()V
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/16 v0, 0x8

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    iget-object v2, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mIndicatorRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const v1, 0x7f0700f9

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v1

    :cond_2b
    iget-object v3, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private handleMiDriveResetAndCheckTaskResult(Ljava/lang/Boolean;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "CloudDriveFragment"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiDriveResetAndCheckTask mi drive availability = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    if-nez p1, :cond_31

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->closeCloudDrive()V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v0, 0x7f110232

    invoke-static {p1, v0}, Lcom/android/cloud/util/ToastOnceUtils;->showShort(Landroid/content/Context;I)V

    goto :goto_4a

    :cond_31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_47

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->closeCloudDrive()V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v0, 0x7f110231

    invoke-static {p1, v0}, Lcom/android/cloud/util/ToastOnceUtils;->showShort(Landroid/content/Context;I)V

    goto :goto_4a

    :cond_47
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->checkAndEnterMiDrive()V

    :goto_4a
    return-void
.end method

.method private initGuideView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f032ef5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudGuideView:Landroid/view/ViewGroup;

    const v0, 0x7f032fa8

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudLoginView:Landroid/view/View;

    const v0, 0x7f032eda

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mLoginContain:Landroid/widget/RelativeLayout;

    const v0, 0x7f032dd8

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mOpenCloudDriveButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/cloud/fragment/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/a;-><init>(Lcom/android/cloud/fragment/CloudDriveFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initNotificationBar(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f032f7d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/cloud/widget/notificationbar/NotificationBarView;

    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mNotifyBarView:Lcom/android/cloud/widget/notificationbar/NotificationBarView;

    new-instance p1, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;

    const v0, 0x7f182d4a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;->NORMAL:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    sget-object v2, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;->SPACE_FULL:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;-><init>(Ljava/lang/String;Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;)V

    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudBar:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;

    return-void
.end method

.method private synthetic lambda$initGuideView$0(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->isPermissionNotGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->requestAccountPermission(I)V

    goto :goto_22

    :cond_1c
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->openCloudDriveAndCheckAccount()V

    invoke-static {}, Lcom/android/fileexplorer/statistics/StatHelper;->clickLoginGuide()V

    :goto_22
    return-void
.end method

.method private synthetic lambda$initSortView$3(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onNewFolder()V

    return-void
.end method

.method private synthetic lambda$requestAccountPermission$1(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->startNewAppPermsManager(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$requestAccountPermission$2(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private login()V
    .registers 10

    const-string v0, "login mAccountManagerCallback:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudDriveFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/android/cloud/fragment/CloudDriveFragment$3;

    invoke-direct {v0, p0}, Lcom/android/cloud/fragment/CloudDriveFragment$3;-><init>(Lcom/android/cloud/fragment/CloudDriveFragment;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    :cond_1f
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "show_sync_settings"

    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    const/4 v8, 0x0

    const-string v2, "com.xiaomi"

    const-string v3, "micloud"

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private openCloudDriveAndCheckAccount()V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/CheckAccountHelper;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/android/cloud/util/CloudPreferenceUtil;->saveCloudDriveState(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->initCloudDrive()V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerUploadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    :cond_36
    if-nez v0, :cond_3c

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->login()V

    goto :goto_75

    :cond_3c
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.xiaomi.unactivated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cloud/util/CloudHelper;->startUnActivatedActivity(Landroid/app/Activity;)V

    goto :goto_75

    :cond_50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cloud/util/NetworkWarningHelper;->showNetworkNotConnectedNoticeIfNeeded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5b

    return-void

    :cond_5b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    if-eqz v0, :cond_6d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->setNavigationMenu(Z)V

    :cond_6d
    sget-object v0, Lcom/android/cloud/constant/PageConstant$PageStatus;->PreLoading:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/CloudDriveFragment;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->startMiDriveCheckAndResetTask()V

    :goto_75
    return-void
.end method

.method private refreshViewModeAndSortType(Z)V
    .registers 4

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    iget v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-eq v0, v1, :cond_15

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onViewModeChanged(I)V

    :cond_15
    iget v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    if-eq v0, v1, :cond_24

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->getMethod(I)Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    :cond_24
    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget-boolean v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onSortOrderChanged(Z)V

    :cond_3d
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    return-void
.end method

.method private registerReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_open_cloud_drive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mIsReceiverRegistered:Z

    return-void
.end method

.method private requestAccountPermission(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v1, p1, :cond_1f

    const/4 v1, -0x2

    if-ne v1, p1, :cond_8

    goto :goto_1f

    :cond_8
    if-ne v0, p1, :cond_63

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->registerReceiver()V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const-string v0, "android.permission.GET_ACCOUNTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x72

    invoke-static {p1, v0, v1}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_63

    :cond_1f
    :goto_1f
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110120

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1010355

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f11011d

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f11011f

    new-instance v1, Lcom/android/cloud/fragment/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f11011e

    new-instance v1, Lcom/android/cloud/fragment/c;

    invoke-direct {v1, v2}, Lcom/android/cloud/fragment/c;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_63
    :goto_63
    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/CloudDriveFragment;->fillListGridModeImageView(Landroid/widget/ImageView;Z)V

    new-instance v0, Lcom/android/cloud/fragment/CloudDriveFragment$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/cloud/fragment/CloudDriveFragment$2;-><init>(Lcom/android/cloud/fragment/CloudDriveFragment;Landroid/widget/ImageView;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setLoginContainerBottom(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mLoginContain:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    goto :goto_20

    :cond_1e
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_20
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mLoginContain:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showCloudDriveGuidePage()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    :cond_f
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudGuideView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudLoginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mHeaderSortView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudGuideView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void
.end method

.method private showCloudDrivePage(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/android/cloud/constant/PageConstant$PageStatus;->Loading:Lcom/android/cloud/constant/PageConstant$PageStatus;

    const/16 v2, 0x8

    if-eq p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mHeaderSortView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    :cond_12
    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mHeaderSortView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_17
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudGuideView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudLoginView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    invoke-virtual {v0, p1}, Lcom/android/cloud/widget/ListContainerView;->display(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    return-void
.end method

.method private showPreLoading()V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudGuideView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudLoginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    invoke-virtual {v0}, Lcom/android/cloud/widget/ListContainerView;->showLoading()V

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mHeaderSortView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startMiDriveCheckAndResetTask()V
    .registers 4

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->cancelMiDriveCheckAndResetTask()V

    new-instance v0, Lcom/android/cloud/fragment/CloudDriveFragment$MiDriveAvailabilityCheckAndResetTaskInner;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/cloud/fragment/CloudDriveFragment$MiDriveAvailabilityCheckAndResetTaskInner;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/CloudDriveFragment;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mMiDriveCheckAndResetTask:Lcom/android/cloud/fragment/CloudDriveFragment$MiDriveAvailabilityCheckAndResetTaskInner;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private unregisterReceiver()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mIsReceiverRegistered:Z

    :cond_12
    return-void
.end method


# virtual methods
.method public displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->showNoPermissionView()V

    return-void

    :cond_8
    sget-object v0, Lcom/android/cloud/fragment/CloudDriveFragment$5;->$SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    return-void

    :pswitch_14  #0x3, 0x4, 0x5, 0x6
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->showCloudDrivePage(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    return-void

    :pswitch_18  #0x2
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->showPreLoading()V

    return-void

    :pswitch_1c  #0x1
    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->showCloudDriveGuidePage()V

    return-void

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

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudLoginView:Landroid/view/View;

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

    new-instance p1, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V

    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    return-void
.end method

.method public initSortView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f032d65

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mHeaderSortView:Landroid/view/ViewGroup;

    const v0, 0x7f032dc1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->newFolderView:Landroid/view/View;

    const v0, 0x7f032edd

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mIndicatorRl:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->newFolderView:Landroid/view/View;

    new-instance v0, Lcom/android/cloud/fragment/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/a;-><init>(Lcom/android/cloud/fragment/CloudDriveFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->handleMenuView()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->showNoPermissionView()V

    goto :goto_45

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032fbc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->initGuideView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->initNotificationBar(Landroid/view/View;)V

    const v0, 0x7f032f5c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->initView(Landroid/view/View;)V

    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    invoke-virtual {v0}, Lcom/android/cloud/widget/ListContainerView;->getNestedHeader()Lmiuix/nestedheader/widget/NestedHeaderLayout;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    :goto_45
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

    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onActionModeChanged(Z)V

    return-void
.end method

.method public onCloudDataInited()V
    .registers 4

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/event/FileChangeEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2, v2}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    :cond_1c
    return-void
.end method

.method public onCloudItemLongClick(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_19

    goto :goto_20

    :cond_19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/Fragment;

    goto :goto_21

    :cond_20
    :goto_20
    move-object v1, p0

    :goto_21
    invoke-virtual {v0, v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V

    const-string p1, "云盘tab页"

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionExpose(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->setLoginContainerBottom(Landroid/graphics/Rect;)V

    :cond_8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12011e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->cancelMiDriveCheckAndResetTask()V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/cloud/fragment/BaseCloudFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    iget-boolean p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->handleMenuView()V

    :cond_a
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/cloud/fragment/CloudDriveFragment;->refreshViewModeAndSortType(Z)V

    :cond_b
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    iget-boolean p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mHasPermission:Z

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->asyncGetMemberStatus()V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/statistics/StatHelper;->showCloudDriverTab(ZLcom/android/fileexplorer/controller/FabPreference;)V

    if-nez p1, :cond_30

    sget-object p1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Guide:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->resetModel()V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mContainerView:Lcom/android/cloud/widget/ListContainerView;

    invoke-virtual {p1}, Lcom/android/cloud/widget/ListContainerView;->resetUi()V

    return-void

    :cond_30
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->refreshViewModeAndSortType(Z)V

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->checkAccountIfInvalid()Z

    move-result p1

    if-nez p1, :cond_3d

    invoke-direct {p0}, Lcom/android/cloud/fragment/CloudDriveFragment;->checkAndEnterMiDrive()V

    :cond_3d
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/cloud/fragment/BaseCloudFragment;->checkAccountIfInvalid()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->asyncGetMemberStatus()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cloud/fragment/CloudDriveFragment;->refreshViewModeAndSortType(Z)V

    :cond_1f
    if-nez p1, :cond_24

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    :cond_24
    return-void
.end method

.method public openFolder(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "current_directory"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "bundle_key_page_title"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bundle_key_istobackstack"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object p1

    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const-class v2, Lcom/android/cloud/fragment/CloudFileFragment;

    const/16 v3, 0x3ea

    invoke-direct {v1, v3, v2, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    return-void
.end method

.method public refreshFiles()V
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-eq v1, v2, :cond_17

    iget-object v2, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {v2, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onViewModeChanged(I)V

    :cond_17
    iget v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    if-ne v1, v2, :cond_33

    iget-boolean v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    iget-boolean v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    :cond_33
    iget-object v1, p0, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    iget v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iget-boolean v3, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onSortMethodChanged(IZ)V

    :cond_3c
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    return-void
.end method

.method public setActionBarListener()V
    .registers 1

    return-void
.end method

.method public updateCloudNotify(Z)V
    .registers 4

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudBar:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;

    invoke-virtual {p1}, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->isOperated()Z

    move-result p1

    if-nez p1, :cond_31

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cloud/util/helper/NotificationBarHelper;->shouldShowNotifyBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudBar:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;

    const v0, 0x7f182d4a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;->SPACE_FULL:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    invoke-virtual {p1, v0, v1}, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->setMessageAndHintType(Ljava/lang/String;Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mNotifyBarView:Lcom/android/cloud/widget/notificationbar/NotificationBarView;

    iget-object v0, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mCloudBar:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;

    invoke-virtual {p1, v0}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->show(Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;)V

    invoke-static {}, Lcom/android/fileexplorer/statistics/StatHelper;->showFull()V

    goto :goto_36

    :cond_31
    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment;->mNotifyBarView:Lcom/android/cloud/widget/notificationbar/NotificationBarView;

    invoke-virtual {p1}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->hide()V

    :goto_36
    return-void
.end method
