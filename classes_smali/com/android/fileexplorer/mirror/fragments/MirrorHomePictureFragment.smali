.class public Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.source "MirrorHomePictureFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;,
        Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;
    }
.end annotation


# static fields
.field private static final PAGE_COUNT:I = 0x7d0

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mAdapterFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field private mColumnType:I

.field private mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoading:Z

.field private mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

.field private mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mRootView:Landroid/view/View;

.field private mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mStartIndex:I

.field private mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    const-string v0, "MirrorHomePictureFragment"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    .line 4
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mColumnType:I

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 39
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->loadGroupList(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    .line 3
    return p0
.end method

.method private handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-static {v0, p1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 8
    if-ne v0, p1, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 13
    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    .line 15
    const-string v0, "handleClickMenuSort"

    .line 17
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 31
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handlerSourceData(Ljava/util/List;)Ljava/util/List;

    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    .line 39
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    .line 44
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    const/4 p1, 0x1

    .line 48
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->refreshAdapter(Z)V

    .line 51
    return-void
.end method

.method private handleSwitchViewType(I)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mColumnType:I

    .line 6
    if-ne v0, p1, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mColumnType:I

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    .line 13
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handlerSourceData(Ljava/util/List;)Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->refreshAdapter(Z)V

    .line 31
    return-void
.end method

.method private handlerSourceData(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mColumnType:I

    .line 3
    const/16 v1, 0x3c

    .line 5
    if-ne v0, v1, :cond_1a

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 9
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->sortByFileSize(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x4

    .line 14
    if-eqz v0, :cond_14

    .line 16
    invoke-static {p1, v1}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createNoGroupDatas(Ljava/util/List;I)Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    goto :goto_1f

    .line 21
    :cond_14
    const/4 v0, 0x6

    .line 22
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createPictureFileGroupDatas(Ljava/util/List;II)Ljava/util/List;

    .line 25
    move-result-object p1

    .line 26
    goto :goto_1f

    .line 27
    :cond_1a
    const/4 v0, 0x5

    .line 28
    invoke-static {p1, v0}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createNoGroupDatas(Ljava/util/List;I)Ljava/util/List;

    .line 31
    move-result-object p1

    .line 32
    :goto_1f
    return-object p1
.end method

.method private initListView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a036a

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    .line 16
    const v1, 0x7f0a03d2

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x102000a

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 40
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    .line 42
    check-cast v1, Landroid/view/ViewGroup;

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setPinnedParent(Landroid/view/ViewGroup;)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 55
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 57
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 60
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 62
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 65
    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 67
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    .line 69
    invoke-direct {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;-><init>(Ljava/util/List;)V

    .line 72
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 74
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->refreshAdapter(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 85
    new-instance v2, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;

    .line 87
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V

    .line 90
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 93
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$3;

    .line 95
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 97
    invoke-direct {v0, p0, p0, v2, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 100
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 102
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    .line 107
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 109
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$4;

    .line 111
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 117
    return-void
.end method

.method private loadGroupList(Z)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "loadGroupList: isLoading = "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, ", category = Music"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 33
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    .line 35
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;

    .line 45
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 48
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;

    .line 50
    invoke-direct {v0, p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;-><init>(ZLcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V

    .line 53
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;

    .line 55
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 58
    move-result-object p1

    .line 59
    const/4 v1, 0x0

    .line 60
    new-array v1, v1, [Ljava/lang/Void;

    .line 62
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;
    .registers 1

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;-><init>()V

    .line 6
    return-object v0
.end method

.method private refreshAdapter(Z)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->setIfUpdateGroupActionMode(Z)V

    .line 26
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mColumnType:I

    .line 28
    const/16 v2, 0x3c

    .line 30
    const/4 v3, 0x1

    .line 31
    if-ne v0, v2, :cond_64

    .line 33
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 35
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 37
    const/16 v4, 0x8

    .line 39
    invoke-direct {v0, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 42
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    .line 44
    if-nez v2, :cond_3a

    .line 46
    new-instance v2, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 51
    move-result-object v4

    .line 52
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    .line 54
    invoke-direct {v2, v4, v5}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 57
    iput-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    .line 59
    :cond_3a
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 61
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->sortByFileSize(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_50

    .line 67
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager$a;

    .line 69
    invoke-direct {v2}, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V

    .line 72
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 75
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 77
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setEnablePanned(Z)V

    .line 80
    goto :goto_7f

    .line 81
    :cond_50
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;

    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$GroupGridSpanSizeLookup;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$1;)V

    .line 87
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 90
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 92
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;->setIfUpdateGroupActionMode(Z)V

    .line 95
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 97
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setEnablePanned(Z)V

    .line 100
    goto :goto_7f

    .line 101
    :cond_64
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 103
    if-nez v0, :cond_73

    .line 105
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 110
    move-result-object v2

    .line 111
    invoke-direct {v0, v2, v3}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;-><init>(Landroid/content/Context;Z)V

    .line 114
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 116
    :cond_73
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 118
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 120
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 123
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 125
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->setEnablePanned(Z)V

    .line 128
    :goto_7f
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 130
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 133
    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 135
    if-eqz v0, :cond_90

    .line 137
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 139
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mGroupItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;

    .line 141
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 144
    goto :goto_97

    .line 145
    :cond_90
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 147
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mListDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 149
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 152
    :goto_97
    if-eqz p1, :cond_9e

    .line 154
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 156
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 159
    :cond_9e
    return-void
.end method

.method private sortByFileSize(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 3
    if-eq v0, p1, :cond_b

    .line 5
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 7
    if-ne v0, p1, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 p1, 0x1

    .line 13
    :goto_c
    return p1
.end method


# virtual methods
.method public getDataBackToFront()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getDataBackToFront()V

    .line 4
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    .line 6
    const-string v1, "getDataBackToFront"

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->loadGroupList(Z)V

    .line 15
    return-void
.end method

.method public getStartIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mStartIndex:I

    .line 3
    return v0
.end method

.method public handleLoadDataResult(Lcom/android/fileexplorer/model/group/FileGroupDataBean;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/group/FileGroupDataBean<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mStartIndex:I

    .line 6
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 8
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 11
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 13
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 16
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 18
    iget-object p2, p2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {p2, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 25
    if-nez p1, :cond_1e

    .line 27
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->showEmptyView()V

    .line 30
    return-void

    .line 31
    :cond_1e
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    .line 33
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 36
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    .line 38
    iget-object v0, p1, Lcom/android/fileexplorer/model/group/FileGroupDataBean;->mDatas:Ljava/util/List;

    .line 40
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 45
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/group/FileGroupDataBean;->hasMore:Z

    .line 47
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 50
    sget-object p2, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    .line 52
    const-string v0, "handleLoadDataResult: hasMore = "

    .line 54
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object v0

    .line 58
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/group/FileGroupDataBean;->hasMore:Z

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    .line 72
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_52

    .line 78
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    .line 80
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 83
    :cond_52
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->showEmptyView()V

    .line 86
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

    .line 88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 91
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 93
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 96
    move-result-object p1

    .line 97
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 99
    if-eqz p1, :cond_73

    .line 101
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 103
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 109
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanIndexCache()V

    .line 116
    :cond_73
    return-void
.end method

.method public handleQueryData(ZII)Lcom/android/fileexplorer/model/group/FileGroupDataBean;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Lcom/android/fileexplorer/model/group/FileGroupDataBean<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    invoke-static {v1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 11
    move-result-object v2

    .line 12
    const/4 v5, 0x0

    .line 13
    move v3, p2

    .line 14
    move v4, p3

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 18
    move-result-object p2

    .line 19
    iget-object p3, p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 23
    invoke-static {v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->scanAllFolderFiles(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {p3, v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->mergeFileInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 30
    move-result-object p3

    .line 31
    iput-object p3, p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 33
    new-instance p3, Lcom/android/fileexplorer/model/group/FileGroupDataBean;

    .line 35
    invoke-direct {p3}, Lcom/android/fileexplorer/model/group/FileGroupDataBean;-><init>()V

    .line 38
    iget-boolean v0, p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 40
    iput-boolean v0, p3, Lcom/android/fileexplorer/model/group/FileGroupDataBean;->hasMore:Z

    .line 42
    if-nez p1, :cond_30

    .line 44
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    .line 46
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 49
    :cond_30
    iget-object p1, p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 51
    if-eqz p1, :cond_39

    .line 53
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    .line 55
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_39
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mFileList:Ljava/util/List;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handlerSourceData(Ljava/util/List;)Ljava/util/List;

    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p3, Lcom/android/fileexplorer/model/group/FileGroupDataBean;->mDatas:Ljava/util/List;

    .line 66
    return-object p3
.end method

.method public isEditMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/16 p3, 0x6a

    .line 6
    if-ne p3, p1, :cond_15

    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_15

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 13
    instance-of p2, p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    .line 15
    if-eqz p2, :cond_15

    .line 17
    check-cast p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->encrypt()V

    .line 22
    :cond_15
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 19
    const p1, 0x7f12032d

    .line 22
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 25
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mIsLoading:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$LoadGroupTask;

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->onDestroy()V

    .line 28
    :cond_1b
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sparse-switch v0, :sswitch_data_30

    .line 9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :sswitch_d
    const/16 p1, 0x32

    .line 16
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleSwitchViewType(I)V

    .line 19
    return v1

    .line 20
    :sswitch_13
    const/16 p1, 0x3c

    .line 22
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleSwitchViewType(I)V

    .line 25
    return v1

    .line 26
    :sswitch_19
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 31
    return v1

    .line 32
    :sswitch_1f
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 37
    return v1

    .line 38
    :sswitch_25
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 43
    return v1

    .line 44
    :sswitch_2b
    const/4 p1, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->loadGroupList(Z)V

    .line 48
    return v1

    .line 49
    :sswitch_data_30
    .sparse-switch
        0x7f0a01ec -> :sswitch_2b
        0x7f0a0266 -> :sswitch_25
        0x7f0a0268 -> :sswitch_1f
        0x7f0a0269 -> :sswitch_19
        0x7f0a026d -> :sswitch_13
        0x7f0a026e -> :sswitch_d
    .end sparse-switch
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    .line 3
    if-eqz p3, :cond_8

    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mInited:Z

    .line 8
    return-object p3

    .line 9
    :cond_8
    const p3, 0x7f0d00ba

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    .line 19
    const p2, 0x7f0a0163

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 28
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 30
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->initListView()V

    .line 33
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->showEmptyView()V

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mRootView:Landroid/view/View;

    .line 38
    return-object p1
.end method

.method public onPictureChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 3
    if-nez v0, :cond_9

    .line 5
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_2d

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_16

    .line 22
    goto :goto_2d

    .line 23
    :cond_16
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 25
    if-eqz p1, :cond_2c

    .line 27
    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_21

    .line 33
    goto :goto_2c

    .line 34
    :cond_21
    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    .line 36
    const-string v0, "onEventMainThread: load category music"

    .line 38
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->loadGroupList(Z)V

    .line 45
    :cond_2c
    :goto_2c
    return-void

    .line 46
    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 49
    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 7
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    .line 11
    const-string v1, "onUserVisible"

    .line 13
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    if-nez p1, :cond_15

    .line 18
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 20
    if-eqz p1, :cond_1f

    .line 22
    :cond_15
    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$1;

    .line 24
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V

    .line 27
    const-wide/16 v0, 0x32

    .line 29
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 32
    :cond_1f
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_c

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 9
    move-result p1

    .line 10
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->handleSwitchViewType(I)V

    .line 13
    :cond_c
    return-void
.end method

.method public showEmptyView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mAdapterFileList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 9
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 14
    const/16 v2, 0x8

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    move v4, v2

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v4, v3

    .line 22
    :goto_15
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    move v2, v3

    .line 30
    :cond_1d
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 35
    if-eqz v0, :cond_27

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mXRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 42
    :goto_29
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 45
    return-void
.end method
