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
.field private static final NORMAL_SPAN_COUNT:I

.field private static final PAD_LAND_HALF_SPAN_COUNT:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->NORMAL_SPAN_COUNT:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->PAD_LAND_HALF_SPAN_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/FoldScreenFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mInEditMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastAddedCategories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastNotAddedCategories:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mDynamicAppTags:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mDynamicAppTags:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mDynamicAppTags:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$300(Ljava/util/List;Ljava/util/List;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->equalList(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->endEditMode(Landroidx/recyclerview/widget/RecyclerView;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->onEditModeChange(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method private static equalList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_28

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_28

    :cond_b
    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_27

    :cond_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_25

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1

    :cond_28
    :goto_28
    if-eqz p1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :cond_32
    :goto_32
    return v0
.end method

.method private synthetic lambda$initActionBarView$1(Landroid/view/View;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mInEditMode:Z

    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->startEditMode()V

    goto :goto_c

    :cond_8
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->endEditMode(Z)V

    :goto_c
    return-void
.end method

.method private synthetic lambda$initActionBarView$2(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->endEditMode(Z)V

    return-void
.end method

.method private static synthetic lambda$initView$0(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)V
    .registers 1

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/MoreCategoryFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/MoreCategoryFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private saveCategoryOrder()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_f

    goto :goto_15

    :cond_f
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_15
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v2, :cond_33

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x1

    if-eq v1, v3, :cond_30

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/CategoryUtil;->saveAddedCategoriesToSP(Ljava/lang/String;)V

    return-void
.end method

.method private startEditMode()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->startEditMode(Landroidx/recyclerview/widget/RecyclerView;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v2}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->onEditModeChange(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method private startLoadDynamicCategory()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_19

    :cond_c
    new-instance v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mRefreshTask:Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_19
    return-void
.end method


# virtual methods
.method public getDataBackToFront()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getDataBackToFront()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->startLoadDynamicCategory()V

    return-void
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0173

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initActionBar()V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    return-void
.end method

.method public initActionBarView()V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f042db6

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$4;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$4;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d001e

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f032cc1

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBarEditView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/fileexplorer/fragment/a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/fileexplorer/fragment/a;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d001f

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mStartView:Landroid/view/View;

    const v2, 0x7f032cfe

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/fileexplorer/fragment/a;

    invoke-direct {v2, p0, v1}, Lcom/android/fileexplorer/fragment/a;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->handleActionBar()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->initActionBar()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->initActionBarView()V

    const v0, 0x7f032d5d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v2

    invoke-direct {p1, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAddedCategories()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getNotAddedCategories()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    new-instance p1, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;

    new-instance v2, Lcom/android/cloud/fragment/model/g;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    invoke-direct {p1, v2}, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;-><init>(Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;)V

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroidx/recyclerview/widget/f;

    new-instance v1, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$CategoryItemTouchCallBack;

    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$CategoryItemTouchCallBack;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;)V

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/f$e;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/f;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setItemTouchHelper(Landroidx/recyclerview/widget/f;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    new-instance v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$2;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setOnEditModeChangeCallBack(Lcom/android/fileexplorer/adapter/category/EditModeChangeCallback;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->itemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->startLoadDynamicCategory()V

    return-void
.end method

.method public onBack()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mInEditMode:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->endEditMode(Z)V

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12032d

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onEditModeChange(Ljava/lang/Boolean;Z)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBarEditView:Landroid/widget/ImageView;

    const p2, 0x7f0801e7

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBarEditView:Landroid/widget/ImageView;

    const p2, 0x7f182d7d

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const p2, 0x7f110148

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/a;->setTitle(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mInEditMode:Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mSavedStartView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mStartView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastAddedCategories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastNotAddedCategories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastAddedCategories:Ljava/util/List;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastNotAddedCategories:Ljava/util/List;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c6

    :cond_57
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBarEditView:Landroid/widget/ImageView;

    const v1, 0x7f0801df

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBarEditView:Landroid/widget/ImageView;

    const v1, 0x7f182dfe

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const v1, 0x7f110411

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    if-eqz p2, :cond_8e

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->saveCategoryOrder()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/event/PadNavigationChangeEvent;

    invoke-direct {p2}, Lcom/android/fileexplorer/event/PadNavigationChangeEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->notifyHeadersChange()V

    goto :goto_bd

    :cond_8e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastAddedCategories:Ljava/util/List;

    if-eqz p1, :cond_a3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAddedCategories:Ljava/util/List;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastAddedCategories:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastAddedCategories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_a3
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastNotAddedCategories:Ljava/util/List;

    if-eqz p1, :cond_b8

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastNotAddedCategories:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLastNotAddedCategories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_b8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_bd
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mInEditMode:Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mSavedStartView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    :goto_c6
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/FoldScreenFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f07061e

    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p3

    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    :cond_10
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/FoldScreenFragment;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->startLoadDynamicCategory()V

    :cond_8
    return-void
.end method
