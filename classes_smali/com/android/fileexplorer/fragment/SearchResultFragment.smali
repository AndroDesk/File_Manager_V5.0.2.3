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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagResultCache:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearchSelection:I

    .line 21
    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->None:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 25
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isSearchTagVisible()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1002(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearchWithTag(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V

    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isHintState()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRefreshOnVisible:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mFirstRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagResultCache:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearchSelection:I

    .line 3
    return p0
.end method

.method public static synthetic access$2002(Lcom/android/fileexplorer/fragment/SearchResultFragment;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearchSelection:I

    .line 3
    return p1
.end method

.method public static synthetic access$2100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    .line 4
    return-void
.end method

.method public static synthetic access$2200(Lcom/android/fileexplorer/fragment/SearchResultFragment;Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->setState(Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2402(Lcom/android/fileexplorer/fragment/SearchResultFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mIsLastSearchResultEmpty:Z

    .line 3
    return p1
.end method

.method public static synthetic access$2500(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2600(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateSearchRelated(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/search/SearchTagView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->hideSearchTagView()V

    .line 4
    return-void
.end method

.method public static synthetic access$2900(Lcom/android/fileexplorer/fragment/SearchResultFragment;ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;Ljava/lang/Boolean;)Ljava/util/List;
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;Ljava/lang/Boolean;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/util/List;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->dataHandler(Ljava/lang/String;Ljava/util/List;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 4
    return-void
.end method

.method public static synthetic access$3000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateAdapter()V

    .line 4
    return-void
.end method

.method public static synthetic access$3200(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateSearchTagRelated(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 4
    return-void
.end method

.method public static synthetic access$3300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/SearchResultFragment;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->clickViewMore(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mApp:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$702(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mApp:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mPackageName:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$802(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mPackageName:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->showSearchTagView(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    .line 4
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTask:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mConstructTask:Landroid/os/AsyncTask;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 15
    :cond_e
    return-void
.end method

.method private clickViewMore(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-gt v0, p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 18
    if-nez p1, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 23
    new-instance v0, Landroid/os/Bundle;

    .line 25
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    const-string v1, "type"

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v1, "count"

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 42
    move-result p1

    .line 43
    const-string v1, "total"

    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 51
    move-result-object p1

    .line 52
    new-instance v1, Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;

    .line 54
    invoke-direct {v1, v0}, Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;-><init>(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 60
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

    .line 1
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

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_158

    .line 3
    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_158

    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto/16 :goto_158

    .line 4
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

    .line 5
    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getExtra()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "type"

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 6
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

    .line 7
    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 8
    new-instance v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-direct {v12}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    .line 9
    sget-object v13, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Body:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    iput v13, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    const/16 v13, 0x15

    .line 10
    iput v13, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 11
    iput-object v11, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->item:Ljava/lang/Object;

    .line 12
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    iput-object v13, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    const-string v14, "searchText"

    .line 13
    invoke-virtual {v13, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    instance-of v13, v11, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v13, :cond_9d

    .line 15
    check-cast v11, Lcom/android/cloud/bean/CloudFileItem;

    invoke-static {v11}, Lcom/android/cloud/util/CloudFileUtils;->getCloudFileInfoV2(Lcom/android/cloud/bean/CloudFileItem;)Lcom/android/cloud/bean/CloudFileInfo;

    move-result-object v13

    iput-object v13, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 16
    invoke-virtual {v11}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v13, "folder"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_99

    .line 17
    iget-object v11, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    const/4 v13, 0x1

    iput-boolean v13, v11, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 18
    :cond_99
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 19
    :cond_9d
    new-instance v13, Ljava/io/File;

    invoke-virtual {v11}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_e3

    .line 21
    invoke-virtual {v11}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 22
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

    .line 23
    invoke-static {v13, v14, v9}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v13

    iput-object v13, v12, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 24
    iget-boolean v14, v11, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    iput-boolean v14, v13, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-eqz v13, :cond_e3

    .line 25
    iget-boolean v13, v13, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-nez v13, :cond_e3

    invoke-virtual {v11}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isPrivate(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e3

    .line 26
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e3
    :goto_e3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_51

    .line 27
    :cond_e7
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f4

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f4

    return-object v2

    .line 28
    :cond_f4
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object/from16 v10, p0

    invoke-direct {v10, v4, v1, v8}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->createHead(Lcom/android/fileexplorer/adapter/search/SearchType;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 29
    new-instance v4, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-direct {v4}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    .line 30
    sget-object v8, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Head:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    iput v8, v4, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    const/16 v8, 0x13

    .line 31
    iput v8, v4, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 32
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v4, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    const-string v11, "head"

    .line 33
    invoke-virtual {v8, v11, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-le v7, v0, :cond_152

    if-eqz v0, :cond_152

    .line 35
    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    .line 36
    sget-object v4, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Foot:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iput v4, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    const/16 v4, 0x14

    .line 37
    iput v4, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 38
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 39
    invoke-virtual {v4, v11, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    const-string v3, "count"

    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_152
    const-string v0, "end construct"

    .line 43
    invoke-static {v5, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_158
    :goto_158
    move-object/from16 v10, p0

    return-object v2
.end method

.method private createHead(Lcom/android/fileexplorer/adapter/search/SearchType;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$13;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result p1

    .line 15
    aget p1, v1, p1

    .line 17
    const v1, 0x7f0f0031

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x2

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq p1, v4, :cond_5a

    .line 25
    if-eq p1, v3, :cond_44

    .line 27
    const/4 v5, 0x3

    .line 28
    if-eq p1, v5, :cond_30

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object p1

    .line 34
    new-array v0, v3, [Ljava/lang/Object;

    .line 36
    aput-object p2, v0, v2

    .line 38
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p2

    .line 42
    aput-object p2, v0, v4

    .line 44
    invoke-virtual {p1, v1, p3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object p1

    .line 53
    const p2, 0x7f0f002f

    .line 56
    new-array v0, v4, [Ljava/lang/Object;

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 62
    aput-object v1, v0, v2

    .line 64
    invoke-virtual {p1, p2, p3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object p1

    .line 73
    const v0, 0x7f0f0030

    .line 76
    new-array v1, v3, [Ljava/lang/Object;

    .line 78
    aput-object p2, v1, v2

    .line 80
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object p2

    .line 84
    aput-object p2, v1, v4

    .line 86
    invoke-virtual {p1, v0, p3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_5a
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object p1

    .line 95
    new-array v0, v3, [Ljava/lang/Object;

    .line 97
    aput-object p2, v0, v2

    .line 99
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object p2

    .line 103
    aput-object p2, v0, v4

    .line 105
    invoke-virtual {p1, v1, p3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
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

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p2

    .line 10
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2d

    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/search/SearchResult;->getExtra()Landroid/os/Bundle;

    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_25

    .line 28
    const-string v3, "type"

    .line 30
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    goto :goto_9

    .line 38
    :cond_25
    const-string v1, "SearchResultFragment"

    .line 40
    const-string v2, "should not be here!!!"

    .line 42
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    goto :goto_9

    .line 46
    :cond_2d
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mConstructTask:Landroid/os/AsyncTask;

    .line 48
    invoke-static {p2}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 51
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 54
    move-result p2

    .line 55
    const/4 v1, 0x1

    .line 56
    if-nez p2, :cond_4c

    .line 58
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_4c

    .line 66
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 68
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 71
    iput-boolean v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mIsLastSearchResultEmpty:Z

    .line 73
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateAdapter()V

    .line 76
    return-void

    .line 77
    :cond_4c
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 80
    move-result p2

    .line 81
    const/4 v2, 0x2

    .line 82
    if-ne p2, v1, :cond_6e

    .line 84
    new-instance p2, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;

    .line 86
    invoke-direct {p2, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 89
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 92
    move-result-object p3

    .line 93
    new-array v2, v2, [Ljava/lang/Object;

    .line 95
    const/4 v3, 0x0

    .line 96
    aput-object p1, v2, v3

    .line 98
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    aput-object p1, v2, v1

    .line 104
    invoke-virtual {p2, p3, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mConstructTask:Landroid/os/AsyncTask;

    .line 110
    return-void

    .line 111
    :cond_6e
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 113
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 116
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isSearchTagVisible()Z

    .line 119
    move-result p2

    .line 120
    const/16 v3, 0xa

    .line 122
    if-eqz p2, :cond_94

    .line 124
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 126
    sget-object p3, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 128
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 131
    move-result p3

    .line 132
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object p3

    .line 136
    check-cast p3, Lcom/android/fileexplorer/search/SearchResult;

    .line 138
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 140
    invoke-direct {p0, v3, p1, p3, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;Ljava/lang/Boolean;)Ljava/util/List;

    .line 143
    move-result-object p1

    .line 144
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    goto/16 :goto_15e

    .line 149
    :cond_94
    sget-object p2, Lcom/android/fileexplorer/fragment/SearchResultFragment$13;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    .line 151
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 154
    move-result p3

    .line 155
    aget p2, p2, p3

    .line 157
    const/4 p3, 0x3

    .line 158
    if-eq p2, v1, :cond_101

    .line 160
    if-eq p2, v2, :cond_a3

    .line 162
    goto/16 :goto_15e

    .line 164
    :cond_a3
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 166
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 168
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 171
    move-result v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    .line 178
    invoke-direct {p0, v3, p1, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 181
    move-result-object v1

    .line 182
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 187
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 190
    move-result p2

    .line 191
    if-eqz p2, :cond_d6

    .line 193
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 195
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 200
    move-result v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    .line 207
    invoke-direct {p0, v3, p1, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 210
    move-result-object v1

    .line 211
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    goto :goto_eb

    .line 215
    :cond_d6
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 217
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 219
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 222
    move-result v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    .line 229
    invoke-direct {p0, p3, p1, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 232
    move-result-object v1

    .line 233
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    :goto_eb
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 238
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 240
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 243
    move-result v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Lcom/android/fileexplorer/search/SearchResult;

    .line 250
    invoke-direct {p0, p3, p1, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 253
    move-result-object p1

    .line 254
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    goto :goto_15e

    .line 258
    :cond_101
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 260
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 262
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 265
    move-result v1

    .line 266
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 269
    move-result-object v1

    .line 270
    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    .line 272
    invoke-direct {p0, v3, p1, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 275
    move-result-object v1

    .line 276
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 281
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 284
    move-result p2

    .line 285
    if-eqz p2, :cond_134

    .line 287
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 289
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 291
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 294
    move-result v1

    .line 295
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 298
    move-result-object v1

    .line 299
    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    .line 301
    invoke-direct {p0, v3, p1, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 304
    move-result-object v1

    .line 305
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    goto :goto_149

    .line 309
    :cond_134
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 311
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 313
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 316
    move-result v1

    .line 317
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 320
    move-result-object v1

    .line 321
    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    .line 323
    invoke-direct {p0, p3, p1, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 326
    move-result-object v1

    .line 327
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 330
    :goto_149
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 332
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 334
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 337
    move-result v1

    .line 338
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 341
    move-result-object v0

    .line 342
    check-cast v0, Lcom/android/fileexplorer/search/SearchResult;

    .line 344
    invoke-direct {p0, p3, p1, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 347
    move-result-object p1

    .line 348
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    :goto_15e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 353
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 356
    move-result p1

    .line 357
    if-eqz p1, :cond_169

    .line 359
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateAdapter()V

    .line 362
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

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V

    return-void
.end method

.method private doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V
    .registers 14

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isSearchTagVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mApp:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-direct {p0, p2, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->showSearchTagView(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    .line 5
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mPackageName:Ljava/lang/String;

    sget-object v4, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearchWithTag(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V

    return-void

    .line 6
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

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRefreshOnVisible:Z

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    .line 9
    new-instance v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTask:Ljava/lang/Runnable;

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 11
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    const p1, 0x7f1103ad

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void
.end method

.method private doSearch(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    return-void
.end method

.method private doSearchWithTag(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doTagSearch(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V

    .line 4
    return-void
.end method

.method private doTagSearch(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V
    .registers 14

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    .line 10
    return-void

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRefreshOnVisible:Z

    .line 14
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    .line 17
    new-instance v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;

    .line 19
    move-object v1, v0

    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p2

    .line 23
    move-object v5, p3

    .line 24
    move v6, p4

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    .line 28
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTask:Ljava/lang/Runnable;

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    .line 32
    invoke-virtual {p1, v0, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method

.method private hideSearchTagView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mEditText:Lcom/android/fileexplorer/view/SearchEditText;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/SearchEditText;->setTagVisible(Ljava/lang/Boolean;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    .line 10
    const/16 v1, 0x8

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 21
    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->None:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagResultCache:Ljava/util/List;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_50

    .line 38
    sget-object v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 40
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->setState(Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 45
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iput-boolean v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mIsLastSearchResultEmpty:Z

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    .line 52
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 55
    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 57
    const-string v1, ""

    .line 59
    invoke-direct {p0, v1, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateSearchRelated(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 62
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 68
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    .line 75
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mConstructTask:Landroid/os/AsyncTask;

    .line 77
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 80
    goto :goto_5b

    .line 81
    :cond_50
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 83
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Z)V

    .line 92
    :goto_5b
    return-void
.end method

.method private initActionBar()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayShowCustomEnabled(Z)V

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 16
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 26
    move-result-object v2

    .line 27
    const v3, 0x7f0d0043

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Landroidx/appcompat/app/a$a;

    .line 37
    const/4 v4, -0x1

    .line 38
    invoke-direct {v3, v4, v4}, Landroidx/appcompat/app/a$a;-><init>(II)V

    .line 41
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/a;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/a$a;)V

    .line 44
    const v0, 0x7f0a036f

    .line 47
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v3

    .line 51
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 58
    move-result-object v4

    .line 59
    sget-object v5, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 61
    const/16 v6, 0x8

    .line 63
    if-ne v4, v5, :cond_41

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move v1, v6

    .line 67
    :goto_42
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$7;

    .line 76
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$7;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f0a0376

    .line 85
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchViewContainer:Landroid/view/View;

    .line 91
    const v0, 0x7f0a0383

    .line 94
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/android/fileexplorer/search/SearchTagView;

    .line 100
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    .line 102
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 105
    const v0, 0x1020009

    .line 108
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Landroid/widget/EditText;

    .line 114
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    .line 116
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 118
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    .line 123
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 125
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 128
    move-result v3

    .line 129
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 132
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    .line 134
    const v3, 0x7f1103ba

    .line 137
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 140
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lcom/android/fileexplorer/view/SearchEditText;

    .line 146
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mEditText:Lcom/android/fileexplorer/view/SearchEditText;

    .line 148
    new-instance v1, Lcom/android/cloud/fragment/presenter/b;

    .line 150
    const/4 v2, 0x3

    .line 151
    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/SearchEditText;->setEditTextClearCallback(Lcom/android/fileexplorer/view/SearchEditText$EditTextClearCallBack;)V

    .line 157
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    .line 159
    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$8;

    .line 161
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$8;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    .line 169
    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;

    .line 171
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    .line 179
    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;

    .line 181
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    .line 189
    new-instance v1, Lcom/android/cloud/fragment/e;

    .line 191
    const/4 v2, 0x2

    .line 192
    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
.end method

.method private initRecyclerView()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a03d2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 16
    const v1, 0x7f0a036a

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x102000a

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 42
    const v1, 0x7f0a0163

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 53
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    .line 55
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 57
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;-><init>(Ljava/util/List;)V

    .line 60
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 68
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 73
    move-result-object v2

    .line 74
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 80
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;

    .line 82
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 84
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 86
    const/16 v3, 0x9

    .line 88
    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 91
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 93
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 100
    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$2;

    .line 102
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$2;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 110
    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$3;

    .line 112
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$3;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 115
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 118
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    .line 120
    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;

    .line 122
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$4;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 130
    const-string v1, "PAGE_SearchResultFragment"

    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private initSearchSuggestView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a0374

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ScrollView;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollSearchHelperView:Landroid/widget/ScrollView;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 16
    const v1, 0x7f0a0373

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/fileexplorer/adapter/search/SearchView;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchHelperView:Lcom/android/fileexplorer/adapter/search/SearchView;

    .line 27
    new-instance v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$5;

    .line 29
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$5;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchView;->setOnSearchItemClickListener(Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;)V

    .line 35
    return-void
.end method

.method private isHintState()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 3
    sget-object v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private isSearchTagVisible()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 3
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->None:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 5
    if-eq v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private synthetic lambda$initActionBar$0()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->hideSearchTagView()V

    .line 4
    return-void
.end method

.method private synthetic lambda$initActionBar$1(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchTagView;->toggle()V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    .line 8
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchTagView;->isChecked()Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_13

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x1

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    .line 27
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 30
    return-void
.end method

.method public static newInstance(I)Lcom/android/fileexplorer/fragment/SearchResultFragment;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;-><init>()V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    const-string v2, "id"

    .line 13
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 19
    return-object v0
.end method

.method private searchFromTagCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 3
    invoke-direct {p0, p2, p1, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->updateSearchTagRelated(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagResultCache:Ljava/util/List;

    .line 8
    invoke-direct {p0, p2, p1, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->dataHandler(Ljava/lang/String;Ljava/util/List;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 11
    return-void
.end method

.method private setState(Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V
    .registers 7

    .line 1
    const-string v0, "setState state = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SearchResultFragment"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$13;->$SwitchMap$com$android$fileexplorer$fragment$SearchResultFragment$State:[I

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    move-result v1

    .line 29
    aget v0, v0, v1

    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    const/16 v3, 0x8

    .line 35
    if-eq v0, v1, :cond_b6

    .line 37
    const/4 v4, 0x2

    .line 38
    if-eq v0, v4, :cond_76

    .line 40
    const/4 v4, 0x3

    .line 41
    if-eq v0, v4, :cond_2c

    .line 43
    goto/16 :goto_d5

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollSearchHelperView:Landroid/widget/ScrollView;

    .line 47
    if-eqz v0, :cond_33

    .line 49
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_56

    .line 60
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 62
    const v4, 0x7f1103ac

    .line 65
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZII)V

    .line 68
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 75
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 80
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 82
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 85
    goto/16 :goto_d5

    .line 87
    :cond_56
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 94
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 99
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 104
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 106
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 109
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mIsLastSearchResultEmpty:Z

    .line 111
    if-eqz v0, :cond_d5

    .line 113
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 115
    invoke-static {v0}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->show(Landroid/view/View;)V

    .line 118
    goto :goto_d5

    .line 119
    :cond_76
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollSearchHelperView:Landroid/widget/ScrollView;

    .line 121
    if-eqz v0, :cond_7d

    .line 123
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_7d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_9f

    .line 134
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 136
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 141
    const v3, 0x7f110180

    .line 144
    invoke-virtual {v0, v1, v3}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    .line 147
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 149
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 154
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 156
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 159
    goto :goto_d5

    .line 160
    :cond_9f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 162
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 167
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 172
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 177
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 179
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 182
    goto :goto_d5

    .line 183
    :cond_b6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollSearchHelperView:Landroid/widget/ScrollView;

    .line 185
    if-eqz v0, :cond_bd

    .line 187
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_bd
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 192
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 197
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 202
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 208
    move-result-object v0

    .line 209
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    .line 211
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 214
    :cond_d5
    :goto_d5
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 216
    return-void
.end method

.method private showSearchTagView(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mEditText:Lcom/android/fileexplorer/view/SearchEditText;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/SearchEditText;->setTagVisible(Ljava/lang/Boolean;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/search/SearchTagView;->setChecked(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagView:Lcom/android/fileexplorer/search/SearchTagView;

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    return-void
.end method

.method private startSearchRequest()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->requestRunnable:Ljava/lang/Runnable;

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    .line 10
    const-wide/16 v2, 0x64

    .line 12
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    return-void
.end method

.method private updateAdapter()V
    .registers 3

    .line 1
    const-string v0, "mSearchResultList.size = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "SearchResultFragment"

    .line 22
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_RESULT:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 27
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->setState(Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    .line 32
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method

.method private updateSearchRelated(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 5
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    .line 7
    if-eqz p2, :cond_20

    .line 9
    const-string p2, "search"

    .line 11
    invoke-static {p2, p1}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 17
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result p2

    .line 21
    const-string v0, "type"

    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    .line 28
    iget v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mFragId:I

    .line 30
    invoke-interface {p2, v0, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;->onFragmentInteraction(ILandroid/os/Bundle;)V

    .line 33
    :cond_20
    return-void
.end method

.method private updateSearchTagRelated(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    .line 7
    if-eqz p1, :cond_20

    .line 9
    const-string p1, "search"

    .line 11
    invoke-static {p1, p2}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 17
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result p2

    .line 21
    const-string p3, "type"

    .line 23
    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    .line 28
    iget p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mFragId:I

    .line 30
    invoke-interface {p2, p3, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;->onFragmentInteraction(ILandroid/os/Bundle;)V

    .line 33
    :cond_20
    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isEditMode()Z

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

.method public getItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_13

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 17
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2f

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 24
    iget v3, v2, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    .line 26
    sget-object v4, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Body:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    .line 28
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 31
    move-result v4

    .line 32
    if-ne v3, v4, :cond_27

    .line 34
    iget-object v2, v2, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_b

    .line 40
    :cond_27
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->getInvalidFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_b

    .line 48
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_5f

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_f

    .line 15
    goto :goto_5f

    .line 16
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    const-string v3, "getOneHopShareData size:"

    .line 31
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v4

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v0

    .line 53
    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_5e

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 65
    if-eqz v2, :cond_34

    .line 67
    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 69
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_34

    .line 75
    iget-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 77
    if-eqz v3, :cond_4f

    .line 79
    goto :goto_34

    .line 80
    :cond_4f
    new-instance v3, Ljava/io/File;

    .line 82
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 84
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {v3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_34

    .line 95
    :cond_5e
    return-object v1

    .line 96
    :cond_5f
    :goto_5f
    const/4 v0, 0x0

    .line 97
    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 11
    if-eqz p1, :cond_21

    .line 13
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_21

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 27
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    .line 34
    :cond_21
    const-string p1, "SearchResultFragment"

    .line 36
    const-string v0, "onInflateView"

    .line 38
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->initActionBar()V

    .line 44
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->initRecyclerView()V

    .line 47
    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 49
    if-nez p1, :cond_35

    .line 51
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->initSearchSuggestView()V

    .line 54
    :cond_35
    return-void
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
    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;

    .line 16
    if-eqz p2, :cond_16

    .line 18
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;

    .line 20
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;->encrypt()V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->exitActionModeNotTimeInterval()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_b

    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_b
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public onCloudStatusChanged(Z)V
    .registers 8

    .line 1
    if-eqz p1, :cond_e

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 7
    const/4 v3, 0x0

    .line 8
    const-wide/16 v4, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V

    .line 14
    goto :goto_1e

    .line 15
    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    .line 17
    if-eqz p1, :cond_1e

    .line 19
    const-string p1, "MiDrive_LOG"

    .line 21
    const-string v0, "onSearchStatusChanged"

    .line 23
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    .line 28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 31
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const v0, 0x7f12011e

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_29

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_de

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 40
    goto/16 :goto_de

    .line 42
    :cond_29
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_42

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 58
    move-result-object v0

    .line 59
    const-string v1, "id"

    .line 61
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mFragId:I

    .line 67
    :cond_42
    sget-object v0, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 69
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 71
    if-eqz p1, :cond_a3

    .line 73
    const-string v1, "search"

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 81
    const-string v1, "search_last"

    .line 83
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 92
    move-result-object v1

    .line 93
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 98
    move-result v2

    .line 99
    const-string v3, "type"

    .line 101
    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 104
    move-result v2

    .line 105
    aget-object v1, v1, v2

    .line 107
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 109
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->values()[Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 112
    move-result-object v1

    .line 113
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->None:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 118
    move-result v2

    .line 119
    const-string v3, "tag_type"

    .line 121
    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 124
    move-result v2

    .line 125
    aget-object v1, v1, v2

    .line 127
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 129
    const-string v1, "tag_text"

    .line 131
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mApp:Ljava/lang/String;

    .line 137
    const-string v1, "tag_package_name"

    .line 139
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mPackageName:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->values()[Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 152
    move-result v0

    .line 153
    const-string v2, "state"

    .line 155
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 158
    move-result p1

    .line 159
    aget-object p1, v1, p1

    .line 161
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 163
    goto :goto_ad

    .line 164
    :cond_a3
    const-string p1, ""

    .line 166
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 170
    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 172
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 174
    :goto_ad
    new-instance p1, Landroid/os/Handler;

    .line 176
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 183
    const/4 v0, 0x1

    .line 184
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 187
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mFirstRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 195
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    .line 203
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    .line 205
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->registerDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 212
    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 214
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 216
    new-instance p1, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;

    .line 218
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;-><init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 221
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    .line 223
    :cond_de
    :goto_de
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mListener:Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public onDestroyView()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    .line 16
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 18
    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 31
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchInputView:Landroid/widget/EditText;

    .line 44
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchHelperView:Lcom/android/fileexplorer/adapter/search/SearchView;

    .line 49
    if-eqz v0, :cond_36

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchView;->setOnSearchItemClickListener(Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;)V

    .line 55
    :cond_36
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 57
    if-eqz v0, :cond_3d

    .line 59
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroy()V

    .line 62
    :cond_3d
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->cancelSearchTask()V

    .line 65
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 67
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagResultCache:Ljava/util/List;

    .line 72
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    .line 77
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->requestRunnable:Ljava/lang/Runnable;

    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mHandler:Landroid/os/Handler;

    .line 84
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTask:Ljava/lang/Runnable;

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->unregisterDownloadObservers(Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$ICloudStatusObserver;)V

    .line 96
    return-void
.end method

.method public onDetach()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 4
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 4
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p1, :cond_f

    .line 13
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRefreshOnVisible:Z

    .line 15
    goto :goto_16

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 20
    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    .line 23
    :goto_16
    return-void
.end method

.method public onNavigationVisibilityChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(Z)V

    .line 4
    return-void
.end method

.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_31

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/app/a;->getCustomView()Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    const v0, 0x7f0a036f

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_31

    .line 27
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroidx/appcompat/app/a;->getCustomView()Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    sget-object v0, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 41
    if-ne p2, v0, :cond_2c

    .line 43
    const/4 p2, 0x0

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    const/16 p2, 0x8

    .line 47
    :goto_2e
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_31
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_f

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_2b

    .line 16
    :cond_f
    if-eqz p3, :cond_2b

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 20
    if-eqz p1, :cond_2b

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2b

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    .line 37
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 39
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    .line 41
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 44
    :cond_2b
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    .line 4
    const-string v0, "onResume mState = "

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "SearchResultFragment"

    .line 21
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->isHintState()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_22

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 32
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->setState(Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    .line 35
    :cond_22
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->startSearchRequest()V

    .line 38
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 6
    const-string v1, "search"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    const-string v1, "type"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mSearchTagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v0

    .line 28
    const-string v1, "tag_type"

    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mApp:Ljava/lang/String;

    .line 35
    const-string v1, "tag_text"

    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mPackageName:Ljava/lang/String;

    .line 42
    const-string v1, "tag_package_name"

    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 49
    const-string v1, "search_last"

    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment;->mState:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 59
    move-result v0

    .line 60
    const-string v1, "state"

    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_8

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->startSearchRequest()V

    .line 9
    :cond_8
    return-void
.end method

.method public showNavButton()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
