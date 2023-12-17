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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sput-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerTypes:Ljava/util/List;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    .line 6
    new-instance p2, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$1;)V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullRefreshEnabled:Z

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->loadingMoreEnabled:Z

    .line 9
    iput-boolean p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mEnablePullPrivate:Z

    .line 10
    iput-boolean p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isAlwaysShow:Z

    const/high16 p2, -0x40800000  # -1.0f

    .line 11
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->loadingMoreEnabled:Z

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700()Ljava/util/List;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public static synthetic access$800()Ljava/util/List;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerTypes:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    .line 3
    return-object p0
.end method

.method private findMax([I)I
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 4
    array-length v2, p1

    .line 5
    :goto_4
    if-ge v0, v2, :cond_e

    .line 7
    aget v3, p1, v0

    .line 9
    if-le v3, v1, :cond_b

    .line 11
    move v1, v3

    .line 12
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 14
    goto :goto_4

    .line 15
    :cond_e
    return v1
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/TimeUtils;->isChristmas()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;

    .line 9
    invoke-direct {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 14
    goto :goto_15

    .line 15
    :cond_e
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;

    .line 17
    invoke-direct {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 22
    :goto_15
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    .line 24
    invoke-direct {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;->setState(I)V

    .line 33
    return-void
.end method

.method private isOnTop()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method private isReservedItemViewType(I)Z
    .registers 4

    .line 1
    const/16 v0, 0x2710

    .line 3
    if-eq p1, v0, :cond_23

    .line 5
    const/16 v0, 0x2711

    .line 7
    if-eq p1, v0, :cond_23

    .line 9
    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_23

    .line 21
    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerTypes:Ljava/util/List;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_21

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :cond_23
    :goto_23
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method private notifyRefresh(Z)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$3;

    .line 7
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$3;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V

    .line 10
    if-eqz p1, :cond_e

    .line 12
    const-wide/16 v2, 0x12c

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const-wide/16 v2, 0x0

    .line 17
    :goto_10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerTypes:Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    add-int/lit16 v1, v1, 0x2af8

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 30
    if-eqz p1, :cond_26

    .line 32
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 39
    :cond_26
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    add-int/lit16 v1, v1, 0x2713

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 30
    if-eqz p1, :cond_26

    .line 32
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 39
    :cond_26
    return-void
.end method

.method public forceRefresh()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->notifyRefresh(Z)V

    .line 11
    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getFooterViewByIndex(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-lt p1, v0, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/View;

    .line 19
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getHeaderCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public getHeaderViewByIndex(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-lt p1, v0, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/View;

    .line 19
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mUniqueTag:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isPullRefreshing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->isRefreshing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isSpecialViewType(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isSpecialViewType(I)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public onLoadMore()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onLoadMore()V

    .line 14
    :cond_d
    return-void
.end method

.method public onScrollStateChanged(I)V
    .registers 10

    .line 1
    invoke-super {p0, p1}, Lmiuix/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4
    if-nez p1, :cond_9b

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 8
    if-eqz p1, :cond_9b

    .line 10
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->loadingMoreEnabled:Z

    .line 12
    if-eqz p1, :cond_9b

    .line 14
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isAlwaysShow:Z

    .line 16
    if-nez p1, :cond_19

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_9b

    .line 26
    :cond_19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 29
    move-result-object p1

    .line 30
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 32
    const/4 v1, 0x1

    .line 33
    if-eqz v0, :cond_2c

    .line 35
    move-object v0, p1

    .line 36
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastVisibleItemPosition:I

    .line 44
    goto :goto_73

    .line 45
    :cond_2c
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 47
    if-eqz v0, :cond_6a

    .line 49
    move-object v0, p1

    .line 50
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 52
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 54
    new-array v2, v2, [I

    .line 56
    const/4 v3, 0x0

    .line 57
    move v4, v3

    .line 58
    :goto_39
    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 60
    if-ge v4, v5, :cond_63

    .line 62
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 64
    aget-object v5, v5, v4

    .line 66
    iget-object v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 68
    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 70
    if-eqz v6, :cond_52

    .line 72
    iget-object v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result v6

    .line 78
    invoke-virtual {v5, v3, v6, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(IIZZ)I

    .line 81
    move-result v5

    .line 82
    goto :goto_5e

    .line 83
    :cond_52
    iget-object v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result v6

    .line 89
    const/4 v7, -0x1

    .line 90
    add-int/2addr v6, v7

    .line 91
    invoke-virtual {v5, v6, v7, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(IIZZ)I

    .line 94
    move-result v5

    .line 95
    :goto_5e
    aput v5, v2, v4

    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 99
    goto :goto_39

    .line 100
    :cond_63
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->findMax([I)I

    .line 103
    move-result v0

    .line 104
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastVisibleItemPosition:I

    .line 106
    goto :goto_73

    .line 107
    :cond_6a
    move-object v0, p1

    .line 108
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 110
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 113
    move-result v0

    .line 114
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastVisibleItemPosition:I

    .line 116
    :goto_73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 119
    move-result p1

    .line 120
    if-lez p1, :cond_9b

    .line 122
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastVisibleItemPosition:I

    .line 124
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 126
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getItemCount()I

    .line 129
    move-result v0

    .line 130
    sub-int/2addr v0, v1

    .line 131
    if-lt p1, v0, :cond_9b

    .line 133
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 135
    if-eqz p1, :cond_9b

    .line 137
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 139
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getState()I

    .line 142
    move-result p1

    .line 143
    const/4 v0, 0x4

    .line 144
    if-eq p1, v0, :cond_9b

    .line 146
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    .line 148
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;->setState(I)V

    .line 151
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 153
    invoke-interface {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onLoadMore()V

    .line 156
    :cond_9b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9b

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_72

    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_f

    .line 14
    goto/16 :goto_b5

    .line 16
    :cond_f
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    .line 18
    const/4 v3, 0x0

    .line 19
    cmpg-float v0, v0, v3

    .line 21
    if-gez v0, :cond_1c

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    .line 29
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 32
    move-result v0

    .line 33
    iget v4, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    .line 35
    sub-float/2addr v0, v4

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 39
    move-result v4

    .line 40
    iput v4, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    .line 42
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 44
    invoke-virtual {v4}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getVisibleHeight()I

    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_3a

    .line 50
    cmpg-float v3, v0, v3

    .line 52
    if-gez v3, :cond_3a

    .line 54
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_3a
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isOnTop()Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_b5

    .line 65
    iget-boolean v3, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullRefreshEnabled:Z

    .line 67
    if-eqz v3, :cond_b5

    .line 69
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 71
    invoke-virtual {v3}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getState()I

    .line 74
    move-result v3

    .line 75
    if-eq v3, v1, :cond_b5

    .line 77
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 79
    const v1, 0x3fcccccd  # 1.6f

    .line 82
    div-float/2addr v0, v1

    .line 83
    float-to-int v0, v0

    .line 84
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onMove(I)V

    .line 87
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 97
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mOnHeaderViewChangeListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$onHeaderViewChangeListener;

    .line 99
    if-eqz p1, :cond_71

    .line 101
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 103
    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getVisibleHeight()I

    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_6d

    .line 109
    goto :goto_6e

    .line 110
    :cond_6d
    move v2, v0

    .line 111
    :goto_6e
    invoke-interface {p1, v2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$onHeaderViewChangeListener;->isHeaderShow(Z)V

    .line 114
    :cond_71
    return v0

    .line 115
    :cond_72
    const/high16 v0, -0x40800000  # -1.0f

    .line 117
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    .line 119
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 121
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->checkStateOnActionUp()I

    .line 124
    move-result v0

    .line 125
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 127
    if-eqz v3, :cond_b5

    .line 129
    if-ne v0, v1, :cond_86

    .line 131
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->notifyRefresh(Z)V

    .line 134
    goto :goto_b5

    .line 135
    :cond_86
    const/4 v1, 0x5

    .line 136
    if-ne v1, v0, :cond_b5

    .line 138
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 140
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getProgress()F

    .line 143
    move-result v0

    .line 144
    const/high16 v1, 0x3f800000  # 1.0f

    .line 146
    cmpl-float v0, v0, v1

    .line 148
    if-nez v0, :cond_b5

    .line 150
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 152
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onEnterPrivate()V

    .line 155
    goto :goto_b5

    .line 156
    :cond_9b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 159
    move-result v0

    .line 160
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    .line 162
    const-string v0, "onTouchEvent: lastY = "

    .line 164
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    move-result-object v0

    .line 168
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->lastY:F

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v0

    .line 177
    const-string v1, "PullToRefreshRecyclerView"

    .line 179
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_b5
    :goto_b5
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 185
    move-result p1

    .line 186
    return p1
.end method

.method public removeAllFooterViews()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerTypes:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 27
    if-eqz v0, :cond_2b

    .line 29
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2b

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 37
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 44
    :cond_2b
    return-void
.end method

.method public removeAllHeaderViews()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 18
    if-eqz v0, :cond_22

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_22

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 28
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 35
    :cond_22
    return-void
.end method

.method public removeFooterViewByIndex(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_31

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerTypes:Ljava/util/List;

    .line 16
    sget-object v1, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    .line 18
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 32
    if-eqz p1, :cond_30

    .line 34
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_30

    .line 40
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 42
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 49
    :cond_30
    return-void

    .line 50
    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 52
    const-string v1, "Invalid index "

    .line 54
    const-string v2, ", footerView size is "

    .line 56
    invoke-static {v1, p1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object p1

    .line 60
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->footerViews:Ljava/util/List;

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 65
    move-result v1

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 76
    throw v0
.end method

.method public removeHeaderViewByIndex(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_2f

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headerTypes:Ljava/util/List;

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 30
    if-eqz p1, :cond_2e

    .line 32
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_2e

    .line 38
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 40
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 47
    :cond_2e
    return-void

    .line 48
    :cond_2f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 50
    const-string v1, "Invalid index "

    .line 52
    const-string v2, ", headerViews size is "

    .line 54
    invoke-static {v1, p1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object p1

    .line 58
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->headViews:Ljava/util/List;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 63
    move-result v1

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 74
    throw v0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 14
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 19
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 27
    return-void
.end method

.method public setLastRefreshTime(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setLastRefreshTime(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshRecyclerViewAdapter:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 6
    if-eqz v0, :cond_1d

    .line 8
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    if-eqz v0, :cond_1d

    .line 12
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 17
    move-result-object v0

    .line 18
    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$a;

    .line 20
    if-eqz v0, :cond_1d

    .line 22
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;

    .line 24
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 27
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 30
    :cond_1d
    return-void
.end method

.method public setLoadMoreComplete()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;->setState(I)V

    .line 7
    return-void
.end method

.method public setLoadMoreFail()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;->setState(I)V

    .line 7
    return-void
.end method

.method public setLoadMoreViewAlwaysShow(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isAlwaysShow:Z

    .line 3
    return-void
.end method

.method public setLoadingMoreEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->loadingMoreEnabled:Z

    .line 3
    return-void
.end method

.method public setOnHeaderViewChangeListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$onHeaderViewChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mOnHeaderViewChangeListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$onHeaderViewChangeListener;

    .line 3
    return-void
.end method

.method public setPullPrivateEnable(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mEnablePullPrivate:Z

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullPrivateEnable(Z)V

    .line 10
    :cond_9
    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullRefreshEnabled:Z

    .line 3
    return-void
.end method

.method public setPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->pullToRefreshListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 3
    return-void
.end method

.method public setRefreshComplete()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->isRefreshing()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_12

    .line 9
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$1;

    .line 11
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V

    .line 14
    const-wide/16 v1, 0x64

    .line 16
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    :cond_12
    return-void
.end method

.method public setRefreshLimitHeight(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mRefreshHeaderView:Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setRefreshTriggerHeight(I)V

    .line 6
    return-void
.end method

.method public setUniqueTag(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mUniqueTag:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public showLoadMoreView()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isAlwaysShow:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->mLoadMoreFooter:Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;->setState(I)V

    .line 11
    :cond_a
    return-void
.end method
