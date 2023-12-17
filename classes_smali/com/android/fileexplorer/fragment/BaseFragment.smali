.class public abstract Lcom/android/fileexplorer/fragment/BaseFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;
.implements Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;
.implements Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;
.implements Lmiuix/navigator/NavigatorFragmentListener;
.implements Lcom/android/fileexplorer/fragment/callback/IActionListener;


# static fields
.field public static final BUNDLE_KEY_ISTOBACKSTACK:Ljava/lang/String; = "bundle_key_istobackstack"

.field public static final BUNDLE_KEY_NO_NEED_ACTIONBAR:Ljava/lang/String; = "bundle_key_no_need_actionbar"

.field public static final BUNDLE_KEY_PAGE_TITLE:Ljava/lang/String; = "bundle_key_page_title"

.field public static final LOAD_DELAY:J = 0x32L

.field public static final PAGE_CATEGORY:Ljava/lang/String; = "page_category"

.field public static final PAGE_TYPE:Ljava/lang/String; = "page_type"

.field private static final TAG:Ljava/lang/String; = "BaseFragment"


# instance fields
.field public mBackToFront:Z

.field private mBackToFrontRunable:Ljava/lang/Runnable;

.field private mCopySideTime:J

.field public mCurrentState:I

.field private mDisplaySettingDialogFragment:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

.field public mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

.field public mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public mInited:Z

.field public mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

.field public mNavicatBarHeight:I

.field public mNavigationButton:Landroid/view/View;

.field public mNeedRefresh:Z

.field public mPageTitle:Ljava/lang/String;

.field public mRootView:Landroid/view/View;

.field public mSplitView:Landroid/view/View;

.field private navigationBtnVisible:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mNeedRefresh:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFront:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mInited:Z

    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mCurrentState:I

    .line 14
    iput v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->navigationBtnVisible:I

    .line 16
    new-instance v0, Lcom/android/fileexplorer/fragment/BaseFragment$1;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/BaseFragment$1;-><init>(Lcom/android/fileexplorer/fragment/BaseFragment;)V

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFrontRunable:Ljava/lang/Runnable;

    .line 23
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/event/OneHopShareEvent;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOneHopShareEvent(Lcom/android/fileexplorer/event/OneHopShareEvent;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/BaseFragment;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mCopySideTime:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/fragment/BaseFragment;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mCopySideTime:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/BaseFragment;Landroid/view/KeyEvent;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOneCopyShareEvent(Landroid/view/KeyEvent;)V

    .line 4
    return-void
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;)Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mDisplaySettingDialogFragment:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    .line 3
    return-object p1
.end method

.method private hideDialogFragment()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "display_setting_dialog"

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_15

    .line 13
    instance-of v1, v0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    .line 15
    if-eqz v1, :cond_15

    .line 17
    check-cast v0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 22
    :cond_15
    return-void
.end method

.method private onOneCopyShareEvent(Landroid/view/KeyEvent;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "onOneCopyShareEvent "

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    if-eqz p1, :cond_23

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isSupportOneCopyShare()Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_16

    .line 22
    goto :goto_23

    .line 23
    :cond_16
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getOneCopyShareData()Lcom/android/fileexplorer/model/FileInfo;

    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_23

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Util;->copySideFile(Lcom/android/fileexplorer/model/FileInfo;Landroid/content/Context;)V

    .line 36
    :cond_23
    :goto_23
    return-void
.end method

.method private onOneHopShareEvent(Lcom/android/fileexplorer/event/OneHopShareEvent;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "onOneHopShareEvent "

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    if-eqz p1, :cond_a4

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isSupportOneHopShare()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_17

    .line 22
    goto/16 :goto_a4

    .line 24
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getOneHopShareData()Ljava/util/ArrayList;

    .line 27
    move-result-object v5

    .line 28
    if-eqz v5, :cond_79

    .line 30
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_24

    .line 36
    goto :goto_79

    .line 37
    :cond_24
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v0

    .line 41
    const/16 v1, 0x12c

    .line 43
    const/4 v2, 0x1

    .line 44
    if-le v0, v1, :cond_44

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    const-string v1, "OneHopShareData is more than 300"

    .line 56
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const v0, 0x7f11004f

    .line 62
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 65
    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/event/OneHopShareEvent;->setSelectData(Z)V

    .line 68
    return-void

    .line 69
    :cond_44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v3, "onOneHopShare data = "

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 90
    move-result v3

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/event/OneHopShareEvent;->setSelectData(Z)V

    .line 104
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 111
    move-result-object v2

    .line 112
    iget-object v3, p1, Lcom/android/fileexplorer/event/OneHopShareEvent;->btMac:Ljava/lang/String;

    .line 114
    iget v4, p1, Lcom/android/fileexplorer/event/OneHopShareEvent;->deviceType:I

    .line 116
    iget v6, p1, Lcom/android/fileexplorer/event/OneHopShareEvent;->oneHopVersion:I

    .line 118
    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->sendFileToDeviceByBtMac(Landroid/app/Activity;Ljava/lang/String;ILjava/util/ArrayList;I)I

    .line 121
    goto :goto_a4

    .line 122
    :cond_79
    :goto_79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    const-string v0, "OneHopShareData is empty"

    .line 132
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_86} :catch_87

    .line 135
    return-void

    .line 136
    :catch_87
    move-exception p1

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    const-string v1, "OneHopShareData error:"

    .line 147
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_a4
    :goto_a4
    return-void
.end method

.method private registerCopyShareEvent()V
    .registers 4

    .line 1
    const-class v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->getAppCompatActivity(Ljava/lang/String;)Lmiuix/appcompat/app/AppCompatActivity;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 13
    const-string v1, "registerCopyShareEvent: "

    .line 15
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, "BaseFragment"

    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    if-nez v0, :cond_25

    .line 37
    return-void

    .line 38
    :cond_25
    new-instance v1, Landroidx/lifecycle/c0;

    .line 40
    invoke-direct {v1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 43
    const-class v0, Lcom/android/fileexplorer/viewmodel/EventViewModel;

    .line 45
    invoke-virtual {v1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/fileexplorer/viewmodel/EventViewModel;

    .line 51
    invoke-virtual {v0}, Lcom/android/fileexplorer/viewmodel/EventViewModel;->getEvent()Landroidx/lifecycle/q;

    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lcom/android/fileexplorer/fragment/BaseFragment$3;

    .line 57
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/BaseFragment$3;-><init>(Lcom/android/fileexplorer/fragment/BaseFragment;)V

    .line 60
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 63
    return-void
.end method

.method private registerOneShareEvent()V
    .registers 3

    .line 1
    const-class v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->getAppCompatActivity(Ljava/lang/String;)Lmiuix/appcompat/app/AppCompatActivity;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 13
    if-nez v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    new-instance v1, Landroidx/lifecycle/c0;

    .line 18
    invoke-direct {v1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 21
    const-class v0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    .line 23
    invoke-virtual {v1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    .line 29
    iget-object v0, v0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->oneHopShareLiveData:Landroidx/lifecycle/q;

    .line 31
    new-instance v1, Lcom/android/fileexplorer/fragment/BaseFragment$2;

    .line 33
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/BaseFragment$2;-><init>(Lcom/android/fileexplorer/fragment/BaseFragment;)V

    .line 36
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 39
    return-void
.end method

.method private setButtonMargin(Landroid/view/View;I)V
    .registers 9

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const-string v0, "BaseFragment"

    .line 6
    const-string v1, "setMargin: 开始"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v1, :cond_19

    .line 24
    move v0, v2

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    const/4 v3, -0x1

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v4

    .line 34
    const v5, 0x7f070072

    .line 37
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 40
    move-result v4

    .line 41
    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    if-eqz v0, :cond_2f

    .line 46
    sub-int/2addr p2, v2

    .line 47
    goto :goto_3a

    .line 48
    :cond_2f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object p2

    .line 52
    const v0, 0x7f070095

    .line 55
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 58
    move-result p2

    .line 59
    :goto_3a
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 61
    const/16 p2, 0x50

    .line 63
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object p2

    .line 72
    const v0, 0x7f06003c

    .line 75
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 78
    move-result p2

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public checkIfShowFabMenuLayout(Z)V
    .registers 2

    return-void
.end method

.method public createFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/FileHelper;->getMiSharePath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public exitActionMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public exitActionModeNotTimeInterval()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionModeNotTimeInterval()V

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getBundleData(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public getButtonInsertView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentInsetView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFabPreference()Lcom/android/fileexplorer/controller/FabPreference;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCurrentCategoryKey()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_c

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_c
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getDataBackToFront()V
    .registers 1

    return-void
.end method

.method public getDisplayModeIcon()I
    .registers 2

    const v0, 0x7f0802aa

    return v0
.end method

.method public getFileTransferDestType()I
    .registers 2

    .line 1
    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_FIXED_MIRROR:I

    .line 3
    return v0
.end method

.method public abstract getLayoutRes()I
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getOneCopyShareData()Lcom/android/fileexplorer/model/FileInfo;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_60

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_60

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_60

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 22
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_20

    .line 32
    goto :goto_60

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 35
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    const-string v3, "getOneHopShareData size:"

    .line 49
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result v2

    .line 71
    const/4 v3, 0x1

    .line 72
    if-ne v2, v3, :cond_60

    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 81
    if-eqz v0, :cond_60

    .line 83
    iget-boolean v2, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 85
    if-nez v2, :cond_60

    .line 87
    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 89
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_5f

    .line 95
    goto :goto_60

    .line 96
    :cond_5f
    return-object v0

    .line 97
    :cond_60
    :goto_60
    return-object v1
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    if-eqz v0, :cond_75

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_75

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_75

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 21
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1f

    .line 31
    goto :goto_75

    .line 32
    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 34
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    const-string v2, "getOneHopShareData size:"

    .line 48
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    .line 68
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v0

    .line 75
    :cond_4a
    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_74

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 87
    if-eqz v2, :cond_4a

    .line 89
    iget-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 91
    if-nez v3, :cond_4a

    .line 93
    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 95
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_65

    .line 101
    goto :goto_4a

    .line 102
    :cond_65
    new-instance v3, Ljava/io/File;

    .line 104
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 106
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {v3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    goto :goto_4a

    .line 117
    :cond_74
    return-object v1

    .line 118
    :cond_75
    :goto_75
    const/4 v0, 0x0

    .line 119
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpanCount()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getWindowWidth()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x140

    .line 7
    if-gt v0, v1, :cond_a

    .line 9
    const/4 v0, 0x3

    .line 10
    return v0

    .line 11
    :cond_a
    const/16 v1, 0x29e

    .line 13
    if-le v0, v1, :cond_39

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isNavigatorActivity()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_21

    .line 21
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 31
    if-ne v1, v2, :cond_21

    .line 33
    goto :goto_39

    .line 34
    :cond_21
    const/16 v1, 0x3c0

    .line 36
    if-ge v0, v1, :cond_27

    .line 38
    const/4 v0, 0x6

    .line 39
    return v0

    .line 40
    :cond_27
    const/16 v1, 0x4b0

    .line 42
    if-ge v0, v1, :cond_2d

    .line 44
    const/4 v0, 0x7

    .line 45
    return v0

    .line 46
    :cond_2d
    const/16 v1, 0x8

    .line 48
    const/16 v2, 0x578

    .line 50
    if-ge v0, v2, :cond_34

    .line 52
    return v1

    .line 53
    :cond_34
    sub-int/2addr v0, v2

    .line 54
    div-int/lit16 v0, v0, 0xc8

    .line 56
    add-int/2addr v0, v1

    .line 57
    return v0

    .line 58
    :cond_39
    :goto_39
    const/4 v0, 0x4

    .line 59
    return v0
.end method

.method public getWindowWidth()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 15
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/util/DisplayUtil;->px2dp(F)I

    .line 21
    move-result v0

    .line 22
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_23

    .line 28
    const-string v1, "BaseFragment"

    .line 30
    const-string v2, "BaseFragment getWindowWidth: Navigator.get(this) == null"

    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return v0

    .line 36
    :cond_23
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 46
    if-ne v1, v2, :cond_3b

    .line 48
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->isNavigationOpen()Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3b

    .line 58
    add-int/lit16 v0, v0, -0xf0

    .line 60
    :cond_3b
    return v0
.end method

.method public initDragEvent(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .line 1
    if-nez p1, :cond_a

    .line 3
    const-string p1, "BaseFragment"

    .line 5
    const-string p2, "targetView is null"

    .line 7
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Lcom/android/fileexplorer/fragment/BaseFragment$4;

    .line 13
    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/fragment/BaseFragment$4;-><init>(Lcom/android/fileexplorer/fragment/BaseFragment;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 19
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

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

.method public isNavigatorActivity()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lmiuix/navigator/app/NavigatorActivity;

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public isResponsiveEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isShowFab()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportOneCopyShare()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportOneHopShare()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeChange(Z)V
    .registers 2

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->checkIfShowFabMenuLayout(Z)V

    .line 6
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 12
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 15
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 17
    return-void
.end method

.method public onBack()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2b

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 18
    move-result-object v0

    .line 19
    const-string v2, "bundle_key_istobackstack"

    .line 21
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2b

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2b

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2b

    .line 43
    return v1

    .line 44
    :cond_2b
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->interceptBackPress()Z

    .line 47
    move-result v0

    .line 48
    return v0
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getContentInsetView()Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1a

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 21
    move-result v3

    .line 22
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 24
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getButtonInsertView()Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_25

    .line 33
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 35
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->setButtonMargin(Landroid/view/View;I)V

    .line 38
    :cond_25
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    if-eqz p1, :cond_8

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->hideDialogFragment()V

    .line 9
    :cond_8
    const-string p1, "current Fragment: "

    .line 11
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const-string v0, "main1"

    .line 32
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_4d

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 44
    move-result-object p1

    .line 45
    const-string v0, "bundle_key_page_title"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mPageTitle:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->getBundleData(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x0

    .line 57
    const-string v1, "bundle_key_no_need_actionbar"

    .line 59
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_47

    .line 65
    const p1, 0x7f12011e

    .line 68
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 71
    goto :goto_4d

    .line 72
    :cond_47
    const p1, 0x7f12011f

    .line 75
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 78
    :cond_4d
    :goto_4d
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->registerOneShareEvent()V

    .line 81
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 83
    if-eqz p1, :cond_5d

    .line 85
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5d

    .line 91
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->registerCopyShareEvent()V

    .line 94
    :cond_5d
    return-void
.end method

.method public onDeActiveEmptyView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->deActiveState()V

    .line 8
    :cond_7
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 4
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getScrollView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->unregisterCoordinateScrollView(Landroid/view/View;)V

    .line 10
    :cond_9
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFront:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mNeedRefresh:Z

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->onDestroy()V

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 27
    if-eqz v0, :cond_1f

    .line 29
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    .line 32
    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 34
    if-eqz v0, :cond_26

    .line 36
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroy()V

    .line 39
    :cond_26
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFrontRunable:Ljava/lang/Runnable;

    .line 41
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 44
    invoke-static {}, Lcom/android/fileexplorer/controller/IntentBuilder;->clearTasks()V

    .line 47
    return-void
.end method

.method public onDirectoryDisplayChanged(Z)V
    .registers 2

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->setHideEmptyOrSysDirs(Z)V

    .line 6
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

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->setActionBarTitle()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getLayoutRes()I

    .line 7
    move-result p3

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->initView(Landroid/view/View;)V

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 20
    return-object p1
.end method

.method public onKeyShortcut(I)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_22

    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_f

    .line 15
    return v1

    .line 16
    :cond_f
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 26
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getFileTransferDestType()I

    .line 29
    move-result v3

    .line 30
    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handlePaste(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_22
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_30

    .line 41
    const-string p1, "BaseFragment"

    .line 43
    const-string v0, "onKeyShortcut not in ActionMode, return."

    .line 45
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return v1

    .line 49
    :cond_30
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_5b

    .line 55
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 57
    if-eqz v2, :cond_5b

    .line 59
    invoke-virtual {v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->hasDir(Ljava/util/ArrayList;)Z

    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_4e

    .line 69
    const p1, 0x7f11013a

    .line 72
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 78
    return v1

    .line 79
    :cond_4e
    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->createClipData(Ljava/util/List;)Landroid/content/ClipData;

    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_5b

    .line 85
    invoke-virtual {p1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 91
    return v0

    .line 92
    :cond_5b
    return v1
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->navigationBtnVisible:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 2
    iput p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->navigationBtnVisible:I

    goto :goto_15

    :cond_8
    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    .line 3
    iput p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->navigationBtnVisible:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 4
    :goto_12
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public onNavigationVisibilityChanged(Z)V
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigatorConfigChanged()V

    return-void
.end method

.method public onNavigatorConfigChanged()V
    .registers 1

    return-void
.end method

.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigatorConfigChanged()V

    .line 4
    return-void
.end method

.method public onNewFolder()V
    .registers 1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 8
    if-eq v0, v1, :cond_e

    .line 10
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->onPause()V

    .line 11
    :cond_a
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 8
    iput p2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mCurrentState:I

    const-string p1, "onResponsiveLayout: "

    .line 9
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 10
    iget p2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mCurrentState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseFragment"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFront:Z

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/Fragment;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    const-string v0, "onResponsiveLayout: "

    .line 2
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget v1, p2, Lmiuix/responsive/map/ScreenSpec;->screenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget p2, p2, Lmiuix/responsive/map/ScreenSpec;->screenMode:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->onResume()V

    .line 11
    :cond_a
    const-string v0, "onResume: "

    .line 13
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFront:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "BaseFragment"

    .line 28
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFront:Z

    .line 33
    if-eqz v0, :cond_29

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFrontRunable:Ljava/lang/Runnable;

    .line 37
    const-wide/16 v1, 0x32

    .line 39
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 42
    :cond_29
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

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCurrentFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v2

    .line 14
    if-eq v1, v2, :cond_1d

    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result p1

    .line 20
    iput p1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCurrentCategoryKey()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1, v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 29
    return-void

    .line 30
    :cond_1d
    const-string p1, "BaseFragment"

    .line 32
    const-string v0, "do not need change sort method"

    .line 34
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCurrentFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-boolean v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 10
    if-eq v1, p1, :cond_15

    .line 12
    iput-boolean p1, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 14
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCurrentCategoryKey()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1, v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 21
    return-void

    .line 22
    :cond_15
    const-string p1, "BaseFragment"

    .line 24
    const-string v0, "do not need change sort method"

    .line 26
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    .line 4
    const-string v0, "BaseFragment"

    .line 6
    const-string v1, "onStop: "

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFront:Z

    .line 14
    return-void
.end method

.method public onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getScrollView()Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_c

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 13
    :cond_c
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setCorrectNestedScrollMotionEventEnabled(Z)V

    .line 17
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCurrentFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 10
    if-eq v1, p1, :cond_15

    .line 12
    iput p1, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 14
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCurrentCategoryKey()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1, v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 21
    goto :goto_1c

    .line 22
    :cond_15
    const-string p1, "BaseFragment"

    .line 24
    const-string v0, "do not need change view mode"

    .line 26
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_1c
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->setDisplayModeIcon()V

    .line 32
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

    .line 1
    const-string v0, "Drag_BaseFragment"

    .line 3
    const-string v1, "processDrop"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isExceptDevices()Ljava/lang/Boolean;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_19

    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->dragInner(Landroid/view/DragEvent;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    invoke-static {}, Lcom/android/fileexplorer/model/ViewDragManager;->getInstance()Lcom/android/fileexplorer/model/ViewDragManager;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2, p1}, Lcom/android/fileexplorer/model/ViewDragManager;->requestDragPermission(Landroid/app/Activity;Landroid/view/DragEvent;)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2f

    .line 40
    const-string p1, "BaseFragment"

    .line 42
    const-string p2, "processDrop no permission, return false."

    .line 44
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return v1

    .line 48
    :cond_2f
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 54
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getFileTransferDestType()I

    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x1

    .line 59
    invoke-static {p1, p2, v0, v2, v3}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handleDrop(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_41

    .line 65
    return v1

    .line 66
    :cond_41
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 69
    return v3
.end method

.method public processStartDrag()V
    .registers 3

    .line 1
    const-string v0, "BaseFragment"

    .line 3
    const-string v1, "processStartDrag"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public requestDispatchContentInset()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->requestDispatchContentInset()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public reverseEmptyViewState()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->toggleActive()V

    .line 8
    :cond_7
    return-void
.end method

.method public setActionBarTitle()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mPageTitle:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_17

    .line 15
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mPageTitle:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    :cond_17
    return-void
.end method

.method public setDisplayModeIcon()V
    .registers 1

    return-void
.end method

.method public setEmptyViewHint(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/EmptyView;->setHinText(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public showDisplaySettingFragment(ILjava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    .line 3
    new-instance v1, Lcom/android/fileexplorer/fragment/BaseFragment$5;

    .line 5
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/BaseFragment$5;-><init>(Lcom/android/fileexplorer/fragment/BaseFragment;)V

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;-><init>(Lcom/android/fileexplorer/fragment/callback/IActionListener;Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$DialogListener;)V

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mDisplaySettingDialogFragment:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    .line 13
    new-instance v0, Landroid/os/Bundle;

    .line 15
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    const-string v1, "page_type"

    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    const-string p1, "page_category"

    .line 25
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mDisplaySettingDialogFragment:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    .line 30
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mDisplaySettingDialogFragment:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 38
    move-result-object p2

    .line 39
    const-string v0, "display_setting_dialog"

    .line 41
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public showNavButton()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
