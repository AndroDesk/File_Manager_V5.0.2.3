.class public Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;
.super Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
.source "MirrorSidebarRecyclerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorSidebarView"


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;->init()V

    return-void
.end method

.method private init()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f07036d

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v2

    .line 18
    const v3, 0x7f07036a

    .line 21
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 24
    move-result v2

    .line 25
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;-><init>(II)V

    .line 28
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 31
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 43
    return-void
.end method


# virtual methods
.method public initData()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getDefaultSideBarInfos()Ljava/util/List;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;-><init>(Ljava/util/List;)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;->mAdapter:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 12
    const/16 v1, 0x1a

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;->mAdapter:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;->mAdapter:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/lifecycle/m;

    .line 31
    new-instance v2, Landroidx/lifecycle/c0;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroidx/lifecycle/f0;

    .line 39
    invoke-direct {v2, v3}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 42
    const-class v3, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 44
    invoke-virtual {v2, v3}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->setVM(Landroidx/lifecycle/m;Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;)V

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;->mAdapter:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    .line 55
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    return-void
.end method
