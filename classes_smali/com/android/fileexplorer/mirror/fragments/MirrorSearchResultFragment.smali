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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 11
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;

    .line 13
    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mPostOperation:Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;

    .line 18
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->updateSearchRelated(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->setState(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mApp:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mPackageName:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->dataHandler(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Lcom/android/fileexplorer/activity/BaseActivity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->clickViewMore(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->updateAdapter()V

    .line 4
    return-void
.end method

.method private cancelSearchTask()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mHandler:Landroid/os/Handler;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchTask:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    :cond_9
    return-void
.end method

.method private clickViewMore(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

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
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 50
    const-string v1, "search"

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 57
    invoke-direct {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 60
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->SearchDetail:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 62
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args(Landroid/os/Bundle;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 72
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 74
    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 77
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

    .line 1
    move/from16 v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    if-eqz p3, :cond_104

    .line 12
    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_104

    .line 18
    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1d

    .line 28
    goto/16 :goto_104

    .line 30
    :cond_1d
    const-string v3, "SearchResultFragment"

    .line 32
    const-string v4, "start construct"

    .line 34
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getExtra()Landroid/os/Bundle;

    .line 40
    move-result-object v4

    .line 41
    const-string v5, "type"

    .line 43
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 46
    move-result v4

    .line 47
    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 50
    move-result-object v6

    .line 51
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 54
    move-result v6

    .line 55
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 58
    move-result-object v7

    .line 59
    aget-object v7, v7, v4

    .line 61
    move-object/from16 v8, p0

    .line 63
    invoke-direct {v8, v7, v1, v6}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->createHead(Lcom/android/fileexplorer/adapter/search/SearchType;Ljava/lang/String;I)Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    new-instance v9, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 69
    invoke-direct {v9}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    .line 72
    sget-object v10, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Head:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    .line 74
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 77
    move-result v10

    .line 78
    iput v10, v9, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    .line 80
    const/16 v10, 0x13

    .line 82
    iput v10, v9, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 84
    new-instance v10, Landroid/os/Bundle;

    .line 86
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 89
    iput-object v10, v9, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 91
    const-string v11, "head"

    .line 93
    invoke-virtual {v10, v11, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    if-nez v0, :cond_65

    .line 101
    goto :goto_67

    .line 102
    :cond_65
    if-le v0, v6, :cond_69

    .line 104
    :goto_67
    move v9, v6

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    move v9, v0

    .line 107
    :goto_6a
    const/4 v12, 0x0

    .line 108
    :goto_6b
    if-eq v12, v9, :cond_d0

    .line 110
    invoke-virtual/range {p3 .. p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 113
    move-result-object v13

    .line 114
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v13

    .line 118
    check-cast v13, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 120
    new-instance v14, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 122
    invoke-direct {v14}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    .line 125
    sget-object v15, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Body:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    .line 127
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 130
    move-result v15

    .line 131
    iput v15, v14, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    .line 133
    const/16 v15, 0x15

    .line 135
    iput v15, v14, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 137
    iput-object v13, v14, Lcom/android/fileexplorer/adapter/search/SearchResultData;->item:Ljava/lang/Object;

    .line 139
    new-instance v15, Landroid/os/Bundle;

    .line 141
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 144
    iput-object v15, v14, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 146
    const-string v10, "searchText"

    .line 148
    invoke-virtual {v15, v10, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v10, Ljava/io/File;

    .line 153
    invoke-virtual {v13}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 156
    move-result-object v15

    .line 157
    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 163
    move-result v10

    .line 164
    if-eqz v10, :cond_ca

    .line 166
    new-instance v10, Ljava/io/File;

    .line 168
    invoke-virtual {v13}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 171
    move-result-object v15

    .line 172
    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    const/4 v15, 0x0

    .line 176
    const/4 v1, 0x0

    .line 177
    invoke-static {v10, v15, v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    .line 180
    move-result-object v10

    .line 181
    iput-object v10, v14, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 183
    if-eqz v10, :cond_cb

    .line 185
    iget-boolean v10, v10, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 187
    if-nez v10, :cond_cb

    .line 189
    invoke-virtual {v13}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 192
    move-result-object v10

    .line 193
    invoke-static {v10}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isPrivate(Ljava/lang/String;)Z

    .line 196
    move-result v10

    .line 197
    if-nez v10, :cond_cb

    .line 199
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    goto :goto_cb

    .line 203
    :cond_ca
    const/4 v1, 0x0

    .line 204
    :cond_cb
    :goto_cb
    add-int/lit8 v12, v12, 0x1

    .line 206
    move-object/from16 v1, p2

    .line 208
    goto :goto_6b

    .line 209
    :cond_d0
    if-le v6, v0, :cond_fe

    .line 211
    if-eqz v0, :cond_fe

    .line 213
    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 215
    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    .line 218
    sget-object v1, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Foot:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    .line 220
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 223
    move-result v1

    .line 224
    iput v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    .line 226
    const/16 v1, 0x14

    .line 228
    iput v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 230
    new-instance v1, Landroid/os/Bundle;

    .line 232
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 235
    iput-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 237
    invoke-virtual {v1, v11, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 242
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 245
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 247
    const-string v4, "count"

    .line 249
    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 252
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_fe
    const-string v0, "end construct"

    .line 257
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-object v2

    .line 261
    :cond_104
    :goto_104
    move-object/from16 v8, p0

    .line 263
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
    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$6;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

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
    if-eq p1, v4, :cond_5c

    .line 25
    if-eq p1, v3, :cond_46

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
    const v0, 0x7f0f0032

    .line 56
    new-array v1, v3, [Ljava/lang/Object;

    .line 58
    aput-object p2, v1, v2

    .line 60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p2

    .line 64
    aput-object p2, v1, v4

    .line 66
    invoke-virtual {p1, v0, p3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :cond_46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object p1

    .line 75
    const v0, 0x7f0f0030

    .line 78
    new-array v1, v3, [Ljava/lang/Object;

    .line 80
    aput-object p2, v1, v2

    .line 82
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object p2

    .line 86
    aput-object p2, v1, v4

    .line 88
    invoke-virtual {p1, v0, p3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_5c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object p1

    .line 97
    new-array v0, v3, [Ljava/lang/Object;

    .line 99
    aput-object p2, v0, v2

    .line 101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object p2

    .line 105
    aput-object p2, v0, v4

    .line 107
    invoke-virtual {p1, v1, p3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    return-object p1
.end method

.method private dataHandler(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getResults()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_35

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    .line 30
    invoke-virtual {v2}, Lcom/android/fileexplorer/search/SearchResult;->getExtra()Landroid/os/Bundle;

    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_2d

    .line 36
    const-string v4, "type"

    .line 38
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    goto :goto_11

    .line 46
    :cond_2d
    const-string v2, "SearchResultFragment"

    .line 48
    const-string v3, "should not be here!!!"

    .line 50
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    goto :goto_11

    .line 54
    :cond_35
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mConstructTask:Landroid/os/AsyncTask;

    .line 56
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 59
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_51

    .line 65
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_51

    .line 73
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 75
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 78
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->updateAdapter()V

    .line 81
    return-void

    .line 82
    :cond_51
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 85
    move-result v0

    .line 86
    const/4 v2, 0x2

    .line 87
    const/4 v3, 0x1

    .line 88
    if-ne v0, v3, :cond_74

    .line 90
    new-instance p2, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$3;

    .line 92
    invoke-direct {p2, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V

    .line 95
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 98
    move-result-object v0

    .line 99
    new-array v2, v2, [Ljava/lang/Object;

    .line 101
    const/4 v4, 0x0

    .line 102
    aput-object p1, v2, v4

    .line 104
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 108
    aput-object p1, v2, v3

    .line 110
    invoke-virtual {p2, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mConstructTask:Landroid/os/AsyncTask;

    .line 116
    return-void

    .line 117
    :cond_74
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 119
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$6;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    .line 124
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 127
    move-result p2

    .line 128
    aget p2, v0, p2

    .line 130
    const/4 v0, 0x3

    .line 131
    const/16 v4, 0xa

    .line 133
    if-eq p2, v3, :cond_e8

    .line 135
    if-eq p2, v2, :cond_8a

    .line 137
    goto/16 :goto_145

    .line 139
    :cond_8a
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 141
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 146
    move-result v2

    .line 147
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    .line 153
    invoke-direct {p0, v4, p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 156
    move-result-object v2

    .line 157
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 162
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 165
    move-result p2

    .line 166
    if-eqz p2, :cond_bd

    .line 168
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 170
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 172
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 175
    move-result v2

    .line 176
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    .line 182
    invoke-direct {p0, v4, p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 185
    move-result-object v2

    .line 186
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    goto :goto_d2

    .line 190
    :cond_bd
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 192
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 194
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 197
    move-result v2

    .line 198
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    .line 204
    invoke-direct {p0, v0, p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 207
    move-result-object v2

    .line 208
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    :goto_d2
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 213
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 215
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 218
    move-result v2

    .line 219
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    .line 225
    invoke-direct {p0, v0, p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 228
    move-result-object p1

    .line 229
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 232
    goto :goto_145

    .line 233
    :cond_e8
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 235
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 237
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 240
    move-result v2

    .line 241
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 244
    move-result-object v2

    .line 245
    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    .line 247
    invoke-direct {p0, v4, p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 250
    move-result-object v2

    .line 251
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 256
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 259
    move-result p2

    .line 260
    if-eqz p2, :cond_11b

    .line 262
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 264
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 266
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 269
    move-result v2

    .line 270
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 273
    move-result-object v2

    .line 274
    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    .line 276
    invoke-direct {p0, v4, p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 279
    move-result-object v2

    .line 280
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    goto :goto_130

    .line 284
    :cond_11b
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 286
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 288
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 291
    move-result v2

    .line 292
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 295
    move-result-object v2

    .line 296
    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    .line 298
    invoke-direct {p0, v0, p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 301
    move-result-object v2

    .line 302
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 305
    :goto_130
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 307
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 309
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 312
    move-result v2

    .line 313
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Lcom/android/fileexplorer/search/SearchResult;

    .line 319
    invoke-direct {p0, v0, p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 322
    move-result-object p1

    .line 323
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 326
    :goto_145
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 328
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 331
    move-result p1

    .line 332
    if-eqz p1, :cond_150

    .line 334
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->updateAdapter()V

    .line 337
    :cond_150
    return-void
.end method

.method private doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V
    .registers 5

    .line 2
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

    .line 3
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRefreshOnVisible:Z

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->cancelSearchTask()V

    .line 5
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchTask:Ljava/lang/Runnable;

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 7
    :cond_26
    :goto_26
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->cancelSearchTask()V

    return-void
.end method

.method private doSearch(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    return-void
.end method

.method private initEmptyTrigger()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a02ff

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;

    .line 12
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$5;

    .line 14
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$5;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    .line 20
    return-void
.end method

.method private initRecyclerView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a03d2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    .line 16
    const v1, 0x7f0a036a

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x102000a

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    .line 42
    const v1, 0x7f0a0163

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 53
    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 55
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 57
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;-><init>(Ljava/util/List;)V

    .line 60
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 68
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 70
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 72
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 84
    new-instance v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;

    .line 86
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 88
    const/16 v2, 0x9

    .line 90
    invoke-direct {v0, p0, v1, v2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 93
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 95
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 97
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 102
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;

    .line 104
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 110
    return-void
.end method

.method private isHintState()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    .line 3
    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

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

.method private setState(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;)V
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
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$6;->$SwitchMap$com$android$fileexplorer$mirror$fragments$MirrorSearchResultFragment$State:[I

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    move-result v1

    .line 29
    aget v0, v0, v1

    .line 31
    const/4 v1, 0x1

    .line 32
    const/16 v2, 0x8

    .line 34
    if-eq v0, v1, :cond_9e

    .line 36
    const/4 v3, 0x2

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eq v0, v3, :cond_65

    .line 40
    const/4 v3, 0x3

    .line 41
    if-eq v0, v3, :cond_2c

    .line 43
    goto/16 :goto_ad

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4e

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 55
    const v3, 0x7f1103ac

    .line 58
    invoke-virtual {v0, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(ZI)V

    .line 61
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 63
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 73
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 75
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 78
    goto :goto_ad

    .line 79
    :cond_4e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 81
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 91
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 96
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 98
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 101
    goto :goto_ad

    .line 102
    :cond_65
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 104
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_87

    .line 110
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 117
    const v2, 0x7f110180

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showLoading(ZI)V

    .line 123
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 125
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 130
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 132
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 135
    goto :goto_ad

    .line 136
    :cond_87
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 138
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 143
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 148
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 153
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 155
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 158
    goto :goto_ad

    .line 159
    :cond_9e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 161
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 166
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 171
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :goto_ad
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    .line 176
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
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

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
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->SHOW_SEARCH_RESULT:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    .line 27
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->setState(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;)V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 32
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method

.method private updateSearchRelated(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mPostOperation:Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;

    .line 7
    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->setSearchType(Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 10
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mListener:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$OnFragmentInteractionListener;

    .line 12
    if-eqz p2, :cond_1e

    .line 14
    const-string p2, "search"

    .line 16
    invoke-static {p2, p1}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 22
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 25
    move-result p2

    .line 26
    const-string v0, "type"

    .line 28
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    :cond_1e
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_13

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

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
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchResultList:Ljava/util/List;

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/16 p3, 0x6a

    .line 6
    if-eq p1, p3, :cond_8

    .line 8
    goto :goto_10

    .line 9
    :cond_8
    const/4 p1, -0x1

    .line 10
    if-ne p2, p1, :cond_10

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 14
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->encryptReal()V

    .line 17
    :cond_10
    :goto_10
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->cancelSearchTask()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

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
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onBack()Z

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const v0, 0x7f12032d

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    .line 21
    if-eqz p1, :cond_4d

    .line 23
    const-string v1, "search"

    .line 25
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 31
    const-string v1, "search_last"

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 42
    move-result-object v1

    .line 43
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 45
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result v2

    .line 49
    const-string v3, "type"

    .line 51
    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 54
    move-result v2

    .line 55
    aget-object v1, v1, v2

    .line 57
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 59
    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->values()[Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 66
    move-result v0

    .line 67
    const-string v2, "state"

    .line 69
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 72
    move-result p1

    .line 73
    aget-object p1, v1, p1

    .line 75
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    .line 77
    goto :goto_57

    .line 78
    :cond_4d
    const-string p1, ""

    .line 80
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 84
    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 86
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 88
    :goto_57
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mPostOperation:Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;

    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 92
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->setSearchType(Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 95
    new-instance p1, Landroid/os/Handler;

    .line 97
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    const/4 v0, 0x1

    .line 105
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 108
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mFirstRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 116
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 118
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 121
    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 124
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 126
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mPostOperation:Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;

    .line 128
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->register(Landroid/app/Activity;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;)V

    .line 131
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 133
    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;

    .line 135
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V

    .line 138
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    .line 140
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mListener:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$OnFragmentInteractionListener;

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
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    .line 16
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 32
    if-eqz v0, :cond_24

    .line 34
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->onDestroy()V

    .line 37
    :cond_24
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->cancelSearchTask()V

    .line 40
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
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRefreshOnVisible:Z

    .line 15
    goto :goto_16

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 20
    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    .line 23
    :goto_16
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    const p3, 0x7f0d0077

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    .line 25
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 27
    invoke-virtual {p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    .line 30
    const-string p1, "SearchResultFragment"

    .line 32
    const-string p2, "onInflateView"

    .line 34
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->initEmptyTrigger()V

    .line 40
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->initRecyclerView()V

    .line 43
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRootView:Landroid/view/View;

    .line 45
    return-object p1
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onResume()V

    .line 4
    const-string v0, "onResume mState = "

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

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
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->isHintState()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_22

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    .line 32
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->setState(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;)V

    .line 35
    :cond_22
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mSearchText:Ljava/lang/String;

    .line 6
    const-string v1, "search"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    const-string v1, "type"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 24
    const-string v1, "search_last"

    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mState:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 34
    move-result v0

    .line 35
    const-string v1, "state"

    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public onSearchKeyChange(Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;->getSearchKey()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_2a

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_47

    .line 20
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->isHintState()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1f

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 28
    invoke-direct {p0, p1, v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    .line 31
    goto :goto_22

    .line 32
    :cond_1f
    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->doSearch(Ljava/lang/String;Z)V

    .line 35
    :goto_22
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 39
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 42
    goto :goto_47

    .line 43
    :cond_2a
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->cancelSearchTask()V

    .line 46
    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->doSearch(Ljava/lang/String;Z)V

    .line 49
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    .line 51
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->setState(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;)V

    .line 54
    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mLastSearch:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->updateSearchRelated(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 63
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 66
    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    .line 72
    :cond_47
    :goto_47
    return-void
.end method
