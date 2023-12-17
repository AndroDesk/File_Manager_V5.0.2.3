.class public Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;
.super Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
.source "PullToRefreshRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;,
        Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;,
        Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$onHeaderViewChangeListener;
    }
.end annotation


# static fields
.field private static final DRAG_RATE:F = 1.6f

.field private static final TAG:Ljava/lang/String; = "PullToRefreshRecyclerView"

.field private static final TYPE_FOOTER_VIEW_INIT:I = 0x2af8

.field private static final TYPE_HEADER_VIEWS_INIT:I = 0x2713

.field private static final TYPE_LOAD_MORE_FOOTER:I = 0x2711

.field private static final TYPE_REFRESH_HEADER:I = 0x2710

.field private static footerTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static headerTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

.field private footerViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private headViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private isAlwaysShow:Z

.field public lastVisibleItemPosition:I

.field private lastY:F

.field private loadingMoreEnabled:Z

.field private mEnablePullPrivate:Z

.field private mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

.field private mOnHeaderViewChangeListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$onHeaderViewChangeListener;

.field private mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

.field private mUniqueTag:Ljava/lang/String;

.field private pullRefreshEnabled:Z

.field private pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

.field private pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerTypes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    new-instance p2, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$1;)V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullRefreshEnabled:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->loadingMoreEnabled:Z

    iput-boolean p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mEnablePullPrivate:Z

    iput-boolean p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isAlwaysShow:Z

    const/high16 p2, -0x40800000  # -1.0f

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->loadingMoreEnabled:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$700()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$800()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerTypes:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    return-object p0
.end method

.method private findMax([I)I
    .registers 6

    const/4 v0, 0x0

    aget v1, p1, v0

    array-length v2, p1

    :goto_4
    if-ge v0, v2, :cond_e

    aget v3, p1, v0

    if-le v3, v1, :cond_b

    move v1, v3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return v1
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/model/TimeUtils;->isChristmas()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    goto :goto_15

    :cond_e
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    :goto_15
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;->setState(I)V

    return-void
.end method

.method private isOnTop()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private isReservedItemViewType(I)Z
    .registers 4

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_23

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_23

    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    return p1

    :cond_23
    :goto_23
    const/4 p1, 0x1

    return p1
.end method

.method private notifyRefresh(Z)V
    .registers 6

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$3;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V

    if-eqz p1, :cond_e

    const-wide/16 v2, 0x12c

    goto :goto_10

    :cond_e
    const-wide/16 v2, 0x0

    :goto_10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit16 v1, v1, 0x2af8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    if-eqz p1, :cond_26

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_26
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit16 v1, v1, 0x2713

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    if-eqz p1, :cond_26

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_26
    return-void
.end method

.method public forceRefresh()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->notifyRefresh(Z)V

    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFooterViewByIndex(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public getFooterViews()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getHeaderViewByIndex(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public getHeaderViews()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mUniqueTag:Ljava/lang/String;

    return-object v0
.end method

.method public isPullRefreshing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isSpecialViewType(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isSpecialViewType(I)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public onLoadMore()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onLoadMore()V

    :cond_d
    return-void
.end method

.method public onScrollStateChanged(I)V
    .registers 10

    invoke-super {p0, p1}, Lmiuix/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_9b

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    if-eqz p1, :cond_9b

    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->loadingMoreEnabled:Z

    if-eqz p1, :cond_9b

    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isAlwaysShow:Z

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9b

    :cond_19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastVisibleItemPosition:I

    goto :goto_73

    :cond_2c
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_6a

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_39
    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v4, v5, :cond_63

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    aget-object v5, v5, v4

    iget-object v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v6, :cond_52

    iget-object v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v3, v6, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(IIZZ)I

    move-result v5

    goto :goto_5e

    :cond_52
    iget-object v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, -0x1

    add-int/2addr v6, v7

    invoke-virtual {v5, v6, v7, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(IIZZ)I

    move-result v5

    :goto_5e
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_63
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->findMax([I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastVisibleItemPosition:I

    goto :goto_73

    :cond_6a
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastVisibleItemPosition:I

    :goto_73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_9b

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastVisibleItemPosition:I

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_9b

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    if-eqz p1, :cond_9b

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9b

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;->setState(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    invoke-interface {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onLoadMore()V

    :cond_9b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9b

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_72

    const/4 v3, 0x2

    if-eq v0, v3, :cond_f

    goto/16 :goto_b5

    :cond_f
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v4, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    invoke-virtual {v4}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getVisibleHeight()I

    move-result v4

    if-nez v4, :cond_3a

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3a

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3a
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isOnTop()Z

    move-result v3

    if-eqz v3, :cond_b5

    iget-boolean v3, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullRefreshEnabled:Z

    if-eqz v3, :cond_b5

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    invoke-virtual {v3}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getState()I

    move-result v3

    if-eq v3, v1, :cond_b5

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    const v1, 0x3fcccccd  # 1.6f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onMove(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mOnHeaderViewChangeListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$onHeaderViewChangeListener;

    if-eqz p1, :cond_71

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getVisibleHeight()I

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_6e

    :cond_6d
    move v2, v0

    :goto_6e
    invoke-interface {p1, v2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$onHeaderViewChangeListener;->isHeaderShow(Z)V

    :cond_71
    return v0

    :cond_72
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->checkStateOnActionUp()I

    move-result v0

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    if-eqz v3, :cond_b5

    if-ne v0, v1, :cond_86

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->notifyRefresh(Z)V

    goto :goto_b5

    :cond_86
    const/4 v1, 0x5

    if-ne v1, v0, :cond_b5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getProgress()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onEnterPrivate()V

    goto :goto_b5

    :cond_9b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    const-string v0, "onTouchEvent: lastY = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullToRefreshRecyclerView"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    :goto_b5
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeAllFooterViews()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    if-eqz v0, :cond_2b

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2b
    return-void
.end method

.method public removeAllHeaderViews()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    if-eqz v0, :cond_22

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_22
    return-void
.end method

.method public removeFooterViewByIndex(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_31

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerTypes:Ljava/util/List;

    sget-object v1, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    if-eqz p1, :cond_30

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_30
    return-void

    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid index "

    const-string v2, ", footerView size is "

    invoke-static {v1, p1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeHeaderViewByIndex(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2f

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    if-eqz p1, :cond_2e

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2e
    return-void

    :cond_2f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid index "

    const-string v2, ", headerViews size is "

    invoke-static {v1, p1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    return-void
.end method

.method public setLastRefreshTime(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setLastRefreshTime(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    if-eqz v0, :cond_1d

    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1d

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$c;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$a;

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    :cond_1d
    return-void
.end method

.method public setLoadMoreComplete()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;->setState(I)V

    return-void
.end method

.method public setLoadMoreFail()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;->setState(I)V

    return-void
.end method

.method public setLoadMoreViewAlwaysShow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isAlwaysShow:Z

    return-void
.end method

.method public setLoadingMoreEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->loadingMoreEnabled:Z

    return-void
.end method

.method public setOnHeaderViewChangeListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$onHeaderViewChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mOnHeaderViewChangeListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$onHeaderViewChangeListener;

    return-void
.end method

.method public setPullPrivateEnable(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mEnablePullPrivate:Z

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullPrivateEnable(Z)V

    :cond_9
    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullRefreshEnabled:Z

    return-void
.end method

.method public setPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    return-void
.end method

.method public setRefreshComplete()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    return-void
.end method

.method public setRefreshLimitHeight(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setRefreshTriggerHeight(I)V

    return-void
.end method

.method public setUniqueTag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mUniqueTag:Ljava/lang/String;

    return-void
.end method

.method public showLoadMoreView()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isAlwaysShow:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;->setState(I)V

    :cond_a
    return-void
.end method
