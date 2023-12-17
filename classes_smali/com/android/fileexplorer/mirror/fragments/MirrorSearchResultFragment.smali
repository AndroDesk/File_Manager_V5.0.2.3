.class public Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;
.source "MirrorSearchResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$OnFragmentInteractionListener;,
        Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchResultFragment"


# instance fields
.field private mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mApp:Ljava/lang/String;

.field private mConstructTask:Landroid/os/AsyncTask;

.field private mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

.field private mDetailCount:I

.field private mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

.field private mFirstRun:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHandler:Landroid/os/Handler;

.field private mLastSearch:Ljava/lang/String;

.field private mListener:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$OnFragmentInteractionListener;

.field private mPackageName:Ljava/lang/String;

.field private mPostOperation:Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;

.field private mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

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

.field private mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

.field private mType:Lcom/android/fileexplorer/adapter/search/SearchType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;

    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mPostOperation:Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->updateSearchRelated(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->setState(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mApp:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->dataHandler(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Lcom/android/fileexplorer/activity/BaseActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->clickViewMore(I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->updateAdapter()V

    return-void
.end method

.method private cancelSearchTask()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method private clickViewMore(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    if-nez p1, :cond_14

    return-void

    :cond_14
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "count"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "total"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-direct {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->SearchDetail:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args(Landroid/os/Bundle;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;
    .registers 20
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

    move/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_104

    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_104

    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto/16 :goto_104

    :cond_1d
    const-string v3, "SearchResultFragment"

    const-string v4, "start construct"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getExtra()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v7

    aget-object v7, v7, v4

    move-object/from16 v8, p0

    invoke-direct {v8, v7, v1, v6}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->createHead(Lcom/android/fileexplorer/adapter/search/SearchType;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-direct {v9}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    sget-object v10, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Head:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    const/16 v10, 0x13

    iput v10, v9, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v9, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    const-string v11, "head"

    invoke-virtual {v10, v11, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_65

    goto :goto_67

    :cond_65
    if-le v0, v6, :cond_69

    :goto_67
    move v9, v6

    goto :goto_6a

    :cond_69
    move v9, v0

    :goto_6a
    const/4 v12, 0x0

    :goto_6b
    if-eq v12, v9, :cond_d0

    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/fileexplorer/dao/file/FileItem;

    new-instance v14, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-direct {v14}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    sget-object v15, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Body:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    iput v15, v14, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    const/16 v15, 0x15

    iput v15, v14, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    iput-object v13, v14, Lcom/android/fileexplorer/adapter/search/SearchResultData;->item:Ljava/lang/Object;

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    iput-object v15, v14, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    const-string v10, "searchText"

    invoke-virtual {v15, v10, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-virtual {v13}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_ca

    new-instance v10, Ljava/io/File;

    invoke-virtual {v13}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/4 v1, 0x0

    invoke-static {v10, v15, v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v10

    iput-object v10, v14, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v10, :cond_cb

    iget-boolean v10, v10, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-nez v10, :cond_cb

    invoke-virtual {v13}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isPrivate(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_cb

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cb

    :cond_ca
    const/4 v1, 0x0

    :cond_cb
    :goto_cb
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p2

    goto :goto_6b

    :cond_d0
    if-le v6, v0, :cond_fe

    if-eqz v0, :cond_fe

    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Foot:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    const/16 v1, 0x14

    iput v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    invoke-virtual {v1, v11, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    const-string v4, "count"

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fe
    const-string v0, "end construct"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_104
    :goto_104
    move-object/from16 v8, p0

    return-object v2
.end method

.method private createHead(Lcom/android/fileexplorer/adapter/search/SearchType;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$6;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

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

    const v0, 0x7f0f0032

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

    const v0, 0x7f0f0030

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

.method private dataHandler(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchType;)V
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

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    invoke-virtual {v2}, Lcom/android/fileexplorer/search/SearchResult;->getExtra()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2d

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_11

    :cond_2d
    const-string v2, "SearchResultFragment"

    const-string v3, "should not be here!!!"

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_35
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mConstructTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->updateAdapter()V

    return-void

    :cond_51
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_74

    new-instance p2, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$3;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mConstructTask:Landroid/os/AsyncTask;

    return-void

    :cond_74
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$6;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x3

    const/16 v4, 0xa

    if-eq p2, v3, :cond_e8

    if-eq p2, v2, :cond_8a

    goto/16 :goto_145

    :cond_8a
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, v4, p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_bd

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, v4, p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_d2

    :cond_bd
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, v0, p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_d2
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_145

    :cond_e8
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, v4, p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_11b

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, v4, p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_130

    :cond_11b
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, v0, p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_130
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_145
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_150

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->updateAdapter()V

    :cond_150
    return-void
.end method

.method private doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_26

    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRefreshOnVisible:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->cancelSearchTask()V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchTask:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_26
    :goto_26
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->cancelSearchTask()V

    return-void
.end method

.method private doSearch(Ljava/lang/String;Z)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    return-void
.end method

.method private initEmptyTrigger()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032f69

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$5;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$5;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    return-void
.end method

.method private initRecyclerView()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032cf5

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    new-instance v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v1, v2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    return-void
.end method

.method private isHintState()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private setState(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;)V
    .registers 7

    const-string v0, "setState state = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$6;->$SwitchMap$com$android$fileexplorer$mirror$fragments$MirrorSearchResultFragment$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v1, :cond_9e

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_65

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2c

    goto/16 :goto_ad

    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    const v3, 0x7f1103ac

    invoke-virtual {v0, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(ZI)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    goto :goto_ad

    :cond_4e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    goto :goto_ad

    :cond_65
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    const v2, 0x7f110180

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showLoading(ZI)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    goto :goto_ad

    :cond_87
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    goto :goto_ad

    :cond_9e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_ad
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    return-void
.end method

.method private updateAdapter()V
    .registers 3

    const-string v0, "mSearchResultList.size = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->SHOW_SEARCH_RESULT:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->setState(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchRelated(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mPostOperation:Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->setSearchType(Lcom/android/fileexplorer/adapter/search/SearchType;)V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mListener:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$OnFragmentInteractionListener;

    if-eqz p2, :cond_1e

    const-string p2, "search"

    invoke-static {p2, p1}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "type"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1e
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

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

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

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

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->cancelSearchTask()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onBack()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f12032d

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    if-eqz p1, :cond_4d

    const-string v1, "search"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    const-string v1, "search_last"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mLastSearch:Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "type"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->values()[Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v2, "state"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    goto :goto_57

    :cond_4d
    const-string p1, ""

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mLastSearch:Ljava/lang/String;

    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    :goto_57
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mPostOperation:Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->setSearchType(Lcom/android/fileexplorer/adapter/search/SearchType;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mFirstRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mPostOperation:Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->register(Landroid/app/Activity;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;)V

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mListener:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$OnFragmentInteractionListener;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 4

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->onDestroy()V

    :cond_24
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->cancelSearchTask()V

    return-void
.end method

.method public onDetach()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 4
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

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRefreshOnVisible:Z

    goto :goto_16

    :cond_f
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    :goto_16
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f042de1

    invoke-static {p3}, Lnp/NPFog;->d(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    const-string p1, "SearchResultFragment"

    const-string p2, "onInflateView"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->initEmptyTrigger()V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->initRecyclerView()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onResume()V

    const-string v0, "onResume mState = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->isHintState()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->setState(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;)V

    :cond_22
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mLastSearch:Ljava/lang/String;

    const-string v1, "search_last"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSearchKeyChange(Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;->getSearchKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mLastSearch:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->isHintState()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    goto :goto_22

    :cond_1f
    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->doSearch(Ljava/lang/String;Z)V

    :goto_22
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mLastSearch:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_47

    :cond_2a
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->cancelSearchTask()V

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->doSearch(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->setState(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mLastSearch:Ljava/lang/String;

    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->updateSearchRelated(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    :cond_47
    :goto_47
    return-void
.end method
