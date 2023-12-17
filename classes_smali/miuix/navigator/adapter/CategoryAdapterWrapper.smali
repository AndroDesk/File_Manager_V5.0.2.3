.class public Lmiuix/navigator/adapter/CategoryAdapterWrapper;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CategoryAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# static fields
.field private static final PAYLOAD_PLACEHOLDER:Ljava/lang/Object;


# instance fields
.field private final mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "+",
            "Lmiuix/navigator/adapter/CategoryAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedItemCount:I

.field private final mCategory:Lmiuix/navigator/adapter/CategoryImpl;

.field private mDragPlaceholderId:J

.field private mDragPlaceholderPosition:I

.field private mEmptyDragPlaceholderActive:Z

.field private mNavigatorDragListener:Lmiuix/navigator/draganddrop/NavigatorDragListener;

.field private mPreReplaceDragPlaceholder:Z

.field private mShowingEmptyDragPlaceholder:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->PAYLOAD_PLACEHOLDER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/adapter/CategoryAdapter;Lmiuix/navigator/adapter/CategoryImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "+",
            "Lmiuix/navigator/adapter/CategoryAdapter$Item;",
            ">;",
            "Lmiuix/navigator/adapter/CategoryImpl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    iput v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    const-wide v0, 0x80000000L

    iput-wide v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderId:J

    if-eqz p1, :cond_24

    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    iput-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    new-instance p2, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;

    invoke-direct {p2, p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;-><init>(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->calculateItemCount()V

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->refresh()V

    return-void

    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "adapter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->calculateItemCount()V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->refresh()V

    return-void
.end method

.method public static synthetic access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getCategoryOffset()I

    move-result p0

    return p0
.end method

.method public static synthetic access$412(Lmiuix/navigator/adapter/CategoryAdapterWrapper;I)I
    .registers 3

    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    return v0
.end method

.method public static synthetic access$420(Lmiuix/navigator/adapter/CategoryAdapterWrapper;I)I
    .registers 3

    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    return v0
.end method

.method public static synthetic access$500(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mPreReplaceDragPlaceholder:Z

    return p0
.end method

.method public static synthetic access$502(Lmiuix/navigator/adapter/CategoryAdapterWrapper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mPreReplaceDragPlaceholder:Z

    return p1
.end method

.method public static synthetic access$600(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I
    .registers 1

    iget p0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    return p0
.end method

.method public static synthetic access$602(Lmiuix/navigator/adapter/CategoryAdapterWrapper;I)I
    .registers 2

    iput p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    return p1
.end method

.method public static synthetic access$700(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->notifyDropItemReplacing()V

    return-void
.end method

.method private calculateItemCount()V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_17

    iget-object v3, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v3, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    move-result v3

    if-nez v3, :cond_14

    add-int/lit8 v2, v2, 0x1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    sub-int/2addr v0, v2

    iput v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    return-void
.end method

.method private getCategoryOffset()I
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/NavigationAdapter;->getCategoryPosition(Lmiuix/navigator/adapter/CategoryImpl;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private notifyDropItemReplacing()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mPreReplaceDragPlaceholder:Z

    iget v1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    const/4 v2, -0x1

    iput v2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    invoke-direct {p0, v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->setShowingEmptyDragPlaceholder(Z)V

    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mEmptyDragPlaceholderActive:Z

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getCategoryOffset()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1f
    return-void
.end method

.method private refresh()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->hasAliveItems()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/CategoryImpl;->setCurrentEmpty(Z)V

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hideWhenEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->showEmptyDragPlaceholder()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-direct {p0, v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->setShowingEmptyDragPlaceholder(Z)V

    goto :goto_3d

    :cond_34
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/CategoryImpl;->setCurrentEmpty(Z)V

    invoke-direct {p0, v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->setShowingEmptyDragPlaceholder(Z)V

    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4a
    return-void
.end method

.method private setShowingEmptyDragPlaceholder(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mShowingEmptyDragPlaceholder:Z

    if-eq v0, p1, :cond_d

    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mShowingEmptyDragPlaceholder:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_b

    :cond_a
    const/4 p1, -0x1

    :goto_b
    iput p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    :cond_d
    return-void
.end method

.method private unwrapPosition(I)I
    .registers 6

    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    if-lt p1, v0, :cond_9

    add-int/lit8 p1, p1, -0x1

    :cond_9
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v1, v0, :cond_25

    iget-object v3, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v3, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    move-result v3

    if-nez v3, :cond_1d

    add-int/lit8 v2, v2, 0x1

    :cond_1d
    add-int v3, v2, p1

    if-ne v3, v1, :cond_22

    return v1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    add-int/2addr v2, p1

    return v2
.end method


# virtual methods
.method public findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "I)I"
        }
    .end annotation

    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    if-ne p3, v0, :cond_5

    goto :goto_f

    :cond_5
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-direct {p0, p3}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->unwrapPosition(I)I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    move-result p3

    :goto_f
    return p3
.end method

.method public getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "Lmiuix/navigator/adapter/CategoryAdapter$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    return-object v0
.end method

.method public getBaseAdapter()Lmiuix/navigator/adapter/CategoryAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "+",
            "Lmiuix/navigator/adapter/CategoryAdapter$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    return-object v0
.end method

.method public getItemCount()I
    .registers 4

    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->calculateItemCount()V

    :cond_8
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    iget v2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    if-eq v2, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    if-ne p1, v0, :cond_7

    iget-wide v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderId:J

    goto :goto_11

    :cond_7
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->unwrapPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_11
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    if-ne p1, v0, :cond_6

    const/4 p1, -0x3

    goto :goto_c

    :cond_6
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryImpl;->getId()I

    move-result p1

    :goto_c
    return p1
.end method

.method public getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getNavigatorDragListener()Lmiuix/navigator/draganddrop/NavigatorDragListener;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mNavigatorDragListener:Lmiuix/navigator/draganddrop/NavigatorDragListener;

    return-object v0
.end method

.method public getNavigatorInfoPosition(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I
    .registers 7

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v1, v3, :cond_3c

    iget v3, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    if-ne v2, v3, :cond_15

    add-int/lit8 v2, v2, 0x1

    :cond_15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/navigator/adapter/CategoryAdapter$Item;

    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {p1, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    move v4, v2

    :cond_2e
    return v4

    :cond_2f
    iget-object v3, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v3, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    move-result v3

    if-eqz v3, :cond_39

    add-int/lit8 v2, v2, 0x1

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_3c
    return v4
.end method

.method public hasAliveItems()Z
    .registers 2

    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public insertDragPlaceholder(I)V
    .registers 4

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mShowingEmptyDragPlaceholder:Z

    if-eqz v0, :cond_19

    iget-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mEmptyDragPlaceholderActive:Z

    if-nez p1, :cond_18

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mEmptyDragPlaceholderActive:Z

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object p1

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getCategoryOffset()I

    move-result v0

    sget-object v1, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->PAYLOAD_PLACEHOLDER:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_18
    return-void

    :cond_19
    iput p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getCategoryOffset()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_2d
    return-void
.end method

.method public isExpanded()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryImpl;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 5

    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    if-eq v0, p2, :cond_e

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-direct {p0, p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->unwrapPosition(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    goto :goto_29

    :cond_e
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v0, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_token:I

    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mShowingEmptyDragPlaceholder:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_20

    iget-boolean p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mEmptyDragPlaceholderActive:Z

    if-nez p2, :cond_20

    move p2, v0

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigatorDragListener()Lmiuix/navigator/draganddrop/NavigatorDragListener;

    move-result-object v1

    xor-int/2addr p2, v0

    invoke-interface {v1, p1, p2}, Lmiuix/navigator/draganddrop/NavigatorDragListener;->onBindDragPlaceholder(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    :goto_29
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryImpl;->getFooterId()I

    move-result v0

    if-ne p2, v0, :cond_12

    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter;->hasFooterView()Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 p2, 0x1

    goto :goto_13

    :cond_12
    const/4 p2, 0x0

    :goto_13
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_token:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p2, :cond_2b

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v0, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_footer:I

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2b
    return-object p1
.end method

.method public postReplaceDragPlaceholder(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mPreReplaceDragPlaceholder:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mPreReplaceDragPlaceholder:Z

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->removeDragPlaceholder()V

    goto :goto_11

    :cond_e
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->notifyDropItemReplacing()V

    :goto_11
    return-void
.end method

.method public preReplaceDragPlaceholder()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mPreReplaceDragPlaceholder:Z

    return-void
.end method

.method public removeDragPlaceholder()V
    .registers 4

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mShowingEmptyDragPlaceholder:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mEmptyDragPlaceholderActive:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mEmptyDragPlaceholderActive:Z

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getCategoryOffset()I

    move-result v1

    sget-object v2, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->PAYLOAD_PLACEHOLDER:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_18
    return-void

    :cond_19
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    const/4 v1, -0x1

    iput v1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v1

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getCategoryOffset()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_30
    return-void
.end method

.method public setHasStableIds(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method public setNavigatorDragListener(Lmiuix/navigator/draganddrop/NavigatorDragListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mNavigatorDragListener:Lmiuix/navigator/draganddrop/NavigatorDragListener;

    return-void
.end method
