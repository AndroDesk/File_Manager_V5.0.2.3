.class public abstract Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;
.super Lmiuix/navigator/app/NavigatorContentFragment;
.source "BaseNavigatorContentFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;
.implements Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;
.implements Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BUNDLE_KEY_ISTOBACKSTACK:Ljava/lang/String; = "bundle_key_istobackstack"

.field public static final BUNDLE_KEY_PAGE_TITLE:Ljava/lang/String; = "bundle_key_page_title"

.field public static final LOAD_DELAY:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "BaseFragment"


# instance fields
.field public mBackToFront:Z

.field public mCurrentState:I

.field public mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

.field public mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public mInited:Z

.field public mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

.field public mNavigationButton:Landroid/view/View;

.field public mNeedRefresh:Z

.field public mPageTitle:Ljava/lang/String;

.field public mRootView:Landroid/view/View;

.field public mSplitView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiuix/navigator/app/NavigatorContentFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mNeedRefresh:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mBackToFront:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mInited:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mCurrentState:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;Lcom/android/fileexplorer/event/OneHopShareEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->onOneHopShareEvent(Lcom/android/fileexplorer/event/OneHopShareEvent;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->lambda$onResume$0()V

    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->getDataBackToFront()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mBackToFront:Z

    return-void
.end method

.method private onOneHopShareEvent(Lcom/android/fileexplorer/event/OneHopShareEvent;)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOneHopShareEvent "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_a4

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->isSupportOneHopShare()Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_a4

    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->getOneHopShareData()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_79

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_79

    :cond_24
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x12c

    const/4 v2, 0x1

    if-le v0, v1, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHopShareData is more than 300"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f11004f

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/event/OneHopShareEvent;->setSelectData(Z)V

    return-void

    :cond_44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOneHopShare data = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/event/OneHopShareEvent;->setSelectData(Z)V

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/fileexplorer/event/OneHopShareEvent;->btMac:Ljava/lang/String;

    iget v4, p1, Lcom/android/fileexplorer/event/OneHopShareEvent;->deviceType:I

    iget v6, p1, Lcom/android/fileexplorer/event/OneHopShareEvent;->oneHopVersion:I

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->sendFileToDeviceByBtMac(Landroid/app/Activity;Ljava/lang/String;ILjava/util/ArrayList;I)I

    goto :goto_a4

    :cond_79
    :goto_79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneHopShareData is empty"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_86} :catch_87

    return-void

    :catch_87
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHopShareData error:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method private registerOneShareEvent()V
    .registers 3

    const-class v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->getAppCompatActivity(Ljava/lang/String;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v1, Landroidx/lifecycle/c0;

    invoke-direct {v1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->oneHopShareLiveData:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$1;-><init>(Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    return-void
.end method


# virtual methods
.method public checkIfShowFabMenuLayout(Z)V
    .registers 2

    return-void
.end method

.method public createFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/FileHelper;->getMiSharePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public exitActionMode()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getBundleData(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataBackToFront()V
    .registers 1

    return-void
.end method

.method public getFileTransferDestType()I
    .registers 2

    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_FIXED_MIRROR:I

    return v0
.end method

.method public abstract getLayoutRes()I
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getOneHopShareData()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_75

    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getOneHopShareData size:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4a
    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v2, :cond_4a

    iget-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v3, :cond_4a

    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_65

    goto :goto_4a

    :cond_65
    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_74
    return-object v1

    :cond_75
    :goto_75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpanCount()I
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/fileexplorer/widget/helper/PadWidgetHelper;->isPadWidgetActivity()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isLandFullLayout()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isLandHalfLayout()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x6

    return v0

    :cond_22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDeviceAndLandscapeDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFullLayout()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x5

    return v0

    :cond_34
    return v1
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public initDragEvent(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_a

    const-string p1, "BaseFragment"

    const-string p2, "targetView is null"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$2;-><init>(Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public initNavButton(I)V
    .registers 6

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isShowNavLayout(I)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_8f

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->showNavButton()Z

    move-result p1

    if-eqz p1, :cond_8f

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_62

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f032cfc

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mNavigationButton:Landroid/view/View;

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f032e58

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mSplitView:Landroid/view/View;

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f032d3f

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mSplitView:Landroid/view/View;

    if-eqz v3, :cond_62

    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5f

    move v0, v2

    :cond_5f
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_62
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mNavigationButton:Landroid/view/View;

    if-nez v0, :cond_7f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042db7

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mNavigationButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    :cond_7f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mNavigationButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mNavigationButton:Landroid/view/View;

    new-instance v0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$3;-><init>(Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9d

    :cond_8f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mNavigationButton:Landroid/view/View;

    if-eqz p1, :cond_96

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_96
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mSplitView:Landroid/view/View;

    if-eqz p1, :cond_9d

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method public abstract initView(Landroid/view/View;)V
.end method

.method public interceptBackPress()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEditMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isShowFab()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportOneHopShare()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeChange(Z)V
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->checkIfShowFabMenuLayout(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-direct {p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    return-void
.end method

.method public onBack()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->exitActionMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "bundle_key_istobackstack"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()Z

    move-result v0

    if-eqz v0, :cond_2b

    return v1

    :cond_2b
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->interceptBackPress()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "current Fragment: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "main1"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bundle_key_page_title"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mPageTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->getBundleData(Landroid/os/Bundle;)V

    :cond_32
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->registerOneShareEvent()V

    return-void
.end method

.method public onDeActiveEmptyView()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->deActiveState()V

    :cond_7
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mBackToFront:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mNeedRefresh:Z

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->onDestroy()V

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroy()V

    :cond_1d
    invoke-static {}, Lcom/android/fileexplorer/controller/IntentBuilder;->clearTasks()V

    return-void
.end method

.method public onDoubleTap()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->setActionBarTitle()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->getLayoutRes()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->initView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onKeyShortcut(I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_22

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p1

    if-nez p1, :cond_f

    return v1

    :cond_f
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->getFileTransferDestType()I

    move-result v3

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handlePaste(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    move-result p1

    return p1

    :cond_22
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_30

    const-string p1, "BaseFragment"

    const-string v0, "onKeyShortcut not in ActionMode, return."

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_30
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p1

    if-eqz p1, :cond_5b

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->hasDir(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const p1, 0x7f11013a

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->exitActionMode()Z

    return v1

    :cond_4e
    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->createClipData(Ljava/util/List;)Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_5b

    invoke-virtual {p1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->exitActionMode()Z

    return v0

    :cond_5b
    return v1
.end method

.method public onNewFolder()V
    .registers 1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->onBack()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->onPause()V

    :cond_a
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    iput p2, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mCurrentState:I

    const-string p1, "onResponsiveLayout: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mCurrentState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseFragment"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mBackToFront:Z

    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->onResume()V

    :cond_a
    const-string v0, "onResume: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mBackToFront:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mBackToFront:Z

    if-eqz v0, :cond_2d

    new-instance v0, Landroidx/activity/b;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    :cond_2d
    return-void
.end method

.method public onSearch(I)V
    .registers 2

    return-void
.end method

.method public onShowSortMenu(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    const-string v0, "BaseFragment"

    const-string v1, "onStop: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mBackToFront:Z

    return-void
.end method

.method public onViewTypeChange(Landroid/widget/ImageView;)V
    .registers 2

    return-void
.end method

.method public onViewTypeChange(Landroid/widget/ImageView;II)V
    .registers 4

    return-void
.end method

.method public processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 7

    const-string v0, "Drag_BaseFragment"

    const-string v1, "processDrop"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isExceptDevices()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->dragInner(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    :cond_19
    invoke-static {}, Lcom/android/fileexplorer/model/ViewDragManager;->getInstance()Lcom/android/fileexplorer/model/ViewDragManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/android/fileexplorer/model/ViewDragManager;->requestDragPermission(Landroid/app/Activity;Landroid/view/DragEvent;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string p1, "BaseFragment"

    const-string p2, "processDrop no permission, return false."

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2f
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->getFileTransferDestType()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {p1, p2, v0, v2, v3}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handleDrop(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    move-result p1

    if-nez p1, :cond_41

    return v1

    :cond_41
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->exitActionMode()Z

    return v3
.end method

.method public processStartDrag()V
    .registers 3

    const-string v0, "BaseFragment"

    const-string v1, "processStartDrag"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reverseEmptyViewState()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->toggleActive()V

    :cond_7
    return-void
.end method

.method public setActionBarTitle()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mPageTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mPageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_17
    return-void
.end method

.method public setEmptyViewHint(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/EmptyView;->setHinText(I)V

    :cond_7
    return-void
.end method

.method public showNavButton()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
