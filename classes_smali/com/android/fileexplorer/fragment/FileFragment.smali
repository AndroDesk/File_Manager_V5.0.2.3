.class public Lcom/android/fileexplorer/fragment/FileFragment;
.super Lcom/android/fileexplorer/fragment/AbsFileFragment;
.source "FileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;
.implements Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_GROUPING_NUM:I = 0x1f4

.field private static final LOG_TAG:Ljava/lang/String; = "FileFragment"

.field private static final TAG:Ljava/lang/String; = "FileFragment"


# instance fields
.field public gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field private isRefreshingRvData:Z

.field public mBtnOpen:Landroid/widget/Button;

.field private mDataProcessor:Lcom/android/fileexplorer/util/DataProcessor;

.field private mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDropDownSingleChoiceMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

.field public mEventFromFolderClick:Z

.field private mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

.field public mFileItemVOList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;"
        }
    .end annotation
.end field

.field public mFirstIn:Z

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

.field private mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

.field public mHasInitUI:Z

.field private mLoadFileListTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLoadOwnerTask:Ljava/lang/Thread;

.field public mManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mNavigationBar:Landroid/view/View;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mOpenView:Landroid/view/View;

.field public mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

.field public mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

.field private mRefreshingDevices:Z

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

.field private mVolumeSwitch:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDevices:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mEventFromFolderClick:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mShowVolumesPop:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->isRefreshingRvData:Z

    .line 25
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/FileFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->isRefreshingRvData:Z

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/fragment/FileFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->isRefreshingRvData:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/FileFragment;ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/FileFragment;->getFileAmountAndShowLoading(ILjava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/FileFragment;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->showLoading(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$1102(Lcom/android/fileexplorer/fragment/FileFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRefreshingDevices:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/FileFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDevices:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->getPrimaryVolume(Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/FileFragment;->onRefreshFileList(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/fragment/FileFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->dismissVolumePopHint()V

    .line 4
    return-void
.end method

.method public static synthetic access$1602(Lcom/android/fileexplorer/fragment/FileFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mShowVolumesPop:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1700(Lcom/android/fileexplorer/fragment/FileFragment;I)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->getSelectedVolume(I)Lcom/android/fileexplorer/model/StorageInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->getMtpFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->getSmbFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->getLocalFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/FileFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->onDataChanged(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/FileFragment;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->showEmpty(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/FileFragment;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isLimitPath()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/FileFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->showNoFile(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/FileFragment;)Ljava/lang/Thread;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/fragment/FileFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->lambda$onFileChange$0()V

    return-void
.end method

.method private dismissVolumePopHint()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDropDownSingleChoiceMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->dismiss()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDropDownSingleChoiceMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 11
    :cond_a
    return-void
.end method

.method private getColumnType()I
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 13
    return v0
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
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getLastSelectedVolumePath()Ljava/lang/String;

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
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDevices:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v5

    .line 20
    if-ge v4, v5, :cond_66

    .line 22
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDevices:Ljava/util/ArrayList;

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

.method private getFileAmountAndShowLoading(ILjava/lang/String;)V
    .registers 4

    .line 1
    if-gtz p1, :cond_3f

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3f

    .line 9
    new-instance p1, Ljava/io/File;

    .line 11
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_15

    .line 20
    const/4 p1, 0x0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    array-length p1, p1

    .line 23
    :goto_16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 25
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_26

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 33
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 36
    move-result-object v0

    .line 37
    iput p1, v0, Lcom/android/fileexplorer/model/PathSegment;->fileAmount:I

    .line 39
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string p2, "path listFiles size:"

    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    const-string v0, "FileFragment"

    .line 61
    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_3f
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 66
    new-instance v0, Lcom/android/fileexplorer/fragment/FileFragment$6;

    .line 68
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment$6;-><init>(Lcom/android/fileexplorer/fragment/FileFragment;I)V

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method private getLocalFileList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
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
    move-result-object v1

    .line 23
    const-string v2, "FileFragment"

    .line 25
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v1, Lcom/android/fileexplorer/util/TimeCost;

    .line 30
    invoke-direct {v1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 33
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDataProcessor:Lcom/android/fileexplorer/util/DataProcessor;

    .line 35
    if-nez v3, :cond_2b

    .line 37
    new-instance v3, Lcom/android/fileexplorer/util/DataProcessor;

    .line 39
    invoke-direct {v3}, Lcom/android/fileexplorer/util/DataProcessor;-><init>()V

    .line 42
    iput-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDataProcessor:Lcom/android/fileexplorer/util/DataProcessor;

    .line 44
    :cond_2b
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDataProcessor:Lcom/android/fileexplorer/util/DataProcessor;

    .line 46
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    .line 48
    invoke-virtual {v4}, Lcom/android/fileexplorer/model/FileFragmentHelper;->getFilter()Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/util/DataProcessor;->setFilters(Lcom/android/fileexplorer/util/FileNameExtFilter;)V

    .line 55
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDataProcessor:Lcom/android/fileexplorer/util/DataProcessor;

    .line 57
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 59
    const/4 v5, 0x0

    .line 60
    if-eqz v4, :cond_45

    .line 62
    invoke-virtual {v4}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->isRootPath()Z

    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_45

    .line 68
    const/4 v4, 0x1

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v4, v5

    .line 71
    :goto_46
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/util/DataProcessor;->setRootPath(Z)V

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_112

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_112

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_62

    .line 97
    goto/16 :goto_112

    .line 99
    :cond_62
    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 102
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    .line 104
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileFragmentHelper;->getFilter()Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 111
    move-result-object p1

    .line 112
    const-string v0, " list File Time:"

    .line 114
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 117
    if-eqz p1, :cond_fd

    .line 119
    const-string v0, "getLocalFileList listFiles.size = "

    .line 121
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    move-result-object v0

    .line 125
    array-length v4, p1

    .line 126
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 139
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 141
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 144
    new-instance v4, Ljava/util/ArrayList;

    .line 146
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 149
    move-result-object p1

    .line 150
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 153
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDataProcessor:Lcom/android/fileexplorer/util/DataProcessor;

    .line 155
    invoke-virtual {p1, v0, v4}, Lcom/android/fileexplorer/util/DataProcessor;->partitionTask(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/ArrayList;)V

    .line 158
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    move p1, v5

    .line 162
    :goto_a1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 165
    move-result v0

    .line 166
    if-ge p1, v0, :cond_c1

    .line 168
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 174
    invoke-static {v0}, Lcom/android/fileexplorer/view/pcmode/PcModeUtils;->getShowPcModeLayout(Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_be

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 183
    move-result-object v4

    .line 184
    invoke-static {v4, v0}, Lcom/android/fileexplorer/view/pcmode/PcModeUtils;->getPcModeFileInfo(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/PcModeFileInfo;

    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v3, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_be
    add-int/lit8 p1, p1, 0x1

    .line 193
    goto :goto_a1

    .line 194
    :cond_c1
    const-string p1, "convert File Time:"

    .line 196
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 199
    :try_start_c6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 206
    move-result-object p1

    .line 207
    const-string v0, "from_mi_share"

    .line 209
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_d9

    .line 215
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MiShare:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 217
    goto :goto_db

    .line 218
    :cond_d9
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 220
    :goto_db
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 223
    move-result-object p1

    .line 224
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 231
    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 234
    move-result-object v0

    .line 235
    iget v4, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 237
    aget-object v0, v0, v4

    .line 239
    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 241
    invoke-static {v3, v0, p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V

    .line 244
    const-string p1, "sort Time:"

    .line 246
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c6 .. :try_end_f8} :catch_f9

    .line 249
    goto :goto_fd

    .line 250
    :catch_f9
    move-exception p1

    .line 251
    invoke-static {p1}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 254
    :cond_fd
    :goto_fd
    const-string p1, "getLocalFileList end size = "

    .line 256
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 263
    move-result v0

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object p1

    .line 271
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-object v3

    .line 275
    :cond_112
    :goto_112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 277
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string p1, "is not exists"

    .line 285
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object p1

    .line 292
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-object v3
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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDevices:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDevices:Ljava/util/ArrayList;

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
    const-string v0, "FileFragment"

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_6a

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 19
    if-eqz v1, :cond_6

    .line 21
    iget-boolean v2, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    .line 23
    if-eqz v2, :cond_6

    .line 25
    iget-object v2, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_6

    .line 33
    iget-object v2, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_6

    .line 41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2f

    .line 47
    goto :goto_6

    .line 48
    :cond_2f
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_4b

    .line 54
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    iput-object p1, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->owner:Ljava/lang/String;

    .line 75
    goto :goto_64

    .line 76
    :cond_4b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    iput-object p1, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->owner:Ljava/lang/String;

    .line 101
    :goto_64
    iget-object p1, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 103
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 105
    iput-object p2, p1, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    .line 107
    :cond_6a
    return-void
.end method

.method private initFragmentHelper()V
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/FileFragmentHelper;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/model/FileFragmentHelper;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 10
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/FileFragmentHelper;->init(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method private initListView()V
    .registers 9

    .line 1
    const-string v0, "FileFragment"

    .line 3
    const-string v1, "initListView: "

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/android/fileexplorer/fragment/FileFragment$2;

    .line 10
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 12
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 14
    iget-object v6, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 16
    iget v7, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 18
    move-object v2, v0

    .line 19
    move-object v3, p0

    .line 20
    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/fragment/FileFragment$2;-><init>(Lcom/android/fileexplorer/fragment/FileFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;I)V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/FileFragment;->setAdapter(Z)V

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 36
    new-instance v1, Lcom/android/fileexplorer/fragment/FileFragment$3;

    .line 38
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/FileFragment$3;-><init>(Lcom/android/fileexplorer/fragment/FileFragment;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 44
    return-void
.end method

.method private initUI()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mHasInitUI:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mInitStorage:Z

    .line 8
    const-string v1, "FileFragment"

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 20
    if-nez v0, :cond_16

    .line 22
    return-void

    .line 23
    :cond_16
    const-string v0, "initUI: "

    .line 25
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->initFragmentHelper()V

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 33
    const v1, 0x7f0a02ca

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNavigationBar:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 44
    const v1, 0x7f0a04a3

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ImageView;

    .line 53
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mVolumeSwitch:Landroid/widget/ImageView;

    .line 55
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 57
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 59
    iget v2, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 61
    invoke-direct {v0, v1, p0, v2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;I)V

    .line 64
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 66
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 68
    if-eqz v1, :cond_5b

    .line 70
    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    .line 72
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 74
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 80
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    .line 92
    :cond_5b
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->initListView()V

    .line 95
    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/MultiListTypeManager;->addMultiListChangeListener(Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;)V

    .line 102
    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mHasInitUI:Z

    .line 105
    return-void
.end method

.method private isLimitPath()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method private synthetic lambda$onFileChange$0()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->updateUI()V

    .line 4
    return-void
.end method

.method private onDataChanged(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 3
    if-eqz p1, :cond_10

    .line 5
    const-string p1, "FileFragment"

    .line 7
    const-string v0, "onDataChanged"

    .line 9
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 14
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->notifyData()V

    .line 17
    :cond_10
    return-void
.end method

.method private onRefreshFileList(Ljava/lang/String;I)V
    .registers 6

    .line 1
    const-string v0, "FileFragment"

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->isViewMode()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_28

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/FileFragment;->setAdapter(Z)V

    .line 41
    :cond_28
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/FileFragment;->runLoadTask(Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method private refreshViewModeAndSortType()V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

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
    if-eq v1, v2, :cond_15

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onViewModeChanged(I)V

    .line 22
    :cond_15
    iget v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 24
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 26
    iget v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 28
    if-eq v1, v2, :cond_24

    .line 30
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->getMethod(I)Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 37
    :cond_24
    iget-boolean v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 45
    iget-boolean v2, v2, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_3d

    .line 57
    iget-boolean v1, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onSortOrderChanged(Z)V

    .line 62
    :cond_3d
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 64
    return-void
.end method

.method private runLoadTask(Ljava/lang/String;I)V
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
    const-string v1, "FileFragment"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "/MiShare"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez v0, :cond_2c

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 39
    move-result-object v0

    .line 40
    const-string v2, "from_mi_share"

    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mLoadFileListTask:Landroid/os/AsyncTask;

    .line 47
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 52
    if-eqz v0, :cond_48

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_48

    .line 60
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_48

    .line 68
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 73
    :cond_48
    new-instance v0, Ljava/lang/Thread;

    .line 75
    new-instance v2, Lcom/android/fileexplorer/fragment/FileFragment$4;

    .line 77
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/FileFragment$4;-><init>(Lcom/android/fileexplorer/fragment/FileFragment;)V

    .line 80
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 85
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mLoadFileListTask:Landroid/os/AsyncTask;

    .line 87
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 90
    new-instance v0, Lcom/android/fileexplorer/fragment/FileFragment$5;

    .line 92
    invoke-direct {v0, p0, p2, p1}, Lcom/android/fileexplorer/fragment/FileFragment$5;-><init>(Lcom/android/fileexplorer/fragment/FileFragment;ILjava/lang/String;)V

    .line 95
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mLoadFileListTask:Landroid/os/AsyncTask;

    .line 97
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 100
    move-result-object p1

    .line 101
    new-array p2, v1, [Ljava/lang/Void;

    .line 103
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    return-void
.end method

.method private setLayoutManager(Z)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4b

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_4b

    .line 12
    :cond_b
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->getColumnType()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_20

    .line 19
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 28
    move-result v4

    .line 29
    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 32
    goto :goto_29

    .line 33
    :cond_20
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v3

    .line 39
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 42
    :goto_29
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 44
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 47
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 49
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 51
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 54
    if-ne v1, v0, :cond_3d

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 61
    goto :goto_43

    .line 62
    :cond_3d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 68
    :goto_43
    if-eqz p1, :cond_4a

    .line 70
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 72
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->notifyData()V

    .line 75
    :cond_4a
    return-void

    .line 76
    :cond_4b
    :goto_4b
    const-string p1, "FileFragment"

    .line 78
    const-string v0, "setAdapter: activity is null or mFileListView is null."

    .line 80
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private showEmpty(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isRootPath()Z

    .line 17
    move-result p1

    .line 18
    const/16 v1, 0x8

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz p1, :cond_3e

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 25
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 40
    if-eqz v0, :cond_2c

    .line 42
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 47
    :goto_2e
    invoke-virtual {p1, v3}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/fragment/FileFragment;->setOpenViewVisible(Z)V

    .line 62
    goto :goto_80

    .line 63
    :cond_3e
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isLimitPath()Z

    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_67

    .line 69
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 71
    const/4 v3, 0x1

    .line 72
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 75
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 77
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 82
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 84
    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 87
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->getModeType()I

    .line 95
    move-result p1

    .line 96
    const/4 v0, 0x2

    .line 97
    if-eq p1, v0, :cond_63

    .line 99
    move v2, v3

    .line 100
    :cond_63
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/fragment/FileFragment;->setOpenViewVisible(Z)V

    .line 103
    goto :goto_80

    .line 104
    :cond_67
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 106
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 116
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 118
    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 121
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 123
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/fragment/FileFragment;->setOpenViewVisible(Z)V

    .line 129
    :goto_80
    return-void
.end method

.method private showLoading(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isRootPath()Z

    .line 10
    move-result v1

    .line 11
    const v2, 0x7f11023b

    .line 14
    const/16 v3, 0x8

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v1, :cond_3a

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 21
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    .line 24
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 26
    if-eqz v0, :cond_1d

    .line 28
    move v1, v4

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v1, v3

    .line 31
    :goto_1e
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 36
    if-eqz v0, :cond_28

    .line 38
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 43
    :goto_2a
    invoke-virtual {p1, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 48
    if-eqz v0, :cond_32

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v3, v4

    .line 52
    :goto_33
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    invoke-virtual {p0, v4}, Lcom/android/fileexplorer/fragment/FileFragment;->setOpenViewVisible(Z)V

    .line 58
    goto :goto_a5

    .line 59
    :cond_3a
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isLimitPath()Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_63

    .line 65
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 67
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    .line 70
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 72
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 77
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 79
    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 82
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 84
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mBtnOpen:Landroid/widget/Button;

    .line 89
    new-instance v0, Lcom/android/fileexplorer/fragment/FileFragment$7;

    .line 91
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/FileFragment$7;-><init>(Lcom/android/fileexplorer/fragment/FileFragment;)V

    .line 94
    const-wide/16 v1, 0xc8

    .line 96
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    goto :goto_a5

    .line 100
    :cond_63
    const/16 v0, 0x1f4

    .line 102
    const/4 v1, 0x1

    .line 103
    if-le p1, v0, :cond_72

    .line 105
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mEventFromFolderClick:Z

    .line 107
    if-nez p1, :cond_70

    .line 109
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFirstIn:Z

    .line 111
    if-eqz p1, :cond_72

    .line 113
    :cond_70
    move p1, v1

    .line 114
    goto :goto_73

    .line 115
    :cond_72
    move p1, v4

    .line 116
    :goto_73
    if-eqz p1, :cond_8c

    .line 118
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 120
    invoke-virtual {p1, v1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    .line 123
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 125
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 130
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 132
    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 135
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 137
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    goto :goto_a2

    .line 141
    :cond_8c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 143
    invoke-virtual {p1, v3}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 148
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 153
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 155
    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 158
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 160
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :goto_a2
    invoke-virtual {p0, v4}, Lcom/android/fileexplorer/fragment/FileFragment;->setOpenViewVisible(Z)V

    .line 166
    :goto_a5
    return-void
.end method

.method private showNoFile(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_1e

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 18
    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 23
    const/16 v0, 0x8

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->setOpenViewVisible(Z)V

    .line 31
    :cond_1e
    return-void
.end method

.method private showStorageNotEnoughHint()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->isViewMode()Z

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

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
    new-instance v1, Lcom/android/fileexplorer/fragment/FileFragment$11;

    .line 78
    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/fragment/FileFragment$11;-><init>(Lcom/android/fileexplorer/fragment/FileFragment;Lcom/android/fileexplorer/view/ToastTextView;)V

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 12
    const/16 v1, 0x8

    .line 14
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setArrowMode(I)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 19
    const v1, 0x7f1100ce

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(I)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, p1, v1, v1, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 31
    return-void
.end method

.method private showVolumesPopup(Landroid/view/View;)V
    .registers 5

    .line 1
    new-instance v0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDropDownSingleChoiceMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 12
    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setAnchorView(Landroid/view/View;)V

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->getDeviceStr()Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 33
    const/4 v1, -0x1

    .line 34
    :try_start_21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    move-result v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_26

    .line 38
    goto :goto_3e

    .line 39
    :catch_26
    move-exception v0

    .line 40
    const-string v2, "showVolumesPopup parseInt error: "

    .line 42
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    const-string v2, "FileFragment"

    .line 59
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    move v0, v1

    .line 63
    :goto_3e
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDropDownSingleChoiceMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 65
    invoke-virtual {v2, p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setItems(Ljava/util/List;)V

    .line 68
    if-eq v0, v1, :cond_4a

    .line 70
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDropDownSingleChoiceMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 72
    invoke-virtual {v1, v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    .line 75
    :cond_4a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDropDownSingleChoiceMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 77
    new-instance v1, Lcom/android/fileexplorer/fragment/FileFragment$9;

    .line 79
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment$9;-><init>(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/util/List;)V

    .line 82
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setOnMenuListener(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;)V

    .line 85
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 87
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_61

    .line 93
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDropDownSingleChoiceMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 95
    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->show()V

    .line 98
    :cond_61
    return-void
.end method


# virtual methods
.method public backToViewMode()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "title"

    .line 13
    const-string v2, ""

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v1, "android.intent.action.VIEW"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 25
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/FileFragment;->setAdapter(Z)V

    .line 36
    return-void
.end method

.method public createFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 10
    move-result-object v0

    .line 11
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
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public getFileTransferDestType()I
    .registers 2

    .line 1
    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT:I

    .line 3
    return v0
.end method

.method public getItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    .line 1
    if-ltz p1, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    if-le p1, v0, :cond_d

    .line 13
    goto :goto_1a

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 22
    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 24
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 26
    return-object p1

    .line 27
    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0066

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1f

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 24
    iget-object v2, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 26
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_b

    .line 32
    :cond_1f
    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "FileFragment"

    return-object v0
.end method

.method public getMarginSide()I
    .registers 2

    const v0, 0x7f0701f4

    return v0
.end method

.method public getModeType()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getNavigationBar()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNavigationBar:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .registers 2

    const-string v0, "phone"

    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public handleInitStorageResult()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->handleInitStorageResult()V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mHasInitUI:Z

    .line 6
    if-nez v0, :cond_17

    .line 8
    const-string v0, "FileFragment"

    .line 10
    const-string v1, "handleInitStorageResult: initUI"

    .line 12
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFirstIn:Z

    .line 18
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->initUI()V

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->updateUI()V

    .line 24
    :cond_17
    return-void
.end method

.method public initDecoration()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->getColumnType()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v1, v0, :cond_50

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f07028f

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v1

    .line 30
    const v2, 0x7f070756

    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    move-result v1

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v2

    .line 41
    const v3, 0x7f0701d4

    .line 44
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v3

    .line 52
    const v4, 0x7f0701d1

    .line 55
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    move-result v3

    .line 59
    new-instance v4, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 61
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 64
    move-result v5

    .line 65
    invoke-direct {v4, v0, v1, v5}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(III)V

    .line 68
    iput-object v4, p0, Lcom/android/fileexplorer/fragment/FileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {v4, v3, v2, v0, v0}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 76
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 78
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 81
    :cond_50
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->initView(Landroid/view/View;)V

    .line 4
    const-string v0, "FileFragment"

    .line 6
    const-string v1, "initView: "

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 13
    const v1, 0x7f0a0163

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/view/EmptyView;

    .line 22
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 24
    const v1, 0x7f0a03d2

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    .line 33
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 35
    const v1, 0x7f0a036a

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 44
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 46
    const v1, 0x7f0a02f4

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/Button;

    .line 55
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mBtnOpen:Landroid/widget/Button;

    .line 57
    const v1, 0x7f0a02f5

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mOpenView:Landroid/view/View;

    .line 66
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mBtnOpen:Landroid/widget/Button;

    .line 68
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x102000a

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 80
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 86
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_6a

    .line 96
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 98
    new-instance v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 100
    invoke-direct {v3}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    .line 103
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 106
    goto :goto_70

    .line 107
    :cond_6a
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 109
    const/4 v3, 0x0

    .line 110
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 113
    :goto_70
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 115
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 117
    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 120
    move-result-object v3

    .line 121
    instance-of v3, v3, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 123
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 128
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 130
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 133
    new-instance v1, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 135
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 137
    invoke-direct {v1, v3}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;-><init>(Ljava/util/List;)V

    .line 140
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 142
    const/4 v3, 0x1

    .line 143
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 146
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/FileFragment;->setLayoutManager(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 151
    new-instance v2, Lcom/android/fileexplorer/fragment/FileFragment$1;

    .line 153
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/FileFragment$1;-><init>(Lcom/android/fileexplorer/fragment/FileFragment;)V

    .line 156
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setOnChoiceItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;)V

    .line 159
    const-string v1, "PAGE_FileFragment"

    .line 161
    invoke-virtual {p0, p1, v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 164
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mInitStorage:Z

    .line 166
    if-eqz p1, :cond_af

    .line 168
    const-string p1, "onInflateView: initUI"

    .line 170
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->initUI()V

    .line 176
    :cond_af
    return-void
.end method

.method public isRootPath()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    if-eqz v0, :cond_17

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 7
    if-eqz v1, :cond_17

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 15
    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

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

.method public isXspace()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->isXspace()Z

    .line 10
    move-result v0

    .line 11
    return v0
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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 14
    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    .line 16
    if-eqz p2, :cond_16

    .line 18
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    .line 20
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->encryptReal()V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method

.method public onBack()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionModeNotTimeInterval()Z

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_e

    .line 14
    return v1

    .line 15
    :cond_e
    iget v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 25
    if-eqz v0, :cond_27

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

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
    const-string v0, "FileFragment"

    .line 42
    const-string v1, "onBack111"

    .line 44
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 49
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onBackPressed()Z

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
    const v1, 0x7f0a02f4

    .line 8
    if-eq v0, v1, :cond_13

    .line 10
    const v1, 0x7f0a04a4

    .line 13
    if-eq v0, v1, :cond_f

    .line 15
    goto :goto_1a

    .line 16
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->showVolumesPopup(Landroid/view/View;)V

    .line 19
    goto :goto_1a

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->openDocumentUi(Landroid/content/Context;)V

    .line 27
    :goto_1a
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->getColumnType()I

    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne v0, p1, :cond_e

    .line 11
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->initDecoration()V

    .line 14
    goto :goto_3b

    .line 15
    :cond_e
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_36

    .line 21
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_36

    .line 31
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    const v0, 0x7f0a0074

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/ImageView;

    .line 48
    if-eqz p1, :cond_36

    .line 50
    const/16 v0, 0x8

    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :cond_36
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 57
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 60
    :goto_3b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12011f

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->onDestroy()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mHasInitUI:Z

    .line 7
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->onDestroyView()V

    .line 4
    const-string v0, "FileFragment"

    .line 6
    const-string v1, "onDestroyView: "

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mLoadFileListTask:Landroid/os/AsyncTask;

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mGetRefreshStateTask:Landroid/os/AsyncTask;

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_1e

    .line 26
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 29
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mLoadOwnerTask:Ljava/lang/Thread;

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSortTask:Landroid/os/AsyncTask;

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 38
    if-eqz v0, :cond_2a

    .line 40
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    .line 43
    :cond_2a
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->dismissVolumesPopup()V

    .line 46
    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/MultiListTypeManager;->removeMultiListChangeListener(Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 55
    if-eqz v0, :cond_3b

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setOnChoiceItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;)V

    .line 60
    :cond_3b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDataProcessor:Lcom/android/fileexplorer/util/DataProcessor;

    .line 62
    if-eqz v0, :cond_42

    .line 64
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/DataProcessor;->shutdown()V

    .line 67
    :cond_42
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "onEventMainThread: event = "

    .line 8
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/event/FileChangeEvent;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FileFragment"

    .line 25
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_63

    .line 36
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->isViewMode()Z

    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_45

    .line 42
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsUserVisible:Z

    .line 44
    if-eqz v0, :cond_45

    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 48
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 55
    move-result-object v0

    .line 56
    const-string v1, "android.intent.action.VIEW"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 63
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 70
    :cond_45
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsUserVisible:Z

    .line 72
    if-eqz v0, :cond_57

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 76
    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    .line 78
    iget-object v2, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->name:Ljava/lang/String;

    .line 80
    iget-object p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->path:Ljava/lang/String;

    .line 82
    invoke-direct {v1, v2, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 88
    :cond_57
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 90
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_72

    .line 96
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->handleActionBar()V

    .line 99
    goto :goto_72

    .line 100
    :cond_63
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->fromFolderClick:Z

    .line 102
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mEventFromFolderClick:Z

    .line 104
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 106
    new-instance v0, Landroidx/activity/b;

    .line 108
    const/4 v1, 0x6

    .line 109
    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_72
    :goto_72
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    const-string v0, "FileFragment"

    .line 7
    const-string v1, "onImmersionMenuClick"

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 14
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_15

    .line 14
    return v0

    .line 15
    :cond_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_15

    .line 21
    return v0

    .line 22
    :cond_15
    :goto_15
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onKeyShortcut(I)Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public onMultiListChange(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->checkValid()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_28

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_28

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
    move-result-object p1

    .line 29
    const-string v0, "FileFragment"

    .line 31
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->exitActionMode()Z

    .line 37
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->setAdapter(Z)V

    .line 41
    :cond_28
    :goto_28
    return-void
.end method

.method public onNavigatorConfigChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    if-eqz v1, :cond_2e

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 22
    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 33
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 35
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 44
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 47
    :cond_2e
    return-void
.end method

.method public onNewFolder()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    const v1, 0x7f0a02dc

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onOptionsItemSelected(I)Z

    .line 11
    :cond_a
    return-void
.end method

.method public onOtgChangeEvent(Lcom/android/fileexplorer/event/OtgChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->dismissVolumesPopup()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->updateUI()V

    .line 7
    return-void
.end method

.method public onQueryFinish()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/FileFragment;->onDataChanged(Z)V

    .line 5
    return-void
.end method

.method public onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/FileFragment;->handleFileDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    .line 4
    const-string v0, "FileFragment"

    .line 6
    const-string v1, "onResume: "

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->initUI()V

    .line 14
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 6
    if-eqz v0, :cond_10

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "extra_path"

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_10
    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/FileFragment;->showVolumeHintPopup(Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->dismissVolumesPopup()V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->rememberCurrentScroll()V

    .line 15
    :cond_e
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserInvisible(Z)V

    .line 18
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->refreshViewModeAndSortType()V

    .line 7
    return-void
.end method

.method public processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    .line 7
    if-eqz v0, :cond_3e

    .line 9
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;

    .line 15
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;->path:Ljava/lang/String;

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_3e

    .line 23
    new-instance v1, Ljava/io/File;

    .line 25
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragState;->path:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 44
    invoke-virtual {v2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

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
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public processStartDrag()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->processStartDrag()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAllChecked(Z)V

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
    if-eqz v0, :cond_1e

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_1e

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 14
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->getModeType()I

    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->setSelectedMode(I)V

    .line 21
    if-eqz p1, :cond_1a

    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->setLayoutManager(Z)V

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->initDecoration()V

    .line 30
    return-void

    .line 31
    :cond_1e
    :goto_1e
    const-string p1, "FileFragment"

    .line 33
    const-string v0, "setAdapter: activity is null or mFileListView is null."

    .line 35
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setOpenViewVisible(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_6

    .line 5
    :cond_4
    const/16 p1, 0x8

    .line 7
    :goto_6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mOpenView:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mBtnOpen:Landroid/widget/Button;

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    return-void
.end method

.method public showVolumeHintPopup(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_43

    .line 3
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsUserVisible:Z

    .line 5
    if-eqz p1, :cond_43

    .line 7
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mShowVolumesPop:Z

    .line 9
    if-nez p1, :cond_43

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 13
    if-eqz p1, :cond_46

    .line 15
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_46

    .line 21
    iget p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 23
    const/4 v0, 0x2

    .line 24
    if-ne p1, v0, :cond_46

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mDevices:Ljava/util/ArrayList;

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mVolumeSwitch:Landroid/widget/ImageView;

    .line 43
    if-eqz p1, :cond_3f

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3f

    .line 51
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mVolumeSwitch:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_3f

    .line 59
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mVolumeSwitch:Landroid/widget/ImageView;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->showSwitchGuidePop(Landroid/view/View;)V

    .line 64
    :cond_3f
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->increaseShowVolumeSwitchPopupCount()V

    .line 67
    goto :goto_46

    .line 68
    :cond_43
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->dismissVolumePopHint()V

    .line 71
    :cond_46
    :goto_46
    return-void
.end method

.method public sortCurrentList()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->exitActionMode()Z

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSortTask:Landroid/os/AsyncTask;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 12
    :cond_b
    new-instance v0, Lcom/android/fileexplorer/fragment/FileFragment$10;

    .line 14
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/FileFragment$10;-><init>(Lcom/android/fileexplorer/fragment/FileFragment;)V

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
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mSortTask:Landroid/os/AsyncTask;

    .line 30
    return-void
.end method

.method public updateChoiceItems()V
    .registers 1

    return-void
.end method

.method public declared-synchronized updateUI()V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRefreshingDevices:Z

    .line 4
    if-nez v0, :cond_86

    .line 6
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mHasInitUI:Z

    .line 8
    if-nez v0, :cond_b

    .line 10
    goto/16 :goto_86

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mFirstIn:Z

    .line 20
    if-eqz v1, :cond_27

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 24
    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_27

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 32
    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 35
    move-result-object v1

    .line 36
    iget v2, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mFirstInFileAmount:I

    .line 38
    iput v2, v1, Lcom/android/fileexplorer/model/PathSegment;->fileAmount:I

    .line 40
    :cond_27
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 42
    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentFileAmount()I

    .line 45
    move-result v1

    .line 46
    const-string v2, "FileFragment"

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v4, "mCurrentDeviceIndex: "

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v4, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v4, ";path:"

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v4, ";fileAmount:"

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget v2, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 88
    const/4 v3, 0x6

    .line 89
    if-eq v2, v3, :cond_75

    .line 91
    const/16 v3, 0xc

    .line 93
    if-eq v2, v3, :cond_75

    .line 95
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mGetRefreshStateTask:Landroid/os/AsyncTask;

    .line 97
    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 100
    new-instance v2, Lcom/android/fileexplorer/fragment/FileFragment$8;

    .line 102
    invoke-direct {v2, p0, v1, v0}, Lcom/android/fileexplorer/fragment/FileFragment$8;-><init>(Lcom/android/fileexplorer/fragment/FileFragment;ILjava/lang/String;)V

    .line 105
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mGetRefreshStateTask:Landroid/os/AsyncTask;

    .line 107
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 110
    move-result-object v0

    .line 111
    const/4 v1, 0x0

    .line 112
    new-array v1, v1, [Ljava/lang/Void;

    .line 114
    invoke-virtual {v2, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    goto :goto_84

    .line 118
    :cond_75
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 120
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 126
    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentFileAmount()I

    .line 129
    move-result v1

    .line 130
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->onRefreshFileList(Ljava/lang/String;I)V
    :try_end_84
    .catchall {:try_start_1 .. :try_end_84} :catchall_8f

    .line 133
    :goto_84
    monitor-exit p0

    .line 134
    return-void

    .line 135
    :cond_86
    :goto_86
    :try_start_86
    const-string v0, "FileFragment"

    .line 137
    const-string v1, "skip updateUI: "

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_8f

    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 144
    :catchall_8f
    move-exception v0

    .line 145
    monitor-exit p0

    .line 146
    throw v0
.end method
