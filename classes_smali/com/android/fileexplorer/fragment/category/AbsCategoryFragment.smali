.class public abstract Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;
.super Lcom/android/fileexplorer/fragment/AbsActionBarFragment;
.source "AbsCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;,
        Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;,
        Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "G:",
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup<",
        "TC;>;>",
        "Lcom/android/fileexplorer/fragment/AbsActionBarFragment;"
    }
.end annotation


# static fields
.field private static final AD_PLACE_STANDARD:I = 0x3

.field public static final CHOICE_MODE:Ljava/lang/String; = "CHOICE_MODE"


# instance fields
.field private TAG:Ljava/lang/String;

.field private canPullLoad:Z

.field public mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public mAdFileInfo:Lcom/android/fileexplorer/model/AdFileInfo;

.field public mAdapterFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TG;>;"
        }
    .end annotation
.end field

.field public mCategoryAdIndex:[I

.field public mCurrentState:I

.field public mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter<",
            "TC;TG;>;"
        }
    .end annotation
.end field

.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field public mIsDislike:Z

.field private mIsLoading:Z

.field public mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mLoadGroupTask:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask<",
            "TC;TG;>;"
        }
    .end annotation
.end field

.field public mModeListener:Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field public mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mStartIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mIsLoading:Z

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileList:Ljava/util/List;

    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 24
    return-void
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mNeedRefresh:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->canPullLoad:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;ZII)Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->loadAndProcessData(ZII)Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->handleLoadDataResult(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;I)V

    .line 4
    return-void
.end method

.method private static calculateAdShowPlace(Ljava/util/List;)[I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            ">;)[I"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_e

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_e

    .line 10
    :cond_9
    invoke-static {p0}, Lcom/android/fileexplorer/util/AdUtil;->getAdCategoryIndex(Ljava/util/List;)[I

    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_e
    :goto_e
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method private static getAdIndex(Ljava/util/List;)[I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            ">;)[I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    move-result v4

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x3

    .line 11
    if-ge v1, v4, :cond_49

    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/fileexplorer/model/FileInfoGroup;

    .line 19
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 26
    move-result v3

    .line 27
    if-nez v1, :cond_20

    .line 29
    if-lt v3, v6, :cond_20

    .line 31
    move p0, v6

    .line 32
    goto :goto_47

    .line 33
    :cond_20
    add-int v4, v2, v3

    .line 35
    if-eq v4, v6, :cond_39

    .line 37
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 40
    move-result v7

    .line 41
    if-ne v7, v5, :cond_2d

    .line 43
    if-ge v3, v6, :cond_2d

    .line 45
    goto :goto_39

    .line 46
    :cond_2d
    if-le v4, v6, :cond_33

    .line 48
    rsub-int/lit8 p0, v2, 0x3

    .line 50
    add-int/2addr v2, p0

    .line 51
    goto :goto_4c

    .line 52
    :cond_33
    add-int/lit8 v2, v1, 0x1

    .line 54
    move v3, v1

    .line 55
    move v1, v2

    .line 56
    move v2, v4

    .line 57
    goto :goto_4

    .line 58
    :cond_39
    :goto_39
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lcom/android/fileexplorer/model/FileInfoGroup;

    .line 64
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 67
    move-result-object p0

    .line 68
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 71
    move-result p0

    .line 72
    :goto_47
    move v2, p0

    .line 73
    goto :goto_4c

    .line 74
    :cond_49
    move p0, v0

    .line 75
    move v2, p0

    .line 76
    move v1, v3

    .line 77
    :goto_4c
    new-array v3, v6, [I

    .line 79
    aput v1, v3, v0

    .line 81
    aput p0, v3, v5

    .line 83
    const/4 p0, 0x2

    .line 84
    aput v2, v3, p0

    .line 86
    return-object v3
.end method

.method public static getAdPosId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$7;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_14

    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_11

    .line 15
    const-string p0, ""

    .line 17
    return-object p0

    .line 18
    :cond_11
    const-string p0, "1.301.1.11"

    .line 20
    return-object p0

    .line 21
    :cond_14
    const-string p0, "1.301.1.9"

    .line 23
    return-object p0
.end method

.method private handleLoadDataResult(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult<",
            "TC;TG;>;I)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mIsLoading:Z

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mStartIndex:I

    .line 6
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 8
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 11
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 13
    invoke-virtual {p2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 16
    if-nez p1, :cond_15

    .line 18
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->showEmptyView()V

    .line 21
    return-void

    .line 22
    :cond_15
    iget-boolean p2, p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;->hasMore:Z

    .line 24
    iput-boolean p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->canPullLoad:Z

    .line 26
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 28
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 31
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 33
    iget-object v0, p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;->data:Ljava/util/List;

    .line 35
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    sget-boolean p2, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    .line 40
    if-eqz p2, :cond_49

    .line 42
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isShowAdInCategory()Z

    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_49

    .line 48
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->requestAd(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 55
    iget-object p2, p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;->data:Ljava/util/List;

    .line 57
    invoke-static {p2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->calculateAdShowPlace(Ljava/util/List;)[I

    .line 60
    move-result-object p2

    .line 61
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCategoryAdIndex:[I

    .line 63
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 66
    move-result-object p2

    .line 67
    invoke-static {p2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getAdPosId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->addAdToFileInfoDateGroups(Ljava/lang/String;)V

    .line 74
    :cond_49
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 76
    iget-boolean v0, p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;->hasMore:Z

    .line 78
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 81
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->TAG:Ljava/lang/String;

    .line 83
    const-string v0, "handleLoadDataResult: hasMore = "

    .line 85
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    move-result-object v0

    .line 89
    iget-boolean p1, p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;->hasMore:Z

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 103
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_71

    .line 109
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileList:Ljava/util/List;

    .line 111
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 114
    :cond_71
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->showEmptyView()V

    .line 117
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 119
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->sync()V

    .line 122
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 124
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 127
    move-result-object p1

    .line 128
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 130
    if-eqz p1, :cond_92

    .line 132
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 134
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 140
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->invalidateSpanIndexCache()V

    .line 147
    :cond_92
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isWidgetChoiceMode()Z

    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_ae

    .line 153
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;

    .line 155
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 157
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 160
    move-result p2

    .line 161
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setDataCount(Z)V

    .line 164
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 166
    const/4 p2, 0x2

    .line 167
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setChoiceMode(I)V

    .line 170
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 172
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->updateChoiceState()V

    .line 175
    :cond_ae
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 177
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 180
    return-void
.end method

.method private initEmptyTrigger(Landroid/view/View;)V
    .registers 3

    .line 1
    const v0, 0x7f0a015c

    .line 4
    :try_start_3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;

    .line 10
    if-nez p1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance v0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$1;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$1;-><init>(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_14} :catch_15

    .line 21
    goto :goto_19

    .line 22
    :catch_15
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    :goto_19
    return-void
.end method

.method private initListView()V
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
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

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
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 29
    const v1, 0x102000a

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 38
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 40
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x2

    .line 52
    const/4 v2, 0x5

    .line 53
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 58
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getMaxRecycledViews()I

    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 70
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 72
    new-instance v1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$3;

    .line 74
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$3;-><init>(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;)V

    .line 77
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 80
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 82
    new-instance v1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$4;

    .line 84
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$4;-><init>(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;)V

    .line 87
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 92
    new-instance v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 94
    invoke-direct {v1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    .line 97
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->setupAdapter()V

    .line 103
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->setupLayoutManager()V

    .line 106
    new-instance v0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$5;

    .line 108
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 110
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 112
    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$5;-><init>(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 115
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 117
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 119
    new-instance v1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$6;

    .line 121
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$6;-><init>(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;)V

    .line 124
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 129
    const-string v1, "PAGE_"

    .line 131
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->TAG:Ljava/lang/String;

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private loadAndProcessData(ZII)Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult<",
            "TC;TG;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->loadBusinessData(ZII)Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;

    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    if-nez p1, :cond_f

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileList:Ljava/util/List;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 16
    :cond_f
    iget-object p1, p2, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;->files:Ljava/util/List;

    .line 18
    if-eqz p1, :cond_18

    .line 20
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileList:Ljava/util/List;

    .line 22
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    :cond_18
    new-instance p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;

    .line 27
    invoke-direct {p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;-><init>()V

    .line 30
    iget-boolean p2, p2, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;->hasMore:Z

    .line 32
    iput-boolean p2, p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;->hasMore:Z

    .line 34
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileList:Ljava/util/List;

    .line 36
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->convertToViewData(Ljava/util/List;)Ljava/util/List;

    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$ViewResult;->data:Ljava/util/List;

    .line 42
    return-object p1
.end method

.method private requestAd(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdFileInfo:Lcom/android/fileexplorer/model/AdFileInfo;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/AdFileInfo;->getAdListView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdFileInfo:Lcom/android/fileexplorer/model/AdFileInfo;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/AdFileInfo;->getAdGridView()Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_28

    .line 19
    :cond_12
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getAdPosId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/fileexplorer/advert/AdManagerController;->reportPV(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getAdPosId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/fileexplorer/advert/AdManagerController;->loadAd(Ljava/lang/String;)V

    .line 41
    :cond_28
    return-void
.end method


# virtual methods
.method public addAdToFileInfoDateGroups(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_40

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_40

    .line 15
    if-eqz p1, :cond_40

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_17

    .line 23
    goto :goto_40

    .line 24
    :cond_17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCategoryAdIndex:[I

    .line 26
    if-eqz v1, :cond_40

    .line 28
    sget-object v1, Lcom/fileexplorer/advert/config/NativeAdConst;->CATEGORY_POS_ID_NATIVE_MAP:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_40

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdFileInfo:Lcom/android/fileexplorer/model/AdFileInfo;

    .line 38
    if-eqz p1, :cond_40

    .line 40
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCategoryAdIndex:[I

    .line 42
    const/4 v1, 0x0

    .line 43
    aget p1, p1, v1

    .line 45
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/android/fileexplorer/model/FileInfoGroup;

    .line 51
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCategoryAdIndex:[I

    .line 57
    const/4 v1, 0x1

    .line 58
    aget v0, v0, v1

    .line 60
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdFileInfo:Lcom/android/fileexplorer/model/AdFileInfo;

    .line 62
    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 65
    :cond_40
    :goto_40
    return-void
.end method

.method public abstract convertToViewData(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TC;>;)",
            "Ljava/util/List<",
            "TG;>;"
        }
    .end annotation
.end method

.method public exitActionMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isEditMode()Z

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

.method public getDataBackToFront()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getDataBackToFront()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->TAG:Ljava/lang/String;

    .line 6
    const-string v1, "getDataBackToFront"

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->loadGroupList(ZZ)V

    .line 15
    return-void
.end method

.method public final getFileList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00b9

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getMaxRecycledViews()I
    .registers 2

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    const/16 v0, 0x1e

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const/16 v0, 0xf

    .line 10
    :goto_9
    return v0
.end method

.method public getOneCopyShareData()Lcom/android/fileexplorer/model/FileInfo;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_4c

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_12

    .line 18
    goto :goto_4c

    .line 19
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    const-string v3, "getOneHopShareData size:"

    .line 29
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v4

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v2

    .line 51
    const/4 v3, 0x1

    .line 52
    if-ne v2, v3, :cond_4c

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 61
    if-eqz v0, :cond_4c

    .line 63
    iget-boolean v2, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 65
    if-nez v2, :cond_4c

    .line 67
    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4b

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    return-object v0

    .line 77
    :cond_4c
    :goto_4c
    return-object v1
.end method

.method public getOneHopShareData()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    if-eqz v0, :cond_61

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_11

    .line 17
    goto :goto_61

    .line 18
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const-string v2, "getOneHopShareData size:"

    .line 28
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 55
    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_60

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 67
    if-eqz v2, :cond_36

    .line 69
    iget-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 71
    if-nez v3, :cond_36

    .line 73
    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_51

    .line 81
    goto :goto_36

    .line 82
    :cond_51
    new-instance v3, Ljava/io/File;

    .line 84
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 86
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {v3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_36

    .line 97
    :cond_60
    return-object v1

    .line 98
    :cond_61
    :goto_61
    const/4 v0, 0x0

    .line 99
    return-object v0
.end method

.method public abstract getPageCount()I
.end method

.method public getScrollView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getStartIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mStartIndex:I

    .line 3
    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v0, 0x7f0a0163

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/fileexplorer/view/EmptyView;

    .line 12
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 14
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->initListView()V

    .line 17
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->showLoadingView()V

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 22
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->initEmptyTrigger(Landroid/view/View;)V

    .line 25
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

.method public isShowAdInCategory()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 7
    if-eq v0, v1, :cond_13

    .line 9
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 15
    if-ne v0, v1, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 21
    :goto_14
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

.method public isWidgetChoiceMode()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_14

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 11
    move-result-object v0

    .line 12
    const-string v2, "CHOICE_MODE"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_14

    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_14
    return v1
.end method

.method public abstract loadBusinessData(ZII)Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult<",
            "TC;>;"
        }
    .end annotation
.end method

.method public final loadGroupList(ZZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "loadGroupList: isLoading = "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mIsLoading:Z

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
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mIsLoading:Z

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mIsLoading:Z

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;

    .line 36
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 39
    new-instance v0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;

    .line 41
    invoke-direct {v0, p1, p0, p2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;-><init>(ZLcom/android/fileexplorer/fragment/category/AbsCategoryFragment;Z)V

    .line 44
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;

    .line 46
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 49
    move-result-object p1

    .line 50
    const/4 p2, 0x0

    .line 51
    new-array p2, p2, [Ljava/lang/Void;

    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    .line 15
    if-eqz p2, :cond_15

    .line 17
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->encrypt()V

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->exitActionMode()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_10
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getLogTag()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->TAG:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mIsLoading:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mNeedRefresh:Z

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLoadGroupTask:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$LoadGroupTask;

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroy()V

    .line 28
    :cond_1b
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

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
    if-eqz p1, :cond_22

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_12

    .line 18
    goto :goto_22

    .line 19
    :cond_12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 21
    if-eqz p1, :cond_21

    .line 23
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1d

    .line 29
    goto :goto_21

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->loadGroupList(ZZ)V

    .line 34
    :cond_21
    :goto_21
    return-void

    .line 35
    :cond_22
    :goto_22
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mNeedRefresh:Z

    .line 38
    return-void
.end method

.method public abstract onPullRefresh()V
.end method

.method public onUserVisible(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mBackToFront:Z

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->TAG:Ljava/lang/String;

    .line 11
    const-string v1, "onUserVisible"

    .line 13
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    if-nez p1, :cond_15

    .line 18
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mNeedRefresh:Z

    .line 20
    if-eqz p1, :cond_1f

    .line 22
    :cond_15
    new-instance p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$2;

    .line 24
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$2;-><init>(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;)V

    .line 27
    const-wide/16 v0, 0x15e

    .line 29
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 32
    :cond_1f
    return-void
.end method

.method public abstract setupAdapter()V
.end method

.method public abstract setupLayoutManager()V
.end method

.method public showEmptyView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v0, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 15
    const/16 v3, 0x8

    .line 17
    if-eqz v0, :cond_14

    .line 19
    move v4, v3

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v4, v2

    .line 22
    :goto_15
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v2, v3

    .line 31
    :goto_1e
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 36
    if-eqz v0, :cond_28

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 43
    :goto_2a
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method public showLoadingView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 9
    const v2, 0x7f11023b

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 17
    const/16 v2, 0x8

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v0, :cond_17

    .line 22
    move v4, v2

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v4, v3

    .line 25
    :goto_18
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 30
    if-eqz v0, :cond_20

    .line 32
    move v2, v3

    .line 33
    :cond_20
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 38
    if-eqz v0, :cond_2a

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 45
    :goto_2c
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 48
    return-void
.end method
