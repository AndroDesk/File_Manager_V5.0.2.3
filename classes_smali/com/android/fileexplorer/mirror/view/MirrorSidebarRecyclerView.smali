.class public Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;
.super Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
.source "MirrorSidebarRecyclerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorSidebarView"


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;->init()V

    return-void
.end method

.method private init()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07036d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07036a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;-><init>(II)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public initData()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    invoke-static {}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getDefaultSideBarInfos()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;->mAdapter:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;->mAdapter:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;->mAdapter:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/m;

    new-instance v2, Landroidx/lifecycle/c0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/f0;

    invoke-direct {v2, v3}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v3, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;->setVM(Landroidx/lifecycle/m;Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;->mAdapter:Lcom/android/fileexplorer/mirror/MirrorSidebarAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
