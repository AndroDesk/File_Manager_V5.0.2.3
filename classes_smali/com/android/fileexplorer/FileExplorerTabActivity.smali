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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    .line 11
    new-instance v0, Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    .line 13
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->flag_permission:I

    .line 21
    iput-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->secondaryCategoryIsCreating:Z

    .line 23
    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$1;

    .line 25
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$1;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 28
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mShortcutRun:Ljava/lang/Runnable;

    .line 30
    return-void
.end method

.method private HandleUpdateReturnVal(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_5e

    .line 12
    goto :goto_58

    .line 13
    :sswitch_c
    const-string v0, "-7"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 21
    goto :goto_58

    .line 22
    :cond_15
    const/4 v1, 0x6

    .line 23
    goto :goto_58

    .line 24
    :sswitch_17
    const-string v0, "-6"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_20

    .line 32
    goto :goto_58

    .line 33
    :cond_20
    const/4 v1, 0x5

    .line 34
    goto :goto_58

    .line 35
    :sswitch_22
    const-string v0, "-5"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2b

    .line 43
    goto :goto_58

    .line 44
    :cond_2b
    const/4 v1, 0x4

    .line 45
    goto :goto_58

    .line 46
    :sswitch_2d
    const-string v0, "-4"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_36

    .line 54
    goto :goto_58

    .line 55
    :cond_36
    const/4 v1, 0x3

    .line 56
    goto :goto_58

    .line 57
    :sswitch_38
    const-string v0, "-3"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_41

    .line 65
    goto :goto_58

    .line 66
    :cond_41
    const/4 v1, 0x2

    .line 67
    goto :goto_58

    .line 68
    :sswitch_43
    const-string v0, "-2"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_4c

    .line 76
    goto :goto_58

    .line 77
    :cond_4c
    const/4 v1, 0x1

    .line 78
    goto :goto_58

    .line 79
    :sswitch_4e
    const-string v0, "1"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_57

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    const/4 v1, 0x0

    .line 89
    :goto_58
    packed-switch v1, :pswitch_data_7c

    .line 92
    return-object p1

    .line 93
    :pswitch_5c  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    const/4 p1, 0x0

    .line 94
    return-object p1

    .line 95
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

    .line 125
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

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->refreshOtherNavigation(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/FileExplorerTabActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->isHandleUsb:Z

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/FileExplorerTabActivity;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->isHandleUsb:Z

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/FileExplorerTabActivity;)Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewModel:Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/FileExplorerTabActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->HandleUpdateReturnVal(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/FileExplorerTabActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->showPrivacyPolicyUpdateDialog()V

    .line 4
    return-void
.end method

.method public static synthetic access$502(Lcom/android/fileexplorer/FileExplorerTabActivity;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->isEditor:Z

    .line 3
    return p1
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/FileExplorerTabActivity;Lmiuix/navigator/adapter/CategoryAdapter;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onSaveNavigatorOrder(Lmiuix/navigator/adapter/CategoryAdapter;)V

    .line 4
    return-void
.end method

.method private addExternalDevice(Lmiuix/navigator/Navigator;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_a0

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->showBottomToast()V

    .line 12
    const/16 v0, 0x3ff

    .line 14
    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->newCategory(I)Lmiuix/navigator/Navigator$Category;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f1102c3

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator$Category;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    const/16 v2, 0xfa0

    .line 39
    const/16 v3, 0x1388

    .line 41
    iget-object v4, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    .line 43
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v4

    .line 47
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_8d

    .line 53
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lcom/android/fileexplorer/model/StorageInfo;

    .line 59
    new-instance v6, Landroid/os/Bundle;

    .line 61
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 64
    invoke-virtual {v5}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 67
    move-result-object v7

    .line 68
    const-string v8, "current_directory"

    .line 70
    invoke-virtual {v6, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v7, v5}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_6e

    .line 83
    new-instance v5, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 85
    const v7, 0x7f110404

    .line 88
    invoke-static {v7}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v7

    .line 92
    const v8, 0x7f080122

    .line 95
    invoke-direct {v5, v7, v8}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;-><init>(Ljava/lang/String;I)V

    .line 98
    new-instance v7, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 100
    const-class v8, Lcom/android/fileexplorer/pad/fragment/PadSdCardFileDetailFragment;

    .line 102
    invoke-direct {v7, v3, v8, v6}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {v5, v7}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 108
    add-int/lit8 v3, v3, 0x1

    .line 110
    goto :goto_89

    .line 111
    :cond_6e
    new-instance v5, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 113
    const v7, 0x7f110225

    .line 116
    invoke-static {v7}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 119
    move-result-object v7

    .line 120
    const v8, 0x7f080123

    .line 123
    invoke-direct {v5, v7, v8}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;-><init>(Ljava/lang/String;I)V

    .line 126
    new-instance v7, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 128
    const-class v8, Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;

    .line 130
    invoke-direct {v7, v2, v8, v6}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {v5, v7}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 138
    :goto_89
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    goto :goto_2e

    .line 142
    :cond_8d
    new-instance v2, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    .line 144
    const v3, 0x7f0d014f

    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-static {}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->uneditableConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 151
    move-result-object v5

    .line 152
    invoke-direct {v2, v1, v3, v4, v5}, Lmiuix/navigator/adapter/MenuCategoryAdapter;-><init>(Ljava/util/List;ILmiuix/navigator/adapter/WidgetProvider;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V

    .line 155
    invoke-virtual {v0, v2}, Lmiuix/navigator/Navigator$Category;->setAdapter(Lmiuix/navigator/adapter/CategoryAdapter;)V

    .line 158
    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->addCategory(Lmiuix/navigator/Navigator$Category;)V

    .line 161
    :cond_a0
    return-void
.end method

.method private checkNextCase(Landroid/os/Bundle;Z)V
    .registers 4

    .line 1
    if-eqz p2, :cond_14

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_14

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getGlobalPadNeedForceShow()Z

    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_14

    .line 15
    const/16 p2, 0x80

    .line 17
    invoke-static {p1, p0, p2}, Lcom/android/fileexplorer/util/PrivacyUtil;->startGlobalPrivacy(Landroid/os/Bundle;Landroid/app/Activity;I)V

    .line 20
    goto :goto_26

    .line 21
    :cond_14
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_23

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    const/16 v0, 0x72

    .line 33
    invoke-static {p0, p2, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 36
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 39
    :goto_26
    return-void
.end method

.method private createOtherNavigation(Lmiuix/navigator/Navigator;Z)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->secondaryCategoryIsCreating:Z

    .line 4
    new-instance v0, Lcom/android/cloud/fragment/model/c;

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p0, p2, v1}, Lcom/android/cloud/fragment/model/c;-><init>(Ljava/lang/Object;ZI)V

    .line 10
    new-instance p2, Lio/reactivex/internal/operators/observable/ObservableCreate;

    .line 12
    invoke-direct {p2, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    .line 15
    invoke-static {p2, p0}, Lcom/android/fileexplorer/util/RxTransformerHelperKt;->createIO2MainObservable(Li2/e;Landroidx/lifecycle/m;)Li2/e;

    .line 18
    move-result-object p2

    .line 19
    new-instance v0, Lcom/android/fileexplorer/a;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/a;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v1, Lq2/c;

    .line 29
    invoke-direct {v1, p2, v0}, Lq2/c;-><init>(Li2/e;Lcom/android/fileexplorer/a;)V

    .line 32
    new-instance p2, Lcom/android/fileexplorer/b;

    .line 34
    invoke-direct {p2, p0, p1}, Lcom/android/fileexplorer/b;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;Lmiuix/navigator/Navigator;)V

    .line 37
    invoke-virtual {v1, p2}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    .line 40
    return-void
.end method

.method private dealSecurityCenterResultCode(I)I
    .registers 4

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 3
    if-eqz v0, :cond_19

    .line 5
    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->supportGlobalSecurityPrivacy(Landroid/app/Activity;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_19

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->isKoreaRegion()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_19

    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p1, v0, :cond_15

    .line 20
    const/4 p1, 0x0

    .line 21
    return p1

    .line 22
    :cond_15
    const/4 v1, 0x2

    .line 23
    if-ne p1, v1, :cond_19

    .line 25
    return v0

    .line 26
    :cond_19
    return p1
.end method

.method private dismissDialog()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 13
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 19
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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    if-eqz v0, :cond_3f

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_3f

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 32
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->isMounted()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_13

    .line 38
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_39

    .line 48
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_13

    .line 58
    :cond_39
    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    .line 60
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_13

    .line 64
    :cond_3f
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    .line 66
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

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    .line 3
    if-nez p1, :cond_17

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isMainThread()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_f

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->dismissImmersionMenu(Z)V

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    new-instance p1, Lcom/android/fileexplorer/FileExplorerTabActivity$12;

    .line 18
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$12;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    .line 24
    :cond_17
    :goto_17
    return-void
.end method

.method private handleWidgetIntent(Landroid/content/Intent;)V
    .registers 10

    .line 1
    if-eqz p1, :cond_44

    .line 3
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_44

    .line 10
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "com.android.fileexplorer.export.START_OEPN_FILE"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_44

    .line 22
    const-string v0, "extraFileName"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_44

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_44

    .line 40
    new-instance v0, Lcom/android/fileexplorer/model/FileWithExt;

    .line 42
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, p1, v1}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x1

    .line 60
    new-instance v7, Lcom/android/fileexplorer/FileExplorerTabActivity$6;

    .line 62
    invoke-direct {v7, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$6;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 65
    move-object v2, p0

    .line 66
    invoke-static/range {v2 .. v7}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;ZLcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;)V

    .line 69
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p1, :cond_e

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/apptag/CategoryHelper;->getInstance()Lcom/android/fileexplorer/apptag/CategoryHelper;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/apptag/CategoryHelper;->initAppTag()V

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    move-result v1

    .line 35
    sput v1, Lcom/android/fileexplorer/FileExplorerTabActivity;->mCurrentAppTagCount:I

    .line 37
    invoke-static {p1}, Lcom/android/fileexplorer/util/CategoryUtil;->transAppDataToCategory(Ljava/util/List;)Ljava/util/List;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getStorageInfo()Ljava/util/List;

    .line 47
    invoke-interface {p2, v0}, Li2/b;->onNext(Ljava/lang/Object;)V

    .line 50
    invoke-interface {p2}, Li2/b;->onComplete()V

    .line 53
    return-void
.end method

.method private synthetic lambda$createOtherNavigation$1(Ljava/util/List;)Ljava/util/List;
    .registers 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_105

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/CategoryUtil;->getFragmentNameByTag(Ljava/lang/String;Z)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Landroid/os/Bundle;

    .line 33
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 36
    const/4 v4, 0x0

    .line 37
    const-string v5, "bundle_key_istobackstack"

    .line 39
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    const-string v5, "CATEGORY_NAVIGATOR_BUNDLE_KEY"

    .line 48
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getType()I

    .line 54
    move-result v4

    .line 55
    const-string v5, "app_tag"

    .line 57
    const-string v6, "app"

    .line 59
    if-nez v4, :cond_c2

    .line 61
    new-instance v4, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 63
    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    const/4 v8, 0x2

    .line 68
    invoke-virtual {v1, v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIconRes(I)I

    .line 71
    move-result v8

    .line 72
    invoke-direct {v4, v7, v8}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;-><init>(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_93

    .line 81
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    const-string v2, "recorder"

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_88

    .line 96
    const-string v2, "xspace"

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_68

    .line 104
    goto :goto_bd

    .line 105
    :cond_68
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_bd

    .line 111
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    const-string v2, "current_directory"

    .line 121
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 126
    const/16 v2, 0x5200

    .line 128
    const-class v5, Lcom/android/fileexplorer/pad/fragment/PadXspaceFileDetailFragment;

    .line 130
    invoke-direct {v1, v2, v5, v3}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {v4, v1}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 136
    goto :goto_bd

    .line 137
    :cond_88
    new-instance v1, Lcom/android/fileexplorer/FileExplorerTabActivity$14;

    .line 139
    const/4 v2, -0x1

    .line 140
    const/4 v5, 0x0

    .line 141
    invoke-direct {v1, p0, v2, v5, v3}, Lcom/android/fileexplorer/FileExplorerTabActivity$14;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {v4, v1}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 147
    goto :goto_bd

    .line 148
    :cond_93
    const-class v7, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;

    .line 150
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 153
    move-result-object v7

    .line 154
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_ad

    .line 160
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    .line 163
    move-result-object v7

    .line 164
    if-eqz v7, :cond_ad

    .line 166
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 168
    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 171
    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 174
    :cond_ad
    new-instance v5, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 176
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getNavId()I

    .line 179
    move-result v1

    .line 180
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 183
    move-result-object v2

    .line 184
    invoke-direct {v5, v1, v2, v3}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {v4, v5}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 190
    :cond_bd
    :goto_bd
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    goto/16 :goto_9

    .line 195
    :cond_c2
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    .line 198
    move-result-object v4

    .line 199
    if-eqz v4, :cond_9

    .line 201
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    .line 204
    move-result-object v4

    .line 205
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 207
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 210
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 213
    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 216
    move-result-object v5

    .line 217
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    move-result v6

    .line 221
    if-nez v6, :cond_df

    .line 223
    goto :goto_e3

    .line 224
    :cond_df
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    .line 227
    move-result-object v5

    .line 228
    :goto_e3
    new-instance v6, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 230
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 233
    move-result-object v4

    .line 234
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 237
    move-result-object v4

    .line 238
    invoke-direct {v6, v5, v4}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 241
    new-instance v4, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 243
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getNavId()I

    .line 246
    move-result v1

    .line 247
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 250
    move-result-object v2

    .line 251
    invoke-direct {v4, v1, v2, v3}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {v6, v4}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 257
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    goto/16 :goto_9

    .line 262
    :cond_105
    return-object v0
.end method

.method private synthetic lambda$createOtherNavigation$2(Lmiuix/navigator/Navigator;Ljava/util/List;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x7d0

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator;->removeCategory(I)V

    .line 10
    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    .line 13
    move-result-object v0

    .line 14
    const/16 v2, 0x3ff

    .line 16
    invoke-virtual {v0, v2}, Lmiuix/navigator/Navigator;->removeCategory(I)V

    .line 19
    new-instance v0, Landroid/os/Bundle;

    .line 21
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-string v2, "NAVIGATOR_FRAGMENT_ID_KEY"

    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    new-instance v2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getDefaultContentFragment()Ljava/lang/Class;

    .line 35
    move-result-object v4

    .line 36
    const/16 v5, 0x3e9

    .line 38
    invoke-direct {v2, v5, v4, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 43
    const v4, 0x7f1101fe

    .line 46
    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    const v5, 0x7f0801f1

    .line 53
    invoke-direct {v0, v4, v5}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;-><init>(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v0, v2}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-interface {p2, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->addExternalDevice(Lmiuix/navigator/Navigator;)V

    .line 66
    invoke-virtual {p1, v1}, Lmiuix/navigator/Navigator;->newCategory(I)Lmiuix/navigator/Navigator$Category;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v1

    .line 74
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_53

    .line 80
    const v4, 0x7f110337

    .line 83
    goto :goto_56

    .line 84
    :cond_53
    const v4, 0x7f110353

    .line 87
    :goto_56
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator$Category;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v1, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    .line 96
    const v4, 0x7f0d014f

    .line 99
    const/4 v5, 0x0

    .line 100
    invoke-static {v2}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->menuConfig(Z)Lmiuix/navigator/adapter/CategoryAdapter$MenuEditConfig;

    .line 103
    move-result-object v6

    .line 104
    invoke-direct {v1, p2, v4, v5, v6}, Lmiuix/navigator/adapter/MenuCategoryAdapter;-><init>(Ljava/util/List;ILmiuix/navigator/adapter/WidgetProvider;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V

    .line 107
    new-instance p2, Lcom/android/fileexplorer/FileExplorerTabActivity$15;

    .line 109
    invoke-direct {p2, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$15;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 112
    invoke-virtual {v1, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->setEditListener(Lmiuix/navigator/adapter/CategoryAdapter$EditListener;)V

    .line 115
    invoke-virtual {v1, v3}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->setImmutableCount(I)V

    .line 118
    invoke-virtual {v1, v3}, Lmiuix/navigator/adapter/CategoryAdapter;->setShowIconOnEdit(Z)V

    .line 121
    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator$Category;->setAdapter(Lmiuix/navigator/adapter/CategoryAdapter;)V

    .line 124
    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->addCategory(Lmiuix/navigator/Navigator$Category;)V

    .line 127
    iput-boolean v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->secondaryCategoryIsCreating:Z

    .line 129
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->leaveUsbFragment(Lmiuix/navigator/Navigator;)V

    .line 132
    iput-boolean v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->isHandleUsb:Z

    .line 134
    return-void
.end method

.method private leaveUsbFragment(Lmiuix/navigator/Navigator;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_33

    .line 9
    sget-object v0, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/FragmentNavInfo;->getFragmentNavId()I

    .line 14
    move-result v1

    .line 15
    const/16 v2, 0xfa0

    .line 17
    if-eq v1, v2, :cond_1a

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/FragmentNavInfo;->getFragmentNavId()I

    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x1388

    .line 25
    if-ne v0, v1, :cond_33

    .line 27
    :cond_1a
    new-instance v0, Landroid/os/Bundle;

    .line 29
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    const/4 v1, 0x1

    .line 33
    const-string v2, "NAVIGATOR_FRAGMENT_ID_KEY"

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 40
    const/16 v2, 0x3e9

    .line 42
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getDefaultContentFragment()Ljava/lang/Class;

    .line 45
    move-result-object v3

    .line 46
    invoke-direct {v1, v2, v3, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p1, v1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 52
    :cond_33
    return-void
.end method

.method private onCreateImpl(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    const-string v0, "FileExplorerTabActivity"

    .line 3
    const-string v1, "onCreateImpl: 进入"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v1, Landroidx/lifecycle/c0;

    .line 10
    invoke-direct {v1, p0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 13
    const-class v2, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    .line 15
    invoke-virtual {v1, v2}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    .line 21
    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewModel:Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    .line 23
    iget-object v1, v1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->initPhonMainFragment:Landroidx/lifecycle/q;

    .line 25
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {v1, v2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 30
    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 32
    if-eqz v1, :cond_36

    .line 34
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_36

    .line 40
    new-instance v1, Landroidx/lifecycle/c0;

    .line 42
    invoke-direct {v1, p0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 45
    const-class v2, Lcom/android/fileexplorer/viewmodel/EventViewModel;

    .line 47
    invoke-virtual {v1, v2}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/android/fileexplorer/viewmodel/EventViewModel;

    .line 53
    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mEventViewModel:Lcom/android/fileexplorer/viewmodel/EventViewModel;

    .line 55
    :cond_36
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mPreIntent:Landroid/content/Intent;

    .line 57
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->handleWidgetIntent(Landroid/content/Intent;)V

    .line 60
    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mHasInitUI:Z

    .line 63
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->registerStorageReceiver()V

    .line 66
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->registerWidgetAddedReceiver()V

    .line 69
    :try_start_44
    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 71
    if-nez v1, :cond_65

    .line 73
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->registerOneHopShareReceiver()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_4c

    .line 76
    goto :goto_65

    .line 77
    :catch_4c
    move-exception v1

    .line 78
    const-string v2, "registerOneHopShareReceiver ERROR:"

    .line 80
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_65
    :goto_65
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->showDataConsumptionHint()V

    .line 105
    if-nez p1, :cond_73

    .line 107
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewModel:Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    .line 109
    iget-object p1, p1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->newIntent:Landroidx/lifecycle/q;

    .line 111
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mPreIntent:Landroid/content/Intent;

    .line 113
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 116
    :cond_73
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 118
    if-eqz p1, :cond_78

    .line 120
    goto :goto_85

    .line 121
    :cond_78
    new-instance p1, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;

    .line 123
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 126
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->handlePrivacyPolicy:Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;

    .line 128
    const/4 v0, 0x0

    .line 129
    new-array v0, v0, [Ljava/lang/Void;

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 134
    :goto_85
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnAppTagScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;)V

    .line 141
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

    .line 1
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_40

    .line 21
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 27
    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;

    .line 33
    invoke-virtual {v3}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    .line 36
    move-result-object v3

    .line 37
    const-string v4, "CATEGORY_NAVIGATOR_BUNDLE_KEY"

    .line 39
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_31

    .line 49
    goto :goto_3d

    .line 50
    :cond_31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    add-int/lit8 v3, v1, -0x1

    .line 55
    if-eq v2, v3, :cond_3d

    .line 57
    const/16 v3, 0x2c

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_e

    .line 65
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/android/fileexplorer/util/CategoryUtil;->saveAllCategoriesToSP(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 74
    invoke-virtual {p1}, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationIsNeedRefresh()Landroidx/lifecycle/q;

    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 80
    invoke-virtual {v0}, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationIsNeedRefresh()Landroidx/lifecycle/q;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/Integer;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 93
    move-result v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method private recordDocInfo()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isRecordDocInfo()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_e

    .line 7
    new-instance v0, Lcom/android/fileexplorer/tasks/RecordDocTask;

    .line 9
    invoke-direct {v0}, Lcom/android/fileexplorer/tasks/RecordDocTask;-><init>()V

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 15
    :cond_e
    return-void
.end method

.method private refreshOtherNavigation(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->secondaryCategoryIsCreating:Z

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-boolean v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->isEditor:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_10

    .line 10
    :cond_9
    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->createOtherNavigation(Lmiuix/navigator/Navigator;Z)V

    .line 17
    :cond_10
    :goto_10
    return-void
.end method

.method private registerOneHopShareReceiver()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$11;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$11;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mOneHopShareCallback:Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;

    .line 8
    invoke-static {}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->getInstance()Lcom/xiaomi/mirror/onehop/OneHopHelper;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mOneHopShareCallback:Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->registerOneHopShareReceiver(Landroid/content/Context;Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;)V

    .line 21
    return-void
.end method

.method private registerStorageReceiver()V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcom/android/fileexplorer/FileExplorerTabActivity$10;

    .line 38
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$10;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 41
    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    return-void
.end method

.method private registerWidgetAddedReceiver()V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "com.android.fileexplorer.WIDGET_IS_ADDED"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/android/fileexplorer/widget/WidgetAddedReceiver;

    .line 13
    invoke-direct {v1}, Lcom/android/fileexplorer/widget/WidgetAddedReceiver;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mWidgetAddedReceiver:Lcom/android/fileexplorer/widget/WidgetAddedReceiver;

    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 21
    return-void
.end method

.method private requestPermission(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_9

    .line 6
    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->checkNextCase(Landroid/os/Bundle;Z)V

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_19

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->getPermissionStatus(Landroid/content/Context;[Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->flag_permission:I

    .line 26
    :cond_19
    const/4 v0, -0x1

    .line 27
    iget v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->flag_permission:I

    .line 29
    if-ne v0, v2, :cond_25

    .line 31
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 37
    goto :goto_55

    .line 38
    :cond_25
    if-ne v1, v2, :cond_34

    .line 40
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->STORAGE()[Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    const/16 v0, 0x72

    .line 49
    invoke-static {p0, p1, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 52
    goto :goto_55

    .line 53
    :cond_34
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4a

    .line 59
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 65
    move-result-object p1

    .line 66
    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$3;

    .line 68
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$3;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 71
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 74
    goto :goto_55

    .line 75
    :cond_4a
    if-nez p1, :cond_55

    .line 77
    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_55

    .line 83
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 86
    :cond_55
    :goto_55
    return-void
.end method

.method private showBottomToast()V
    .registers 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->getMContentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 7
    if-eqz v1, :cond_1c

    .line 9
    check-cast v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 11
    const v1, 0x7f1101bb

    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->showBottomToast(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 21
    goto :goto_1c

    .line 22
    :catch_15
    const-string v0, "FileExplorerTabActivity"

    .line 24
    const-string v1, "run: error "

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method

.method private showDataConsumptionHint()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDataConsumptionSwitch()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_57

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_57

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 15
    if-eqz v0, :cond_1b

    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 25
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 28
    :cond_1b
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 30
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    const v1, 0x7f1100ff

    .line 36
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 39
    move-result-object v0

    .line 40
    const v1, 0x7f1100fe

    .line 43
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 46
    move-result-object v0

    .line 47
    const v1, 0x7f1100fd

    .line 50
    new-instance v2, Lcom/android/fileexplorer/FileExplorerTabActivity$9;

    .line 52
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$9;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 55
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 58
    move-result-object v0

    .line 59
    const v1, 0x7f1100fb

    .line 62
    new-instance v2, Lcom/android/fileexplorer/FileExplorerTabActivity$8;

    .line 64
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$8;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 67
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 77
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->isActivityFinish()Z

    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_57

    .line 83
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 85
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 88
    :cond_57
    return-void
.end method

.method private showPrivacyPolicyUpdateDialog()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getPrivacyUri()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f11036e

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v0, v2, v3

    .line 22
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 28
    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 37
    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 40
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 42
    const v2, 0x7f11036d

    .line 45
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/q;->setTitle(I)V

    .line 48
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 50
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v1

    .line 63
    const v2, 0x7f110167

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Lcom/android/fileexplorer/FileExplorerTabActivity$4;

    .line 72
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$4;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 75
    const/4 v3, -0x2

    .line 76
    invoke-virtual {v0, v3, v1, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v1

    .line 85
    const v2, 0x7f11002a

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    new-instance v2, Lcom/android/fileexplorer/FileExplorerTabActivity$5;

    .line 94
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$5;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 97
    const/4 v3, -0x1

    .line 98
    invoke-virtual {v0, v3, v1, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 103
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 106
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->withdraw_dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 108
    const v1, 0x7f0a026f

    .line 111
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroid/widget/TextView;

    .line 117
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 124
    return-void
.end method

.method public static startToMainActivity(Landroid/app/Activity;)V
    .registers 3

    .line 1
    if-eqz p0, :cond_12

    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 5
    const-class v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 7
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    const v1, 0x10008000

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 19
    :cond_12
    return-void
.end method

.method private unregisterStorageReceiver()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mWidgetAddedReceiver:Lcom/android/fileexplorer/widget/WidgetAddedReceiver;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    :cond_e
    invoke-static {}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->getInstance()Lcom/xiaomi/mirror/onehop/OneHopHelper;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->unregisterOneHopShareReceiver(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mOneHopShareCallback:Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;

    .line 29
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

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    if-eqz v0, :cond_27

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_27

    .line 12
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x1f

    .line 18
    if-ne v0, v1, :cond_22

    .line 20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_22

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mEventViewModel:Lcom/android/fileexplorer/viewmodel/EventViewModel;

    .line 28
    invoke-virtual {v0}, Lcom/android/fileexplorer/viewmodel/EventViewModel;->getEvent()Landroidx/lifecycle/q;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 35
    :cond_22
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    :cond_27
    :goto_27
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public getBottomTabMenu()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    const v0, 0x7f0e0001

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    const/high16 v0, 0x7f0e0000

    .line 13
    :goto_c
    return v0
.end method

.method public getBottomTabMenuNavInfoProvider()Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$13;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$13;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 6
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

    .line 1
    const-class v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 3
    return-object v0
.end method

.method public getNavigationOptionMenu()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_e

    .line 11
    const v0, 0x7f0e0006

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    const v0, 0x7f0e0007

    .line 18
    :goto_11
    return v0
.end method

.method public getNavigatorInitArgs()Landroid/os/Bundle;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/navigator/NavigatorStrategy;

    .line 3
    invoke-direct {v0}, Lmiuix/navigator/NavigatorStrategy;-><init>()V

    .line 6
    sget-object v1, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 8
    invoke-virtual {v0, v1}, Lmiuix/navigator/NavigatorStrategy;->setCompactMode(Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 14
    invoke-virtual {v1, v2, v2}, Lmiuix/navigator/NavigatorStrategy;->setRegularMode(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v2}, Lmiuix/navigator/NavigatorStrategy;->setLargeMode(Lmiuix/navigator/Navigator$Mode;)Lmiuix/navigator/NavigatorStrategy;

    .line 21
    new-instance v1, Landroid/os/Bundle;

    .line 23
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string v2, "miuix:navigatorStrategy"

    .line 28
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    return-object v1
.end method

.method public getSingleStatueAndReset(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->getSingleStatueAndReset(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public init()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->init()V

    .line 8
    :cond_7
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/16 p3, 0x80

    .line 6
    if-eq p1, p3, :cond_9

    .line 8
    goto/16 :goto_6d

    .line 10
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->dealSecurityCenterResultCode(I)I

    .line 13
    move-result p1

    .line 14
    const/4 p2, -0x3

    .line 15
    const/4 p3, 0x0

    .line 16
    const/4 v0, 0x1

    .line 17
    if-eq p1, p2, :cond_59

    .line 19
    const/4 p2, -0x1

    .line 20
    const-string v1, "FileExplorerTabActivity"

    .line 22
    if-eq p1, p2, :cond_53

    .line 24
    const/4 p2, 0x0

    .line 25
    if-eqz p1, :cond_39

    .line 27
    if-eq p1, v0, :cond_24

    .line 29
    const/4 p2, 0x2

    .line 30
    if-eq p1, p2, :cond_20

    .line 32
    goto :goto_6d

    .line 33
    :cond_20
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 36
    goto :goto_6d

    .line 37
    :cond_24
    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    .line 40
    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setDataConsumptionSwitch(Z)V

    .line 43
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 45
    if-eqz p1, :cond_35

    .line 47
    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->updatePrivacyParam(ZLandroid/app/Activity;)V

    .line 50
    invoke-direct {p0, p3, p2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->checkNextCase(Landroid/os/Bundle;Z)V

    .line 53
    goto :goto_6d

    .line 54
    :cond_35
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 57
    goto :goto_6d

    .line 58
    :cond_39
    const-string p1, "onActivityResult: 不同意"

    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 65
    if-eqz p1, :cond_4f

    .line 67
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->isKoreaRegion()Z

    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_4f

    .line 73
    invoke-static {p2, p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->updatePrivacyParam(ZLandroid/app/Activity;)V

    .line 76
    invoke-direct {p0, p3, p2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->checkNextCase(Landroid/os/Bundle;Z)V

    .line 79
    goto :goto_6d

    .line 80
    :cond_4f
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 83
    goto :goto_6d

    .line 84
    :cond_53
    const-string p1, "miss config"

    .line 86
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    goto :goto_6d

    .line 90
    :cond_59
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_6d

    .line 96
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 98
    if-eqz p1, :cond_67

    .line 100
    invoke-direct {p0, p3, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->checkNextCase(Landroid/os/Bundle;Z)V

    .line 103
    goto :goto_6d

    .line 104
    :cond_67
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 107
    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    .line 110
    :cond_6d
    :goto_6d
    return-void
.end method

.method public onAppTagScanFinish()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "onAppTagScanFinish mCurrentAppTagCount:"

    .line 11
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v1

    .line 15
    sget v2, Lcom/android/fileexplorer/FileExplorerTabActivity;->mCurrentAppTagCount:I

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " sourceList:"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const-string v2, "FileExplorerTabActivity"

    .line 38
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget v1, Lcom/android/fileexplorer/FileExplorerTabActivity;->mCurrentAppTagCount:I

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    move-result v0

    .line 47
    if-eq v1, v0, :cond_34

    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->refreshOtherNavigation(Z)V

    .line 53
    :cond_34
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 1
    const-string v0, "miuix.content"

    .line 3
    :try_start_2
    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lmiuix/navigator/Navigator;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_27

    .line 13
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_27

    .line 23
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;

    .line 33
    invoke-interface {v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onBack()Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_27

    .line 39
    return-void

    .line 40
    :cond_27
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 43
    goto :goto_45

    .line 44
    :catch_2b
    move-exception v0

    .line 45
    const-string v1, "onBackPressed: "

    .line 47
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    const-string v1, "FileExplorerTabActivity"

    .line 64
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 70
    :goto_45
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/navigator/app/NavigatorActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11
    :cond_a
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/util/PermissionUtils;->setPermission(Z)V

    .line 18
    invoke-super {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mPreIntent:Landroid/content/Intent;

    .line 27
    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;

    .line 29
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mainIdleHandler:Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;

    .line 34
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mainIdleHandler:Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->requestPermission(Landroid/os/Bundle;)V

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mShortcutRun:Ljava/lang/Runnable;

    .line 48
    const-wide/16 v0, 0x258

    .line 50
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 53
    new-instance p1, Landroidx/lifecycle/c0;

    .line 55
    invoke-direct {p1, p0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 58
    const-class v0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 60
    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 66
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mNavigationViewModel:Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;

    .line 68
    invoke-virtual {p1}, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationIsNeedRefresh()Landroidx/lifecycle/q;

    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$2;

    .line 74
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$2;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 77
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onCreateOtherNavigation(Lmiuix/navigator/Navigator;Landroid/os/Bundle;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->createOtherNavigation(Lmiuix/navigator/Navigator;Z)V

    .line 5
    return-void
.end method

.method public onCreatePrimaryNavigation(Lmiuix/navigator/Navigator;Landroid/os/Bundle;)V
    .registers 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "NAVIGATOR_FRAGMENT_ID_KEY"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    new-instance v2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 14
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getDefaultContentFragment()Ljava/lang/Class;

    .line 17
    move-result-object v3

    .line 18
    const/16 v4, 0x3e8

    .line 20
    invoke-direct {v2, v4, v3, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f110075

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const v3, 0x7f0800d2

    .line 33
    invoke-virtual {p0, v0, v3, v2}, Lmiuix/navigator/app/NavigatorActivity;->newLabel(Ljava/lang/String;ILmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;

    .line 36
    if-nez p2, :cond_28

    .line 38
    invoke-virtual {p1, v2}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 41
    :cond_28
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_4f

    .line 47
    new-instance p1, Landroid/os/Bundle;

    .line 49
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 52
    const/4 p2, 0x2

    .line 53
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    new-instance p2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 58
    const/16 v0, 0x3ea

    .line 60
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getDefaultContentFragment()Ljava/lang/Class;

    .line 63
    move-result-object v2

    .line 64
    invoke-direct {p2, v0, v2, p1}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 67
    const p1, 0x7f110065

    .line 70
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    const v0, 0x7f0800d0

    .line 77
    invoke-virtual {p0, p1, v0, p2}, Lmiuix/navigator/app/NavigatorActivity;->newLabel(Ljava/lang/String;ILmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;

    .line 80
    :cond_4f
    new-instance p1, Landroid/os/Bundle;

    .line 82
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 85
    const/16 p2, 0x3f8

    .line 87
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    new-instance v0, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 92
    const-class v1, Lcom/android/fileexplorer/fragment/SearchContentFragment;

    .line 94
    invoke-direct {v0, p2, v1, p1}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 97
    const p1, 0x7f11021e

    .line 100
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    const p2, 0x7f080612

    .line 107
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/navigator/app/NavigatorActivity;->newLabel(Ljava/lang/String;ILmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;

    .line 110
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->onDestroy()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->release()V

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/controller/IntentBuilder;->clearTasks()V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->clear()V

    .line 13
    invoke-static {}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->getInstance()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->clear()V

    .line 20
    invoke-static {}, Lcom/android/fileexplorer/util/AdUtil;->isInterAdShow()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_22

    .line 26
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "1.301.17.7"

    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/fileexplorer/advert/AdManagerController;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->handlePrivacyPolicy:Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;

    .line 37
    if-eqz v0, :cond_2a

    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 43
    :cond_2a
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mShortcutRun:Ljava/lang/Runnable;

    .line 45
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 48
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->unRegisterOnAppTagScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mUsbVolume:Ljava/util/List;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "onFailed: load interstitialAd error"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string p2, "FileExplorerTabActivity"

    .line 20
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->setIsInterstitialAdSuccess(Z)V

    .line 31
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mPreIntent:Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewModel:Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    .line 8
    if-eqz v0, :cond_e

    .line 10
    iget-object v0, v0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->newIntent:Landroidx/lifecycle/q;

    .line 12
    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 15
    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mPreIntent:Landroid/content/Intent;

    .line 17
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->handleWidgetIntent(Landroid/content/Intent;)V

    .line 20
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 4
    const/16 v0, 0x72

    .line 6
    if-ne p1, v0, :cond_52

    .line 8
    array-length p1, p2

    .line 9
    const/4 v0, 0x1

    .line 10
    if-lt p1, v0, :cond_52

    .line 12
    array-length p1, p3

    .line 13
    if-ge p1, v0, :cond_f

    .line 15
    goto :goto_52

    .line 16
    :cond_f
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 18
    if-eqz p1, :cond_32

    .line 20
    invoke-static {p3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$7;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$7;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    .line 29
    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/stream/IntStream;->count()J

    .line 36
    move-result-wide v0

    .line 37
    array-length p1, p3

    .line 38
    int-to-long v2, p1

    .line 39
    cmp-long p1, v0, v2

    .line 41
    if-nez p1, :cond_2f

    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V

    .line 51
    :cond_32
    :goto_32
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_52

    .line 57
    const/4 p1, 0x0

    .line 58
    aget-object p2, p2, p1

    .line 60
    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_52

    .line 68
    aget p1, p3, p1

    .line 70
    if-nez p1, :cond_52

    .line 72
    new-instance p1, Landroid/content/Intent;

    .line 74
    const-string p2, "action_open_cloud_drive"

    .line 76
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    nop

    .line 83
    :cond_52
    :goto_52
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AdUtil;->isInterAdShow()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_16

    .line 7
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "1.301.17.7"

    .line 13
    invoke-virtual {v0, v1, p0}, Lcom/fileexplorer/advert/AdManagerController;->addLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    .line 16
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Lcom/fileexplorer/advert/AdManagerController;->loadAd(Ljava/lang/String;)V

    .line 23
    :cond_16
    const-string v0, "onResume: setPrivacySwitch = "

    .line 25
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "FileExplorerTabActivity"

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_45

    .line 63
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->clearCloudData(Landroid/content/Context;)V

    .line 70
    :cond_45
    invoke-super {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onResume()V

    .line 73
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 76
    move-result v0

    .line 77
    invoke-static {v0}, Lcom/android/fileexplorer/util/PermissionUtils;->setPermission(Z)V

    .line 80
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    .line 87
    move-result v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->setNavigationMenu(Z)V

    .line 91
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDataConsumptionSwitch()Z

    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_66

    .line 97
    invoke-static {v1}, Lcom/android/fileexplorer/statistics/Statistics;->onPageStart(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->recordDocInfo()V

    .line 103
    :cond_66
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onStart()V

    .line 4
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onStop()V

    .line 4
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    const-string p1, "FileExplorerTabActivity"

    .line 3
    const-string p2, "load interstitialAd success: "

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->setIsInterstitialAdSuccess(Z)V

    .line 16
    return-void
.end method

.method public refreshAllStatue(IZI)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->refreshAllStatue(IZI)V

    .line 8
    :cond_7
    return-void
.end method

.method public refreshSingleStatus(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDocDataRefreshManager:Lcom/android/fileexplorer/controller/DocDataRefreshManager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/controller/DocDataRefreshManager;->refreshSingleStatus(IZ)V

    .line 8
    :cond_7
    return-void
.end method

.method public release()V
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->release()V

    .line 28
    invoke-static {}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->onDestroy()V

    .line 35
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->dismissDialog()V

    .line 38
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileIconHelper;->release()V

    .line 45
    :try_start_2c
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->unregisterStorageReceiver()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    .line 48
    goto :goto_47

    .line 49
    :catch_30
    move-exception v0

    .line 50
    const-string v2, "unregister fail:"

    .line 52
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    const-string v2, "FileExplorerTabActivity"

    .line 69
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_47
    iput-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mDataConsumptionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mainIdleHandler:Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;

    .line 76
    if-eqz v0, :cond_56

    .line 78
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mainIdleHandler:Lcom/android/fileexplorer/FileExplorerTabActivity$MainIdleHandler;

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 87
    :cond_56
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->clearAvailableStorage()V

    .line 90
    return-void
.end method

.method public restoreIntent()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mPreIntent:Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 6
    return-void
.end method

.method public setNavigationMenu(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    .line 10
    move-result-object v0

    .line 11
    if-eqz p1, :cond_10

    .line 13
    const p1, 0x7f0e0006

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    const p1, 0x7f0e0007

    .line 20
    :goto_13
    invoke-virtual {v0, p1}, Lmiuix/navigator/Navigator;->setNavigationMenu(I)V

    .line 23
    goto :goto_21

    .line 24
    :cond_17
    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    .line 27
    move-result-object p1

    .line 28
    const v0, 0x7f0e0008

    .line 31
    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->setNavigationMenu(I)V

    .line 34
    :goto_21
    return-void
.end method
