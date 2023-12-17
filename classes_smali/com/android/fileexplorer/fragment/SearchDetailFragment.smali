.class public Lcom/android/fileexplorer/fragment/SearchDetailFragment;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "SearchDetailFragment.java"


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "SearchDetailFragment"


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field private mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConstructTask:Landroid/os/AsyncTask;

.field private mCount:I

.field private mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

.field private mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

.field private mRefreshOnVisible:Z

.field private mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

.field private mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchText:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/SearchDetailFragment;Lcom/android/fileexplorer/search/SearchResultContent;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->dataHandler(Lcom/android/fileexplorer/search/SearchResultContent;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/SearchDetailFragment;ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->updateAdapter()V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/SearchDetailFragment;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->updateActionBar(I)V

    .line 4
    return-void
.end method

.method private construct(ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;
    .registers 15
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
    if-eqz p3, :cond_102

    .line 8
    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_102

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
    goto/16 :goto_102

    .line 26
    :cond_19
    const-string v1, "SearchDetailFragment"

    .line 28
    const-string v2, "start construct -- detail"

    .line 30
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getExtra()Landroid/os/Bundle;

    .line 36
    move-result-object v2

    .line 37
    const-string v3, "type"

    .line 39
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 42
    move-result v2

    .line 43
    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 50
    move-result v4

    .line 51
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 54
    move-result-object v5

    .line 55
    aget-object v5, v5, v2

    .line 57
    invoke-direct {p0, v5, p2, v4}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->createHead(Lcom/android/fileexplorer/adapter/search/SearchType;Ljava/lang/String;I)Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 61
    if-nez p1, :cond_3f

    .line 63
    goto :goto_43

    .line 64
    :cond_3f
    if-le p1, v4, :cond_42

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v4, p1

    .line 68
    :goto_43
    const/4 v5, 0x0

    .line 69
    move v6, v5

    .line 70
    :goto_45
    if-eq v6, v4, :cond_d6

    .line 72
    invoke-virtual {p3}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 75
    move-result-object v7

    .line 76
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 82
    new-instance v8, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 84
    invoke-direct {v8}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    .line 87
    sget-object v9, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Body:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    .line 89
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 92
    move-result v9

    .line 93
    iput v9, v8, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    .line 95
    iput-object v7, v8, Lcom/android/fileexplorer/adapter/search/SearchResultData;->item:Ljava/lang/Object;

    .line 97
    new-instance v9, Landroid/os/Bundle;

    .line 99
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 102
    iput-object v9, v8, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 104
    const/16 v9, 0x15

    .line 106
    iput v9, v8, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 108
    const-string v9, "construct: "

    .line 110
    invoke-static {v9}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 117
    move-result-object v10

    .line 118
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v9

    .line 125
    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    instance-of v9, v7, Lcom/android/cloud/bean/CloudFileItem;

    .line 130
    if-eqz v9, :cond_a0

    .line 132
    check-cast v7, Lcom/android/cloud/bean/CloudFileItem;

    .line 134
    invoke-static {v7}, Lcom/android/cloud/util/CloudFileUtils;->getCloudFileInfoV2(Lcom/android/cloud/bean/CloudFileItem;)Lcom/android/cloud/bean/CloudFileInfo;

    .line 137
    move-result-object v9

    .line 138
    iput-object v9, v8, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 140
    invoke-virtual {v7}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    .line 143
    move-result-object v7

    .line 144
    const-string v9, "folder"

    .line 146
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_9c

    .line 152
    iget-object v7, v8, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 154
    const/4 v9, 0x1

    .line 155
    iput-boolean v9, v7, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 157
    :cond_9c
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    goto :goto_d2

    .line 161
    :cond_a0
    new-instance v9, Ljava/io/File;

    .line 163
    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 166
    move-result-object v10

    .line 167
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 173
    move-result v9

    .line 174
    if-eqz v9, :cond_d2

    .line 176
    new-instance v9, Ljava/io/File;

    .line 178
    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 181
    move-result-object v10

    .line 182
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    const/4 v10, 0x0

    .line 186
    invoke-static {v9, v10, v5}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    .line 189
    move-result-object v9

    .line 190
    iput-object v9, v8, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 192
    if-eqz v9, :cond_d2

    .line 194
    iget-boolean v9, v9, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 196
    if-nez v9, :cond_d2

    .line 198
    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 201
    move-result-object v7

    .line 202
    invoke-static {v7}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isPrivate(Ljava/lang/String;)Z

    .line 205
    move-result v7

    .line 206
    if-nez v7, :cond_d2

    .line 208
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_d2
    :goto_d2
    add-int/lit8 v6, v6, 0x1

    .line 213
    goto/16 :goto_45

    .line 215
    :cond_d6
    if-eqz p1, :cond_fd

    .line 217
    new-instance p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 219
    invoke-direct {p1}, Lcom/android/fileexplorer/adapter/search/SearchResultData;-><init>()V

    .line 222
    sget-object p3, Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;->Foot:Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;

    .line 224
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 227
    move-result p3

    .line 228
    iput p3, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->type:I

    .line 230
    new-instance p3, Landroid/os/Bundle;

    .line 232
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 235
    iput-object p3, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 237
    const/16 v4, 0x14

    .line 239
    iput v4, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->viewType:I

    .line 241
    const-string v4, "head"

    .line 243
    invoke-virtual {p3, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p2, p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->extra:Landroid/os/Bundle;

    .line 248
    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 251
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_fd
    const-string p1, "end construct -- detail"

    .line 256
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_102
    :goto_102
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
    sget-object v1, Lcom/android/fileexplorer/fragment/SearchDetailFragment$5;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mConstructTask:Landroid/os/AsyncTask;

    .line 46
    const/4 v2, 0x1

    .line 47
    if-eqz v0, :cond_33

    .line 49
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

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
    new-instance v0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$3;

    .line 66
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment$3;-><init>(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)V

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

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
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mConstructTask:Landroid/os/AsyncTask;

    .line 97
    return-void

    .line 98
    :cond_61
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_7a

    .line 106
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 108
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 111
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->updateAdapter()V

    .line 114
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 119
    move-result p1

    .line 120
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->updateActionBar(I)V

    .line 123
    :cond_7a
    return-void
.end method

.method private doSearch(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRefreshOnVisible:Z

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_10

    .line 10
    const p1, 0x7f1103ad

    .line 13
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance v0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$4;

    .line 19
    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/fragment/SearchDetailFragment$4;-><init>(Lcom/android/fileexplorer/fragment/SearchDetailFragment;Ljava/lang/String;Z)V

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchTask:Ljava/lang/Runnable;

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method

.method private initView()V
    .registers 5

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a03d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a036a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchResultList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 18
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    new-instance v1, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;-><init>(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const-string v1, "PAGE_SearchDetailFragment"

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(IILjava/lang/String;I)Lcom/android/fileexplorer/fragment/SearchDetailFragment;
    .registers 7

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;-><init>()V

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_e

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 17
    const/16 v3, 0x8

    .line 19
    if-eqz v0, :cond_16

    .line 21
    move v4, v3

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v4, v2

    .line 24
    :goto_17
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 29
    if-eqz v0, :cond_1f

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v2, v3

    .line 33
    :goto_20
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 38
    if-eqz v0, :cond_2a

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 45
    :goto_2c
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method private updateActionBar(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayShowCustomEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 17
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchText:Ljava/lang/String;

    .line 19
    invoke-direct {p0, v1, v2, p1}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->createHead(Lcom/android/fileexplorer/adapter/search/SearchType;Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method

.method private updateAdapter()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 8
    if-eqz v0, :cond_13

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 20
    :cond_13
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->showEmptyView()V

    .line 23
    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->isEditMode()Z

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchResultList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_13

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchResultList:Ljava/util/List;

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

    const v0, 0x7f0d00b7

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
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchResultList:Ljava/util/List;

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

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "SearchDetailFragment"

    return-object v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a03d2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 3
    iget p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mCount:I

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->updateActionBar(I)V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->initView()V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchText:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->doSearch(Ljava/lang/String;Z)V

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->exitActionMode()Z

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    invoke-static {p0}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;)V

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12011f

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_46

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 26
    move-result-object p1

    .line 27
    const-string v0, "search"

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchText:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result v1

    .line 49
    const-string v2, "type"

    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 54
    move-result v0

    .line 55
    aget-object p1, p1, v0

    .line 57
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 62
    move-result-object p1

    .line 63
    const-string v0, "total"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mCount:I

    .line 71
    :cond_46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 77
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 79
    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 81
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mDefinition:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 83
    new-instance p1, Lcom/android/fileexplorer/fragment/SearchDetailFragment$1;

    .line 85
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment$1;-><init>(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)V

    .line 88
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    .line 90
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

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
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mResultListener:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    .line 16
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 18
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 31
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchTask:Ljava/lang/Runnable;

    .line 40
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 45
    if-eqz v0, :cond_31

    .line 47
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroy()V

    .line 50
    :cond_31
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
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRefreshOnVisible:Z

    .line 15
    goto :goto_14

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchText:Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->doSearch(Ljava/lang/String;Z)V

    .line 21
    :goto_14
    return-void
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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->onBack()Z

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_12
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mRefreshOnVisible:Z

    .line 6
    if-eqz v0, :cond_d

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->mSearchText:Ljava/lang/String;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->doSearch(Ljava/lang/String;Z)V

    .line 14
    :cond_d
    return-void
.end method
