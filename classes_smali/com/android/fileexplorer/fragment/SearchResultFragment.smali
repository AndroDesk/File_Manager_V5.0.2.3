.class public Lcom/android/fileexplorer/fragment/SearchResultFragment;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "SearchResultFragment.java"

# interfaces
.implements Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;,
        Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;,
        Lcom/android/fileexplorer/fragment/SearchResultFragment$State;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "SearchResultFragment"


# instance fields
.field private mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field private mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mApp:Ljava/lang/String;

.field private mConstructTask:Landroid/os/AsyncTask;

.field private mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

.field private mDensity:F

.field private mEditText:Lcom/android/fileexplorer/view/SearchEditText;

.field private mFirstRun:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFragId:I

.field private mHandler:Landroid/os/Handler;

.field private mIsLastSearchResultEmpty:Z

.field private mLastSearch:Ljava/lang/String;

.field private mLastSearchSelection:I

.field private mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

.field private mPackageName:Ljava/lang/String;

.field private mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

.field private mRefreshOnVisible:Z

.field private mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

.field private mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

.field private mScrollSearchHelperView:Landroid/widget/ScrollView;

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mSearchHelperView:Lcom/android/fileexplorer/adapter/search/SearchView;

.field private mSearchInputView:Landroid/widget/EditText;

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

.field private mSearchTagResultCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

.field private mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

.field private mSearchTask:Ljava/lang/Runnable;

.field private mSearchText:Ljava/lang/String;

.field private mSearchViewContainer:Landroid/view/View;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

.field private mType:Lcom/android/fileexplorer/adapter/search/SearchType;

.field private requestRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagResultCache:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearchSelection:I

    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->None:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isSearchTagVisible()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearchWithTag(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isHintState()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRefreshOnVisible:Z

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mFirstRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagResultCache:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearchSelection:I

    return p0
.end method

.method public static synthetic access$2002(Lcom/android/fileexplorer/fragment/SearchResultFragment;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearchSelection:I

    return p1
.end method

.method public static synthetic access$2100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    return-void
.end method

.method public static synthetic access$2200(Lcom/android/fileexplorer/fragment/SearchResultFragment;Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->setState(Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2402(Lcom/android/fileexplorer/fragment/SearchResultFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mIsLastSearchResultEmpty:Z

    return p1
.end method

.method public static synthetic access$2500(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateSearchRelated(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/search/SearchTagView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->hideSearchTagView()V

    return-void
.end method

.method public static synthetic access$2900(Lcom/android/fileexplorer/fragment/SearchResultFragment;ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;Ljava/lang/Boolean;)Ljava/util/List;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/util/List;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->dataHandler(Ljava/lang/String;Ljava/util/List;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateAdapter()V

    return-void
.end method

.method public static synthetic access$3200(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateSearchTagRelated(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    return-void
.end method

.method public static synthetic access$3300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/SearchResultFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->clickViewMore(I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mApp:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mApp:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->showSearchTagView(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/fragment/SearchResultFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->lambda$initActionBar$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->lambda$initActionBar$0()V

    return-void
.end method

.method private cancelSearchTask()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mConstructTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    :cond_e
    return-void
.end method

.method private clickViewMore(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

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

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;

    invoke-direct {v1, v0}, Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;
    .registers 5
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

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;Ljava/lang/Boolean;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/search/SearchResult;",
            "Ljava/lang/Boolean;",
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

    if-eqz p3, :cond_158

    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_158

    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto/16 :goto_158

    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start construct withTag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SearchResultFragment"

    invoke-static {v5, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getExtra()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "type"

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v0, :cond_4a

    goto :goto_4c

    :cond_4a
    if-le v0, v7, :cond_4e

    :goto_4c
    move v8, v7

    goto :goto_4f

    :cond_4e
    move v8, v0

    :goto_4f
    const/4 v9, 0x0

    move v10, v9

    :goto_51
    if-eq v10, v8, :cond_e7

    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/fileexplorer/dao/file/FileItem;

    new-instance v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-direct {v12}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    sget-object v13, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Body:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    iput v13, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    const/16 v13, 0x15

    iput v13, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    iput-object v11, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->item:Ljava/lang/Object;

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    iput-object v13, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    const-string v14, "searchText"

    invoke-virtual {v13, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v13, v11, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v13, :cond_9d

    check-cast v11, Lcom/android/cloud/bean/CloudFileItem;

    invoke-static {v11}, Lcom/android/cloud/util/CloudFileUtils;->getCloudFileInfoV2(Lcom/android/cloud/bean/CloudFileItem;)Lcom/android/cloud/bean/CloudFileInfo;

    move-result-object v13

    iput-object v13, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v11}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v13, "folder"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_99

    iget-object v11, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    const/4 v13, 0x1

    iput-boolean v13, v11, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    :cond_99
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    :cond_9d
    new-instance v13, Ljava/io/File;

    invoke-virtual {v11}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_e3

    invoke-virtual {v11}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_c5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c5

    goto :goto_e3

    :cond_c5
    const/4 v14, 0x0

    invoke-static {v13, v14, v9}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v13

    iput-object v13, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v14, v11, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    iput-boolean v14, v13, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-eqz v13, :cond_e3

    iget-boolean v13, v13, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-nez v13, :cond_e3

    invoke-virtual {v11}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isPrivate(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e3

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e3
    :goto_e3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_51

    :cond_e7
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f4

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f4

    return-object v2

    :cond_f4
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object/from16 v10, p0

    invoke-direct {v10, v4, v1, v8}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->createHead(Lcom/android/fileexplorer/adapter/search/SearchType;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-direct {v4}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    sget-object v8, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Head:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    iput v8, v4, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    const/16 v8, 0x13

    iput v8, v4, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v4, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    const-string v11, "head"

    invoke-virtual {v8, v11, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-le v7, v0, :cond_152

    if-eqz v0, :cond_152

    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    sget-object v4, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Foot:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iput v4, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    const/16 v4, 0x14

    iput v4, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    invoke-virtual {v4, v11, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    const-string v3, "count"

    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_152
    const-string v0, "end construct"

    invoke-static {v5, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_158
    :goto_158
    move-object/from16 v10, p0

    return-object v2
.end method

.method private createHead(Lcom/android/fileexplorer/adapter/search/SearchType;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$13;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const v1, 0x7f0f0031

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5a

    if-eq p1, v3, :cond_44

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

    const p2, 0x7f0f002f

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_44
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

    :cond_5a
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

.method private dataHandler(Ljava/lang/String;Ljava/util/List;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;",
            "Lcom/android/fileexplorer/adapter/search/SearchType;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    invoke-virtual {v1}, Lcom/android/fileexplorer/search/SearchResult;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_25

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    :cond_25
    const-string v1, "SearchResultFragment"

    const-string v2, "should not be here!!!"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_2d
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mConstructTask:Landroid/os/AsyncTask;

    invoke-static {p2}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_4c

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_4c

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mIsLastSearchResultEmpty:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateAdapter()V

    return-void

    :cond_4c
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v1, :cond_6e

    new-instance p2, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p2, p3, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mConstructTask:Landroid/os/AsyncTask;

    return-void

    :cond_6e
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isSearchTagVisible()Z

    move-result p2

    const/16 v3, 0xa

    if-eqz p2, :cond_94

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object p3, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/search/SearchResult;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v3, p1, p3, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_15e

    :cond_94
    sget-object p2, Lcom/android/fileexplorer/fragment/SearchResultFragment$13;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x3

    if-eq p2, v1, :cond_101

    if-eq p2, v2, :cond_a3

    goto/16 :goto_15e

    :cond_a3
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, v3, p1, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d6

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, v3, p1, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_eb

    :cond_d6
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, p3, p1, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_eb
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, p3, p1, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15e

    :cond_101
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, v3, p1, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_134

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, v3, p1, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_149

    :cond_134
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, p3, p1, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_149
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p0, p3, p1, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_15e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_169

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateAdapter()V

    :cond_169
    return-void
.end method

.method private doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V
    .registers 10

    const-wide/16 v4, 0x1f4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V

    return-void
.end method

.method private doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V
    .registers 14

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isSearchTagVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mApp:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-direct {p0, p2, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->showSearchTagView(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mPackageName:Ljava/lang/String;

    sget-object v4, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearchWithTag(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V

    return-void

    :cond_19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_3d

    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRefreshOnVisible:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    new-instance v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTask:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    const p1, 0x7f1103ad

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void
.end method

.method private doSearch(Ljava/lang/String;Z)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    return-void
.end method

.method private doSearchWithTag(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doTagSearch(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V

    return-void
.end method

.method private doTagSearch(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V
    .registers 14

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    return-void

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRefreshOnVisible:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    new-instance v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTask:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private hideSearchTagView()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mEditText:Lcom/android/fileexplorer/view/SearchEditText;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/SearchEditText;->setTagVisible(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->None:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagResultCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->setState(Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mIsLastSearchResultEmpty:Z

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateSearchRelated(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mConstructTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    goto :goto_5b

    :cond_50
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Z)V

    :goto_5b
    return-void
.end method

.method private initActionBar()V
    .registers 8

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayShowCustomEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f042dd5

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroidx/appcompat/app/a$a;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroidx/appcompat/app/a$a;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/a;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/a$a;)V

    const v0, 0x7f032ef9

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v4

    invoke-virtual {v4}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    move-result-object v4

    sget-object v5, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    const/16 v6, 0x8

    if-ne v4, v5, :cond_49

    goto :goto_4a

    :cond_49
    move v1, v6

    :goto_4a
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$7;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$7;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f032ee0

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchViewContainer:Landroid/view/View;

    const v0, 0x7f032e15

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/search/SearchTagView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020009

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    const v3, 0x7f1103ba

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/SearchEditText;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mEditText:Lcom/android/fileexplorer/view/SearchEditText;

    new-instance v1, Lcom/android/cloud/fragment/presenter/b;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/SearchEditText;->setEditTextClearCallback(Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$8;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$8;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    new-instance v1, Lcom/android/cloud/fragment/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initRecyclerView()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032cf5

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$2;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$3;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    const-string v1, "PAGE_SearchResultFragment"

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private initSearchSuggestView()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032ee2

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollSearchHelperView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032ee5

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/search/SearchView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchHelperView:Lcom/android/fileexplorer/adapter/search/SearchView;

    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$5;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$5;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchView;->setOnSearchItemClickListener(Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;)V

    return-void
.end method

.method private isHintState()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    sget-object v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isSearchTagVisible()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->None:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private synthetic lambda$initActionBar$0()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->hideSearchTagView()V

    return-void
.end method

.method private synthetic lambda$initActionBar$1(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchTagView;->toggle()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchTagView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    return-void
.end method

.method public static newInstance(I)Lcom/android/fileexplorer/fragment/SearchResultFragment;
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private searchFromTagCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateSearchTagRelated(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagResultCache:Ljava/util/List;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->dataHandler(Ljava/lang/String;Ljava/util/List;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    return-void
.end method

.method private setState(Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V
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

    sget-object v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$13;->$SwitchMap$com$android$fileexplorer$fragment$SearchResultFragment$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v1, :cond_b6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_76

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2c

    goto/16 :goto_d5

    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollSearchHelperView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_33

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const v4, 0x7f1103ac

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZII)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    goto/16 :goto_d5

    :cond_56
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mIsLastSearchResultEmpty:Z

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-static {v0}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->show(Landroid/view/View;)V

    goto :goto_d5

    :cond_76
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollSearchHelperView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_7d

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const v3, 0x7f110180

    invoke-virtual {v0, v1, v3}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    goto :goto_d5

    :cond_9f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    goto :goto_d5

    :cond_b6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollSearchHelperView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_bd

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_bd
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    :cond_d5
    :goto_d5
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    return-void
.end method

.method private showSearchTagView(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mEditText:Lcom/android/fileexplorer/view/SearchEditText;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/SearchEditText;->setTagVisible(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/search/SearchTagView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startSearchRequest()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->requestRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateAdapter()V
    .registers 3

    const-string v0, "mSearchResultList.size = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_RESULT:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->setState(Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchRelated(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    if-eqz p2, :cond_20

    const-string p2, "search"

    invoke-static {p2, p1}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "type"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    iget v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mFragId:I

    invoke-interface {p2, v0, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;->onFragmentInteraction(ILandroid/os/Bundle;)V

    :cond_20
    return-void
.end method

.method private updateSearchTagRelated(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    if-eqz p1, :cond_20

    const-string p1, "search"

    invoke-static {p1, p2}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string p3, "type"

    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    iget p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mFragId:I

    invoke-interface {p2, p3, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;->onFragmentInteraction(ILandroid/os/Bundle;)V

    :cond_20
    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    const/4 v0, 0x1

    return v0

    :cond_d
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionMode()Z

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

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

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0081

    return v0
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

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

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

.method public getOneHopShareData()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_5f

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getOneHopShareData size:"

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v2, :cond_34

    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    iget-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v3, :cond_4f

    goto :goto_34

    :cond_4f
    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_5e
    return-object v1

    :cond_5f
    :goto_5f
    const/4 v0, 0x0

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz p1, :cond_21

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    :cond_21
    const-string p1, "SearchResultFragment"

    const-string v0, "onInflateView"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->initActionBar()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->initRecyclerView()V

    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez p1, :cond_35

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->initSearchSuggestView()V

    :cond_35
    return-void
.end method

.method public isEditMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

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

.method public isSupportOneCopyShare()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportOneHopShare()Z
    .registers 2

    const/4 v0, 0x1

    return v0
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

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;

    if-eqz p2, :cond_16

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;->encrypt()V

    :cond_16
    :goto_16
    return-void
.end method

.method public onBack()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionModeNotTimeInterval()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    move-result v0

    return v0
.end method

.method public onCloudStatusChanged(Z)V
    .registers 8

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V

    goto :goto_1e

    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    if-eqz p1, :cond_1e

    const-string p1, "MiDrive_LOG"

    const-string v0, "onSearchStatusChanged"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f12011e

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_de

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_de

    :cond_29
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mFragId:I

    :cond_42
    sget-object v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    if-eqz p1, :cond_a3

    const-string v1, "search"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    const-string v1, "search_last"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "type"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->values()[Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->None:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "tag_type"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    const-string v1, "tag_text"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mApp:Ljava/lang/String;

    const-string v1, "tag_package_name"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->values()[Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v2, "state"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    goto :goto_ad

    :cond_a3
    const-string p1, ""

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    :goto_ad
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mFirstRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    new-instance p1, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    :cond_de
    :goto_de
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 5

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchHelperView:Lcom/android/fileexplorer/adapter/search/SearchView;

    if-eqz v0, :cond_36

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchView;->setOnSearchItemClickListener(Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;)V

    :cond_36
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroy()V

    :cond_3d
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagResultCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->requestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

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

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRefreshOnVisible:Z

    goto :goto_16

    :cond_f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    :goto_16
    return-void
.end method

.method public onNavigationVisibilityChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(Z)V

    return-void
.end method

.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/a;->getCustomView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f032ef9

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/a;->getCustomView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    if-ne p2, v0, :cond_30

    const/4 p2, 0x0

    goto :goto_32

    :cond_30
    const/16 p2, 0x8

    :goto_32
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_2b

    :cond_f
    if-eqz p3, :cond_2b

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2b
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    const-string v0, "onResume mState = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isHintState()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->setState(Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    :cond_22
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->startSearchRequest()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "tag_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mApp:Ljava/lang/String;

    const-string v1, "tag_text"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mPackageName:Ljava/lang/String;

    const-string v1, "tag_package_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    const-string v1, "search_last"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->startSearchRequest()V

    :cond_8
    return-void
.end method

.method public showNavButton()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
