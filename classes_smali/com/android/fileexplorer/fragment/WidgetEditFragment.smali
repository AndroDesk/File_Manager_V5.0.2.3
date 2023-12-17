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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->cleanInValidData()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)Lcom/android/fileexplorer/adapter/WidgetEditAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    .line 3
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->getDataList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/fileexplorer/fragment/g;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, Lcom/android/fileexplorer/fragment/g;-><init>(I)V

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 16
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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->obtainAndCheckWidgetList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    if-ge v1, v2, :cond_14

    .line 12
    new-instance v1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;-><init>()V

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    goto :goto_4

    .line 21
    :cond_14
    return-object v0
.end method

.method private initUI()V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mContext:Landroid/content/Context;

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 9
    const v1, 0x7f0a02e1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 18
    const/16 v1, 0x8

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 25
    const v1, 0x7f0a033a

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 42
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->getSpanCount()I

    .line 47
    move-result v3

    .line 48
    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 53
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->fillList()Ljava/util/List;

    .line 61
    move-result-object v0

    .line 62
    new-instance v2, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    .line 64
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mContext:Landroid/content/Context;

    .line 66
    new-instance v4, Lcom/android/cloud/fragment/presenter/b;

    .line 68
    const/4 v5, 0x4

    .line 69
    invoke-direct {v4, p0, v5}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 72
    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;)V

    .line 75
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    .line 77
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->setData(Ljava/util/List;)V

    .line 80
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    .line 84
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 90
    move-result-object v0

    .line 91
    const v2, 0x7f070186

    .line 94
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 97
    move-result v0

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object v2

    .line 102
    const v3, 0x7f070185

    .line 105
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 108
    move-result v2

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 112
    move-result-object v3

    .line 113
    const v4, 0x7f070184

    .line 116
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    move-result v3

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 123
    move-result-object v4

    .line 124
    const v5, 0x7f070183

    .line 127
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 130
    move-result v4

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 134
    move-result-object v5

    .line 135
    const v6, 0x7f070187

    .line 138
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 141
    move-result v5

    .line 142
    new-instance v6, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;

    .line 144
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->getSpanCount()I

    .line 147
    move-result v7

    .line 148
    invoke-direct {v6, v0, v2, v7}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;-><init>(III)V

    .line 151
    invoke-virtual {v6, v4, v3, v1, v5}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->setMargin(IIII)V

    .line 154
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 159
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 161
    const v2, 0x7f0a045f

    .line 164
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    move-result-object v0

    .line 168
    new-instance v3, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;

    .line 170
    invoke-direct {v3, p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment$1;-><init>(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)V

    .line 173
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 178
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    return-void
.end method

.method private static synthetic lambda$cleanInValidData$1(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private synthetic lambda$initUI$0()V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->cleanInValidData()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->getDataList()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->dropDataAndTryAddNewFiles(Ljava/util/List;Landroid/content/Context;)V

    .line 17
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    .line 23
    const-class v2, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Landroid/os/Bundle;

    .line 31
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string v4, ""

    .line 36
    const/4 v5, 0x1

    .line 37
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 40
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/WidgetEditFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/WidgetEditFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private showNoPermissionView()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a02e1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 14
    const v2, 0x7f0a033a

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    const/16 v2, 0x8

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 32
    const v3, 0x7f0a045f

    .line 35
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mHasPermission:Z

    .line 44
    if-nez v1, :cond_31

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_31
    const v1, 0x7f0a02e2

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 57
    const v1, 0x7f0a042e

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/Button;

    .line 66
    new-instance v1, Lcom/android/fileexplorer/fragment/WidgetEditFragment$2;

    .line 68
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment$2;-><init>(Lcom/android/fileexplorer/fragment/WidgetEditFragment;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
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

    .line 1
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mHasPermission:Z

    .line 3
    if-eqz p1, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->initUI()V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->showNoPermissionView()V

    .line 12
    :goto_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 11
    move-result p1

    .line 12
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mHasPermission:Z

    .line 14
    const p1, 0x7f12011e

    .line 17
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 20
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 6
    const p2, 0x7f0a045f

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p3

    .line 23
    invoke-static {p3}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_20

    .line 29
    const p3, 0x7f0707fc

    .line 32
    goto :goto_23

    .line 33
    :cond_20
    const p3, 0x7f0707fb

    .line 36
    :goto_23
    invoke-static {p3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 39
    move-result p3

    .line 40
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 42
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 44
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 11
    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mHasPermission:Z

    .line 14
    if-eq v1, v0, :cond_1c

    .line 16
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->mHasPermission:Z

    .line 18
    if-eqz v0, :cond_19

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->initView(Landroid/view/View;)V

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->showNoPermissionView()V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method
