.class public Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;
.source "MirrorFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;
.implements Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/fileexplorer/mirror/fragments/IPathNavigation;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MirrorFileFragment"

.field private static final TAG:Ljava/lang/String; = "MirrorFileFragment"


# instance fields
.field private mColumnType:I

.field private mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

.field private mDroppedDirInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

.field private mFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGetRefreshStateTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

.field private mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

.field private mHasInitUI:Z

.field private mHasRegisterReceiver:Z

.field public mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

.field private mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

.field private mLoadFileListTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLoadOwnerTask:Ljava/lang/Thread;

.field private mNavigationBar:Landroid/view/View;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

.field public mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

.field private mRefreshingDevices:Z

.field private mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

.field private mRootView:Landroid/view/View;

.field private mShowVolumesPop:Z

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

.field public mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

.field private mVolumeSwitch:Landroid/widget/ImageView;

.field private mVolumeSwitchLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mShowVolumesPop:Z

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->dismissVolumesPopup()V

    return-void
.end method

.method public static synthetic access$1002(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRefreshingDevices:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDroppedDirInfo:Lcom/android/fileexplorer/model/FileInfo;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getPrimaryVolume(Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->onRefreshFileList(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->dismissVolumePopHint()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVolumeSwitchLayout:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1602(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mShowVolumesPop:Z

    return p1
.end method

.method public static synthetic access$1700(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getSelectedVolume(I)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getMtpFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getSmbFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getLocalFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->onDataChanged(Z)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showEmpty(I)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/lang/Thread;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->lambda$onFileChange$0(Lcom/android/fileexplorer/event/FileChangeEvent;)V

    return-void
.end method

.method private dismissVolumePopHint()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7
    return-void
.end method

.method private dismissVolumesPopup()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    :cond_a
    return-void
.end method

.method public static synthetic e(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;ILcom/android/fileexplorer/model/FileInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->lambda$showRename$1(ILcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->lambda$refreshPosInfoList$3()V

    return-void
.end method

.method public static synthetic g(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->lambda$runLoadTask$2()V

    return-void
.end method

.method private getDeviceStr()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLastSelectedVolumePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const-string v3, "-1"

    move v4, v2

    :goto_d
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_66

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_4a

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/model/StorageHelper;->isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v5

    if-eqz v5, :cond_63

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_63

    :cond_4a
    invoke-virtual {v5}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_63
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_66
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v1
.end method

.method private getLocalFileList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalFileList in path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MirrorFileFragment"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_8d

    :cond_2d
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/FileFragmentHelper;->getFilter()Lcom/android/fileexplorer/util/FileNameExtFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_79

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_3c
    if-ge v4, v2, :cond_6b

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->isPrivateFolder(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4f

    goto :goto_68

    :cond_4f
    invoke-static {v6}, Lcom/android/fileexplorer/model/Util;->isNormalFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_68

    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    invoke-virtual {v6}, Lcom/android/fileexplorer/model/FileFragmentHelper;->getFilter()Lcom/android/fileexplorer/util/FileNameExtFilter;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v5

    if-eqz v5, :cond_68

    iget-boolean v6, v5, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-nez v6, :cond_68

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    :goto_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_6b
    :try_start_6b
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_74
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    :cond_79
    :goto_79
    const-string v0, "getLocalFileList end size = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    return-object p1
.end method

.method private getMtpFileList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/mtp/MTPManager;->hasMtpProvider()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mtp/MTPManager;->listFileInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method private getPrimaryVolume(Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;)",
            "Lcom/android/fileexplorer/model/StorageInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_25

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v2

    if-eqz v2, :cond_e

    return-object v1

    :cond_25
    :goto_25
    return-object v0
.end method

.method private getSelectedVolume(I)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/StorageInfo;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSmbFileList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string v0, ""

    :cond_1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MirrorFileFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_44
    if-ge v2, v0, :cond_5a

    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->shouldShowSMBFile(Ljcifs/smb/SmbFile;)Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljcifs/smb/SmbFile;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v3

    if-eqz v3, :cond_57

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_5a
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_63} :catch_64

    return-object v1

    :catch_64
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private handleFileDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_6

    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object p2, v1, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    :cond_2a
    return-void
.end method

.method private initFragmentHelper()V
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/model/FileFragmentHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/FileFragmentHelper;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/FileFragmentHelper;->init(Landroid/content/Intent;)V

    return-void
.end method

.method private initListView()V
    .registers 10

    const-string v0, "MirrorFileFragment"

    const-string v1, "initListView: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$6;

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget v8, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    move-object v2, v0

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$6;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;Lcom/android/fileexplorer/filemanager/FileOperationManager;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setAdapter(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$7;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$7;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    return-void
.end method

.method private initUI()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasInitUI:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mInitStorage:Z

    const-string v1, "MirrorFileFragment"

    if-nez v0, :cond_11

    const-string v0, "initUI: not init Storage"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    const-string v0, "initUI: "

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initFragmentHelper()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032f5c

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mNavigationBar:Landroid/view/View;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032935

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVolumeSwitch:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032932

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVolumeSwitchLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->registerReceiver()V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;-><init>(Lcom/android/fileexplorer/activity/BaseActivity;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;ILcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initListView()V

    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/MultiListTypeManager;->addMultiListChangeListener(Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasInitUI:Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mExtraPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    :cond_86
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8e

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showStorageNotEnoughHint()V

    :cond_8e
    return-void
.end method

.method private isPrivateFolder(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "FileExplorer"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->isRootPath()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private isRootPath()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$onFileChange$0(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 11

    iget-object v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->renamePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v5, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->renamePath:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v1, :cond_11

    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    instance-of v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v6

    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v7

    if-lt v5, v6, :cond_58

    if-le v5, v7, :cond_56

    goto :goto_58

    :cond_56
    move v6, v2

    goto :goto_59

    :cond_58
    :goto_58
    move v6, v3

    :goto_59
    if-eqz v6, :cond_60

    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_60
    invoke-direct {p0, v5, v4}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showRename(ILcom/android/fileexplorer/model/FileInfo;)V

    goto :goto_11

    :cond_64
    iget-object v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_e5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e5

    move v0, v2

    :goto_6f
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_e5

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    move v5, v2

    :goto_80
    iget-object v6, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_e2

    iget-object v6, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    iget-object v7, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_df

    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    if-ne v5, v7, :cond_da

    if-eq v6, v1, :cond_da

    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v7

    instance-of v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v7, :cond_da

    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v7

    iget-object v8, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v8

    if-lt v6, v7, :cond_d2

    if-le v6, v8, :cond_d0

    goto :goto_d2

    :cond_d0
    move v7, v2

    goto :goto_d3

    :cond_d2
    :goto_d2
    move v7, v3

    :goto_d3
    if-eqz v7, :cond_da

    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_da
    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    invoke-virtual {v7, v6}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(I)V

    :cond_df
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    :cond_e2
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    :cond_e5
    return-void
.end method

.method private synthetic lambda$refreshPosInfoList$3()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->refreshPosInfoList()V

    return-void
.end method

.method private synthetic lambda$runLoadTask$2()V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileInfo(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    monitor-enter v2

    :try_start_e
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v5, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    goto :goto_14

    :cond_29
    iget-boolean v5, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v5, :cond_30

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    iget-object v5, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    goto :goto_14

    :cond_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_9a

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_65
    :try_start_65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    invoke-virtual {v2}, Lcom/android/fileexplorer/service/DirParseSDK;->getService()Lcom/android/fileexplorer/service/IDirParse;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_99

    if-eqz v2, :cond_99

    sget-object v3, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->DEFAULT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    new-instance v1, Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    new-instance v3, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment$DirQueryCallback;

    invoke-direct {v3, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment$DirQueryCallback;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V

    invoke-direct {v1, v3}, Lcom/android/fileexplorer/controller/WeakQueryCallBack;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V

    invoke-interface {v2, v0, v1}, Lcom/android/fileexplorer/service/IDirParse;->queryDirInfo(Ljava/util/List;Lcom/android/fileexplorer/service/IQueryCallBack;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_94} :catch_95

    goto :goto_99

    :catch_95
    move-exception v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    :cond_99
    :goto_99
    return-void

    :catchall_9a
    move-exception v0

    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v0
.end method

.method private synthetic lambda$showRename$1(ILcom/android/fileexplorer/model/FileInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_3d

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3d

    const v1, 0x7f032c10

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemRadioChecked(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    if-nez p1, :cond_38

    new-instance p1, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    :cond_38
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    invoke-virtual {p1, v0, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->show(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private onDataChanged(Z)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    if-eqz p1, :cond_13

    const-string p1, "MirrorFileFragment"

    const-string v0, "onDataChanged"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->notifyData()V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->refreshPosInfoList()V

    :cond_13
    return-void
.end method

.method private onRefreshFileList(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6

    const-string v0, "MirrorFileFragment"

    if-nez p1, :cond_a

    const-string p1, "refreshing file list path is null"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshing file list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->isViewMode()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setAdapter(Z)V

    :cond_28
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->runLoadTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshPosInfoList()V
    .registers 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/fragments/b;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerReceiver()V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x7

    if-ne v0, v1, :cond_46

    :cond_8
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

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasRegisterReceiver:Z

    :cond_46
    return-void
.end method

.method private runLoadTask(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runLoadTask: path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorFileFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadFileListTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/fragments/b;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadFileListTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadFileListTask:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setLayoutManager(Z)V
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-nez v0, :cond_c

    goto/16 :goto_87

    :cond_c
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    const/16 v1, 0xb

    if-nez v0, :cond_23

    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    if-nez v0, :cond_32

    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    :cond_32
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_4e

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_55

    :cond_4e
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    :goto_55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v3, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    if-ne v2, v0, :cond_6f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    goto :goto_7c

    :cond_6f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :goto_7c
    if-eqz p1, :cond_86

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->notifyData()V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->refreshPosInfoList()V

    :cond_86
    return-void

    :cond_87
    :goto_87
    const-string p1, "MirrorFileFragment"

    const-string v0, "setAdapter: activity is null or mFileListView is null."

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showEmpty(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    :cond_d
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->isRootPath()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    move v3, v2

    goto :goto_22

    :cond_21
    move v3, v1

    :goto_22
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_2c

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_2e

    :cond_2c
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    :goto_2e
    invoke-virtual {p1, v3}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v0, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_45

    :cond_3b
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_45
    return-void
.end method

.method private showRename(ILcom/android/fileexplorer/model/FileInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/c;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;ILcom/android/fileexplorer/model/FileInfo;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showStorageNotEnoughHint()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->isViewMode()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEnterFileViewTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/model/TimeUtils;->getDaysBetween(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_57

    :cond_1e
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSpaceNotEnough()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0329b9

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/ToastTextView;->setLocationMode(I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/ToastTextView;->setIconType(I)V

    sget-boolean v2, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v2, :cond_43

    const v2, 0x7f1100cb

    goto :goto_46

    :cond_43
    const v2, 0x7f1100ca

    :goto_46
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/fileexplorer/view/ToastTextView;->show(Ljava/lang/String;ZJ)V

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$12;

    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$12;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lcom/android/fileexplorer/view/ToastTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/SettingManager;->setEnterFileViewTime(J)V

    :cond_5e
    return-void
.end method

.method private showSwitchGuidePop(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lmiuix/popupwidget/widget/GuidePopupWindow;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setArrowMode(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    const v1, 0x7f1100ce

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    return-void
.end method

.method private showVolumesPopup(Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getDeviceStr()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    :try_start_1f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_24

    goto :goto_3c

    :catch_24
    move-exception v0

    const-string v2, "showVolumesPopup parseInt error: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MirrorFileFragment"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_3c
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->setItems(Ljava/util/List;)V

    if-eq v0, v1, :cond_48

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->setSelectedItem(I)V

    :cond_48
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->setOnMenuListener(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    move-result p1

    if-nez p1, :cond_5f

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->show()V

    :cond_5f
    return-void
.end method


# virtual methods
.method public backToViewMode()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setAdapter(Z)V

    return-void
.end method

.method public createFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public getExtraPath()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getFileTransferDestType()I
    .registers 2

    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT_MIRROR:I

    return v0
.end method

.method public getItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    if-ltz p1, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_d

    goto :goto_16

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    return-object p1

    :cond_16
    :goto_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0067

    return v0
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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "MirrorFileFragment"

    return-object v0
.end method

.method public getNavigationBar()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mNavigationBar:Landroid/view/View;

    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public handleHover(Z)V
    .registers 3

    const-string p1, "MirrorFileFragment"

    const-string v0, "handleHover: file hover"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleInitStorageResult()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->handleInitStorageResult()V

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasInitUI:Z

    if-nez v0, :cond_14

    const-string v0, "MirrorFileFragment"

    const-string v1, "handleInitStorageResult: initUI"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initUI()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateUI()V

    :cond_14
    return-void
.end method

.method public hideRoot()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->notifyData()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->hidePath()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    const v0, 0x7f032cf5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    const v0, 0x7f032e44

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    const v0, 0x7f032efc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/android/fileexplorer/activity/BaseActivity;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setOnRightClickListener(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    new-instance p1, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setLayoutManager(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->setOnChoiceItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mInitStorage:Z

    if-eqz p1, :cond_8e

    const-string p1, "MirrorFileFragment"

    const-string v0, "onInflateView: initUI"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initUI()V

    :cond_8e
    return-void
.end method

.method public navigateTo(Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    :cond_16
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getExtraPath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->forceChangePathTo(Lcom/android/fileexplorer/model/PathSegment;)V

    return-void

    :cond_37
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getExtraPath()Ljava/lang/String;

    move-result-object p1

    :cond_49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getRootPath()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    goto :goto_60

    :cond_56
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_60
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x6a

    if-eq p1, p3, :cond_8

    goto :goto_16

    :cond_8
    const/4 p1, -0x1

    if-ne p2, p1, :cond_16

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    instance-of p2, p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;

    if-eqz p2, :cond_16

    check-cast p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->encryptReal()V

    :cond_16
    :goto_16
    return-void
.end method

.method public onBack()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    const/4 v2, 0x7

    if-ne v0, v2, :cond_27

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/model/StorageHelper;->isVolumeMounted(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v0

    if-nez v0, :cond_27

    return v1

    :cond_27
    const-string v0, "MirrorFileFragment"

    const-string v1, "onBack111"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04a4

    if-eq v0, v1, :cond_a

    goto :goto_18

    :cond_a
    const v0, 0x7f032935

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showVolumesPopup(Landroid/view/View;)V

    :goto_18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/c0;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasInitUI:Z

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->onDestroyView()V

    const-string v0, "MirrorFileFragment"

    const-string v1, "onDestroyView: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasRegisterReceiver:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasRegisterReceiver:Z

    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadFileListTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGetRefreshStateTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSortTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    :cond_35
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->dismissVolumesPopup()V

    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/MultiListTypeManager;->removeMultiListChangeListener(Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;)V

    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDroppedDirInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDroppedDirInfo:Lcom/android/fileexplorer/model/FileInfo;

    return-void

    :cond_12
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    if-nez v0, :cond_17

    return-void

    :cond_17
    const-string v0, "onEventMainThread: event = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/event/FileChangeEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorFileFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    if-eqz v0, :cond_67

    iget-object v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->isViewMode()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_4f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v2, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    goto :goto_67

    :cond_5e
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateUI(Ljava/lang/Runnable;)V

    :cond_67
    :goto_67
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    if-eqz v0, :cond_12

    const-string v0, "MirrorFileFragment"

    const-string v1, "onImmersionMenuClick"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyShortcut(I)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    goto :goto_15

    :cond_7
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_15

    return v0

    :cond_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_15

    return v0

    :cond_15
    :goto_15
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onKeyShortcut(I)Z

    move-result p1

    return p1
.end method

.method public onMultiListChange(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-nez v0, :cond_b

    goto :goto_31

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiListChange newType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorFileFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    if-eq p1, v0, :cond_31

    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setAdapter(Z)V

    :cond_31
    :goto_31
    return-void
.end method

.method public onQueryFinish()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->onDataChanged(Z)V

    return-void
.end method

.method public onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->handleFileDir(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onResume()V

    const-string v0, "MirrorFileFragment"

    const-string v1, "onResume: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initUI()V

    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showVolumeHintPopup(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->dismissVolumesPopup()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->rememberCurrentScroll()V

    :cond_e
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->exitSelectedMode()V

    :cond_18
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserVisible: first = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorFileFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->prepareVisible()V

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result p1

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    if-eq p1, v0, :cond_1d

    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setAdapter(Z)V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->invisible()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;

    iget-object v1, v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;->path:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 p1, 0x0

    return p1

    :cond_3e
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public processStartDrag()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processStartDrag()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    :cond_b
    return-void
.end method

.method public setAdapter(Z)V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-nez v0, :cond_b

    goto :goto_1d

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->setSelectedMode(I)V

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setLayoutManager(Z)V

    :cond_1c
    return-void

    :cond_1d
    :goto_1d
    const-string p1, "MirrorFileFragment"

    const-string v0, "setAdapter: activity is null or mFileListView is null."

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showRoot()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->showPath()V

    return-void
.end method

.method public showVolumeHintPopup(Z)V
    .registers 3

    if-eqz p1, :cond_43

    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    if-eqz p1, :cond_43

    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mShowVolumesPop:Z

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    move-result p1

    if-nez p1, :cond_46

    iget p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_46

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_46

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->shouldShowVolumeSwitchPopup()Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVolumeSwitch:Landroid/widget/ImageView;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVolumeSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVolumeSwitch:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showSwitchGuidePop(Landroid/view/View;)V

    :cond_3f
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->increaseShowVolumeSwitchPopupCount()V

    goto :goto_46

    :cond_43
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->dismissVolumePopHint()V

    :cond_46
    :goto_46
    return-void
.end method

.method public sortCurrentList()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSortTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_b
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$11;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$11;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSortTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public updateChoiceItems()V
    .registers 1

    return-void
.end method

.method public declared-synchronized updateUI()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateUI(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateUI(Ljava/lang/Runnable;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRefreshingDevices:Z

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasInitUI:Z

    if-nez v0, :cond_a

    goto :goto_36

    :cond_a
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2a

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGetRefreshStateTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGetRefreshStateTask:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_34

    :cond_2a
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->onRefreshFileList(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_38

    :goto_34
    monitor-exit p0

    return-void

    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method
