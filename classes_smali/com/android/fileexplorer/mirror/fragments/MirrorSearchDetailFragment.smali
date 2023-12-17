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

    .line 1
    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 3
    const-string v0, "MirrorSearchDetailFragment"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchText:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;Lcom/android/fileexplorer/search/SearchResultContent;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->dataHandler(Lcom/android/fileexplorer/search/SearchResultContent;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/activity/BaseActivity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->updateAdapter()V

    .line 4
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p3, :cond_ce

    .line 8
    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_ce

    .line 14
    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_19

    .line 24
    goto/16 :goto_ce

    .line 26
    :cond_19
    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->TAG:Ljava/lang/String;

    .line 28
    const-string v2, "start construct -- detail"

    .line 30
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getExtra()Landroid/os/Bundle;

    .line 36
    move-result-object v1

    .line 37
    const-string v2, "type"

    .line 39
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 42
    move-result v1

    .line 43
    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 50
    move-result v3

    .line 51
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 54
    move-result-object v4

    .line 55
    aget-object v4, v4, v1

    .line 57
    invoke-direct {p0, v4, p2, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->createHead(Lcom/android/fileexplorer/adapter/search/SearchType;Ljava/lang/String;I)Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 61
    if-nez p1, :cond_3f

    .line 63
    goto :goto_43

    .line 64
    :cond_3f
    if-le p1, v3, :cond_42

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v3, p1

    .line 68
    :goto_43
    const/4 v4, 0x0

    .line 69
    move v5, v4

    .line 70
    :goto_45
    if-eq v5, v3, :cond_a0

    .line 72
    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 75
    move-result-object v6

    .line 76
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 82
    new-instance v7, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 84
    invoke-direct {v7}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    .line 87
    sget-object v8, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Body:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    .line 89
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 92
    move-result v8

    .line 93
    iput v8, v7, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    .line 95
    iput-object v6, v7, Lcom/android/fileexplorer/adapter/search/SearchResultData;->item:Ljava/lang/Object;

    .line 97
    new-instance v8, Landroid/os/Bundle;

    .line 99
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 102
    iput-object v8, v7, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 104
    const/16 v8, 0x15

    .line 106
    iput v8, v7, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 108
    new-instance v8, Ljava/io/File;

    .line 110
    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 113
    move-result-object v9

    .line 114
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_9d

    .line 123
    new-instance v8, Ljava/io/File;

    .line 125
    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 128
    move-result-object v9

    .line 129
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    const/4 v9, 0x0

    .line 133
    invoke-static {v8, v9, v4}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    .line 136
    move-result-object v8

    .line 137
    iput-object v8, v7, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 139
    if-eqz v8, :cond_9d

    .line 141
    iget-boolean v8, v8, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 143
    if-nez v8, :cond_9d

    .line 145
    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 148
    move-result-object v6

    .line 149
    invoke-static {v6}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isPrivate(Ljava/lang/String;)Z

    .line 152
    move-result v6

    .line 153
    if-nez v6, :cond_9d

    .line 155
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_9d
    add-int/lit8 v5, v5, 0x1

    .line 160
    goto :goto_45

    .line 161
    :cond_a0
    if-eqz p1, :cond_c7

    .line 163
    new-instance p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 165
    invoke-direct {p1}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    .line 168
    sget-object p3, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Foot:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    .line 170
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 173
    move-result p3

    .line 174
    iput p3, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    .line 176
    new-instance p3, Landroid/os/Bundle;

    .line 178
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 181
    iput-object p3, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 183
    const/16 v3, 0x14

    .line 185
    iput v3, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 187
    const-string v3, "head"

    .line 189
    invoke-virtual {p3, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p2, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 194
    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 197
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_c7
    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->TAG:Ljava/lang/String;

    .line 202
    const-string p2, "end construct -- detail"

    .line 204
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_ce
    :goto_ce
    return-object v0
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
    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$5;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

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
    const v0, 0x7f0f0030

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
    const v0, 0x7f0f0032

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

.method private dataHandler(Lcom/android/fileexplorer/search/SearchResultContent;)V
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
    if-eqz v2, :cond_2b

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
    const-string v4, "type"

    .line 36
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 39
    move-result v3

    .line 40
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    goto :goto_11

    .line 44
    :cond_2b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mConstructTask:Landroid/os/AsyncTask;

    .line 46
    const/4 v2, 0x1

    .line 47
    if-eqz v0, :cond_33

    .line 49
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 57
    move-result v0

    .line 58
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_61

    .line 64
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;

    .line 66
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)V

    .line 69
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 72
    move-result-object v3

    .line 73
    const/4 v4, 0x2

    .line 74
    new-array v4, v4, [Ljava/lang/Object;

    .line 76
    const/4 v5, 0x0

    .line 77
    aput-object p1, v4, v5

    .line 79
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 84
    move-result p1

    .line 85
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    aput-object p1, v4, v2

    .line 91
    invoke-virtual {v0, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mConstructTask:Landroid/os/AsyncTask;

    .line 97
    return-void

    .line 98
    :cond_61
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_71

    .line 106
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 108
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 111
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->updateAdapter()V

    .line 114
    :cond_71
    return-void
.end method

.method private doSearch(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRefreshOnVisible:Z

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;

    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;Ljava/lang/String;Z)V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchTask:Ljava/lang/Runnable;

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    .line 21
    return-void
.end method

.method private initView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a03d2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRootView:Landroid/view/View;

    .line 16
    const v1, 0x7f0a036a

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x7f0a0163

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRootView:Landroid/view/View;

    .line 42
    const v1, 0x102000a

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 69
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 71
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 76
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 81
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 83
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 85
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 93
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 95
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;-><init>(Ljava/util/List;)V

    .line 98
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 100
    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 104
    new-instance v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;

    .line 106
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 108
    const/16 v2, 0x9

    .line 110
    invoke-direct {v0, p0, v1, v2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 113
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 115
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 117
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 122
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$2;

    .line 124
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$2;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)V

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 130
    return-void
.end method

.method public static newInstance(IILjava/lang/String;I)Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;
    .registers 7

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;-><init>()V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    const-string v2, "id"

    .line 13
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    const-string p0, "search"

    .line 18
    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string p0, "type"

    .line 23
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    const-string p0, "total"

    .line 28
    invoke-virtual {v1, p0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v0
.end method

.method private showEmptyView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 9
    if-eqz v1, :cond_d

    .line 11
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    .line 14
    :cond_d
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 16
    const/16 v2, 0x8

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    move v4, v2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v4, v3

    .line 24
    :goto_17
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 29
    if-eqz v0, :cond_1f

    .line 31
    move v2, v3

    .line 32
    :cond_1f
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 37
    if-eqz v0, :cond_29

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 44
    :goto_2b
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method private updateAdapter()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 8
    if-eqz v0, :cond_12

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->showEmpty(Z)V

    .line 19
    :cond_12
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->showEmptyView()V

    .line 22
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_13

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

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
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchResultList:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 10
    move-result v0

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
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12032d

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 19
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 21
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 27
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getArgs()Landroid/os/Bundle;

    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_44

    .line 33
    const-string v0, "search"

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchText:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 50
    move-result v1

    .line 51
    const-string v2, "type"

    .line 53
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 56
    move-result v1

    .line 57
    aget-object v0, v0, v1

    .line 59
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 61
    const-string v0, "total"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 66
    move-result p1

    .line 67
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mCount:I

    .line 69
    :cond_44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 75
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 77
    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 79
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 81
    new-instance p1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$1;

    .line 83
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)V

    .line 86
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    .line 88
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public onDestroyView()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    .line 16
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchTask:Ljava/lang/Runnable;

    .line 32
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 37
    if-eqz v0, :cond_29

    .line 39
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->onDestroy()V

    .line 42
    :cond_29
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
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
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRefreshOnVisible:Z

    .line 15
    goto :goto_14

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchText:Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->doSearch(Ljava/lang/String;Z)V

    .line 21
    :goto_14
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 1
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 12
    move-result-object p3

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 17
    invoke-virtual {p3, v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    .line 20
    const p3, 0x7f0d00b8

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRootView:Landroid/view/View;

    .line 30
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->initView()V

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchText:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->doSearch(Ljava/lang/String;Z)V

    .line 38
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRootView:Landroid/view/View;

    .line 40
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 8
    if-ne v0, v1, :cond_12

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_12
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onResume()V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mRefreshOnVisible:Z

    .line 6
    if-eqz v0, :cond_d

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->mSearchText:Ljava/lang/String;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->doSearch(Ljava/lang/String;Z)V

    .line 14
    :cond_d
    return-void
.end method
