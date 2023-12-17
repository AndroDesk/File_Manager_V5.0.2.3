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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mShowVolumesPop:Z

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    .line 27
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$1;

    .line 29
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    .line 32
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->dismissVolumesPopup()V

    .line 4
    return-void
.end method

.method public static synthetic access$1002(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRefreshingDevices:Z

    .line 3
    return p1
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDroppedDirInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getPrimaryVolume(Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->onRefreshFileList(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->dismissVolumePopHint()V

    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVolumeSwitchLayout:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1602(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mShowVolumesPop:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1700(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getSelectedVolume(I)Lcom/android/fileexplorer/model/StorageInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getMtpFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getSmbFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getLocalFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->onDataChanged(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showEmpty(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/lang/Thread;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->lambda$onFileChange$0(Lcom/android/fileexplorer/event/FileChangeEvent;)V

    return-void
.end method

.method private dismissVolumePopHint()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private dismissVolumesPopup()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->dismiss()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 11
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

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLastSelectedVolumePath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "-1"

    .line 13
    move v4, v2

    .line 14
    :goto_d
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v5

    .line 20
    if-ge v4, v5, :cond_66

    .line 22
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/fileexplorer/model/StorageInfo;

    .line 30
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v6

    .line 45
    const-string v7, ""

    .line 47
    if-eqz v6, :cond_4a

    .line 49
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/model/StorageHelper;->isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_63

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 74
    goto :goto_63

    .line 75
    :cond_4a
    invoke-virtual {v5}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_63

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 100
    :cond_63
    :goto_63
    add-int/lit8 v4, v4, 0x1

    .line 102
    goto :goto_d

    .line 103
    :cond_66
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 106
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

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v2, "getLocalFileList in path = "

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const-string v1, "MirrorFileFragment"

    .line 25
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_8d

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2d

    .line 45
    goto :goto_8d

    .line 46
    :cond_2d
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    .line 48
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/FileFragmentHelper;->getFilter()Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_79

    .line 58
    array-length v2, v0

    .line 59
    const/4 v3, 0x0

    .line 60
    move v4, v3

    .line 61
    :goto_3c
    if-ge v4, v2, :cond_6b

    .line 63
    aget-object v5, v0, v4

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 72
    move-result-object v7

    .line 73
    invoke-direct {p0, v7}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->isPrivateFolder(Ljava/lang/String;)Z

    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_4f

    .line 79
    goto :goto_68

    .line 80
    :cond_4f
    invoke-static {v6}, Lcom/android/fileexplorer/model/Util;->isNormalFile(Ljava/lang/String;)Z

    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_68

    .line 86
    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    .line 88
    invoke-virtual {v6}, Lcom/android/fileexplorer/model/FileFragmentHelper;->getFilter()Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 91
    move-result-object v6

    .line 92
    invoke-static {v5, v6, v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    .line 95
    move-result-object v5

    .line 96
    if-eqz v5, :cond_68

    .line 98
    iget-boolean v6, v5, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 100
    if-nez v6, :cond_68

    .line 102
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_68
    :goto_68
    add-int/lit8 v4, v4, 0x1

    .line 107
    goto :goto_3c

    .line 108
    :cond_6b
    :try_start_6b
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 110
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    .line 113
    move-result-object v0

    .line 114
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_74
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_74} :catch_75

    .line 117
    goto :goto_79

    .line 118
    :catch_75
    move-exception v0

    .line 119
    invoke-static {v0}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 122
    :cond_79
    :goto_79
    const-string v0, "getLocalFileList end size = "

    .line 124
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 131
    move-result v2

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/mtp/MTPManager;->hasMtpProvider()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_c
    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mtp/MTPManager;->listFileInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 23
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 30
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

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_25

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_25

    .line 11
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_25

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_e

    .line 37
    return-object v1

    .line 38
    :cond_25
    :goto_25
    return-object v0
.end method

.method private getSelectedVolume(I)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 17
    return-object p1

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
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

    .line 1
    const-string v0, "/"

    .line 3
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v3, "smb:"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1c

    .line 27
    const-string v0, ""

    .line 29
    :cond_1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string v0, "MirrorFileFragment"

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v3, "smb path: "

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljcifs/smb/SmbFile;

    .line 60
    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    .line 66
    move-result-object p1

    .line 67
    array-length v0, p1

    .line 68
    const/4 v2, 0x0

    .line 69
    :goto_44
    if-ge v2, v0, :cond_5a

    .line 71
    aget-object v3, p1, v2

    .line 73
    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->shouldShowSMBFile(Ljcifs/smb/SmbFile;)Z

    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_57

    .line 79
    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljcifs/smb/SmbFile;)Lcom/android/fileexplorer/model/FileInfo;

    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_57

    .line 85
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_57
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_44

    .line 91
    :cond_5a
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 93
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    .line 96
    move-result-object p1

    .line 97
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_63} :catch_64

    .line 100
    return-object v1

    .line 101
    :catch_64
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    const/4 p1, 0x0

    .line 106
    return-object p1
.end method

.method private handleFileDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2a

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 19
    if-eqz v1, :cond_6

    .line 21
    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 23
    if-eqz v2, :cond_6

    .line 25
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_6

    .line 33
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_6

    .line 41
    iput-object p2, v1, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    .line 43
    :cond_2a
    return-void
.end method

.method private initFragmentHelper()V
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/FileFragmentHelper;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/model/FileFragmentHelper;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/FileFragmentHelper;->init(Landroid/content/Intent;)V

    .line 17
    return-void
.end method

.method private initListView()V
    .registers 10

    .line 1
    const-string v0, "MirrorFileFragment"

    .line 3
    const-string v1, "initListView: "

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$6;

    .line 10
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 12
    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 14
    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 16
    iget v8, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 18
    move-object v2, v0

    .line 19
    move-object v3, p0

    .line 20
    move-object v4, p0

    .line 21
    invoke-direct/range {v2 .. v8}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$6;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;Lcom/android/fileexplorer/filemanager/FileOperationManager;I)V

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 26
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setAdapter(Z)V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 37
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$7;

    .line 39
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$7;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 45
    return-void
.end method

.method private initUI()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasInitUI:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mInitStorage:Z

    .line 8
    const-string v1, "MirrorFileFragment"

    .line 10
    if-nez v0, :cond_11

    .line 12
    const-string v0, "initUI: not init Storage"

    .line 14
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void

    .line 18
    :cond_11
    const-string v0, "initUI: "

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initFragmentHelper()V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    .line 28
    const v1, 0x7f0a02ca

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mNavigationBar:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    .line 39
    const v1, 0x7f0a04a3

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/ImageView;

    .line 48
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVolumeSwitch:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    .line 52
    const v1, 0x7f0a04a4

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVolumeSwitchLayout:Landroid/view/View;

    .line 61
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->registerReceiver()V

    .line 67
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 69
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 71
    iget v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 73
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 76
    move-result-object v3

    .line 77
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;-><init>(Lcom/android/fileexplorer/activity/BaseActivity;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;ILcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 80
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 82
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initListView()V

    .line 85
    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/MultiListTypeManager;->addMultiListChangeListener(Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;)V

    .line 92
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasInitUI:Z

    .line 95
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 97
    if-eqz v0, :cond_7a

    .line 99
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 101
    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    .line 103
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 105
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 111
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 115
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    .line 123
    :cond_7a
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 125
    const/4 v1, 0x2

    .line 126
    if-ne v0, v1, :cond_82

    .line 128
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showStorageNotEnoughHint()V

    .line 131
    :cond_82
    return-void
.end method

.method private isPrivateFolder(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "FileExplorer"

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_14

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 11
    if-eqz p1, :cond_14

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->isRootPath()Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    :goto_15
    return p1
.end method

.method private isRootPath()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    if-eqz v0, :cond_17

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 7
    if-eqz v1, :cond_17

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 15
    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method private synthetic lambda$onFileChange$0(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 11

    .line 1
    iget-object v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->renamePath:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v0, :cond_64

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_e5

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 30
    iget-object v5, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->renamePath:Ljava/lang/String;

    .line 32
    iget-object v6, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 34
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_11

    .line 40
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 45
    move-result v5

    .line 46
    if-eq v5, v1, :cond_11

    .line 48
    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 50
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 53
    move-result-object v6

    .line 54
    instance-of v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 56
    if-eqz v6, :cond_11

    .line 58
    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 60
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 66
    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 69
    move-result v6

    .line 70
    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 72
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 75
    move-result-object v7

    .line 76
    check-cast v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 78
    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 81
    move-result v7

    .line 82
    if-lt v5, v6, :cond_58

    .line 84
    if-le v5, v7, :cond_56

    .line 86
    goto :goto_58

    .line 87
    :cond_56
    move v6, v2

    .line 88
    goto :goto_59

    .line 89
    :cond_58
    :goto_58
    move v6, v3

    .line 90
    :goto_59
    if-eqz v6, :cond_60

    .line 92
    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 94
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 97
    :cond_60
    invoke-direct {p0, v5, v4}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showRename(ILcom/android/fileexplorer/model/FileInfo;)V

    .line 100
    goto :goto_11

    .line 101
    :cond_64
    iget-object v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    .line 103
    if-eqz v0, :cond_e5

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_e5

    .line 111
    move v0, v2

    .line 112
    :goto_6f
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 117
    move-result v4

    .line 118
    if-ge v0, v4, :cond_e5

    .line 120
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object v4

    .line 126
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 128
    move v5, v2

    .line 129
    :goto_80
    iget-object v6, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 134
    move-result v6

    .line 135
    if-ge v5, v6, :cond_e2

    .line 137
    iget-object v6, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    move-result-object v6

    .line 143
    check-cast v6, Ljava/lang/CharSequence;

    .line 145
    iget-object v7, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 147
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_df

    .line 153
    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 158
    move-result v6

    .line 159
    iget-object v7, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->pastePaths:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 164
    move-result v7

    .line 165
    sub-int/2addr v7, v3

    .line 166
    if-ne v5, v7, :cond_da

    .line 168
    if-eq v6, v1, :cond_da

    .line 170
    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 172
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 175
    move-result-object v7

    .line 176
    instance-of v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 178
    if-eqz v7, :cond_da

    .line 180
    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 182
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 185
    move-result-object v7

    .line 186
    check-cast v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 188
    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 191
    move-result v7

    .line 192
    iget-object v8, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 194
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 197
    move-result-object v8

    .line 198
    check-cast v8, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 200
    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 203
    move-result v8

    .line 204
    if-lt v6, v7, :cond_d2

    .line 206
    if-le v6, v8, :cond_d0

    .line 208
    goto :goto_d2

    .line 209
    :cond_d0
    move v7, v2

    .line 210
    goto :goto_d3

    .line 211
    :cond_d2
    :goto_d2
    move v7, v3

    .line 212
    :goto_d3
    if-eqz v7, :cond_da

    .line 214
    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 216
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 219
    :cond_da
    iget-object v7, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 221
    invoke-virtual {v7, v6}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(I)V

    .line 224
    :cond_df
    add-int/lit8 v5, v5, 0x1

    .line 226
    goto :goto_80

    .line 227
    :cond_e2
    add-int/lit8 v0, v0, 0x1

    .line 229
    goto :goto_6f

    .line 230
    :cond_e5
    return-void
.end method

.method private synthetic lambda$refreshPosInfoList$3()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->refreshPosInfoList()V

    .line 6
    return-void
.end method

.method private synthetic lambda$runLoadTask$2()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileInfo(Ljava/util/List;)Ljava/util/HashSet;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const-class v2, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 14
    monitor-enter v2

    .line 15
    :try_start_e
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v3

    .line 21
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_3d

    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 33
    iget-object v5, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 35
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_29

    .line 41
    goto :goto_14

    .line 42
    :cond_29
    iget-boolean v5, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 44
    if-eqz v5, :cond_30

    .line 46
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_30
    iget-object v5, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 51
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 58
    move-result v5

    .line 59
    iput-boolean v5, v4, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 61
    goto :goto_14

    .line 62
    :cond_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_9a

    .line 63
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_99

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    move-result-object v1

    .line 84
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_65

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 96
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_53

    .line 102
    :cond_65
    :try_start_65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 116
    invoke-virtual {v2}, Lcom/android/fileexplorer/service/DirParseSDK;->getService()Lcom/android/fileexplorer/service/IDirParse;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 123
    move-result v3

    .line 124
    if-nez v3, :cond_99

    .line 126
    if-eqz v2, :cond_99

    .line 128
    sget-object v3, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_99

    .line 136
    new-instance v1, Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    .line 138
    new-instance v3, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment$DirQueryCallback;

    .line 140
    invoke-direct {v3, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment$DirQueryCallback;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V

    .line 143
    invoke-direct {v1, v3}, Lcom/android/fileexplorer/controller/WeakQueryCallBack;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V

    .line 146
    invoke-interface {v2, v0, v1}, Lcom/android/fileexplorer/service/IDirParse;->queryDirInfo(Ljava/util/List;Lcom/android/fileexplorer/service/IQueryCallBack;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_94} :catch_95

    .line 149
    goto :goto_99

    .line 150
    :catch_95
    move-exception v0

    .line 151
    invoke-static {v0}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 154
    :cond_99
    :goto_99
    return-void

    .line 155
    :catchall_9a
    move-exception v0

    .line 156
    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    .line 157
    throw v0
.end method

.method private synthetic lambda$showRename$1(ILcom/android/fileexplorer/model/FileInfo;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    if-eqz v0, :cond_39

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_39

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_39

    .line 24
    const v1, 0x7f0a0186

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_39

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 35
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemRadioChecked(I)V

    .line 38
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    .line 40
    if-nez p1, :cond_34

    .line 42
    new-instance p1, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    move-result-object v1

    .line 48
    invoke-direct {p1, v1}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    .line 53
    :cond_34
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    .line 55
    invoke-virtual {p1, v0, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->show(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 58
    :cond_39
    :goto_39
    return-void
.end method

.method private onDataChanged(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    if-eqz p1, :cond_13

    .line 5
    const-string p1, "MirrorFileFragment"

    .line 7
    const-string v0, "onDataChanged"

    .line 9
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 14
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->notifyData()V

    .line 17
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->refreshPosInfoList()V

    .line 20
    :cond_13
    return-void
.end method

.method private onRefreshFileList(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    const-string v0, "MirrorFileFragment"

    .line 3
    if-nez p1, :cond_a

    .line 5
    const-string p1, "refreshing file list path is null"

    .line 7
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v2, "refreshing file list:"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->isViewMode()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_28

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setAdapter(Z)V

    .line 41
    :cond_28
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->runLoadTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method private refreshPosInfoList()V
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/b;

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/fragments/b;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
.end method

.method private registerReceiver()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_8

    .line 6
    const/4 v1, 0x7

    .line 7
    if-ne v0, v1, :cond_46

    .line 9
    :cond_8
    new-instance v0, Landroid/content/IntentFilter;

    .line 11
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 14
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v1, "file"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 46
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    .line 53
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 63
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasRegisterReceiver:Z

    .line 71
    :cond_46
    return-void
.end method

.method private runLoadTask(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "runLoadTask: path = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MirrorFileFragment"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadFileListTask:Landroid/os/AsyncTask;

    .line 25
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 30
    if-eqz v0, :cond_32

    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_32

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_32

    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 51
    :cond_32
    new-instance v0, Ljava/lang/Thread;

    .line 53
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/b;

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/fragments/b;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)V

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 64
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadFileListTask:Landroid/os/AsyncTask;

    .line 66
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 69
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;

    .line 71
    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 74
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadFileListTask:Landroid/os/AsyncTask;

    .line 76
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 79
    move-result-object p1

    .line 80
    new-array p2, v2, [Ljava/lang/Void;

    .line 82
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method

.method private setLayoutManager(Z)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_87

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_c

    .line 11
    goto/16 :goto_87

    .line 13
    :cond_c
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 21
    const/16 v1, 0xb

    .line 23
    if-nez v0, :cond_23

    .line 25
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v0, v2, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 38
    if-nez v0, :cond_32

    .line 40
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v0, v2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 51
    :cond_32
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 53
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 55
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 60
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 62
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 65
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    .line 67
    const/16 v2, 0x3c

    .line 69
    if-ne v0, v2, :cond_4e

    .line 71
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 73
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 75
    invoke-direct {v0, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 78
    goto :goto_55

    .line 79
    :cond_4e
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 81
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 83
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 86
    :goto_55
    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 90
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 92
    invoke-virtual {v3, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    .line 97
    if-ne v2, v0, :cond_6f

    .line 99
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    .line 104
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 106
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 108
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 111
    goto :goto_7c

    .line 112
    :cond_6f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 114
    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    .line 118
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 120
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 122
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 125
    :goto_7c
    if-eqz p1, :cond_86

    .line 127
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 129
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->notifyData()V

    .line 132
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->refreshPosInfoList()V

    .line 135
    :cond_86
    return-void

    .line 136
    :cond_87
    :goto_87
    const-string p1, "MirrorFileFragment"

    .line 138
    const-string v0, "setAdapter: activity is null or mFileListView is null."

    .line 140
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private showEmpty(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    if-eqz p1, :cond_d

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 14
    :cond_d
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->isRootPath()Z

    .line 17
    move-result p1

    .line 18
    const/16 v1, 0x8

    .line 20
    if-eqz p1, :cond_3b

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_21

    .line 32
    move v3, v2

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v3, v1

    .line 35
    :goto_22
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 40
    if-eqz v0, :cond_2c

    .line 42
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 47
    :goto_2e
    invoke-virtual {p1, v3}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 52
    if-eqz v0, :cond_36

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v1, v2

    .line 56
    :goto_37
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    goto :goto_45

    .line 60
    :cond_3b
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 62
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :goto_45
    return-void
.end method

.method private showRename(ILcom/android/fileexplorer/model/FileInfo;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/c;

    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/c;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;ILcom/android/fileexplorer/model/FileInfo;)V

    .line 8
    const-wide/16 p1, 0x0

    .line 10
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    return-void
.end method

.method private showStorageNotEnoughHint()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->isViewMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5a

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEnterFileViewTime()J

    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    cmp-long v2, v0, v2

    .line 15
    if-eqz v2, :cond_1e

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    move-result-wide v2

    .line 21
    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/model/TimeUtils;->getDaysBetween(JJ)J

    .line 24
    move-result-wide v0

    .line 25
    const-wide/16 v2, 0x1

    .line 27
    cmp-long v0, v0, v2

    .line 29
    if-ltz v0, :cond_53

    .line 31
    :cond_1e
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSpaceNotEnough()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_53

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    .line 39
    const v1, 0x7f0a042f

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/ToastTextView;->setLocationMode(I)V

    .line 52
    const/4 v2, 0x3

    .line 53
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/ToastTextView;->setIconType(I)V

    .line 56
    sget-boolean v2, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 58
    if-eqz v2, :cond_3f

    .line 60
    const v2, 0x7f1100cb

    .line 63
    goto :goto_42

    .line 64
    :cond_3f
    const v2, 0x7f1100ca

    .line 67
    :goto_42
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    const-wide/16 v3, 0x1388

    .line 73
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/fileexplorer/view/ToastTextView;->show(Ljava/lang/String;ZJ)V

    .line 76
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$12;

    .line 78
    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$12;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lcom/android/fileexplorer/view/ToastTextView;)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    move-result-wide v0

    .line 88
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/SettingManager;->setEnterFileViewTime(J)V

    .line 91
    :cond_5a
    return-void
.end method

.method private showSwitchGuidePop(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance v0, Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 5
    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 10
    const/16 v1, 0x8

    .line 12
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setArrowMode(I)V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 17
    const v1, 0x7f1100ce

    .line 20
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(I)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, p1, v1, v1, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 29
    return-void
.end method

.method private showVolumesPopup(Landroid/view/View;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getDeviceStr()Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 31
    const/4 v1, -0x1

    .line 32
    :try_start_1f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    move-result v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_24

    .line 36
    goto :goto_3c

    .line 37
    :catch_24
    move-exception v0

    .line 38
    const-string v2, "showVolumesPopup parseInt error: "

    .line 40
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    const-string v2, "MirrorFileFragment"

    .line 57
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    move v0, v1

    .line 61
    :goto_3c
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 63
    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->setItems(Ljava/util/List;)V

    .line 66
    if-eq v0, v1, :cond_48

    .line 68
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 70
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->setSelectedItem(I)V

    .line 73
    :cond_48
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 75
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;

    .line 77
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/util/List;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->setOnMenuListener(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;)V

    .line 83
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 85
    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_5f

    .line 91
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDropDownSingleChoiceMenu:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 93
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->show()V

    .line 96
    :cond_5f
    return-void
.end method


# virtual methods
.method public backToViewMode()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "title"

    .line 9
    const-string v2, ""

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    const-string v1, "android.intent.action.VIEW"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 21
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setAdapter(Z)V

    .line 28
    return-void
.end method

.method public createFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object v0
.end method

.method public getExtraPath()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getFileTransferDestType()I
    .registers 2

    .line 1
    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT_MIRROR:I

    .line 3
    return v0
.end method

.method public getItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    .line 1
    if-ltz p1, :cond_16

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    if-le p1, v0, :cond_d

    .line 13
    goto :goto_16

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    return-object p1

    .line 23
    :cond_16
    :goto_16
    const/4 p1, 0x0

    .line 24
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "MirrorFileFragment"

    return-object v0
.end method

.method public getNavigationBar()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mNavigationBar:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public handleHover(Z)V
    .registers 3

    .line 1
    const-string p1, "MirrorFileFragment"

    .line 3
    const-string v0, "handleHover: file hover"

    .line 5
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public handleInitStorageResult()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->handleInitStorageResult()V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasInitUI:Z

    .line 6
    if-nez v0, :cond_14

    .line 8
    const-string v0, "MirrorFileFragment"

    .line 10
    const-string v1, "handleInitStorageResult: initUI"

    .line 12
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initUI()V

    .line 18
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateUI()V

    .line 21
    :cond_14
    return-void
.end method

.method public hideRoot()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->notifyData()V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->hidePath()V

    .line 22
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRootView:Landroid/view/View;

    .line 3
    const v0, 0x7f0a0163

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 14
    const v0, 0x7f0a03d2

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 25
    const v0, 0x7f0a036a

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 34
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 36
    const v0, 0x102000a

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 45
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 51
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 53
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 56
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 58
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 60
    invoke-virtual {v1}, Lcom/android/fileexplorer/activity/BaseActivity;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 63
    move-result-object v1

    .line 64
    instance-of v1, v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 66
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 69
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 71
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 73
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 76
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 78
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    .line 80
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    .line 83
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setOnRightClickListener(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 88
    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 91
    new-instance p1, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 93
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 95
    invoke-direct {p1, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;-><init>(Ljava/util/List;)V

    .line 98
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 100
    const/4 v1, 0x1

    .line 101
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 104
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setLayoutManager(Z)V

    .line 107
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 109
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;

    .line 111
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    .line 114
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->setOnChoiceItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;)V

    .line 117
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mInitStorage:Z

    .line 119
    if-eqz p1, :cond_82

    .line 121
    const-string p1, "MirrorFileFragment"

    .line 123
    const-string v0, "onInflateView: initUI"

    .line 125
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initUI()V

    .line 131
    :cond_82
    return-void
.end method

.method public navigateTo(Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, ""

    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 12
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_16

    .line 22
    return-void

    .line 23
    :cond_16
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_37

    .line 37
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getExtraPath()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 43
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->forceChangePathTo(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 55
    return-void

    .line 56
    :cond_37
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_49

    .line 70
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getExtraPath()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    :cond_49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_56

    .line 80
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 82
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getRootPath()Lcom/android/fileexplorer/model/PathSegment;

    .line 85
    move-result-object p1

    .line 86
    goto :goto_60

    .line 87
    :cond_56
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 89
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    move-object p1, v0

    .line 97
    :goto_60
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 99
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 102
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/16 p3, 0x6a

    .line 6
    if-eq p1, p3, :cond_8

    .line 8
    goto :goto_16

    .line 9
    :cond_8
    const/4 p1, -0x1

    .line 10
    if-ne p2, p1, :cond_16

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 14
    instance-of p2, p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;

    .line 16
    if-eqz p2, :cond_16

    .line 18
    check-cast p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;

    .line 20
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->encryptReal()V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method

.method public onBack()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_e

    .line 14
    return v1

    .line 15
    :cond_e
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v0, v2, :cond_16

    .line 20
    const/4 v2, 0x7

    .line 21
    if-ne v0, v2, :cond_27

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 25
    if-eqz v0, :cond_27

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 33
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/model/StorageHelper;->isVolumeMounted(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_27

    .line 39
    return v1

    .line 40
    :cond_27
    const-string v0, "MirrorFileFragment"

    .line 42
    const-string v1, "onBack111"

    .line 44
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 49
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onBackPressed()Z

    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a04a4

    .line 8
    if-eq v0, v1, :cond_a

    .line 10
    goto :goto_14

    .line 11
    :cond_a
    const v0, 0x7f0a04a3

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showVolumesPopup(Landroid/view/View;)V

    .line 21
    :goto_14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    new-instance p1, Landroidx/lifecycle/c0;

    .line 6
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 13
    const-class v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 15
    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 21
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 23
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    .line 29
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->onDestroy()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasInitUI:Z

    .line 7
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->onDestroyView()V

    .line 4
    const-string v0, "MirrorFileFragment"

    .line 6
    const-string v1, "onDestroyView: "

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasRegisterReceiver:Z

    .line 13
    if-eqz v0, :cond_18

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasRegisterReceiver:Z

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadFileListTask:Landroid/os/AsyncTask;

    .line 27
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGetRefreshStateTask:Landroid/os/AsyncTask;

    .line 32
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 37
    if-eqz v0, :cond_29

    .line 39
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSortTask:Landroid/os/AsyncTask;

    .line 44
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 49
    if-eqz v0, :cond_35

    .line 51
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    .line 54
    :cond_35
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->dismissVolumesPopup()V

    .line 57
    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/MultiListTypeManager;->removeMultiListChangeListener(Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;)V

    .line 64
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDroppedDirInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 7
    iget-object v1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_12

    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDroppedDirInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 18
    return-void

    .line 19
    :cond_12
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 21
    if-nez v0, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    const-string v0, "onEventMainThread: event = "

    .line 26
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/android/fileexplorer/event/FileChangeEvent;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    const-string v1, "MirrorFileFragment"

    .line 43
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    .line 48
    if-eqz v0, :cond_67

    .line 50
    iget-object v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_5e

    .line 58
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->isViewMode()Z

    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_4f

    .line 64
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    move-result-object v0

    .line 70
    const-string v1, "android.intent.action.VIEW"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 77
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 80
    :cond_4f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 82
    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    .line 84
    iget-object v2, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->name:Ljava/lang/String;

    .line 86
    iget-object p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    .line 88
    invoke-direct {v1, v2, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 94
    goto :goto_67

    .line 95
    :cond_5e
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/d;

    .line 97
    const/4 v1, 0x2

    .line 98
    invoke-direct {v0, v1, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateUI(Ljava/lang/Runnable;)V

    .line 104
    :cond_67
    :goto_67
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    const-string v0, "MirrorFileFragment"

    .line 7
    const-string v1, "onImmersionMenuClick"

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 14
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_12
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public onKeyShortcut(I)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_e

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_7

    .line 7
    goto :goto_15

    .line 8
    :cond_7
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_15

    .line 14
    return v0

    .line 15
    :cond_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_15

    .line 21
    return v0

    .line 22
    :cond_15
    :goto_15
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onKeyShortcut(I)Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public onMultiListChange(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->checkValid()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_31

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_31

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v1, "onMultiListChange newType = "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "MirrorFileFragment"

    .line 31
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 37
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    .line 39
    if-eq p1, v0, :cond_31

    .line 41
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    .line 43
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    .line 46
    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setAdapter(Z)V

    .line 50
    :cond_31
    :goto_31
    return-void
.end method

.method public onQueryFinish()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->onDataChanged(Z)V

    .line 5
    return-void
.end method

.method public onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->handleFileDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onResume()V

    .line 4
    const-string v0, "MirrorFileFragment"

    .line 6
    const-string v1, "onResume: "

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initUI()V

    .line 14
    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showVolumeHintPopup(Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->dismissVolumesPopup()V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->rememberCurrentScroll()V

    .line 15
    :cond_e
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 20
    if-eqz p1, :cond_18

    .line 22
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->exitSelectedMode()V

    .line 25
    :cond_18
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v1, "onUserVisible: first = "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "MirrorFileFragment"

    .line 23
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$2;

    .line 28
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    .line 31
    const-wide/16 v1, 0xc8

    .line 33
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 36
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$3;

    .line 38
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)V

    .line 41
    const-wide/16 v1, 0x1f4

    .line 43
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 46
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_1a

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->prepareVisible()V

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 12
    move-result p1

    .line 13
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    .line 15
    if-eq p1, v0, :cond_1d

    .line 17
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mColumnType:I

    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setAdapter(Z)V

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->invisible()V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method public processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;

    .line 7
    if-eqz v0, :cond_3e

    .line 9
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;

    .line 15
    iget-object v1, v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;->path:Ljava/lang/String;

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_3e

    .line 23
    new-instance v1, Ljava/io/File;

    .line 25
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragState;->path:Ljava/lang/String;

    .line 27
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3e

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Ljava/io/File;

    .line 42
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 44
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3e

    .line 61
    const/4 p1, 0x0

    .line 62
    return p1

    .line 63
    :cond_3e
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public processStartDrag()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processStartDrag()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public setAdapter(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_1d

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 16
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->setSelectedMode(I)V

    .line 23
    if-eqz p1, :cond_1c

    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->setLayoutManager(Z)V

    .line 29
    :cond_1c
    return-void

    .line 30
    :cond_1d
    :goto_1d
    const-string p1, "MirrorFileFragment"

    .line 32
    const-string v0, "setAdapter: activity is null or mFileListView is null."

    .line 34
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public showRoot()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->showPath()V

    .line 12
    return-void
.end method

.method public showVolumeHintPopup(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_43

    .line 3
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    .line 5
    if-eqz p1, :cond_43

    .line 7
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mShowVolumesPop:Z

    .line 9
    if-nez p1, :cond_43

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 13
    if-eqz p1, :cond_46

    .line 15
    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_46

    .line 21
    iget p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 23
    const/4 v0, 0x2

    .line 24
    if-ne p1, v0, :cond_46

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mDevices:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result p1

    .line 32
    const/4 v0, 0x1

    .line 33
    if-le p1, v0, :cond_46

    .line 35
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->shouldShowVolumeSwitchPopup()Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_46

    .line 41
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVolumeSwitch:Landroid/widget/ImageView;

    .line 43
    if-eqz p1, :cond_3f

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3f

    .line 51
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVolumeSwitch:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_3f

    .line 59
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVolumeSwitch:Landroid/widget/ImageView;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showSwitchGuidePop(Landroid/view/View;)V

    .line 64
    :cond_3f
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->increaseShowVolumeSwitchPopupCount()V

    .line 67
    goto :goto_46

    .line 68
    :cond_43
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->dismissVolumePopHint()V

    .line 71
    :cond_46
    :goto_46
    return-void
.end method

.method public sortCurrentList()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSortTask:Landroid/os/AsyncTask;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 12
    :cond_b
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$11;

    .line 14
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$11;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v2, v2, [Ljava/lang/Void;

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mSortTask:Landroid/os/AsyncTask;

    .line 30
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

    .line 1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateUI(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 2
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

    .line 3
    :try_start_1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRefreshingDevices:Z

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mHasInitUI:Z

    if-nez v0, :cond_a

    goto :goto_36

    .line 4
    :cond_a
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2a

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2a

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGetRefreshStateTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 6
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mGetRefreshStateTask:Landroid/os/AsyncTask;

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_34

    .line 8
    :cond_2a
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->onRefreshFileList(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_38

    .line 9
    :goto_34
    monitor-exit p0

    return-void

    .line 10
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method
