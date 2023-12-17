.class public Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;
.super Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;
.source "DocCategorySubFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/BaseTabFragment$OnNotifyCallback;


# static fields
.field private static final CHOICE_MODE:Ljava/lang/String; = "CHOICE_MODE"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "doc_category"

.field private static final PAGE_COUNT:I


# instance fields
.field private mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

.field public mRootViewInitPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;

.field private mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field private viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->PAGE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;-><init>()V

    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;)Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->lambda$onCreate$0(Ljava/lang/Integer;)V

    return-void
.end method

.method private getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    return-object v0
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getContentInset()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    const/high16 v1, 0x41400000  # 12.0f

    invoke-static {v1}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getOffsetYParent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetYParent(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getBlurContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->registerBlurContainer(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->NotifyStickyChange()V

    :cond_30
    return-void
.end method

.method public static newInstance(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "category"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Z)Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "category"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p1, :cond_17

    const/4 p0, 0x1

    const-string p1, "CHOICE_MODE"

    invoke-virtual {v1, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getBlurContainer()Landroid/view/ViewGroup;
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getOffsetYParent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getOffsetYParent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_29

    :cond_11
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getOffsetYParent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f032cd2

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    :cond_29
    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBundleData(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->getBundleData(Landroid/os/Bundle;)V

    const-string v0, "category"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-void
.end method

.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public getOffsetYParent()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    const/16 v0, 0xc8

    return v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->isWidgetModeActivity()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public initItemDecoration(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->initItemDecoration(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getContentInset()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    iget-object v1, v1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->tabHeight:Landroidx/lifecycle/q;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    const/high16 v0, 0x41400000  # 12.0f

    invoke-static {v0}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getOffsetYParent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetYParent(Landroid/view/View;)V

    :cond_2f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method public isShowFab()Z
    .registers 2

    const/4 v0, 0x0

    return v0
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

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    const/4 v5, 0x0

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {p2}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {p2}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    iget-object p3, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->scanAllFolderFiles(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->mergeFileInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_ScanFolder"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCostDebug(Ljava/lang/String;)V

    new-instance p2, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;

    iget-object p3, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    invoke-direct {p2, p3, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;-><init>(Ljava/util/List;Z)V

    return-object p2
.end method

.method public onBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onColumnChange(I)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12011e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_22

    new-instance p1, Landroidx/lifecycle/c0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    :cond_22
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    if-eqz p1, :cond_31

    iget-object p1, p1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->tabHeight:Landroidx/lifecycle/q;

    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    :cond_31
    return-void
.end method

.method public onRefreshData()V
    .registers 1

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->onViewModeChanged(I)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method

.method public removeItemDecoration()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->removeItemDecoration()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_e
    return-void
.end method

.method public setupAdapter()V
    .registers 5

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->setupAdapter()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    if-eqz v0, :cond_13

    new-instance v1, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment$1;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment$1;-><init>(Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    :cond_13
    return-void
.end method
