.class public Lcom/android/fileexplorer/fragment/WidgetEditFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "WidgetEditFragment.java"


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

.field private mContext:Landroid/content/Context;

.field private mHasPermission:Z

.field public mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->cleanInValidData()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)Lcom/android/fileexplorer/adapter/WidgetEditAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->lambda$cleanInValidData$1(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->lambda$initUI$0()V

    return-void
.end method

.method private cleanInValidData()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/fileexplorer/fragment/g;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private fillList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/WidgetPinFile;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->obtainAndCheckWidgetList()Ljava/util/List;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_14

    new-instance v1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-direct {v1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_14
    return-object v0
.end method

.method private initUI()V
    .registers 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032f77

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032eac

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->getSpanCount()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->fillList()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/cloud/fragment/presenter/b;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;)V

    iput-object v2, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070186

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070185

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070184

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070183

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070187

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    new-instance v6, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->getSpanCount()I

    move-result v7

    invoke-direct {v6, v0, v2, v7}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;-><init>(III)V

    invoke-virtual {v6, v4, v3, v1, v5}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->setMargin(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0329c9

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;

    invoke-direct {v3, p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;-><init>(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$cleanInValidData$1(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initUI$0()V
    .registers 7

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->cleanInValidData()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->dropDataAndTryAddNewFiles(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    const-class v2, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, ""

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/WidgetEditFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/WidgetEditFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private showNoPermissionView()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032f77

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f032eac

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0329c9

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mHasPermission:Z

    if-nez v1, :cond_3d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3d
    const v1, 0x7f032f74

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0329b8

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/fileexplorer/fragment/WidgetEditFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment$2;-><init>(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d01e7

    return v0
.end method

.method public getSpanCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mHasPermission:Z

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->initUI()V

    goto :goto_b

    :cond_8
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->showNoPermissionView()V

    :goto_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mHasPermission:Z

    const p1, 0x7f12011e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0329c9

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_24

    const p3, 0x7f0707fc

    goto :goto_27

    :cond_24
    const p3, 0x7f0707fb

    :goto_27
    invoke-static {p3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mHasPermission:Z

    if-eq v1, v0, :cond_1c

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mHasPermission:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->initView(Landroid/view/View;)V

    goto :goto_1c

    :cond_19
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->showNoPermissionView()V

    :cond_1c
    :goto_1c
    return-void
.end method
