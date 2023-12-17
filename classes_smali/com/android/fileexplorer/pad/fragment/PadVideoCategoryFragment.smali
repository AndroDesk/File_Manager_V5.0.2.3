.class public Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;
.super Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;
.source "PadVideoCategoryFragment.java"


# static fields
.field private static final PAGE_COUNT:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "PadVideoFragment"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;-><init>()V

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
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object v0
.end method

.method public getGridItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f07028f

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f070755

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v2

    .line 27
    const v3, 0x7f07022f

    .line 30
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v3

    .line 38
    const v4, 0x7f07022d

    .line 41
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v3

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v4

    .line 49
    const v5, 0x7f07022e

    .line 52
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    move-result v4

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v5

    .line 60
    const v6, 0x7f070231

    .line 63
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result v5

    .line 67
    new-instance v6, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;

    .line 69
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 72
    move-result v7

    .line 73
    invoke-direct {v6, v0, v1, v7}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;-><init>(III)V

    .line 76
    iput-object v6, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 78
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    .line 81
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 83
    return-object v0
.end method

.method public getMaxRecycledViews()I
    .registers 2

    const/16 v0, 0x3c

    return v0
.end method

.method public getPageCount()I
    .registers 2

    const/16 v0, 0x3e8

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
    new-instance v0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegateVideo;

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 18
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegateVideo;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 23
    new-instance v0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegateVideo;

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 27
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegateVideo;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mListChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 32
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->initView(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
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
    const v1, 0x7f11007d

    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 17
    :cond_10
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
