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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 11
    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    .line 13
    iput v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    .line 15
    iput v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->preSelectedPosition:I

    .line 17
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;II)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(II)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;III)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToChild(III)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lmiuix/recyclerview/widget/RecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectGroup:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 3
    return-object p0
.end method

.method public static synthetic access$702(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 3
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

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isAlreadyClickStorage()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_d

    .line 10
    const v0, 0x7f0801e3

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    const v0, 0x7f0801e2

    .line 17
    :goto_10
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    new-instance p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 11
    const v1, 0x7f110075

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {p1, v1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;-><init>(ILjava/util/List;)V

    .line 18
    const-class v1, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setPageName(Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setSelect(Z)V

    .line 31
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_28

    .line 37
    const v1, 0x7f110337

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    const v1, 0x7f110353

    .line 44
    :goto_2b
    iget-object v3, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 46
    new-instance v4, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 48
    const v5, 0x7f0801f1

    .line 51
    const v6, 0x7f1101fe

    .line 54
    const-class v7, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 56
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    move-result-object v7

    .line 60
    const-string v8, "phone_main"

    .line 62
    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 65
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v3, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 70
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 77
    move-result-object v4

    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-static {v5}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    .line 82
    move-result-object v5

    .line 83
    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/CategoryUtil;->transCategoryListToNavigateList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 86
    move-result-object v4

    .line 87
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->startLoadDynamicCategory()V

    .line 93
    new-instance v3, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 95
    iget-object v4, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 97
    invoke-direct {v3, v1, v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;-><init>(ILjava/util/List;)V

    .line 100
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_80

    .line 109
    const p1, 0x7f110065

    .line 112
    new-instance v1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 114
    invoke-direct {v1, p1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;-><init>(ILjava/util/List;)V

    .line 117
    const-class p1, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setPageName(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_80
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    return-object v0
.end method

.method private initActionBar()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 12
    const-string v2, ""

    .line 14
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 20
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 23
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    .line 26
    move-result-object v2

    .line 27
    const v3, 0x7f0a02ad

    .line 30
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v2

    .line 34
    const/16 v3, 0x8

    .line 36
    if-eqz v2, :cond_28

    .line 38
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :cond_28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 48
    move-result-object v2

    .line 49
    const v4, 0x7f0d01a0

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 60
    const v0, 0x7f0a007b

    .line 63
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 67
    new-instance v4, Lcom/android/cloud/fragment/e;

    .line 69
    invoke-direct {v4, p0, v3}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    .line 72
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0a02ae

    .line 78
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/ImageView;

    .line 84
    if-eqz v0, :cond_5d

    .line 86
    new-instance v4, Lcom/android/fileexplorer/pad/fragment/a;

    .line 88
    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/fileexplorer/pad/fragment/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V

    .line 91
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_5d
    const v0, 0x7f0a0146

    .line 97
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_7f

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2}, Lcom/android/fileexplorer/util/DownloadUtils;->isSupportDownloadPage(Landroid/content/Context;)Z

    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_7c

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    new-instance v1, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;

    .line 118
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;-><init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    goto :goto_7f

    .line 125
    :cond_7c
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_7f
    :goto_7f
    return-void
.end method

.method private synthetic lambda$initActionBar$0(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_27

    .line 7
    const-string p1, "click_search"

    .line 9
    const-string v0, "name"

    .line 11
    const-string v1, ""

    .line 13
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-static {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    .line 19
    iget p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    .line 21
    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    .line 23
    if-ne p1, v0, :cond_1b

    .line 25
    const-string p1, "最近tab页"

    .line 27
    goto :goto_24

    .line 28
    :cond_1b
    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->CLOUD_GROUP_POSITION:I

    .line 30
    if-ne p1, v0, :cond_22

    .line 32
    const-string p1, "云盘tab页"

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    const-string p1, "手机tab页"

    .line 37
    :goto_24
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickSearch(Ljava/lang/String;)V

    .line 40
    :cond_27
    return-void
.end method

.method private synthetic lambda$initActionBar$1(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 4
    move-result p3

    .line 5
    if-eqz p3, :cond_1f

    .line 7
    const/4 p3, 0x0

    .line 8
    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/app/Fragment;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 11
    iget p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    .line 13
    sget p3, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    .line 15
    if-ne p1, p3, :cond_13

    .line 17
    const-string p1, "最近tab页"

    .line 19
    goto :goto_1c

    .line 20
    :cond_13
    sget p3, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->CLOUD_GROUP_POSITION:I

    .line 22
    if-ne p1, p3, :cond_1a

    .line 24
    const-string p1, "云盘tab页"

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    const-string p1, "手机tab页"

    .line 29
    :goto_1c
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickMore(Ljava/lang/String;)V

    .line 32
    :cond_1f
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->setClickStorage()V

    .line 35
    const p1, 0x7f0801e2

    .line 38
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    return-void
.end method

.method private navigateToChild(III)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToChild(IIIZ)V

    return-void
.end method

.method private navigateToChild(IIIZ)V
    .registers 12

    .line 2
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

    .line 3
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    if-eqz p2, :cond_cb

    .line 4
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_cb

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_36

    goto/16 :goto_cb

    .line 5
    :cond_36
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_cb

    .line 6
    instance-of v0, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    if-nez v0, :cond_46

    goto/16 :goto_cb

    .line 7
    :cond_46
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroupExpanded(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V

    .line 9
    :cond_53
    check-cast p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 10
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

    .line 11
    :cond_6c
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectGroup:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    const/4 v0, 0x0

    if-eqz p2, :cond_74

    .line 12
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setSelect(Z)V

    .line 13
    :cond_74
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    if-eqz p2, :cond_7a

    .line 14
    iput-boolean v0, p2, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    .line 15
    :cond_7a
    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    .line 16
    iget-object p2, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    const-string v0, "recorder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8e

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/PageRouter;->routeToRecorder(Landroid/content/Context;)V

    goto :goto_cb

    :cond_8e
    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    .line 19
    iput-object p3, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 20
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->notifySelectItem(I)V

    if-eqz p4, :cond_cb

    .line 21
    iget-object p1, p3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    const-string p2, "xspace"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 22
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->jumpToDetailFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cb

    .line 23
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

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(IIZ)Z

    move-result p1

    return p1
.end method

.method private navigateToGroup(IIZ)Z
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p2, :cond_e

    return v1

    .line 3
    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    if-eqz p2, :cond_4b

    .line 4
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->isSelected()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_4b

    .line 5
    :cond_2d
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    if-eqz v0, :cond_33

    .line 6
    iput-boolean v1, v0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    .line 7
    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectGroup:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    if-eqz v0, :cond_3a

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setSelect(Z)V

    :cond_3a
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setSelect(Z)V

    .line 10
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->notifySelectItem(I)V

    .line 11
    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    .line 12
    iput-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectGroup:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    if-eqz p3, :cond_4a

    .line 13
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

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private notifySelectItem(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->preSelectedPosition:I

    .line 8
    return-void
.end method

.method private sendNavigationEvent(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 13
    if-eqz v0, :cond_17

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 21
    invoke-virtual {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->restoreIntent()V

    .line 24
    :cond_17
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 27
    move-result-object v0

    .line 28
    new-instance v8, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    .line 30
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getPageName()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitleRes()I

    .line 43
    move-result v7

    .line 44
    const-string v6, "phone_main"

    .line 46
    move-object v1, v8

    .line 47
    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v0, v8}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method private setupAdapter()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->getExpandableGroup(Landroid/content/Context;)Ljava/util/List;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setChoiceMode(I)V

    .line 20
    new-instance v0, Landroidx/recyclerview/widget/f;

    .line 22
    new-instance v2, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;

    .line 24
    iget-object v3, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 26
    invoke-direct {v2, v3}, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;-><init>(Lcom/android/fileexplorer/fragment/ItemTouchAdapter;)V

    .line 29
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/f$e;)V

    .line 32
    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 34
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/f;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 37
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_3c

    .line 43
    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 45
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 56
    iget-object v3, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 58
    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->collapseGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V

    .line 61
    :cond_3c
    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 63
    new-instance v3, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$2;

    .line 65
    invoke-direct {v3, p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$2;-><init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V

    .line 68
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setOnGroupClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 73
    new-instance v3, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;

    .line 75
    invoke-direct {v3, p0, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;-><init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;Landroidx/recyclerview/widget/f;)V

    .line 78
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 83
    new-instance v2, Lcom/android/fileexplorer/pad/recyclerview/delegate/NavigateGroupDelegate;

    .line 85
    invoke-direct {v2}, Lcom/android/fileexplorer/pad/recyclerview/delegate/NavigateGroupDelegate;-><init>()V

    .line 88
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addGroupItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 91
    move-result-object v0

    .line 92
    new-instance v2, Lcom/android/fileexplorer/pad/recyclerview/delegate/NavigateChildDelegate;

    .line 94
    invoke-direct {v2}, Lcom/android/fileexplorer/pad/recyclerview/delegate/NavigateChildDelegate;-><init>()V

    .line 97
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addChildItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 100
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 105
    move-result-object v2

    .line 106
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 109
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 111
    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 113
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 118
    new-instance v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 120
    invoke-direct {v2}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    .line 123
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 126
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 128
    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 130
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setPadItems(Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 135
    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 137
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 140
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 142
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_ad

    .line 148
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 150
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    .line 153
    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_ad

    .line 160
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 162
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    .line 165
    move-result-object v0

    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 172
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectGroup:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 174
    :cond_ad
    return-void
.end method

.method private startLoadDynamicCategory()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRefreshTask:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;

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
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V

    .line 18
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRefreshTask:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;

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

.method private updatePos()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_14

    .line 10
    new-array v0, v2, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 14
    aput-object v4, v0, v1

    .line 16
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 18
    aput-object v1, v0, v3

    .line 20
    goto :goto_23

    .line 21
    :cond_14
    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 24
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 26
    aput-object v4, v0, v1

    .line 28
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 30
    aput-object v1, v0, v3

    .line 32
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 34
    aput-object v1, v0, v2

    .line 36
    :goto_23
    sput-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 38
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2c

    .line 44
    move v2, v3

    .line 45
    :cond_2c
    sput v2, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->HOME_FILE_GROUP_POSITION:I

    .line 47
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

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1d

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 18
    iget-object v1, v1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1a

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1d
    const/4 v0, -0x1

    .line 31
    :goto_1e
    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->initActionBar()V

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    .line 8
    const v0, 0x7f0a033b

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 19
    const v0, 0x7f0a0229

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/view/ViewGroup;

    .line 28
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mMiDriverLayout:Landroid/view/ViewGroup;

    .line 30
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 32
    const/16 v1, 0x8

    .line 34
    if-eqz v0, :cond_24

    .line 36
    goto :goto_2b

    .line 37
    :cond_24
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isNotSupportMidrive()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2b

    .line 43
    const/4 v1, 0x0

    .line 44
    :cond_2b
    :goto_2b
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->setupAdapter()V

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mMiDriverLayout:Landroid/view/ViewGroup;

    .line 52
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$1;

    .line 54
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public navigateTo(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_90

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    goto/16 :goto_90

    .line 15
    :cond_e
    const-string v0, "recent"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1c

    .line 23
    sget p1, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    .line 25
    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(II)Z

    .line 28
    return-void

    .line 29
    :cond_1c
    const-string v0, "cloud"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2a

    .line 37
    sget p1, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->CLOUD_GROUP_POSITION:I

    .line 39
    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(II)Z

    .line 42
    return-void

    .line 43
    :cond_2a
    const-string v0, "home_file"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_5f

    .line 51
    const/4 p1, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v0

    .line 58
    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_55

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 70
    iget-object v2, v1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    .line 72
    const-string v3, "phone_main"

    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_39

    .line 80
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 82
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 85
    move-result p1

    .line 86
    :cond_55
    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->HOME_FILE_GROUP_POSITION:I

    .line 88
    add-int v1, v0, p1

    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 92
    invoke-direct {p0, v1, v0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToChild(III)V

    .line 95
    return-void

    .line 96
    :cond_5f
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->getPageIndex(Ljava/lang/String;)I

    .line 99
    move-result p1

    .line 100
    const/4 v0, -0x1

    .line 101
    if-ne p1, v0, :cond_67

    .line 103
    return-void

    .line 104
    :cond_67
    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->HOME_FILE_GROUP_POSITION:I

    .line 106
    add-int v1, p1, v0

    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 110
    :try_start_6d
    invoke-direct {p0, v1, v0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToChild(III)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_71

    .line 113
    goto :goto_90

    .line 114
    :catch_71
    move-exception p1

    .line 115
    const-string v0, "navigate error: "

    .line 117
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    const-string v1, "PadNavigationFragment"

    .line 134
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    sget p1, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    .line 142
    invoke-direct {p0, p1, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(II)Z

    .line 145
    :cond_90
    :goto_90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f120521

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getMenuInflater()Landroid/view/MenuInflater;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0e0005

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRefreshTask:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;

    .line 13
    if-eqz v0, :cond_15

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRefreshTask:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;

    .line 22
    :cond_15
    return-void
.end method

.method public onExtendServiceChangeEvent(Lcom/android/fileexplorer/event/ExtendServiceChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->updatePos()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->setupAdapter()V

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p3, :cond_28

    .line 7
    const-string p2, "mSelectPosition"

    .line 9
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 12
    move-result p2

    .line 13
    iput p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    .line 15
    sget p3, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    .line 17
    const/4 v0, 0x0

    .line 18
    if-ne p2, p3, :cond_17

    .line 20
    invoke-direct {p0, p3, p3, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(IIZ)Z

    .line 23
    goto :goto_28

    .line 24
    :cond_17
    sget p3, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->CLOUD_GROUP_POSITION:I

    .line 26
    if-ne p2, p3, :cond_1f

    .line 28
    invoke-direct {p0, p3, p3, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToGroup(IIZ)Z

    .line 31
    goto :goto_28

    .line 32
    :cond_1f
    sget p3, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->HOME_FILE_GROUP_POSITION:I

    .line 34
    sub-int v1, p2, p3

    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 38
    invoke-direct {p0, p2, p3, v1, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateToChild(IIIZ)V

    .line 41
    :cond_28
    :goto_28
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_16

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_16
    :goto_16
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public onPadNavigationChange(Lcom/android/fileexplorer/event/PadNavigationChangeEvent;)V
    .registers 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 10
    const-class v1, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f0801f1

    .line 19
    const-string v3, "phone_main"

    .line 21
    const v4, 0x7f1101fe

    .line 24
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    move-result-object p1

    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-static {v0}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    .line 42
    move-result-object v1

    .line 43
    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/CategoryUtil;->transCategoryListToNavigateList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 46
    move-result-object p1

    .line 47
    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 49
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mPadItems:Ljava/util/List;

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 57
    move-result v1

    .line 58
    sub-int/2addr v1, v0

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 65
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectNavigateItem:Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 67
    iput-boolean v0, p1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    .line 69
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 71
    if-eqz p1, :cond_54

    .line 73
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemCount()I

    .line 76
    move-result p1

    .line 77
    sub-int/2addr p1, v0

    .line 78
    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->preSelectedPosition:I

    .line 80
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 82
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 85
    :cond_54
    return-void
.end method

.method public onPadNavigationEvent(Lcom/android/fileexplorer/event/PadNavigationEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/event/PadNavigationEvent;->getPageName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->navigateTo(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6

    .line 1
    const v0, 0x7f0a03ad

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x7f0a01ec

    .line 8
    invoke-static {p1, v0, v1, v2, v1}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 11
    const v0, 0x7f0a01ea

    .line 14
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 21
    const v0, 0x7f0a0265

    .line 24
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 31
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2c

    .line 37
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2c

    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v0, v1

    .line 46
    :goto_2d
    const v2, 0x7f0a024f

    .line 49
    const v3, 0x7f0a00f4

    .line 52
    invoke-static {p1, v2, v0, v3, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 55
    const v0, 0x7f0a0317

    .line 58
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 65
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isFolderDeviceInnerDisplay(Landroid/content/Context;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_2b

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 22
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 27
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 29
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 34
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 36
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 39
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 44
    :cond_2b
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->startLoadDynamicCategory()V

    .line 47
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    const-string v0, " onSaveInstanceState : "

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "PadNavigationFragment"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->mSelectPosition:I

    .line 26
    const-string v1, "mSelectPosition"

    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public showNavButton()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
