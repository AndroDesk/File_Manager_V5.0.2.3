.class public abstract Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.source "MirrorBaseSecondaryDocFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$OnNotifyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;
    }
.end annotation


# static fields
.field private static final DOC_COLUMN_COUNT:I = 0x8

.field private static final PAGE_COUNT:I = 0xc8


# instance fields
.field public TAG:Ljava/lang/String;

.field public mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

.field public mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field private mColumnType:I

.field private mCurrentMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field private mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

.field private mInEnableLoadMore:Z

.field private mIsLoading:Z

.field private mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

.field private mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

.field private mRootView:Landroid/view/View;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mStartIndex:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    .line 4
    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 6
    const-string v0, "MirrorBaseSecondaryDocFragment"

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mIsLoading:Z

    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mInEnableLoadMore:Z

    .line 23
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mStartIndex:I

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mColumnType:I

    .line 31
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->loadGroupList(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mIsLoading:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mInEnableLoadMore:Z

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    return-object p0
.end method

.method private checkAndSetSortMethod()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "checkNeedSort: mCurrentMethod = "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCurrentMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, ", doc.sort method = "

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 25
    invoke-static {v2}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCurrentMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 41
    invoke-static {v2}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 44
    move-result-object v1

    .line 45
    if-eq v0, v1, :cond_30

    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    const/4 v0, 0x0

    .line 50
    :goto_31
    return v0
.end method

.method private checkIfNeedRefresh()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    if-eqz v0, :cond_57

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 7
    if-eqz v0, :cond_57

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_57

    .line 16
    :cond_f
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->getIndexForCategory()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eq v1, v0, :cond_22

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 27
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->getSingleStatueAndReset(I)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_22

    .line 33
    move v1, v2

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move v1, v3

    .line 36
    :goto_23
    iput-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 38
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 40
    const-string v4, "checkIfNeedRefresh: mNeedRefresh = "

    .line 42
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object v4

    .line 46
    iget-boolean v5, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const-string v5, ", index = "

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 68
    xor-int/2addr v0, v2

    .line 69
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->checkIfNeedRefreshStyle(Z)V

    .line 72
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 74
    if-eqz v0, :cond_57

    .line 76
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 78
    const-string v1, "checkIfNeedRefresh: load by onEvent."

    .line 80
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->loadGroupList(Z)V

    .line 86
    iput-boolean v3, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 88
    :cond_57
    :goto_57
    return-void
.end method

.method private checkIfNeedRefreshStyle(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->checkAndSetSortMethod()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    if-eqz p1, :cond_14

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 11
    const-string v0, "needSort"

    .line 13
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 18
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->sortData(Ljava/util/List;)V

    .line 21
    :cond_14
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 24
    move-result p1

    .line 25
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mColumnType:I

    .line 27
    if-eq v0, p1, :cond_22

    .line 29
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mColumnType:I

    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->setLayoutManager(Z)V

    .line 35
    :cond_22
    return-void
.end method

.method private getIndexForCategory()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->DOC_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_10

    .line 7
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    aget-object v1, v1, v0

    .line 11
    if-ne v2, v1, :cond_d

    .line 13
    return v0

    .line 14
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_10
    const/4 v0, -0x1

    .line 18
    return v0
.end method

.method private handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCurrentMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 8
    const-string v1, "---handleClickMenuSort"

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 15
    invoke-static {v0, p1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCurrentMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1c

    .line 28
    return-void

    .line 29
    :cond_1c
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "handleClickMenuSort"

    .line 33
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->sortData(Ljava/util/List;)V

    .line 41
    return-void
.end method

.method private handleLoadDataResultReal(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;Z)V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 8
    if-eqz p1, :cond_a

    .line 10
    goto :goto_f

    .line 11
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :goto_f
    if-eqz p2, :cond_17

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 26
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 29
    :goto_1c
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 31
    const-string v2, "handleLoadDataResultReal: category = "

    .line 33
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, ",result.size = "

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v3, ", isLoadMore = "

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    invoke-static {v1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_53

    .line 78
    const/4 p1, 0x0

    .line 79
    const/4 p2, 0x1

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->refreshListData(Ljava/util/List;Z)V

    .line 83
    goto :goto_56

    .line 84
    :cond_53
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->sortData(Ljava/util/List;)V

    .line 87
    :goto_56
    return-void
.end method

.method private iniListAdapter()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "iniListAdapter: category = "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 29
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;-><init>(Ljava/util/List;)V

    .line 32
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 40
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;

    .line 42
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 48
    return-void
.end method

.method private initCategory()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_20

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_20

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 19
    move-result-object v0

    .line 20
    const-string v2, "file_category"

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 25
    move-result v1

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 28
    const-string v2, "initCategory: index = "

    .line 30
    invoke-static {v2, v1, v0}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    :cond_20
    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->values()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 36
    move-result-object v0

    .line 37
    if-ltz v1, :cond_2d

    .line 39
    array-length v2, v0

    .line 40
    if-ge v1, v2, :cond_2d

    .line 42
    aget-object v0, v0, v1

    .line 44
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 46
    :cond_2d
    return-void
.end method

.method private initRecyclerView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a036a

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRootView:Landroid/view/View;

    .line 16
    const v1, 0x7f0a03d2

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x102000a

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 46
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 48
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 53
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 56
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->iniListAdapter()V

    .line 59
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->setLayoutManager(Z)V

    .line 62
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$2;

    .line 64
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 70
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 72
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 74
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 79
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;

    .line 81
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)V

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 87
    return-void
.end method

.method private loadGroupList(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "loadGroupList: isLoading = "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mIsLoading:Z

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, ", category = "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mIsLoading:Z

    .line 33
    if-eqz v0, :cond_23

    .line 35
    return-void

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 38
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    .line 40
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mIsLoading:Z

    .line 48
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;

    .line 50
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 53
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;

    .line 55
    invoke-direct {v0, p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;-><init>(ZLcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)V

    .line 58
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;

    .line 60
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 63
    move-result-object p1

    .line 64
    const/4 v1, 0x0

    .line 65
    new-array v1, v1, [Ljava/lang/Void;

    .line 67
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void
.end method

.method private refreshListData(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3d

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_3d

    .line 10
    :cond_9
    if-eqz p2, :cond_16

    .line 12
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 14
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 17
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 19
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    goto :goto_1b

    .line 23
    :cond_16
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 25
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :goto_1b
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 30
    const-string p2, "refresh size:"

    .line 32
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object p2

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    move-result v0

    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 49
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 54
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 57
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->showEmptyView(Z)V

    .line 61
    return-void

    .line 62
    :cond_3d
    :goto_3d
    if-eqz p2, :cond_48

    .line 64
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 66
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 69
    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->showEmptyView(Z)V

    .line 73
    :cond_48
    return-void
.end method

.method private setLayoutManager(Z)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_80

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 9
    if-nez v0, :cond_c

    .line 11
    goto/16 :goto_80

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 15
    if-nez v0, :cond_1b

    .line 17
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 30
    if-nez v0, :cond_2a

    .line 32
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 43
    :cond_2a
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 45
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 47
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 52
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 54
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 57
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 60
    move-result v0

    .line 61
    const/16 v1, 0x3c

    .line 63
    if-ne v0, v1, :cond_51

    .line 65
    new-instance v2, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;

    .line 67
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 69
    const/16 v4, 0x8

    .line 71
    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GridLayoutManagerFE;-><init>(Landroid/content/Context;I)V

    .line 74
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 76
    const/16 v4, 0xa

    .line 78
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    .line 81
    goto :goto_5e

    .line 82
    :cond_51
    new-instance v2, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;

    .line 84
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 86
    invoke-direct {v2, v3}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;-><init>(Landroid/content/Context;)V

    .line 89
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    .line 95
    :goto_5e
    const/4 v3, 0x1

    .line 96
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 99
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 101
    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 104
    if-ne v0, v1, :cond_71

    .line 106
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 108
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mGridItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemDecoration;

    .line 110
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 113
    goto :goto_78

    .line 114
    :cond_71
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 116
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mListItemDecoration:Lcom/android/fileexplorer/mirror/viewhelper/MirrorListItemDecoration;

    .line 118
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 121
    :goto_78
    if-eqz p1, :cond_7f

    .line 123
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 125
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 128
    :cond_7f
    return-void

    .line 129
    :cond_80
    :goto_80
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 131
    const-string v0, "setAdapter: activity is null or mRecyclerView is null."

    .line 133
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private sortData(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "sortData"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    if-eqz p1, :cond_22

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_22

    .line 17
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCurrentMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 24
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/util/Comparator;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->refreshListData(Ljava/util/List;Z)V

    .line 35
    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->exitSelectedMode()V

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_d
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public getStartIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mStartIndex:I

    .line 3
    return v0
.end method

.method public handleLoadDataResult(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;ZI)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mIsLoading:Z

    .line 4
    iput p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mStartIndex:I

    .line 6
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 8
    if-nez p3, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    const/4 v0, 0x1

    .line 12
    if-nez p1, :cond_14

    .line 14
    invoke-virtual {p3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->showEmptyView(Z)V

    .line 20
    return-void

    .line 21
    :cond_14
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 23
    iget-object p3, p3, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    .line 25
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {p3, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 30
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 32
    invoke-virtual {p3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 35
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 37
    invoke-virtual {p3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 40
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 42
    iget-boolean v1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 44
    invoke-virtual {p3, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 47
    iget-boolean p3, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 49
    iput-boolean p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mInEnableLoadMore:Z

    .line 51
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 53
    const-string v1, "handleLoadDataResult: hasMore = "

    .line 55
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    move-result-object v1

    .line 59
    iget-boolean v2, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-static {p3, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p3, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 73
    if-eqz p3, :cond_50

    .line 75
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 78
    move-result p3

    .line 79
    if-eqz p3, :cond_5d

    .line 81
    :cond_50
    iget-boolean p3, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 83
    if-eqz p3, :cond_5d

    .line 85
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 87
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 90
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->loadGroupList(Z)V

    .line 93
    goto :goto_60

    .line 94
    :cond_5d
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->handleLoadDataResultReal(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;Z)V

    .line 97
    :goto_60
    return-void
.end method

.method public handlePreExecute(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mFileList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    if-nez p1, :cond_e

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->showEmptyView(Z)V

    .line 15
    :cond_e
    return-void
.end method

.method public handleQueryData(II)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 9

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCurrentMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 10
    const/4 v5, 0x0

    .line 11
    move v3, p1

    .line 12
    move v4, p2

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lcom/android/fileexplorer/util/TimeCost;

    .line 19
    invoke-direct {p2}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 22
    invoke-virtual {p2}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 25
    iget-object v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 29
    invoke-static {v1}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->scanAllFolderFiles(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->mergeFileInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "_ScanFolder"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCostDebug(Ljava/lang/String;)V

    .line 61
    return-object p1
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
    instance-of p2, p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;

    .line 15
    if-eqz p2, :cond_15

    .line 17
    check-cast p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;->encrypt()V

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->exitActionMode()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public onColumnChange(I)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mColumnType:I

    .line 6
    if-ne v0, p1, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mColumnType:I

    .line 11
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->exitActionMode()Z

    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->setLayoutManager(Z)V

    .line 18
    return-void
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
    instance-of p1, p1, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 10
    if-eqz p1, :cond_13

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 20
    :cond_13
    const p1, 0x7f12032d

    .line 23
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 26
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mLoadGroupTask:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$LoadGroupTask;

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 9
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 7
    const-string v2, "onImmersionMenuClick"

    .line 9
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const v1, 0x7f0a01ec

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq v0, v1, :cond_40

    .line 18
    packed-switch v0, :pswitch_data_46

    .line 21
    packed-switch v0, :pswitch_data_52

    .line 24
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :pswitch_1c  #0x7f0a026e
    const/16 p1, 0x32

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->onColumnChange(I)V

    .line 34
    return v2

    .line 35
    :pswitch_22  #0x7f0a026d
    const/16 p1, 0x3c

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->onColumnChange(I)V

    .line 40
    return v2

    .line 41
    :pswitch_28  #0x7f0a0269
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 46
    return v2

    .line 47
    :pswitch_2e  #0x7f0a0268
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 52
    return v2

    .line 53
    :pswitch_34  #0x7f0a0267
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 58
    return v2

    .line 59
    :pswitch_3a  #0x7f0a0266
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->handleClickMenuSort(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 64
    return v2

    .line 65
    :cond_40
    const/4 p1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->loadGroupList(Z)V

    .line 69
    return v2

    .line 70
    nop

    .line 71
    :pswitch_data_46
    .packed-switch 0x7f0a0266
        :pswitch_3a  #7f0a0266
        :pswitch_34  #7f0a0267
        :pswitch_2e  #7f0a0268
        :pswitch_28  #7f0a0269
    .end packed-switch

    .line 83
    :pswitch_data_52
    .packed-switch 0x7f0a026d
        :pswitch_22  #7f0a026d
        :pswitch_1c  #7f0a026e
    .end packed-switch
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRootView:Landroid/view/View;

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
    sget-object p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 11
    invoke-static {p3}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 14
    move-result-object p3

    .line 15
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCurrentMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 17
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->initCategory()V

    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 27
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p3

    .line 43
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 45
    const p3, 0x7f0d00b8

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRootView:Landroid/view/View;

    .line 55
    const p2, 0x7f0a0163

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 64
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 66
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->initRecyclerView()V

    .line 69
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRootView:Landroid/view/View;

    .line 71
    return-object p1
.end method

.method public onRefreshData()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 7
    const-string v1, "onRefreshData: not inited, return"

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 15
    const-string v1, "onRefreshData: cate = "

    .line 17
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->loadGroupList(Z)V

    .line 41
    return-void
.end method

.method public onResume()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onResume()V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mInited:Z

    .line 6
    if-eqz v0, :cond_12

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 10
    const-string v1, "onResume checkIfNeedRefresh"

    .line 12
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->checkIfNeedRefresh()V

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 21
    const-string v1, "onResume: getData"

    .line 23
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRootView:Landroid/view/View;

    .line 28
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$1;

    .line 30
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)V

    .line 33
    const-wide/16 v2, 0x12c

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->exitActionMode()Z

    .line 7
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->checkIfNeedRefresh()V

    .line 7
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_10

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 9
    move-result p1

    .line 10
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mColumnType:I

    .line 12
    if-eq v0, p1, :cond_10

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->onColumnChange(I)V

    .line 17
    :cond_10
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->setUserVisibleHint(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->exitActionMode()Z

    .line 7
    return-void
.end method

.method public showEmptyView(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 10
    const/16 v1, 0x8

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz p1, :cond_10

    .line 15
    move v3, v1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v3, v2

    .line 18
    :goto_11
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 23
    if-eqz p1, :cond_19

    .line 25
    move v1, v2

    .line 26
    :cond_19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 31
    if-eqz p1, :cond_23

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 38
    :goto_25
    invoke-virtual {v0, p1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 41
    return-void
.end method
