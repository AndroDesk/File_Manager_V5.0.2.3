.class public Lcom/android/fileexplorer/fragment/category/ApkCategoryFragment;
.super Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;
.source "ApkCategoryFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public initItemViewDelegate()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridGroupDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;

    .line 14
    new-instance v0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegateApk;

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 18
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegateApk;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 23
    new-instance v0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 27
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mListChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 32
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
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/ApkCategoryFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/ApkCategoryFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 17
    move-result-object v2

    .line 18
    const/4 v5, 0x0

    .line 19
    move v3, p2

    .line 20
    move v4, p3

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/ApkCategoryFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 30
    move-result-object p3

    .line 31
    invoke-static {p3}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->scanAllFolderFiles(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/ArrayList;

    .line 34
    move-result-object p3

    .line 35
    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->mergeFileInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 41
    new-instance p3, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;

    .line 43
    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 45
    invoke-direct {p3, p2, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;-><init>(Ljava/util/List;Z)V

    .line 48
    return-object p3
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
