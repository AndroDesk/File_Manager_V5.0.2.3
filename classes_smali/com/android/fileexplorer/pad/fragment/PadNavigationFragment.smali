.class public Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;
.super Lcom/android/fileexplorer/AppLayoutBaseFragment;
.source "PadNavigationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PadNavigationFragment"


# instance fields
.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter<",
            "Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;",
            "Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup<",
            "Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHasPermission:Z

.field private mMiDriverLayout:Landroid/view/ViewGroup;

.field private mPadItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mRefreshTask:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;

.field private mSelectGroup:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

.field private mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

.field private mSelectPosition:I

.field private preSelectedPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    iput v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    iput v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->preSelectedPosition:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToChild(III)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lmiuix/recyclerview/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectGroup:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    return-object p1
.end method

.method public static synthetic b(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->lambda$initActionBar$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->lambda$initActionBar$1(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method private checkIfNeedShowRedPoint(Landroid/widget/ImageView;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isAlreadyClickStorage()Z

    move-result v0

    if-nez v0, :cond_d

    const v0, 0x7f0801e3

    goto :goto_10

    :cond_d
    const v0, 0x7f0801e2

    :goto_10
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private getExpandableGroup(Landroid/content/Context;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup<",
            "Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    new-instance p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    const v1, 0x7f110075

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;-><init>(ILjava/util/List;)V

    const-class v1, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setPageName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setSelect(Z)V

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v1

    if-eqz v1, :cond_28

    const v1, 0x7f110337

    goto :goto_2b

    :cond_28
    const v1, 0x7f110353

    :goto_2b
    iget-object v3, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    new-instance v4, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    const v5, 0x7f0801f1

    const v6, 0x7f1101fe

    const-class v7, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "phone_main"

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/CategoryUtil;->transCategoryListToNavigateList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->startLoadDynamicCategory()V

    new-instance v3, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    iget-object v4, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    invoke-direct {v3, v1, v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result p1

    if-nez p1, :cond_80

    const p1, 0x7f110065

    new-instance v1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    invoke-direct {v1, p1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;-><init>(ILjava/util/List;)V

    const-class p1, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setPageName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initActionBar()V
    .registers 7

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f032f3b

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2c

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f042c36

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    const v0, 0x7f032ded

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/android/cloud/fragment/e;

    invoke-direct {v4, p0, v3}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f032f38

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_6d

    new-instance v4, Lcom/android/fileexplorer/pad/fragment/a;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/fileexplorer/pad/fragment/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6d
    const v0, 0x7f032cd0

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/util/DownloadUtils;->isSupportDownloadPage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;-><init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_93

    :cond_90
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_93
    :goto_93
    return-void
.end method

.method private synthetic lambda$initActionBar$0(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result p1

    if-eqz p1, :cond_27

    const-string p1, "click_search"

    const-string v0, "name"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    iget p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    if-ne p1, v0, :cond_1b

    const-string p1, "最近tab页"

    goto :goto_24

    :cond_1b
    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->CLOUD_GROUP_POSITION:I

    if-ne p1, v0, :cond_22

    const-string p1, "云盘tab页"

    goto :goto_24

    :cond_22
    const-string p1, "手机tab页"

    :goto_24
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickSearch(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method private synthetic lambda$initActionBar$1(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result p3

    if-eqz p3, :cond_1f

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/Fragment;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    iget p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    sget p3, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    if-ne p1, p3, :cond_13

    const-string p1, "最近tab页"

    goto :goto_1c

    :cond_13
    sget p3, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->CLOUD_GROUP_POSITION:I

    if-ne p1, p3, :cond_1a

    const-string p1, "云盘tab页"

    goto :goto_1c

    :cond_1a
    const-string p1, "手机tab页"

    :goto_1c
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickMore(Ljava/lang/String;)V

    :cond_1f
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->setClickStorage()V

    const p1, 0x7f0801e2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private navigateToChild(III)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToChild(IIIZ)V

    return-void
.end method

.method private navigateToChild(IIIZ)V
    .registers 12

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_16

    goto/16 :goto_cb

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    if-eqz p2, :cond_cb

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_cb

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_36

    goto/16 :goto_cb

    :cond_36
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_cb

    instance-of v0, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    if-nez v0, :cond_46

    goto/16 :goto_cb

    :cond_46
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroupExpanded(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V

    :cond_53
    check-cast p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    iget-object p2, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->pageName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_cb

    iget-boolean p2, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    if-eqz p2, :cond_6c

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6c

    goto :goto_cb

    :cond_6c
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectGroup:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    const/4 v0, 0x0

    if-eqz p2, :cond_74

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setSelect(Z)V

    :cond_74
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    if-eqz p2, :cond_7a

    iput-boolean v0, p2, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    :cond_7a
    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    iget-object p2, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    const-string v0, "recorder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/PageRouter;->routeToRecorder(Landroid/content/Context;)V

    goto :goto_cb

    :cond_8e
    const/4 p2, 0x1

    iput-boolean p2, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    iput-object p3, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->notifySelectItem(I)V

    if-eqz p4, :cond_cb

    iget-object p1, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    const-string p2, "xspace"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b0

    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->jumpToDetailFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cb

    :cond_b0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    iget-object v1, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->pageName:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->title:Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPhone()Z

    move-result v3

    iget-object v4, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->bundle:Landroid/os/Bundle;

    iget-object v5, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    iget v6, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->titleRes:I

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_cb
    :goto_cb
    return-void
.end method

.method private navigateToGroup(II)Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(IIZ)Z

    move-result p1

    return p1
.end method

.method private navigateToGroup(IIZ)Z
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p2, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    if-eqz p2, :cond_4b

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->isSelected()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_4b

    :cond_2d
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    if-eqz v0, :cond_33

    iput-boolean v1, v0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectGroup:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    if-eqz v0, :cond_3a

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setSelect(Z)V

    :cond_3a
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setSelect(Z)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->notifySelectItem(I)V

    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    iput-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectGroup:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    if-eqz p3, :cond_4a

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->sendNavigationEvent(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V

    :cond_4a
    return v0

    :cond_4b
    :goto_4b
    return v1
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private notifySelectItem(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->preSelectedPosition:I

    return-void
.end method

.method private sendNavigationEvent(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V
    .registers 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->restoreIntent()V

    :cond_17
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v8, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitleRes()I

    move-result v7

    const-string v6, "phone_main"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private setupAdapter()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->getExpandableGroup(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setChoiceMode(I)V

    new-instance v0, Landroidx/recyclerview/widget/f;

    new-instance v2, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;

    iget-object v3, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-direct {v2, v3}, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;-><init>(Lcom/android/fileexplorer/fragment/ItemTouchAdapter;)V

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/f$e;)V

    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/f;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    iget-object v3, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->collapseGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V

    :cond_3c
    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    new-instance v3, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$2;

    invoke-direct {v3, p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$2;-><init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setOnGroupClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;)V

    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    new-instance v3, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;-><init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;Landroidx/recyclerview/widget/f;)V

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    new-instance v2, Lcom/android/fileexplorer/pad/recyclerview/delegate/NavigateGroupDelegate;

    invoke-direct {v2}, Lcom/android/fileexplorer/pad/recyclerview/delegate/NavigateGroupDelegate;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addGroupItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    move-result-object v0

    new-instance v2, Lcom/android/fileexplorer/pad/recyclerview/delegate/NavigateChildDelegate;

    invoke-direct {v2}, Lcom/android/fileexplorer/pad/recyclerview/delegate/NavigateChildDelegate;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addChildItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    invoke-direct {v2}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setPadItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ad

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectGroup:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    :cond_ad
    return-void
.end method

.method private startLoadDynamicCategory()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRefreshTask:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_19

    :cond_c
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRefreshTask:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_19
    return-void
.end method

.method private updatePos()V
    .registers 6

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    new-array v0, v2, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v3

    goto :goto_23

    :cond_14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v2

    :goto_23
    sput-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result v0

    if-eqz v0, :cond_2c

    move v2, v3

    :cond_2c
    sput v2, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->HOME_FILE_GROUP_POSITION:I

    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d007f

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "PadNavigationFragment"

    return-object v0
.end method

.method public getPageIndex(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    iget-object v1, v1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1e

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 v0, -0x1

    :goto_1e
    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->initActionBar()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    const v0, 0x7f032ead

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const v0, 0x7f032fbf

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mMiDriverLayout:Landroid/view/ViewGroup;

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_2c

    goto :goto_33

    :cond_2c
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isNotSupportMidrive()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v1, 0x0

    :cond_33
    :goto_33
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->setupAdapter()V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mMiDriverLayout:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public navigateTo(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_90

    :cond_e
    const-string v0, "recent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget p1, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(II)Z

    return-void

    :cond_1c
    const-string v0, "cloud"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget p1, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->CLOUD_GROUP_POSITION:I

    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(II)Z

    return-void

    :cond_2a
    const-string v0, "home_file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    iget-object v2, v1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    const-string v3, "phone_main"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :cond_55
    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->HOME_FILE_GROUP_POSITION:I

    add-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToChild(III)V

    return-void

    :cond_5f
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->getPageIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_67

    return-void

    :cond_67
    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->HOME_FILE_GROUP_POSITION:I

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    :try_start_6d
    invoke-direct {p0, v1, v0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToChild(III)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_90

    :catch_71
    move-exception p1

    const-string v0, "navigate error: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PadNavigationFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget p1, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(II)Z

    :cond_90
    :goto_90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120521

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRefreshTask:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRefreshTask:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;

    :cond_15
    return-void
.end method

.method public onExtendServiceChangeEvent(Lcom/android/fileexplorer/event/ExtendServiceChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->updatePos()V

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->setupAdapter()V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_28

    const-string p2, "mSelectPosition"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    sget p3, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    const/4 v0, 0x0

    if-ne p2, p3, :cond_17

    invoke-direct {p0, p3, p3, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(IIZ)Z

    goto :goto_28

    :cond_17
    sget p3, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->CLOUD_GROUP_POSITION:I

    if-ne p2, p3, :cond_1f

    invoke-direct {p0, p3, p3, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(IIZ)Z

    goto :goto_28

    :cond_1f
    sget p3, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->HOME_FILE_GROUP_POSITION:I

    sub-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToChild(IIIZ)V

    :cond_28
    :goto_28
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_16

    :cond_11
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_16
    :goto_16
    const/4 p1, 0x1

    return p1
.end method

.method public onPadNavigationChange(Lcom/android/fileexplorer/event/PadNavigationChangeEvent;)V
    .registers 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    new-instance v0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    const-class v1, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0801f1

    const-string v3, "phone_main"

    const v4, 0x7f1101fe

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/CategoryUtil;->transCategoryListToNavigateList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    iput-boolean v0, p1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    if-eqz p1, :cond_54

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->preSelectedPosition:I

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_54
    return-void
.end method

.method public onPadNavigationEvent(Lcom/android/fileexplorer/event/PadNavigationEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/android/fileexplorer/event/PadNavigationEvent;->getPageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateTo(Ljava/lang/String;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6

    const v0, 0x7f0a03ad

    const/4 v1, 0x0

    const v2, 0x7f0a01ec

    invoke-static {p1, v0, v1, v2, v1}, La/a;->s(Landroid/view/Menu;IZIZ)V

    const v0, 0x7f0a01ea

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a0265

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    const v2, 0x7f0a024f

    const v3, 0x7f0a00f4

    invoke-static {p1, v2, v0, v3, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    const v0, 0x7f0a0317

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isFolderDeviceInnerDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2b
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->startLoadDynamicCategory()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, " onSaveInstanceState : "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PadNavigationFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    const-string v1, "mSelectPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public showNavButton()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
