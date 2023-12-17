.class public Lcom/android/fileexplorer/FileExplorerTabActivity;
.super Lcom/android/cloud/activity/CloudStatusObserverActivity;
.source "FileExplorerTabActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IDocDataHandler;
.implements Lcom/fileexplorer/advert/listenter/AdLoadListener;
.implements Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;,
        Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FileExplorerTabActivity"

.field private static volatile mCurrentAppTagCount:I


# instance fields
.field private flag_permission:I

.field public handlePrivacyPolicy:Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;

.field private isEditor:Z

.field private isHandleUsb:Z

.field private mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

.field private mEventViewModel:Lcom/android/fileexplorer/viewmodel/EventViewModel;

.field private mHasInitUI:Z

.field private mNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

.field private mOneHopShareCallback:Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;

.field private mPreIntent:Landroid/content/Intent;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShortcutRun:Ljava/lang/Runnable;

.field public mUsbVolume:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

.field private mWidgetAddedReceiver:Lcom/android/fileexplorer/widget/WidgetAddedReceiver;

.field public mainIdleHandler:Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;

.field private secondaryCategoryIsCreating:Z

.field private withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    new-instance v0, Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->flag_permission:I

    iput-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->secondaryCategoryIsCreating:Z

    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$1;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mShortcutRun:Ljava/lang/Runnable;

    return-void
.end method

.method private HandleUpdateReturnVal(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_5e

    goto :goto_58

    :sswitch_c
    const-string v0, "-7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_58

    :cond_15
    const/4 v1, 0x6

    goto :goto_58

    :sswitch_17
    const-string v0, "-6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_58

    :cond_20
    const/4 v1, 0x5

    goto :goto_58

    :sswitch_22
    const-string v0, "-5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_58

    :cond_2b
    const/4 v1, 0x4

    goto :goto_58

    :sswitch_2d
    const-string v0, "-4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_58

    :cond_36
    const/4 v1, 0x3

    goto :goto_58

    :sswitch_38
    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_58

    :cond_41
    const/4 v1, 0x2

    goto :goto_58

    :sswitch_43
    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_58

    :cond_4c
    const/4 v1, 0x1

    goto :goto_58

    :sswitch_4e
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_58

    :cond_57
    const/4 v1, 0x0

    :goto_58
    packed-switch v1, :pswitch_data_7c

    return-object p1

    :pswitch_5c  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_5e
    .sparse-switch
        0x31 -> :sswitch_4e
        0x5a5 -> :sswitch_43
        0x5a6 -> :sswitch_38
        0x5a7 -> :sswitch_2d
        0x5a8 -> :sswitch_22
        0x5a9 -> :sswitch_17
        0x5aa -> :sswitch_c
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_5c  #00000000
        :pswitch_5c  #00000001
        :pswitch_5c  #00000002
        :pswitch_5c  #00000003
        :pswitch_5c  #00000004
        :pswitch_5c  #00000005
        :pswitch_5c  #00000006
    .end packed-switch
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/FileExplorerTabActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->refreshOtherNavigation(Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/FileExplorerTabActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->isHandleUsb:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/FileExplorerTabActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->isHandleUsb:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/FileExplorerTabActivity;)Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewModel:Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/FileExplorerTabActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->HandleUpdateReturnVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/FileExplorerTabActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->showPrivacyPolicyUpdateDialog()V

    return-void
.end method

.method public static synthetic access$502(Lcom/android/fileexplorer/FileExplorerTabActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->isEditor:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/FileExplorerTabActivity;Lmiuix/navigator/adapter/CategoryAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onSaveNavigatorOrder(Lmiuix/navigator/adapter/CategoryAdapter;)V

    return-void
.end method

.method private addExternalDevice(Lmiuix/navigator/Navigator;)V
    .registers 11

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a4

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->showBottomToast()V

    const/16 v0, 0x3ff

    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->newCategory(I)Lmiuix/navigator/Navigator$Category;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f182f55

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator$Category;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xfa0

    const/16 v3, 0x1388

    iget-object v4, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/model/StorageInfo;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "current_directory"

    invoke-virtual {v6, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v5

    if-eqz v5, :cond_72

    new-instance v5, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    const v7, 0x7f110404

    invoke-static {v7}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f080122

    invoke-direct {v5, v7, v8}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const-class v8, Lcom/android/fileexplorer/pad/fragment/PadSdCardFileDetailFragment;

    invoke-direct {v7, v3, v8, v6}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v5, v7}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    :cond_72
    new-instance v5, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    const v7, 0x7f110225

    invoke-static {v7}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f080123

    invoke-direct {v5, v7, v8}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const-class v8, Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;

    invoke-direct {v7, v2, v8, v6}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v5, v7}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    add-int/lit8 v2, v2, 0x1

    :goto_8d
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_91
    new-instance v2, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    const v3, 0x7f0d014f

    const/4 v4, 0x0

    invoke-static {}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->uneditableConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lmiuix/navigator/adapter/MenuCategoryAdapter;-><init>(Ljava/util/List;ILmiuix/navigator/adapter/WidgetProvider;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V

    invoke-virtual {v0, v2}, Lmiuix/navigator/Navigator$Category;->setAdapter(Lmiuix/navigator/adapter/CategoryAdapter;)V

    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->addCategory(Lmiuix/navigator/Navigator$Category;)V

    :cond_a4
    return-void
.end method

.method private checkNextCase(Landroid/os/Bundle;Z)V
    .registers 4

    if-eqz p2, :cond_14

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    move-result p2

    if-nez p2, :cond_14

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getGlobalPadNeedForceShow()Z

    move-result p2

    if-eqz p2, :cond_14

    const/16 p2, 0x80

    invoke-static {p1, p0, p2}, Lcom/android/fileexplorer/util/PrivacyUtil;->startGlobalPrivacy(Landroid/os/Bundle;Landroid/app/Activity;I)V

    goto :goto_26

    :cond_14
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_23

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x72

    invoke-static {p0, p2, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_23
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    :goto_26
    return-void
.end method

.method private createOtherNavigation(Lmiuix/navigator/Navigator;Z)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->secondaryCategoryIsCreating:Z

    new-instance v0, Lcom/android/cloud/fragment/model/c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, Lcom/android/cloud/fragment/model/c;-><init>(Ljava/lang/Object;ZI)V

    new-instance p2, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p2, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    invoke-static {p2, p0}, Lcom/android/fileexplorer/util/RxTransformerHelperKt;->createIO2MainObservable(Li2/e;Landroidx/lifecycle/m;)Li2/e;

    move-result-object p2

    new-instance v0, Lcom/android/fileexplorer/a;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/a;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lq2/c;

    invoke-direct {v1, p2, v0}, Lq2/c;-><init>(Li2/e;Lcom/android/fileexplorer/a;)V

    new-instance p2, Lcom/android/fileexplorer/b;

    invoke-direct {p2, p0, p1}, Lcom/android/fileexplorer/b;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;Lmiuix/navigator/Navigator;)V

    invoke-virtual {v1, p2}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    return-void
.end method

.method private dealSecurityCenterResultCode(I)I
    .registers 4

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-eqz v0, :cond_19

    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->supportGlobalSecurityPrivacy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->isKoreaRegion()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    const/4 p1, 0x0

    return p1

    :cond_15
    const/4 v1, 0x2

    if-ne p1, v1, :cond_19

    return v0

    :cond_19
    return p1
.end method

.method private dismissDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_12
    return-void
.end method

.method public static synthetic g(Lcom/android/fileexplorer/FileExplorerTabActivity;ZLi2/f;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->lambda$createOtherNavigation$0(ZLi2/f;)V

    return-void
.end method

.method private getStorageInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->isMounted()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_39
    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_3f
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic h(Lcom/android/fileexplorer/FileExplorerTabActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->lambda$createOtherNavigation$1(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private handleUSBMountChanged(Z)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    if-nez p1, :cond_17

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->dismissImmersionMenu(Z)V

    goto :goto_17

    :cond_f
    new-instance p1, Lcom/android/fileexplorer/FileExplorerTabActivity$12;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$12;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    :cond_17
    :goto_17
    return-void
.end method

.method private handleWidgetIntent(Landroid/content/Intent;)V
    .registers 10

    if-eqz p1, :cond_44

    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_44

    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.fileexplorer.export.START_OEPN_FILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "extraFileName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    new-instance v0, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-instance v7, Lcom/android/fileexplorer/FileExplorerTabActivity$6;

    invoke-direct {v7, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$6;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;ZLcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public static synthetic i(Lcom/android/fileexplorer/FileExplorerTabActivity;Lmiuix/navigator/Navigator;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->lambda$createOtherNavigation$2(Lmiuix/navigator/Navigator;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$createOtherNavigation$0(ZLi2/f;)V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/fileexplorer/apptag/CategoryHelper;->getInstance()Lcom/android/fileexplorer/apptag/CategoryHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/apptag/CategoryHelper;->initAppTag()V

    :cond_e
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Lcom/android/fileexplorer/FileExplorerTabActivity;->mCurrentAppTagCount:I

    invoke-static {p1}, Lcom/android/fileexplorer/util/CategoryUtil;->transAppDataToCategory(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getStorageInfo()Ljava/util/List;

    invoke-interface {p2, v0}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {p2}, Li2/b;->onComplete()V

    return-void
.end method

.method private synthetic lambda$createOtherNavigation$1(Ljava/util/List;)Ljava/util/List;
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/CategoryUtil;->getFragmentNameByTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    const-string v5, "bundle_key_istobackstack"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CATEGORY_NAVIGATOR_BUNDLE_KEY"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getType()I

    move-result v4

    const-string v5, "app_tag"

    const-string v6, "app"

    if-nez v4, :cond_c2

    new-instance v4, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIconRes(I)I

    move-result v8

    invoke-direct {v4, v7, v8}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "recorder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "xspace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    goto :goto_bd

    :cond_68
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v1

    if-eqz v1, :cond_bd

    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "current_directory"

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const/16 v2, 0x5200

    const-class v5, Lcom/android/fileexplorer/pad/fragment/PadXspaceFileDetailFragment;

    invoke-direct {v1, v2, v5, v3}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v4, v1}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    goto :goto_bd

    :cond_88
    new-instance v1, Lcom/android/fileexplorer/FileExplorerTabActivity$14;

    const/4 v2, -0x1

    const/4 v5, 0x0

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/android/fileexplorer/FileExplorerTabActivity$14;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v4, v1}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    goto :goto_bd

    :cond_93
    const-class v7, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object v7

    if-eqz v7, :cond_ad

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_ad
    new-instance v5, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getNavId()I

    move-result v1

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v5, v1, v2, v3}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    :cond_bd
    :goto_bd
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_c2
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object v4

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_df

    goto :goto_e3

    :cond_df
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object v5

    :goto_e3
    new-instance v6, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v6, v5, v4}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getNavId()I

    move-result v1

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v4, v1, v2, v3}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v6, v4}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_105
    return-object v0
.end method

.method private synthetic lambda$createOtherNavigation$2(Lmiuix/navigator/Navigator;Ljava/util/List;)V
    .registers 10

    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator;->removeCategory(I)V

    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object v0

    const/16 v2, 0x3ff

    invoke-virtual {v0, v2}, Lmiuix/navigator/Navigator;->removeCategory(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "NAVIGATOR_FRAGMENT_ID_KEY"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getDefaultContentFragment()Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x3e9

    invoke-direct {v2, v5, v4, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    new-instance v0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    const v4, 0x7f1101fe

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0801f1

    invoke-direct {v0, v4, v5}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    const/4 v2, 0x0

    invoke-interface {p2, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->addExternalDevice(Lmiuix/navigator/Navigator;)V

    invoke-virtual {p1, v1}, Lmiuix/navigator/Navigator;->newCategory(I)Lmiuix/navigator/Navigator$Category;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v4

    if-eqz v4, :cond_53

    const v4, 0x7f110337

    goto :goto_5a

    :cond_53
    const v4, 0x7f182ec5

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    :goto_5a
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator$Category;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    const v4, 0x7f0d014f

    const/4 v5, 0x0

    invoke-static {v2}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->menuConfig(Z)Lmiuix/navigator/adapter/CategoryAdapter$MenuEditConfig;

    move-result-object v6

    invoke-direct {v1, p2, v4, v5, v6}, Lmiuix/navigator/adapter/MenuCategoryAdapter;-><init>(Ljava/util/List;ILmiuix/navigator/adapter/WidgetProvider;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V

    new-instance p2, Lcom/android/fileexplorer/FileExplorerTabActivity$15;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$15;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    invoke-virtual {v1, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->setEditListener(Lmiuix/navigator/adapter/CategoryAdapter$EditListener;)V

    invoke-virtual {v1, v3}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->setImmutableCount(I)V

    invoke-virtual {v1, v3}, Lmiuix/navigator/adapter/CategoryAdapter;->setShowIconOnEdit(Z)V

    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator$Category;->setAdapter(Lmiuix/navigator/adapter/CategoryAdapter;)V

    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->addCategory(Lmiuix/navigator/Navigator$Category;)V

    iput-boolean v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->secondaryCategoryIsCreating:Z

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->leaveUsbFragment(Lmiuix/navigator/Navigator;)V

    iput-boolean v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->isHandleUsb:Z

    return-void
.end method

.method private leaveUsbFragment(Lmiuix/navigator/Navigator;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/FragmentNavInfo;->getFragmentNavId()I

    move-result v1

    const/16 v2, 0xfa0

    if-eq v1, v2, :cond_1a

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/FragmentNavInfo;->getFragmentNavId()I

    move-result v0

    const/16 v1, 0x1388

    if-ne v0, v1, :cond_33

    :cond_1a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "NAVIGATOR_FRAGMENT_ID_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const/16 v2, 0x3e9

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getDefaultContentFragment()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    :cond_33
    return-void
.end method

.method private onCreateImpl(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "FileExplorerTabActivity"

    const-string v1, "onCreateImpl: 进入"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroidx/lifecycle/c0;

    invoke-direct {v1, p0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v2, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewModel:Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    iget-object v1, v1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->initPhonMainFragment:Landroidx/lifecycle/q;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v1, :cond_36

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    move-result v1

    if-eqz v1, :cond_36

    new-instance v1, Landroidx/lifecycle/c0;

    invoke-direct {v1, p0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v2, Lcom/android/fileexplorer/viewmodel/EventViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/viewmodel/EventViewModel;

    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mEventViewModel:Lcom/android/fileexplorer/viewmodel/EventViewModel;

    :cond_36
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mPreIntent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->handleWidgetIntent(Landroid/content/Intent;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mHasInitUI:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->registerStorageReceiver()V

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->registerWidgetAddedReceiver()V

    :try_start_44
    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-nez v1, :cond_65

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->registerOneHopShareReceiver()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_4c

    goto :goto_65

    :catch_4c
    move-exception v1

    const-string v2, "registerOneHopShareReceiver ERROR:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    :goto_65
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->showDataConsumptionHint()V

    if-nez p1, :cond_73

    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewModel:Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->newIntent:Landroidx/lifecycle/q;

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mPreIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :cond_73
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-eqz p1, :cond_78

    goto :goto_85

    :cond_78
    new-instance p1, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->handlePrivacyPolicy:Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_85
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnAppTagScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;)V

    return-void
.end method

.method private onSaveNavigatorOrder(Lmiuix/navigator/adapter/CategoryAdapter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v3

    check-cast v3, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;

    invoke-virtual {v3}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "CATEGORY_NAVIGATOR_BUNDLE_KEY"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_3d

    :cond_31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/CategoryUtil;->saveAllCategoriesToSP(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    invoke-virtual {p1}, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationIsNeedRefresh()Landroidx/lifecycle/q;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    invoke-virtual {v0}, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationIsNeedRefresh()Landroidx/lifecycle/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private recordDocInfo()V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isRecordDocInfo()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/fileexplorer/tasks/RecordDocTask;

    invoke-direct {v0}, Lcom/android/fileexplorer/tasks/RecordDocTask;-><init>()V

    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method private refreshOtherNavigation(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->secondaryCategoryIsCreating:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->isEditor:Z

    if-eqz v0, :cond_9

    goto :goto_10

    :cond_9
    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->createOtherNavigation(Lmiuix/navigator/Navigator;Z)V

    :cond_10
    :goto_10
    return-void
.end method

.method private registerOneHopShareReceiver()V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$11;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$11;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mOneHopShareCallback:Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;

    invoke-static {}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->getInstance()Lcom/xiaomi/mirror/onehop/OneHopHelper;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mOneHopShareCallback:Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->registerOneHopShareReceiver(Landroid/content/Context;Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;)V

    return-void
.end method

.method private registerStorageReceiver()V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/fileexplorer/FileExplorerTabActivity$10;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$10;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerWidgetAddedReceiver()V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.fileexplorer.WIDGET_IS_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/fileexplorer/widget/WidgetAddedReceiver;

    invoke-direct {v1}, Lcom/android/fileexplorer/widget/WidgetAddedReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mWidgetAddedReceiver:Lcom/android/fileexplorer/widget/WidgetAddedReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestPermission(Landroid/os/Bundle;)V
    .registers 5

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->checkNextCase(Landroid/os/Bundle;Z)V

    return-void

    :cond_9
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->getPermissionStatus(Landroid/content/Context;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->flag_permission:I

    :cond_19
    const/4 v0, -0x1

    iget v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->flag_permission:I

    if-ne v0, v2, :cond_25

    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    goto :goto_55

    :cond_25
    if-ne v1, v2, :cond_34

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x72

    invoke-static {p0, p1, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_55

    :cond_34
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$3;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_55

    :cond_4a
    if-nez p1, :cond_55

    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    :cond_55
    :goto_55
    return-void
.end method

.method private showBottomToast()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->getMContentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    if-eqz v1, :cond_20

    check-cast v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    const v1, 0x7f182c2d

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->showBottomToast(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    const-string v0, "FileExplorerTabActivity"

    const-string v1, "run: error "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void
.end method

.method private showDataConsumptionHint()V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDataConsumptionSwitch()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1b
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100ff

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100fe

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100fd

    new-instance v2, Lcom/android/fileexplorer/FileExplorerTabActivity$9;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$9;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100fb

    new-instance v2, Lcom/android/fileexplorer/FileExplorerTabActivity$8;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$8;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->isActivityFinish()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_57
    return-void
.end method

.method private showPrivacyPolicyUpdateDialog()V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getPrivacyUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f182ef8

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    const v2, 0x7f11036d

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/q;->setTitle(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f182cf1

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/FileExplorerTabActivity$4;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$4;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f182dbc

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/FileExplorerTabActivity$5;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$5;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    const v1, 0x7f032ff9

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public static startToMainActivity(Landroid/app/Activity;)V
    .registers 3

    if-eqz p0, :cond_12

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_12
    return-void
.end method

.method private unregisterStorageReceiver()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mWidgetAddedReceiver:Lcom/android/fileexplorer/widget/WidgetAddedReceiver;

    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_e
    invoke-static {}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->getInstance()Lcom/xiaomi/mirror/onehop/OneHopHelper;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->unregisterOneHopShareReceiver(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mOneHopShareCallback:Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;

    return-void
.end method


# virtual methods
.method public adDisliked(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_27

    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_22

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mEventViewModel:Lcom/android/fileexplorer/viewmodel/EventViewModel;

    invoke-virtual {v0}, Lcom/android/fileexplorer/viewmodel/EventViewModel;->getEvent()Landroidx/lifecycle/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :cond_22
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_27
    :goto_27
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getBottomTabMenu()I
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0e0001

    goto :goto_c

    :cond_a
    const/high16 v0, 0x7f0e0000

    :goto_c
    return v0
.end method

.method public getBottomTabMenuNavInfoProvider()Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$13;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$13;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    return-object v0
.end method

.method public getDefaultContentFragment()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lmiuix/appcompat/app/Fragment;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    return-object v0
.end method

.method public getNavigationOptionMenu()I
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f0e0006

    goto :goto_11

    :cond_e
    const v0, 0x7f0e0007

    :goto_11
    return v0
.end method

.method public getNavigatorInitArgs()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Lmiuix/navigator/NavigatorStrategy;

    invoke-direct {v0}, Lmiuix/navigator/NavigatorStrategy;-><init>()V

    sget-object v1, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    invoke-virtual {v0, v1}, Lmiuix/navigator/NavigatorStrategy;->setCompactMode(Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    move-result-object v1

    sget-object v2, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    invoke-virtual {v1, v2, v2}, Lmiuix/navigator/NavigatorStrategy;->setRegularMode(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmiuix/navigator/NavigatorStrategy;->setLargeMode(Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "miuix:navigatorStrategy"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v1
.end method

.method public getSingleStatueAndReset(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->getSingleStatueAndReset(I)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->init()V

    :cond_7
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x80

    if-eq p1, p3, :cond_9

    goto/16 :goto_6d

    :cond_9
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->dealSecurityCenterResultCode(I)I

    move-result p1

    const/4 p2, -0x3

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p1, p2, :cond_59

    const/4 p2, -0x1

    const-string v1, "FileExplorerTabActivity"

    if-eq p1, p2, :cond_53

    const/4 p2, 0x0

    if-eqz p1, :cond_39

    if-eq p1, v0, :cond_24

    const/4 p2, 0x2

    if-eq p1, p2, :cond_20

    goto :goto_6d

    :cond_20
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_6d

    :cond_24
    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setDataConsumptionSwitch(Z)V

    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-eqz p1, :cond_35

    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->updatePrivacyParam(ZLandroid/app/Activity;)V

    invoke-direct {p0, p3, p2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->checkNextCase(Landroid/os/Bundle;Z)V

    goto :goto_6d

    :cond_35
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    goto :goto_6d

    :cond_39
    const-string p1, "onActivityResult: 不同意"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-eqz p1, :cond_4f

    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->isKoreaRegion()Z

    move-result p1

    if-nez p1, :cond_4f

    invoke-static {p2, p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->updatePrivacyParam(ZLandroid/app/Activity;)V

    invoke-direct {p0, p3, p2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->checkNextCase(Landroid/os/Bundle;Z)V

    goto :goto_6d

    :cond_4f
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_6d

    :cond_53
    const-string p1, "miss config"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    :cond_59
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    move-result p1

    if-nez p1, :cond_6d

    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-eqz p1, :cond_67

    invoke-direct {p0, p3, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->checkNextCase(Landroid/os/Bundle;Z)V

    goto :goto_6d

    :cond_67
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    :cond_6d
    :goto_6d
    return-void
.end method

.method public onAppTagScanFinish()V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    move-result-object v0

    const-string v1, "onAppTagScanFinish mCurrentAppTagCount:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/fileexplorer/FileExplorerTabActivity;->mCurrentAppTagCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sourceList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileExplorerTabActivity"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/android/fileexplorer/FileExplorerTabActivity;->mCurrentAppTagCount:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_34

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->refreshOtherNavigation(Z)V

    :cond_34
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    const-string v0, "miuix.content"

    :try_start_2
    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/navigator/Navigator;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    invoke-interface {v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onBack()Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    :cond_27
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    goto :goto_45

    :catch_2b
    move-exception v0

    const-string v1, "onBackPressed: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileExplorerTabActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_45
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/navigator/app/NavigatorActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_a
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/PermissionUtils;->setPermission(Z)V

    invoke-super {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mPreIntent:Landroid/content/Intent;

    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mainIdleHandler:Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mainIdleHandler:Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->requestPermission(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mShortcutRun:Ljava/lang/Runnable;

    const-wide/16 v0, 0x258

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    new-instance p1, Landroidx/lifecycle/c0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    invoke-virtual {p1}, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationIsNeedRefresh()Landroidx/lifecycle/q;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$2;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateOtherNavigation(Lmiuix/navigator/Navigator;Landroid/os/Bundle;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->createOtherNavigation(Lmiuix/navigator/Navigator;Z)V

    return-void
.end method

.method public onCreatePrimaryNavigation(Lmiuix/navigator/Navigator;Landroid/os/Bundle;)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "NAVIGATOR_FRAGMENT_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getDefaultContentFragment()Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-direct {v2, v4, v3, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    const v0, 0x7f182de3

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0800d2

    invoke-virtual {p0, v0, v3, v2}, Lmiuix/navigator/app/NavigatorActivity;->newLabel(Ljava/lang/String;ILmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;

    if-nez p2, :cond_2c

    invoke-virtual {p1, v2}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    :cond_2c
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result p1

    if-nez p1, :cond_57

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x2

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const/16 v0, 0x3ea

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getDefaultContentFragment()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p2, v0, v2, p1}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    const p1, 0x7f182df3

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0800d0

    invoke-virtual {p0, p1, v0, p2}, Lmiuix/navigator/app/NavigatorActivity;->newLabel(Ljava/lang/String;ILmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;

    :cond_57
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 p2, 0x3f8

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const-class v1, Lcom/android/fileexplorer/fragment/SearchContentFragment;

    invoke-direct {v0, p2, v1, p1}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    const p1, 0x7f182f88

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f080612

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/navigator/app/NavigatorActivity;->newLabel(Ljava/lang/String;ILmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->release()V

    invoke-static {}, Lcom/android/fileexplorer/controller/IntentBuilder;->clearTasks()V

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->clear()V

    invoke-static {}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->getInstance()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->clear()V

    invoke-static {}, Lcom/android/fileexplorer/util/AdUtil;->isInterAdShow()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    const-string v1, "1.301.17.7"

    invoke-virtual {v0, v1, p0}, Lcom/fileexplorer/advert/AdManagerController;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->handlePrivacyPolicy:Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2a
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mShortcutRun:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->unRegisterOnAppTagScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailed: load interstitialAd error"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FileExplorerTabActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->setIsInterstitialAdSuccess(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mPreIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewModel:Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->newIntent:Landroidx/lifecycle/q;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mPreIntent:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->handleWidgetIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x72

    if-ne p1, v0, :cond_52

    array-length p1, p2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_52

    array-length p1, p3

    if-ge p1, v0, :cond_f

    goto :goto_52

    :cond_f
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-eqz p1, :cond_32

    invoke-static {p3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$7;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$7;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v0

    array-length p1, p3

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_2f

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    goto :goto_32

    :cond_2f
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V

    :cond_32
    :goto_32
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result p1

    if-nez p1, :cond_52

    const/4 p1, 0x0

    aget-object p2, p2, p1

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    aget p1, p3, p1

    if-nez p1, :cond_52

    new-instance p1, Landroid/content/Intent;

    const-string p2, "action_open_cloud_drive"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    nop

    :cond_52
    :goto_52
    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/util/AdUtil;->isInterAdShow()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    const-string v1, "1.301.17.7"

    invoke-virtual {v0, v1, p0}, Lcom/fileexplorer/advert/AdManagerController;->addLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fileexplorer/advert/AdManagerController;->loadAd(Ljava/lang/String;)V

    :cond_16
    const-string v0, "onResume: setPrivacySwitch = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileExplorerTabActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->clearCloudData(Landroid/content/Context;)V

    :cond_45
    invoke-super {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onResume()V

    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/PermissionUtils;->setPermission(Z)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->setNavigationMenu(Z)V

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDataConsumptionSwitch()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-static {v1}, Lcom/android/fileexplorer/statistics/Statistics;->onPageStart(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->recordDocInfo()V

    :cond_66
    return-void
.end method

.method public onStart()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onStop()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Z)V
    .registers 3

    const-string p1, "FileExplorerTabActivity"

    const-string p2, "load interstitialAd success: "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->setIsInterstitialAdSuccess(Z)V

    return-void
.end method

.method public refreshAllStatue(IZI)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->refreshAllStatue(IZI)V

    :cond_7
    return-void
.end method

.method public refreshSingleStatus(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->refreshSingleStatus(IZ)V

    :cond_7
    return-void
.end method

.method public release()V
    .registers 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->release()V

    invoke-static {}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->onDestroy()V

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->dismissDialog()V

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileIconHelper;->release()V

    :try_start_2c
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->unregisterStorageReceiver()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_47

    :catch_30
    move-exception v0

    const-string v2, "unregister fail:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FileExplorerTabActivity"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mainIdleHandler:Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;

    if-eqz v0, :cond_56

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mainIdleHandler:Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_56
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->clearAvailableStorage()V

    return-void
.end method

.method public restoreIntent()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mPreIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public setNavigationMenu(Z)V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object v0

    if-eqz p1, :cond_10

    const p1, 0x7f0e0006

    goto :goto_13

    :cond_10
    const p1, 0x7f0e0007

    :goto_13
    invoke-virtual {v0, p1}, Lmiuix/navigator/Navigator;->setNavigationMenu(I)V

    goto :goto_21

    :cond_17
    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object p1

    const v0, 0x7f0e0008

    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->setNavigationMenu(I)V

    :goto_21
    return-void
.end method
