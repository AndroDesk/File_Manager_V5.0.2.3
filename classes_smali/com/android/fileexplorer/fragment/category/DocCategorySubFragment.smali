.class public Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;
.super Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;
.source "DocCategorySubFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/BaseTabFragment$OnNotifyCallback;


# static fields
.field private static final CHOICE_MODE:Ljava/lang/String; = "CHOICE_MODE"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "doc_category"

.field private static final PAGE_COUNT:I = 0xc8


# instance fields
.field private mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

.field public mRootViewInitPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;

.field private mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field private viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;-><init>()V

    .line 4
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 8
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;)Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->lambda$onCreate$0(Ljava/lang/Integer;)V

    return-void
.end method

.method private getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 8
    return-object v0
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/Integer;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 3
    if-eqz v0, :cond_30

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getContentInset()Landroid/graphics/Rect;

    .line 8
    move-result-object v1

    .line 9
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 15
    add-int/2addr p1, v1

    .line 16
    const/high16 v1, 0x41400000  # 12.0f

    .line 18
    invoke-static {v1}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    .line 21
    move-result v1

    .line 22
    add-int/2addr v1, p1

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 28
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getOffsetYParent()Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetYParent(Landroid/view/View;)V

    .line 35
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 37
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getBlurContainer()Landroid/view/ViewGroup;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->registerBlurContainer(Landroid/view/ViewGroup;)V

    .line 44
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 46
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->NotifyStickyChange()V

    .line 49
    :cond_30
    return-void
.end method

.method public static newInstance(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;
    .registers 4

    .line 6
    new-instance v0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;-><init>()V

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "category"

    .line 8
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Z)Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "category"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p1, :cond_17

    const/4 p0, 0x1

    const-string p1, "CHOICE_MODE"

    .line 4
    invoke-virtual {v1, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5
    :cond_17
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getBlurContainer()Landroid/view/ViewGroup;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getOffsetYParent()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_25

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getOffsetYParent()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    goto :goto_25

    .line 18
    :cond_11
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getOffsetYParent()Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    const v1, 0x7f0a0144

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    return-object v0

    .line 38
    :cond_25
    :goto_25
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method

.method public getBundleData(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->getBundleData(Landroid/os/Bundle;)V

    .line 4
    const-string v0, "category"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 14
    return-void
.end method

.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    return-object v0
.end method

.method public getOffsetYParent()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    const/16 v0, 0xc8

    return v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->isWidgetModeActivity()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 9
    const v1, 0x7f0a03d2

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public initItemDecoration(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->initItemDecoration(I)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 6
    if-eqz p1, :cond_2f

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getContentInset()Landroid/graphics/Rect;

    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 16
    iget-object v1, v1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->tabHeight:Landroidx/lifecycle/q;

    .line 18
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    const/high16 v0, 0x41400000  # 12.0f

    .line 31
    invoke-static {v0}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    .line 34
    move-result v0

    .line 35
    add-int/2addr v0, v1

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    .line 39
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 41
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getOffsetYParent()Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetYParent(Landroid/view/View;)V

    .line 48
    :cond_2f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 50
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 57
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->initView(Landroid/view/View;)V

    .line 4
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mSortMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 10
    const/4 v5, 0x0

    .line 11
    move v3, p2

    .line 12
    move v4, p3

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lcom/android/fileexplorer/util/TimeCost;

    .line 19
    invoke-direct {p2}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 22
    invoke-virtual {p2}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 25
    iget-object p3, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 29
    invoke-static {v0}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->scanAllFolderFiles(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-static {p3, v0, v1}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->mergeFileInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    .line 37
    move-result-object p3

    .line 38
    iput-object p3, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getLogTag()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, "_ScanFolder"

    .line 54
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCostDebug(Ljava/lang/String;)V

    .line 64
    new-instance p2, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;

    .line 66
    iget-object p3, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 68
    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 70
    invoke-direct {p2, p3, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;-><init>(Ljava/util/List;Z)V

    .line 73
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

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12011e

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_22

    .line 16
    new-instance p1, Landroidx/lifecycle/c0;

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 25
    const-class v0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 27
    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 33
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 35
    :cond_22
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->viewModel:Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;

    .line 37
    if-eqz p1, :cond_31

    .line 39
    iget-object p1, p1, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->tabHeight:Landroidx/lifecycle/q;

    .line 41
    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 47
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 50
    :cond_31
    return-void
.end method

.method public onRefreshData()V
    .registers 1

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->onViewModeChanged(I)V

    .line 4
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public removeItemDecoration()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->removeItemDecoration()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 6
    if-eqz v0, :cond_e

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 10
    if-eqz v1, :cond_e

    .line 12
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 15
    :cond_e
    return-void
.end method

.method public setupAdapter()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->setupAdapter()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 6
    if-eqz v0, :cond_13

    .line 8
    new-instance v1, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment$1;

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 12
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;

    .line 14
    invoke-direct {v1, p0, v2, v3}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment$1;-><init>(Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 20
    :cond_13
    return-void
.end method
