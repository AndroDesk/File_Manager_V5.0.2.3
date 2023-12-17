.class public Lcom/android/fileexplorer/activity/PrivateFolderActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "PrivateFolderActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;
.implements Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;
.implements Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;
.implements Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;
.implements Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;
.implements Lcom/android/fileexplorer/fragment/callback/IActionListener;


# static fields
.field private static final CATEGROY_KEY:Ljava/lang/String;

.field private static final KEY_ENABLE_PRIVATE_FOLDER:Ljava/lang/String; = "enable_fileexplorer_private_folder"


# instance fields
.field private ImmersionMenuEnabled:Z

.field private final TAG:Ljava/lang/String;

.field public gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field private isConfigChange:Z

.field private isUnlocked:Z

.field private mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mAddPrivate:Landroid/widget/Button;

.field private mAddPrivateFileView:Landroid/view/View;

.field private mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

.field private mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

.field private mFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation
.end field

.field private mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field private mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

.field private mIsFirstEnter:Z

.field private mIsProgressing:Z

.field private mLogo:Landroid/widget/ImageView;

.field private mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

.field private mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

.field private mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

.field private mRefreshSdcardFileTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mRequestingSetPwd:Z

.field private mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mSortTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mUnlocked:Z

.field private mUpdateTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private navigationBar:Landroid/widget/LinearLayout;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->CATEGROY_KEY:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    const-string v0, "PrivateFolderActivity"

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mIsFirstEnter:Z

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->ImmersionMenuEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isUnlocked:Z

    .line 23
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/view/EmptyView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->updateAdapter()V

    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1202(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mIsProgressing:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isEditMode()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/activity/PrivateFolderActivity;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->handlerClick(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->showLoadingView(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Landroid/util/Pair;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->checkIfRequestSD()Landroid/util/Pair;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->writeSettingsIfNeed(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method private checkIfRequestSD()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->isAndroidPAndLater()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getSDStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    return-object v1

    .line 20
    :cond_13
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->noSDWritePermission(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1e

    .line 30
    return-object v1

    .line 31
    :cond_1e
    new-instance v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    .line 33
    const v2, 0x7f0a006f

    .line 36
    invoke-direct {v0, v2}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    .line 39
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v0, p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V

    .line 46
    new-instance v0, Landroid/util/Pair;

    .line 48
    const/16 v2, 0x11

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    return-object v0
.end method

.method private exitEditMode()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

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

.method private exitEditModeNotTimeInterval()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

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

.method public static synthetic g(Lcom/android/fileexplorer/activity/PrivateFolderActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->lambda$onShowSortMenu$0(I)V

    return-void
.end method

.method private getColumnType()I
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 17
    return v0
.end method

.method private getCurrentPath()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-string v0, ""

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 12
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    return-object v0
.end method

.method private handleSetPwd(I)V
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_a

    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRequestingSetPwd:Z

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 14
    :goto_d
    return-void
.end method

.method private handlerClick(I)V
    .registers 7

    .line 1
    const-string v0, "PrivateFolderActivity"

    .line 3
    if-ltz p1, :cond_82

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    if-lt p1, v1, :cond_e

    .line 13
    goto/16 :goto_82

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 23
    if-eqz v1, :cond_6d

    .line 25
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_23

    .line 35
    goto :goto_6d

    .line 36
    :cond_23
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_56

    .line 42
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 60
    new-instance v2, Lcom/android/fileexplorer/model/PathSegment;

    .line 62
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_4f

    .line 76
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    :cond_4f
    invoke-direct {v2, v3, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 86
    goto :goto_6c

    .line 87
    :cond_56
    new-instance v0, Ljava/io/File;

    .line 89
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_6c

    .line 102
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 104
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 106
    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->operationOpenFile(Lcom/android/fileexplorer/activity/BaseActivity;Ljava/util/List;I)V

    .line 109
    :cond_6c
    :goto_6c
    return-void

    .line 110
    :cond_6d
    :goto_6d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const-string v2, "file does not exist on position:"

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 131
    :cond_82
    :goto_82
    const-string p1, "position invalid, return"

    .line 133
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private hasAppLock()Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "security"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "miui.security.SecurityManager"

    .line 10
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "isAccessControlActived"

    .line 16
    const/4 v4, 0x1

    .line 17
    new-array v5, v4, [Ljava/lang/Class;

    .line 19
    const-class v6, Landroid/content/Context;

    .line 21
    aput-object v6, v5, v0

    .line 23
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    move-result-object v3

    .line 27
    new-array v5, v4, [Ljava/lang/Object;

    .line 29
    aput-object p0, v5, v0

    .line 31
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Boolean;

    .line 37
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_53

    .line 43
    const-string v3, "getApplicationAccessControlEnabled"

    .line 45
    new-array v5, v4, [Ljava/lang/Class;

    .line 47
    const-class v6, Ljava/lang/String;

    .line 49
    aput-object v6, v5, v0

    .line 51
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    move-result-object v2

    .line 55
    new-array v3, v4, [Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    aput-object v4, v3, v0

    .line 63
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/Boolean;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    move-result v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_49

    .line 73
    return v0

    .line 74
    :catch_49
    move-exception v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    const-string v2, "PrivateFolderActivity"

    .line 81
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_53
    return v0
.end method

.method private hasPasteFileInfos()Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_36

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->getPasteFileInfos()Ljava/util/ArrayList;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_36

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_34

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 38
    if-eqz v2, :cond_19

    .line 40
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 42
    if-eqz v2, :cond_19

    .line 44
    const-string v3, "smb://"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_19

    .line 52
    return v1

    .line 53
    :cond_34
    const/4 v0, 0x1

    .line 54
    return v0

    .line 55
    :cond_36
    return v1
.end method

.method private hasPastePrivateFiles()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPastePrivateFiles()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private initFabMenuLayout()V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onViewModeChanged(I)V

    .line 20
    return-void
.end method

.method private initRecyclerView()V
    .registers 4

    .line 1
    const v0, 0x102000a

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 12
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0d0068

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    const-string v2, "zh"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_42

    .line 52
    const v1, 0x7f0a0244

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/ImageView;

    .line 61
    const v2, 0x7f080634

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    :cond_42
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->isSafeBoxSupport()Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_52

    .line 73
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 75
    new-instance v2, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;

    .line 77
    invoke-direct {v2, v0}, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;-><init>(Landroid/view/View;)V

    .line 80
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 83
    :cond_52
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    .line 85
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 87
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;-><init>(Ljava/util/List;)V

    .line 90
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    .line 98
    new-instance v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;

    .line 100
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 106
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    .line 108
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 110
    const/16 v2, 0xa

    .line 112
    invoke-direct {v0, p0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 115
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    .line 117
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    .line 119
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    .line 122
    return-void
.end method

.method private initView()V
    .registers 3

    .line 1
    const v0, 0x7f0a03d2

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 12
    const v0, 0x7f0a036a

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 23
    const v0, 0x7f0a0163

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    .line 32
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 34
    const v0, 0x7f0a0235

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mAddPrivateFileView:Landroid/view/View;

    .line 43
    const v0, 0x7f0a0085

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/Button;

    .line 52
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mAddPrivate:Landroid/widget/Button;

    .line 54
    const v0, 0x7f0a0244

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/ImageView;

    .line 63
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mLogo:Landroid/widget/ImageView;

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    const-string v1, "zh"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5c

    .line 85
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mLogo:Landroid/widget/ImageView;

    .line 87
    const v1, 0x7f080634

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    :cond_5c
    const v0, 0x7f0a02ca

    .line 96
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/LinearLayout;

    .line 102
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->navigationBar:Landroid/widget/LinearLayout;

    .line 104
    const v0, 0x7f0a0357

    .line 107
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    .line 113
    new-instance v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$3;

    .line 115
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$3;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    .line 118
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    .line 121
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mAddPrivate:Landroid/widget/Button;

    .line 123
    new-instance v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$4;

    .line 125
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$4;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->initRecyclerView()V

    .line 134
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->initFabMenuLayout()V

    .line 137
    return-void
.end method

.method private isEditMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

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

.method private isRootPath()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1a

    .line 17
    const-string v2, "/private"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v1, 0x0

    .line 27
    :cond_1a
    :goto_1a
    return v1
.end method

.method private synthetic lambda$onShowSortMenu$0(I)V
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 9
    return-void
.end method

.method public static launchThisActivity(Landroid/app/Activity;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-class v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    return-void
.end method

.method private onSortChanged(IZ)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 14
    move-result-object v1

    .line 15
    iput p1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 17
    iput-boolean p2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 19
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->sortCurrentList()V

    .line 25
    return-void
.end method

.method private runPrivateFolderLoaderTask()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRefreshSdcardFileTask:Landroid/os/AsyncTask;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;

    .line 12
    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Ljava/lang/String;)V

    .line 15
    iput-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRefreshSdcardFileTask:Landroid/os/AsyncTask;

    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v0, v0, [Ljava/lang/Void;

    .line 20
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    return-void
.end method

.method private setFabMenuLayoutVisibility(Z)V
    .registers 2

    return-void
.end method

.method private setListGridMode(Landroid/widget/ImageView;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 5
    if-nez v0, :cond_d

    .line 7
    const v0, 0x7f08022e

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    goto :goto_13

    .line 14
    :cond_d
    const v0, 0x7f08022b

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    :goto_13
    new-instance v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$10;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$10;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method

.method private showEmptyView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v0, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    .line 18
    move-result v3

    .line 19
    xor-int/lit8 v3, v3, 0x1

    .line 21
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/view/EmptyView;->showHintText(Z)V

    .line 24
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 26
    const/16 v3, 0x8

    .line 28
    if-eqz v0, :cond_1f

    .line 30
    move v4, v3

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v4, v2

    .line 33
    :goto_20
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 38
    if-eqz v0, :cond_29

    .line 40
    move v4, v2

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v4, v3

    .line 43
    :goto_2a
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mAddPrivate:Landroid/widget/Button;

    .line 48
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_39

    .line 54
    if-eqz v0, :cond_39

    .line 56
    move v4, v2

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move v4, v3

    .line 59
    :goto_3a
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mAddPrivateFileView:Landroid/view/View;

    .line 64
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_49

    .line 70
    if-eqz v0, :cond_49

    .line 72
    move v4, v2

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move v4, v3

    .line 75
    :goto_4a
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mLogo:Landroid/widget/ImageView;

    .line 80
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->isSafeBoxSupport()Z

    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_58

    .line 86
    if-eqz v0, :cond_58

    .line 88
    goto :goto_59

    .line 89
    :cond_58
    move v2, v3

    .line 90
    :goto_59
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 95
    if-eqz v0, :cond_63

    .line 97
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 99
    goto :goto_65

    .line 100
    :cond_63
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 102
    :goto_65
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method private showLoadingView(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 3
    const v1, 0x7f110180

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    .line 9
    return-void
.end method

.method private unlockPattern()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isUnlocked:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isUnlocked:Z

    .line 9
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->unlockPattern(Landroid/app/Activity;)V

    .line 12
    return-void
.end method

.method private updateAdapter()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->showEmptyView()V

    .line 9
    return-void
.end method

.method private writeSettingsIfNeed(Z)V
    .registers 11

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateRootDirs()[Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    array-length v2, v0

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_b
    if-ge v4, v2, :cond_40

    .line 14
    aget-object v5, v0, v4

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v6

    .line 20
    if-nez v6, :cond_1e

    .line 22
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_1c

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    move v6, v3

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    :goto_1e
    const/4 v6, 0x1

    .line 32
    :goto_1f
    if-eqz v6, :cond_3d

    .line 34
    const-string v6, "enable_fileexplorer_private_folder"

    .line 36
    if-eqz p1, :cond_2d

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object v5

    .line 42
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 45
    goto :goto_3d

    .line 46
    :cond_2d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    move-result-object v7

    .line 50
    const/4 v8, -0x1

    .line 51
    invoke-static {v7, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 54
    new-instance v6, Ljava/io/File;

    .line 56
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {v6, v3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;Z)Z

    .line 62
    :cond_3d
    :goto_3d
    add-int/lit8 v4, v4, 0x1

    .line 64
    goto :goto_b

    .line 65
    :cond_40
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;)V
    .registers 3

    .line 1
    if-nez p1, :cond_6

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 6
    return-void

    .line 7
    :cond_6
    const v0, 0x7f0a006f

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getActionId()I

    .line 13
    move-result p1

    .line 14
    if-ne v0, p1, :cond_12

    .line 16
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V

    .line 19
    :cond_12
    return-void
.end method

.method public getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "/"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-static {p1, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    goto :goto_17

    .line 14
    :cond_d
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 20
    invoke-static {p1, v0, p2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    :goto_17
    return-object p1
.end method

.method public getItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigationBar()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpanCount()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getWindowWidth()I

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
    if-gt v0, v1, :cond_10

    .line 15
    const/4 v0, 0x4

    .line 16
    return v0

    .line 17
    :cond_10
    const/16 v1, 0x3c0

    .line 19
    if-ge v0, v1, :cond_16

    .line 21
    const/4 v0, 0x6

    .line 22
    return v0

    .line 23
    :cond_16
    const/16 v1, 0x4b0

    .line 25
    if-ge v0, v1, :cond_1c

    .line 27
    const/4 v0, 0x7

    .line 28
    return v0

    .line 29
    :cond_1c
    const/16 v1, 0x8

    .line 31
    const/16 v2, 0x578

    .line 33
    if-ge v0, v2, :cond_23

    .line 35
    return v1

    .line 36
    :cond_23
    sub-int/2addr v0, v2

    .line 37
    div-int/lit16 v0, v0, 0xc8

    .line 39
    add-int/2addr v0, v1

    .line 40
    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getWindowWidth()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

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
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

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
    return v0
.end method

.method public initDecoration()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getColumnType()I

    .line 11
    move-result v0

    .line 12
    const v1, 0x7f070246

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v2, v0, :cond_55

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result v0

    .line 26
    invoke-static {p0}, Lcom/android/fileexplorer/util/DesignDiffUtils;->getGroupItemMarginMiddle(Landroid/content/Context;)I

    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 32
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v3

    .line 36
    const v4, 0x7f0701d4

    .line 39
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    move-result v3

    .line 43
    iget-object v4, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 45
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v4

    .line 49
    const v5, 0x7f0701d1

    .line 52
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    move-result v4

    .line 56
    new-instance v5, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;

    .line 58
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getSpanCount()I

    .line 61
    move-result v6

    .line 62
    invoke-direct {v5, v0, v2, v6}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;-><init>(III)V

    .line 65
    iput-object v5, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-virtual {v5, v4, v3, v0, v0}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->setMargin(IIII)V

    .line 71
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 73
    iget-object v2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 75
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    .line 80
    const/16 v2, 0x1f

    .line 82
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 85
    goto :goto_5c

    .line 86
    :cond_55
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    .line 88
    const/16 v2, 0x16

    .line 90
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 93
    :goto_5c
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->navigationBar:Landroid/widget/LinearLayout;

    .line 95
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 98
    move-result v2

    .line 99
    iget-object v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->navigationBar:Landroid/widget/LinearLayout;

    .line 101
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 104
    move-result v3

    .line 105
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 108
    move-result v1

    .line 109
    iget-object v4, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->navigationBar:Landroid/widget/LinearLayout;

    .line 111
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 114
    move-result v4

    .line 115
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 118
    return-void
.end method

.method public isShowFab()Z
    .registers 2

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->isShowFab()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onActionModeChange(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onActionModeChange isActionMode = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "PrivateFolderActivity"

    .line 20
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/16 v0, 0x68

    .line 6
    if-eq p1, v0, :cond_cf

    .line 8
    const/16 v0, 0x69

    .line 10
    const/4 v1, -0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq p1, v0, :cond_ab

    .line 15
    const/16 v0, 0x6b

    .line 17
    if-eq p1, v0, :cond_a2

    .line 19
    const/16 v0, 0x6c

    .line 21
    if-eq p1, v0, :cond_ab

    .line 23
    const/16 v0, 0x70

    .line 25
    const-string v4, "android.intent.extra.STREAM"

    .line 27
    if-eq p1, v0, :cond_65

    .line 29
    const/16 v0, 0x71

    .line 31
    if-eq p1, v0, :cond_3c

    .line 33
    const/16 p3, 0x75

    .line 35
    if-eq p1, p3, :cond_38

    .line 37
    const/16 p3, 0x78

    .line 39
    if-eq p1, p3, :cond_2a

    .line 41
    goto/16 :goto_d2

    .line 43
    :cond_2a
    if-ne p2, v1, :cond_d2

    .line 45
    new-instance p1, Landroid/content/Intent;

    .line 47
    const-string p2, "android.app.action.SET_NEW_PASSWORD"

    .line 49
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    goto/16 :goto_d2

    .line 57
    :cond_38
    iput-boolean v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    .line 59
    goto/16 :goto_d2

    .line 61
    :cond_3c
    iput-boolean v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    .line 63
    if-eqz p3, :cond_d2

    .line 65
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result p2

    .line 73
    if-nez p2, :cond_d2

    .line 75
    const-string p2, "/FileExplorer/.safebox"

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    move-result p2

    .line 81
    if-nez p2, :cond_d2

    .line 83
    iget-object p2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    .line 85
    invoke-virtual {p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;->getCheckedFiles()Ljava/util/ArrayList;

    .line 88
    move-result-object p2

    .line 89
    if-eqz p2, :cond_d2

    .line 91
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 94
    move-result p3

    .line 95
    if-nez p3, :cond_d2

    .line 97
    invoke-static {p0, p2, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->operationDecryptFiles(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 100
    goto/16 :goto_d2

    .line 102
    :cond_65
    iput-boolean v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    .line 104
    if-eqz p3, :cond_d2

    .line 106
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 109
    move-result-object p1

    .line 110
    new-instance p2, Ljava/util/ArrayList;

    .line 112
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    if-eqz p1, :cond_d2

    .line 117
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    move-result p3

    .line 121
    if-nez p3, :cond_d2

    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object p1

    .line 127
    :cond_7e
    :goto_7e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result p3

    .line 131
    if-eqz p3, :cond_98

    .line 133
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object p3

    .line 137
    check-cast p3, Landroid/net/Uri;

    .line 139
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 142
    move-result-object p3

    .line 143
    invoke-static {p3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 146
    move-result-object p3

    .line 147
    if-eqz p3, :cond_7e

    .line 149
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    goto :goto_7e

    .line 153
    :cond_98
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 155
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    .line 158
    move-result-object p3

    .line 159
    invoke-virtual {p1, v2, p2, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V

    .line 162
    goto :goto_d2

    .line 163
    :cond_a2
    if-ne p2, v1, :cond_a7

    .line 165
    invoke-static {v2}, Lcom/android/fileexplorer/model/SettingManager;->setNeedShowPatternDialog(Z)V

    .line 168
    :cond_a7
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->handleSetPwd(I)V

    .line 171
    goto :goto_d2

    .line 172
    :cond_ab
    iput-boolean v2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isUnlocked:Z

    .line 174
    if-eq p2, v1, :cond_cc

    .line 176
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressShowing()Z

    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_c8

    .line 182
    iput-boolean v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    .line 184
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 186
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 189
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->updateAdapter()V

    .line 192
    new-instance p1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$9;

    .line 194
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$9;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->setOnProgressDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 200
    goto :goto_d2

    .line 201
    :cond_c8
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 204
    goto :goto_d2

    .line 205
    :cond_cc
    iput-boolean v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    .line 207
    goto :goto_d2

    .line 208
    :cond_cf
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->handleSetPwd(I)V

    .line 211
    :cond_d2
    :goto_d2
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->exitEditModeNotTimeInterval()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 10
    if-eqz v0, :cond_12

    .line 12
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onBackPressed()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 22
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    move-result-object p1

    .line 10
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 12
    if-eqz p1, :cond_1c

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getSpanCount()I

    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 29
    :cond_1c
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->initDecoration()V

    .line 32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_a

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11
    :cond_a
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    if-eqz p1, :cond_17

    .line 16
    const-string v0, "is_start_unlock_activity"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isUnlocked:Z

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    if-eqz p1, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v1, v0

    .line 29
    :goto_1c
    iput-boolean v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isConfigChange:Z

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    move-result-object p1

    .line 35
    const/16 v1, 0x2000

    .line 37
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 40
    const p1, 0x7f0d01bd

    .line 43
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 46
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 53
    iput-object p0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 55
    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 57
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 60
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 62
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 64
    const/16 v1, 0xa

    .line 66
    invoke-direct {p1, p0, p0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;I)V

    .line 69
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 71
    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    .line 73
    const v2, 0x7f110377

    .line 76
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    const-string v3, "/private"

    .line 82
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    .line 88
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 90
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    .line 97
    move-result-object v1

    .line 98
    invoke-static {p1, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 104
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 107
    move-result-object p1

    .line 108
    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 111
    const/4 v3, -0x1

    .line 112
    invoke-static {p0, v1, v2, v3}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->initCategoryActionBar(Lmiuix/appcompat/app/AppCompatActivity;Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/controller/FabPreference;I)V

    .line 115
    if-eqz p1, :cond_aa

    .line 117
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 120
    move-result-object v1

    .line 121
    const v2, 0x7f0a0037

    .line 124
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 134
    move-result-object p1

    .line 135
    const v2, 0x7f0a0057

    .line 138
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    const v0, 0x7f11047e

    .line 148
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 155
    new-instance v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$1;

    .line 157
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$1;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    .line 160
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    new-instance v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$2;

    .line 165
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$2;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_aa
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->initView()V

    .line 174
    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 177
    move-result p1

    .line 178
    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->setPermission(Z)V

    .line 181
    const p1, 0x7f0a02d8

    .line 184
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 191
    new-instance v0, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    .line 193
    invoke-direct {v0}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    .line 196
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 202
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    .line 209
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0e0010

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRefreshSdcardFileTask:Landroid/os/AsyncTask;

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUpdateTask:Landroid/os/AsyncTask;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 16
    if-eqz v0, :cond_14

    .line 18
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->onDestroy()V

    .line 21
    :cond_14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 37
    if-eqz v0, :cond_29

    .line 39
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 44
    if-eqz v0, :cond_3b

    .line 46
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3b

    .line 52
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 54
    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 60
    :cond_3b
    return-void
.end method

.method public onDirectoryDisplayChanged(Z)V
    .registers 2

    return-void
.end method

.method public onEncrypted()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V

    .line 4
    return-void
.end method

.method public onNewFolder()V
    .registers 1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    sparse-switch v0, :sswitch_data_100

    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :sswitch_e
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onViewModeChanged(I)V

    .line 18
    goto :goto_65

    .line 19
    :sswitch_12
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onViewModeChanged(I)V

    .line 22
    goto :goto_65

    .line 23
    :sswitch_16
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    move-result p1

    .line 29
    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    .line 32
    goto :goto_65

    .line 33
    :sswitch_20
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result p1

    .line 39
    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    .line 42
    goto :goto_65

    .line 43
    :sswitch_2a
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result p1

    .line 49
    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    .line 52
    goto :goto_65

    .line 53
    :sswitch_34
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 58
    move-result p1

    .line 59
    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    .line 62
    goto :goto_65

    .line 63
    :sswitch_3e
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 68
    move-result p1

    .line 69
    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    .line 72
    goto :goto_65

    .line 73
    :sswitch_48
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 78
    move-result p1

    .line 79
    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    .line 82
    goto :goto_65

    .line 83
    :sswitch_52
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 88
    move-result p1

    .line 89
    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    .line 92
    goto :goto_65

    .line 93
    :sswitch_5c
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 98
    move-result p1

    .line 99
    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    .line 102
    :goto_65
    return v2

    .line 103
    :sswitch_66
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isFirstEnterPrivateFolder()Z

    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_79

    .line 109
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setFirstEnterPrivateFolder(Z)V

    .line 112
    const p1, 0x7f11037e

    .line 115
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 122
    :cond_79
    new-instance p1, Landroid/content/Intent;

    .line 124
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 127
    new-instance v0, Landroid/content/ComponentName;

    .line 129
    const-string v1, "com.android.settings"

    .line 131
    const-string v3, "com.android.settings.MiuiConfirmCommonPassword"

    .line 133
    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    const-string v0, "businessId"

    .line 141
    const-string v1, "file_explorer"

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const/16 v0, 0x78

    .line 148
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 151
    return v2

    .line 152
    :sswitch_97
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->refresh()V

    .line 155
    return v2

    .line 156
    :sswitch_9b
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPasteFileInfos()Z

    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_c1

    .line 162
    new-instance p1, Ljava/util/ArrayList;

    .line 164
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->getPasteFileInfos()Ljava/util/ArrayList;

    .line 171
    move-result-object v0

    .line 172
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    .line 182
    move-result v0

    .line 183
    xor-int/2addr v0, v2

    .line 184
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 186
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v1, v0, p1, v3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V

    .line 193
    goto :goto_d4

    .line 194
    :cond_c1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPastePrivateFiles()Z

    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_d4

    .line 200
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    .line 202
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;->getCheckedFiles()Ljava/util/ArrayList;

    .line 205
    move-result-object p1

    .line 206
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 210
    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->movePrivateFiles(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 213
    :cond_d4
    :goto_d4
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 220
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->setImmersionMenuEnabled(Z)V

    .line 223
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 226
    return v2

    .line 227
    :sswitch_e2
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->setImmersionMenuEnabled(Z)V

    .line 230
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 237
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 240
    return v2

    .line 241
    :sswitch_f0
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 243
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 246
    return v1

    .line 247
    :sswitch_f6
    const/16 p1, 0x70

    .line 249
    invoke-static {p0, p1}, Lcom/android/fileexplorer/activity/FileActivity;->startPickPrivateActivityForResult(Landroid/app/Activity;I)V

    .line 252
    return v1

    .line 253
    :sswitch_fc
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onBackPressed()V

    .line 256
    return v2

    .line 257
    :sswitch_data_100
    .sparse-switch
        0x102002c -> :sswitch_fc
        0x7f0a0084 -> :sswitch_f6
        0x7f0a02dc -> :sswitch_f0
        0x7f0a0306 -> :sswitch_e2
        0x7f0a0307 -> :sswitch_9b
        0x7f0a033c -> :sswitch_97
        0x7f0a0344 -> :sswitch_66
        0x7f0a03af -> :sswitch_5c
        0x7f0a03b0 -> :sswitch_52
        0x7f0a03b4 -> :sswitch_48
        0x7f0a03b5 -> :sswitch_3e
        0x7f0a03b6 -> :sswitch_34
        0x7f0a03b7 -> :sswitch_2a
        0x7f0a03ba -> :sswitch_20
        0x7f0a03bb -> :sswitch_16
        0x7f0a048f -> :sswitch_12
        0x7f0a0492 -> :sswitch_e
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onPause()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->onPause()V

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    .line 14
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPasteFileInfos()Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_14

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPastePrivateFiles()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_12

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    move v0, v2

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    :goto_14
    move v0, v1

    .line 22
    :goto_15
    const v3, 0x7f0a0084

    .line 25
    const v4, 0x7f0a033c

    .line 28
    invoke-static {p1, v3, v2, v4, v2}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 31
    const v3, 0x7f0a02dc

    .line 34
    const v4, 0x7f0a0306

    .line 37
    invoke-static {p1, v3, v2, v4, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 40
    const v3, 0x7f0a0307

    .line 43
    if-eqz v0, :cond_34

    .line 45
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 52
    goto :goto_3b

    .line 53
    :cond_34
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 60
    :goto_3b
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_67

    .line 66
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 69
    move-result-object p1

    .line 70
    if-eqz v0, :cond_4b

    .line 72
    const v3, 0x7f11029a

    .line 75
    goto :goto_4e

    .line 76
    :cond_4b
    const v3, 0x7f110378

    .line 79
    :goto_4e
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 82
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 89
    move-result-object p1

    .line 90
    const v3, 0x7f0a0037

    .line 93
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p1

    .line 97
    if-eqz v0, :cond_64

    .line 99
    const/16 v2, 0x8

    .line 101
    :cond_64
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_67
    return v1
.end method

.method public onPrivateFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->isResume()Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_e

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V

    .line 15
    :cond_e
    return-void
.end method

.method public onResume()V
    .registers 6

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_e

    .line 10
    invoke-static {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    .line 13
    goto/16 :goto_c9

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->onResume()V

    .line 22
    :cond_15
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v0, :cond_81

    .line 28
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasAppLock()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_26

    .line 34
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mIsFirstEnter:Z

    .line 36
    if-nez v0, :cond_26

    .line 38
    goto :goto_81

    .line 39
    :cond_26
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getACLockType(Landroid/content/Context;)I

    .line 42
    move-result v0

    .line 43
    const-string v3, "onresume: "

    .line 45
    const-string v4, "PrivateFolderActivity"

    .line 47
    invoke-static {v3, v0, v4}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 50
    const/4 v3, -0x1

    .line 51
    if-ne v0, v3, :cond_6d

    .line 53
    :try_start_34
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isFirstEnterPrivateFolder()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_47

    .line 59
    invoke-static {v2}, Lcom/android/fileexplorer/model/SettingManager;->setFirstEnterPrivateFolder(Z)V

    .line 62
    const v0, 0x7f11037e

    .line 65
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    :cond_47
    new-instance v0, Landroid/content/Intent;

    .line 74
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    new-instance v1, Landroid/content/ComponentName;

    .line 79
    const-string v2, "com.android.settings"

    .line 81
    const-string v3, "com.android.settings.MiuiConfirmCommonPassword"

    .line 83
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    const-string v1, "businessId"

    .line 91
    const-string v2, "file_explorer"

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const/16 v1, 0x69

    .line 98
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_64} :catch_65

    .line 101
    goto :goto_c9

    .line 102
    :catch_65
    const-string v0, "Encryption"

    .line 104
    const-string v1, "Cannot use gesture function, mi sdk version is not correct!"

    .line 106
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    goto :goto_c9

    .line 110
    :cond_6d
    if-nez v0, :cond_7b

    .line 112
    iget-boolean v2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRequestingSetPwd:Z

    .line 114
    if-nez v2, :cond_7b

    .line 116
    iput-boolean v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRequestingSetPwd:Z

    .line 118
    const/16 v0, 0x6b

    .line 120
    invoke-static {p0, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->requestSetPwd(Landroid/app/Activity;I)V

    .line 123
    goto :goto_c9

    .line 124
    :cond_7b
    if-ne v0, v1, :cond_c9

    .line 126
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->unlockPattern()V

    .line 129
    goto :goto_c9

    .line 130
    :cond_81
    :goto_81
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mIsFirstEnter:Z

    .line 132
    if-eqz v0, :cond_87

    .line 134
    iput-boolean v2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mIsFirstEnter:Z

    .line 136
    :cond_87
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPasteFileInfos()Z

    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_96

    .line 142
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPastePrivateFiles()Z

    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_94

    .line 148
    goto :goto_96

    .line 149
    :cond_94
    move v0, v2

    .line 150
    goto :goto_97

    .line 151
    :cond_96
    :goto_96
    move v0, v1

    .line 152
    :goto_97
    xor-int/2addr v0, v1

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->setImmersionMenuEnabled(Z)V

    .line 156
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 159
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mIsProgressing:Z

    .line 161
    if-nez v0, :cond_c6

    .line 163
    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getExternalPrivateRootDir()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getSDPrivateRootDir()Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 171
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isUsingAndroidID()Z

    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_c6

    .line 177
    iget-object v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUpdateTask:Landroid/os/AsyncTask;

    .line 179
    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 182
    new-instance v3, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;

    .line 184
    invoke-direct {v3, p0, v0, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 190
    move-result-object v0

    .line 191
    new-array v1, v2, [Ljava/lang/Void;

    .line 193
    invoke-virtual {v3, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    move-result-object v0

    .line 197
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUpdateTask:Landroid/os/AsyncTask;

    .line 199
    :cond_c6
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V

    .line 202
    :cond_c9
    :goto_c9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isUnlocked:Z

    .line 6
    const-string v1, "is_start_unlock_activity"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onSearch(I)V
    .registers 2

    return-void
.end method

.method public onShowSortMenu(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 8
    if-nez v0, :cond_12

    .line 10
    new-instance v0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 21
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->showPopupwindow(Landroid/view/View;)V

    .line 24
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    .line 26
    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->setOnItemClickListener(Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;)V

    .line 35
    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result p1

    .line 5
    sget-object v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->CATEGROY_KEY:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object v0

    .line 11
    iget-boolean v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    .line 16
    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->CATEGROY_KEY:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    .line 12
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 6

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/fileexplorer/controller/FabPreference;

    .line 9
    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 15
    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v3

    .line 21
    iput v3, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 23
    iput-boolean v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 25
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 28
    move-result-object v1

    .line 29
    iput p1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 31
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 34
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    const v0, 0x7f0a0062

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0802aa

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget p1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 59
    const/4 v0, 0x1

    .line 60
    if-ne p1, v0, :cond_49

    .line 62
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 64
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 66
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getSpanCount()I

    .line 69
    move-result v2

    .line 70
    invoke-direct {p1, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 73
    goto :goto_50

    .line 74
    :cond_49
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 76
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 78
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 81
    :goto_50
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 84
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 86
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->initDecoration()V

    .line 92
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    .line 94
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public onViewTypeChange(Landroid/widget/ImageView;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->showDisplaySettingFragment()V

    .line 4
    return-void
.end method

.method public onViewTypeChange(Landroid/widget/ImageView;II)V
    .registers 4

    return-void
.end method

.method public refresh()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V

    .line 4
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setImmersionMenuEnabled(Z)V

    .line 4
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->ImmersionMenuEnabled:Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v1, "setImmersionMenuEnabled enable = "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "PrivateFolderActivity"

    .line 25
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->setFabMenuLayoutVisibility(Z)V

    .line 31
    return-void
.end method

.method public showDisplaySettingFragment()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;-><init>(Lcom/android/fileexplorer/fragment/callback/IActionListener;)V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    const-string v2, "page_type"

    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    sget-object v2, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->CATEGROY_KEY:Ljava/lang/String;

    .line 19
    const-string v3, "page_category"

    .line 21
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "display_setting_dialog"

    .line 33
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public sortCurrentList()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mSortTask:Landroid/os/AsyncTask;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 9
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    new-instance v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;

    .line 18
    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Ljava/util/ArrayList;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [Ljava/lang/Void;

    .line 24
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mSortTask:Landroid/os/AsyncTask;

    .line 30
    return-void
.end method
