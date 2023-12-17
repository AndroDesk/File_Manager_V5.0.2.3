.class public Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;
.super Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;
.source "PadTransferCategoryFragment.java"


# static fields
.field private static final PAGE_COUNT:I = 0x64

.field public static final TAG:Ljava/lang/String; = "PadTransferCategoryFragment"


# instance fields
.field private mPullRefresh:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->mPullRefresh:Z

    .line 7
    return-void
.end method

.method private getMarginMiddle()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_3_4Layout(I)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2d

    .line 9
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_16_9Layout(I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_2d

    .line 18
    :cond_11
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_4_3Layout(I)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1d

    .line 26
    const v0, 0x7f0706c9

    .line 29
    return v0

    .line 30
    :cond_1d
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 32
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isTwoThirdLayout(I)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_29

    .line 38
    const v0, 0x7f070249

    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    const v0, 0x7f070248

    .line 45
    :goto_2c
    return v0

    .line 46
    :cond_2d
    :goto_2d
    const v0, 0x7f0706c7

    .line 49
    return v0
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->initView(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public loadBusinessData(ZII)Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 13
    move-result-object v1

    .line 14
    iget-boolean v5, p0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->mPullRefresh:Z

    .line 16
    const/4 v4, 0x0

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->transQuery(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->mPullRefresh:Z

    .line 26
    new-instance p2, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;

    .line 28
    iget-object p3, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 30
    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 32
    invoke-direct {p2, p3, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;-><init>(Ljava/util/List;Z)V

    .line 35
    return-object p2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onPullRefresh()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->onPullRefresh()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->mPullRefresh:Z

    .line 7
    return-void
.end method

.method public setActionBarTitle()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f110453

    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 17
    :cond_10
    return-void
.end method

.method public setupAdapter()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->setupAdapter()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 6
    new-instance v1, Lcom/android/fileexplorer/listener/click/ExpandableFavoriteClickListener;

    .line 8
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v1, v2, v0, v3}, Lcom/android/fileexplorer/listener/click/ExpandableFavoriteClickListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    .line 20
    return-void
.end method

.method public setupLayoutManager()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;-><init>(Landroid/content/Context;ILcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V

    .line 18
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 20
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 22
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    return-void
.end method
