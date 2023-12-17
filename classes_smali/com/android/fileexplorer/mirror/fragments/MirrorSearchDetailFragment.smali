.class public Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;
.source "MirrorSearchDetailFragment.java"


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConstructTask:Landroid/os/AsyncTask;

.field private mCount:I

.field private mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

.field private mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

.field private mRefreshOnVisible:Z

.field private mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

.field private mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

.field private mRootView:Landroid/view/View;

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mSearchResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSearchTask:Ljava/lang/Runnable;

.field private mSearchText:Ljava/lang/String;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mType:Lcom/android/fileexplorer/adapter/search/SearchType;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    const-string v0, "MirrorSearchDetailFragment"

    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;Lcom/android/fileexplorer/search/SearchResultContent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->dataHandler(Lcom/android/fileexplorer/search/SearchResultContent;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/activity/BaseActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->updateAdapter()V

    return-void
.end method

.method private construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_ce

    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_ce

    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_ce

    :cond_19
    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->TAG:Ljava/lang/String;

    const-string v2, "start construct -- detail"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-direct {p0, v4, p2, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->createHead(Lcom/android/fileexplorer/adapter/search/SearchType;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_3f

    goto :goto_43

    :cond_3f
    if-le p1, v3, :cond_42

    goto :goto_43

    :cond_42
    move v3, p1

    :goto_43
    const/4 v4, 0x0

    move v5, v4

    :goto_45
    if-eq v5, v3, :cond_a0

    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/dao/file/FileItem;

    new-instance v7, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-direct {v7}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    sget-object v8, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Body:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    iput-object v6, v7, Lcom/android/fileexplorer/adapter/search/SearchResultData;->item:Ljava/lang/Object;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v7, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    const/16 v8, 0x15

    iput v8, v7, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9d

    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v8, v9, v4}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v8

    iput-object v8, v7, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v8, :cond_9d

    iget-boolean v8, v8, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-nez v8, :cond_9d

    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isPrivate(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9d

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9d
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_a0
    if-eqz p1, :cond_c7

    new-instance p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-direct {p1}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    sget-object p3, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Foot:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    iput p3, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    iput-object p3, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    const/16 v3, 0x14

    iput v3, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    const-string v3, "head"

    invoke-virtual {p3, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c7
    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->TAG:Ljava/lang/String;

    const-string p2, "end construct -- detail"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    :goto_ce
    return-object v0
.end method

.method private createHead(Lcom/android/fileexplorer/adapter/search/SearchType;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$5;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const v1, 0x7f0f0031

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5c

    if-eq p1, v3, :cond_46

    const/4 v5, 0x3

    if-eq p1, v5, :cond_30

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {p1, v1, p3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0030

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-virtual {p1, v0, p3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0032

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-virtual {p1, v0, p3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {p1, v1, p3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dataHandler(Lcom/android/fileexplorer/search/SearchResultContent;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    invoke-virtual {v2}, Lcom/android/fileexplorer/search/SearchResult;->getExtra()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_11

    :cond_2b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mConstructTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mConstructTask:Landroid/os/AsyncTask;

    return-void

    :cond_61
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_71

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->updateAdapter()V

    :cond_71
    return-void
.end method

.method private doSearch(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRefreshOnVisible:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initView()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032cf5

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    new-instance v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v1, v2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    return-void
.end method

.method public static newInstance(IILjava/lang/String;I)Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;
    .registers 7

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "search"

    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "total"

    invoke-virtual {v1, p0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showEmptyView()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    :cond_d
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v3

    :goto_17
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1f

    move v2, v3

    :cond_1f
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_2b

    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    :goto_2b
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void
.end method

.method private updateAdapter()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    :cond_12
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->showEmptyView()V

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    iget-object p1, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return-object p1
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    iget v3, v2, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    sget-object v4, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Body:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_27

    iget-object v2, v2, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_27
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->getInvalidFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2f
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x6a

    if-eq p1, p3, :cond_8

    goto :goto_10

    :cond_8
    const/4 p1, -0x1

    if-ne p2, p1, :cond_10

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->encryptReal()V

    :cond_10
    :goto_10
    return-void
.end method

.method public onBack()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    move-result v0

    return v0

    :cond_b
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onBack()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12032d

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getArgs()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_44

    const-string v0, "search"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchText:Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "type"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    const-string v0, "total"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mCount:I

    :cond_44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 4

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->onDestroy()V

    :cond_29
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_f

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRefreshOnVisible:Z

    goto :goto_14

    :cond_f
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchText:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->doSearch(Ljava/lang/String;Z)V

    :goto_14
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object p3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p3, v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    const p3, 0x7f042d2e

    invoke-static {p3}, Lnp/NPFog;->d(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->initView()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchText:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->doSearch(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_12
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRefreshOnVisible:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchText:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->doSearch(Ljava/lang/String;Z)V

    :cond_d
    return-void
.end method
