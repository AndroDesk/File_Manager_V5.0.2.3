.class public Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;
.super Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;
.source "PadTransferCategoryFragment.java"


# static fields
.field private static final PAGE_COUNT:I

.field public static final TAG:Ljava/lang/String; = "PadTransferCategoryFragment"


# instance fields
.field private mPullRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92df2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->PAGE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->mPullRefresh:Z

    return-void
.end method

.method private getMarginMiddle()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_3_4Layout(I)Z

    move-result v0

    if-nez v0, :cond_2d

    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_16_9Layout(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2d

    :cond_11
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_4_3Layout(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const v0, 0x7f0706c9

    return v0

    :cond_1d
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isTwoThirdLayout(I)Z

    move-result v0

    if-eqz v0, :cond_29

    const v0, 0x7f070249

    goto :goto_2c

    :cond_29
    const v0, 0x7f070248

    :goto_2c
    return v0

    :cond_2d
    :goto_2d
    const v0, 0x7f0706c7

    return v0
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->initView(Landroid/view/View;)V

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

    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->mPullRefresh:Z

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->transQuery(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->mPullRefresh:Z

    new-instance p2, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;

    iget-object p3, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    invoke-direct {p2, p3, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;-><init>(Ljava/util/List;Z)V

    return-object p2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPullRefresh()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->onPullRefresh()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->mPullRefresh:Z

    return-void
.end method

.method public setActionBarTitle()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f110453

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    :cond_10
    return-void
.end method

.method public setupAdapter()V
    .registers 5

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->setupAdapter()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    new-instance v1, Lcom/android/fileexplorer/listener/click/ExpandableFavoriteClickListener;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/fileexplorer/listener/click/ExpandableFavoriteClickListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    return-void
.end method

.method public setupLayoutManager()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;-><init>(Landroid/content/Context;ILcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
