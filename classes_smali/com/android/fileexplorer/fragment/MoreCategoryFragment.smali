.class public Lcom/android/fileexplorer/fragment/MoreCategoryFragment;
.super Lcom/android/fileexplorer/FoldScreenFragment;
.source "MoreCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/MoreCategoryFragment$CategoryItemTouchCallBack;,
        Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;
    }
.end annotation


# static fields
.field private static final NORMAL_SPAN_COUNT:I = 0x4

.field private static final PAD_LAND_HALF_SPAN_COUNT:I = 0x5


# instance fields
.field private itemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mActionBarEditView:Landroid/widget/ImageView;

.field public mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

.field private mAddedCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field public mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

.field private mContext:Landroid/content/Context;

.field private mDynamicAppTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation
.end field

.field private mInEditMode:Z

.field private mLastAddedCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field public mLastNotAddedCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field public mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public mNotAddedCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshTask:Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;

.field private mSavedStartView:Landroid/view/View;

.field private mStartView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/FoldScreenFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mInEditMode:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastAddedCategories:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastNotAddedCategories:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mDynamicAppTags:Ljava/util/List;

    .line 38
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mDynamicAppTags:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mDynamicAppTags:Ljava/util/List;

    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Ljava/util/List;Ljava/util/List;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->equalList(Ljava/util/List;Ljava/util/List;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)V
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->lambda$initView$0(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->lambda$initActionBarView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->lambda$initActionBarView$2(Landroid/view/View;)V

    return-void
.end method

.method private endEditMode(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->endEditMode(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->onEditModeChange(Ljava/lang/Boolean;Z)V

    .line 13
    return-void
.end method

.method private static equalList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_28

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_b

    .line 11
    goto :goto_28

    .line 12
    :cond_b
    if-eqz p1, :cond_27

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_14

    .line 20
    goto :goto_27

    .line 21
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    move-result v2

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    move-result v3

    .line 29
    if-ne v2, v3, :cond_25

    .line 31
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_25

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v0, v1

    .line 39
    :goto_26
    return v0

    .line 40
    :cond_27
    :goto_27
    return v1

    .line 41
    :cond_28
    :goto_28
    if-eqz p1, :cond_32

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_31

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v0, v1

    .line 51
    :cond_32
    :goto_32
    return v0
.end method

.method private synthetic lambda$initActionBarView$1(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mInEditMode:Z

    .line 3
    if-nez p1, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->startEditMode()V

    .line 8
    goto :goto_c

    .line 9
    :cond_8
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->endEditMode(Z)V

    .line 13
    :goto_c
    return-void
.end method

.method private synthetic lambda$initActionBarView$2(Landroid/view/View;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->endEditMode(Z)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$initView$0(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)V
    .registers 1

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/MoreCategoryFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/MoreCategoryFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private saveCategoryOrder()V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x7

    .line 13
    if-le v1, v2, :cond_f

    .line 15
    goto :goto_15

    .line 16
    :cond_f
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    move-result v2

    .line 22
    :goto_15
    const/4 v1, 0x0

    .line 23
    :goto_16
    if-ge v1, v2, :cond_33

    .line 25
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    .line 27
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 33
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v3, v2, -0x1

    .line 42
    if-eq v1, v3, :cond_30

    .line 44
    const/16 v3, 0x2c

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    :cond_30
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_16

    .line 52
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/android/fileexplorer/util/CategoryUtil;->saveAddedCategoriesToSP(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private startEditMode()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->startEditMode(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {p0, v0, v2}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->onEditModeChange(Ljava/lang/Boolean;Z)V

    .line 14
    return-void
.end method

.method private startLoadDynamicCategory()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 11
    if-ne v0, v1, :cond_19

    .line 13
    :cond_c
    new-instance v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V

    .line 18
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Ljava/lang/Void;

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    :cond_19
    return-void
.end method


# virtual methods
.method public getDataBackToFront()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getDataBackToFront()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->startLoadDynamicCategory()V

    .line 7
    return-void
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0173

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public initActionBar()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 13
    return-void
.end method

.method public initActionBarView()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayShowTitleEnabled(Z)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    move-result-object v0

    .line 18
    const v2, 0x7f0d0020

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$4;

    .line 28
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$4;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 36
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 44
    move-result-object v0

    .line 45
    const v2, 0x7f0d001e

    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    move-result-object v0

    .line 52
    const v2, 0x7f0a0157

    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/widget/ImageView;

    .line 61
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBarEditView:Landroid/widget/ImageView;

    .line 63
    new-instance v4, Lcom/android/fileexplorer/fragment/a;

    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-direct {v4, p0, v5}, Lcom/android/fileexplorer/fragment/a;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;I)V

    .line 69
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 74
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 82
    move-result-object v0

    .line 83
    const v2, 0x7f0d001f

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mStartView:Landroid/view/View;

    .line 92
    const v2, 0x7f0a0168

    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object v0

    .line 99
    new-instance v2, Lcom/android/fileexplorer/fragment/a;

    .line 101
    invoke-direct {v2, p0, v1}, Lcom/android/fileexplorer/fragment/a;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;I)V

    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->handleActionBar()V

    .line 110
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->initActionBar()V

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->initActionBarView()V

    .line 13
    const v0, 0x7f0a00cb

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 28
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 35
    move-result v2

    .line 36
    invoke-direct {p1, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 41
    new-instance v1, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;

    .line 43
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V

    .line 46
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 49
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 53
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAddedCategories()Ljava/util/List;

    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    .line 62
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getNotAddedCategories()Ljava/util/List;

    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    .line 68
    new-instance v1, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 70
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mContext:Landroid/content/Context;

    .line 72
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    .line 74
    invoke-direct {v1, v2, v3, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 77
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 79
    new-instance p1, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;

    .line 81
    new-instance v2, Lcom/android/cloud/fragment/model/g;

    .line 83
    const/4 v3, 0x6

    .line 84
    invoke-direct {v2, v3}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    .line 87
    invoke-direct {p1, v2}, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;-><init>(Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;)V

    .line 90
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance p1, Landroidx/recyclerview/widget/f;

    .line 95
    new-instance v1, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$CategoryItemTouchCallBack;

    .line 97
    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$CategoryItemTouchCallBack;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;)V

    .line 100
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/f$e;)V

    .line 103
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/f;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 108
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 110
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setItemTouchHelper(Landroidx/recyclerview/widget/f;)V

    .line 113
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 115
    new-instance v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$2;

    .line 117
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$2;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V

    .line 120
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setOnEditModeChangeCallBack(Lcom/android/fileexplorer/adapter/category/EditModeChangeCallback;)V

    .line 123
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 127
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 130
    new-instance p1, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;

    .line 132
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V

    .line 135
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->itemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 137
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 142
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->startLoadDynamicCategory()V

    .line 145
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mInEditMode:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->endEditMode(Z)V

    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12032d

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    return-void
.end method

.method public onEditModeChange(Ljava/lang/Boolean;Z)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_53

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBarEditView:Landroid/widget/ImageView;

    .line 10
    const p2, 0x7f0801e7

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBarEditView:Landroid/widget/ImageView;

    .line 18
    const p2, 0x7f1100eb

    .line 21
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 30
    const p2, 0x7f110148

    .line 33
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mInEditMode:Z

    .line 39
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 41
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mSavedStartView:Landroid/view/View;

    .line 47
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 49
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mStartView:Landroid/view/View;

    .line 51
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 54
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 56
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 59
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastAddedCategories:Ljava/util/List;

    .line 61
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 64
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastNotAddedCategories:Ljava/util/List;

    .line 66
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 69
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastAddedCategories:Ljava/util/List;

    .line 71
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    .line 73
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastNotAddedCategories:Ljava/util/List;

    .line 78
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    .line 80
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    goto :goto_be

    .line 84
    :cond_53
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBarEditView:Landroid/widget/ImageView;

    .line 86
    const v1, 0x7f0801df

    .line 89
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBarEditView:Landroid/widget/ImageView;

    .line 94
    const v1, 0x7f110068

    .line 97
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 106
    const v1, 0x7f110411

    .line 109
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 112
    if-eqz p2, :cond_86

    .line 114
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->saveCategoryOrder()V

    .line 117
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 120
    move-result-object p1

    .line 121
    new-instance p2, Lcom/android/fileexplorer/event/PadNavigationChangeEvent;

    .line 123
    invoke-direct {p2}, Lcom/android/fileexplorer/event/PadNavigationChangeEvent;-><init>()V

    .line 126
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 131
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->notifyHeadersChange()V

    .line 134
    goto :goto_b5

    .line 135
    :cond_86
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastAddedCategories:Ljava/util/List;

    .line 137
    if-eqz p1, :cond_9b

    .line 139
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    .line 141
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 144
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    .line 146
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastAddedCategories:Ljava/util/List;

    .line 148
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastAddedCategories:Ljava/util/List;

    .line 153
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 156
    :cond_9b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastNotAddedCategories:Ljava/util/List;

    .line 158
    if-eqz p1, :cond_b0

    .line 160
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    .line 162
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 165
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    .line 167
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastNotAddedCategories:Ljava/util/List;

    .line 169
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastNotAddedCategories:Ljava/util/List;

    .line 174
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 177
    :cond_b0
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 179
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 182
    :goto_b5
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mInEditMode:Z

    .line 184
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 186
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mSavedStartView:Landroid/view/View;

    .line 188
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 191
    :goto_be
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/FoldScreenFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 9
    move-result p2

    .line 10
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    const p2, 0x7f07061e

    .line 18
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 21
    move-result p3

    .line 22
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 25
    move-result p2

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p3, v0, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_10

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    .line 17
    :cond_10
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/FoldScreenFragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_8

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->startLoadDynamicCategory()V

    .line 9
    :cond_8
    return-void
.end method
