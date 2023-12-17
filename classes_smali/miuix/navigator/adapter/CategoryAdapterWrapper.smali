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

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->PAYLOAD_PLACEHOLDER:Ljava/lang/Object;

    .line 8
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

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    .line 7
    iput v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 9
    const-wide v0, 0x80000000L

    .line 14
    iput-wide v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderId:J

    .line 16
    if-eqz p1, :cond_24

    .line 18
    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 20
    iput-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    .line 22
    new-instance p2, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;

    .line 24
    invoke-direct {p2, p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper$1;-><init>(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V

    .line 27
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 30
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->calculateItemCount()V

    .line 33
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->refresh()V

    .line 36
    return-void

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    .line 39
    const-string p2, "adapter must not be null"

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1
.end method

.method public static synthetic access$000(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->calculateItemCount()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->refresh()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Lmiuix/navigator/adapter/CategoryAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getCategoryOffset()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$412(Lmiuix/navigator/adapter/CategoryAdapterWrapper;I)I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    .line 6
    return v0
.end method

.method public static synthetic access$420(Lmiuix/navigator/adapter/CategoryAdapterWrapper;I)I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    .line 3
    sub-int/2addr v0, p1

    .line 4
    iput v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    .line 6
    return v0
.end method

.method public static synthetic access$500(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mPreReplaceDragPlaceholder:Z

    .line 3
    return p0
.end method

.method public static synthetic access$502(Lmiuix/navigator/adapter/CategoryAdapterWrapper;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mPreReplaceDragPlaceholder:Z

    .line 3
    return p1
.end method

.method public static synthetic access$600(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 3
    return p0
.end method

.method public static synthetic access$602(Lmiuix/navigator/adapter/CategoryAdapterWrapper;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 3
    return p1
.end method

.method public static synthetic access$700(Lmiuix/navigator/adapter/CategoryAdapterWrapper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->notifyDropItemReplacing()V

    .line 4
    return-void
.end method

.method private calculateItemCount()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getItemCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v1, v0, :cond_17

    .line 11
    iget-object v3, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 13
    invoke-virtual {v3, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_14

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_8

    .line 24
    :cond_17
    sub-int/2addr v0, v2

    .line 25
    iput v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    .line 27
    return-void
.end method

.method private getCategoryOffset()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/NavigationAdapter;->getCategoryPosition(Lmiuix/navigator/adapter/CategoryImpl;)I

    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 13
    return v0
.end method

.method private notifyDropItemReplacing()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mPreReplaceDragPlaceholder:Z

    .line 4
    iget v1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 6
    const/4 v2, -0x1

    .line 7
    iput v2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 9
    invoke-direct {p0, v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->setShowingEmptyDragPlaceholder(Z)V

    .line 12
    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mEmptyDragPlaceholderActive:Z

    .line 14
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1f

    .line 20
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getCategoryOffset()I

    .line 23
    move-result v0

    .line 24
    add-int/2addr v1, v0

    .line 25
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 32
    :cond_1f
    return-void
.end method

.method private refresh()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->hasAliveItems()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_34

    .line 7
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/CategoryImpl;->setCurrentEmpty(Z)V

    .line 13
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3d

    .line 25
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 27
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hideWhenEmpty()Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_3d

    .line 37
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 39
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->showEmptyDragPlaceholder()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3d

    .line 49
    invoke-direct {p0, v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->setShowingEmptyDragPlaceholder(Z)V

    .line 52
    goto :goto_3d

    .line 53
    :cond_34
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/CategoryImpl;->setCurrentEmpty(Z)V

    .line 59
    invoke-direct {p0, v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->setShowingEmptyDragPlaceholder(Z)V

    .line 62
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_4a

    .line 68
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 75
    :cond_4a
    return-void
.end method

.method private setShowingEmptyDragPlaceholder(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mShowingEmptyDragPlaceholder:Z

    .line 3
    if-eq v0, p1, :cond_d

    .line 5
    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mShowingEmptyDragPlaceholder:Z

    .line 7
    if-eqz p1, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, -0x1

    .line 12
    :goto_b
    iput p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 14
    :cond_d
    return-void
.end method

.method private unwrapPosition(I)I
    .registers 6

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_9

    .line 6
    if-lt p1, v0, :cond_9

    .line 8
    add-int/lit8 p1, p1, -0x1

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 12
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getItemCount()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_11
    if-ge v1, v0, :cond_25

    .line 20
    iget-object v3, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 22
    invoke-virtual {v3, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_1d

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 30
    :cond_1d
    add-int v3, v2, p1

    .line 32
    if-ne v3, v1, :cond_22

    .line 34
    return v1

    .line 35
    :cond_22
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_11

    .line 38
    :cond_25
    add-int/2addr v2, p1

    .line 39
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

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 3
    if-ne p3, v0, :cond_5

    .line 5
    goto :goto_f

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 8
    invoke-direct {p0, p3}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->unwrapPosition(I)I

    .line 11
    move-result p3

    .line 12
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    .line 15
    move-result p3

    .line 16
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

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 3
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

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_8

    .line 6
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->calculateItemCount()V

    .line 9
    :cond_8
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    .line 11
    iget v2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 13
    if-eq v2, v1, :cond_10

    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v1, 0x0

    .line 18
    :goto_11
    add-int/2addr v0, v1

    .line 19
    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 3
    if-ne p1, v0, :cond_7

    .line 5
    iget-wide v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderId:J

    .line 7
    goto :goto_11

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 10
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->unwrapPosition(I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getItemId(I)J

    .line 17
    move-result-wide v0

    .line 18
    :goto_11
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 3
    if-ne p1, v0, :cond_6

    .line 5
    const/4 p1, -0x3

    .line 6
    goto :goto_c

    .line 7
    :cond_6
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    .line 9
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryImpl;->getId()I

    .line 12
    move-result p1

    .line 13
    :goto_c
    return p1
.end method

.method public getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNavigatorDragListener()Lmiuix/navigator/draganddrop/NavigatorDragListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mNavigatorDragListener:Lmiuix/navigator/draganddrop/NavigatorDragListener;

    .line 3
    return-object v0
.end method

.method public getNavigatorInfoPosition(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v3

    .line 13
    const/4 v4, -0x1

    .line 14
    if-ge v1, v3, :cond_3c

    .line 16
    iget v3, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 18
    if-ne v2, v3, :cond_15

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 22
    :cond_15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lmiuix/navigator/adapter/CategoryAdapter$Item;

    .line 28
    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p1, v3}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2f

    .line 38
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 40
    invoke-virtual {p1, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2e

    .line 46
    move v4, v2

    .line 47
    :cond_2e
    return v4

    .line 48
    :cond_2f
    iget-object v3, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 50
    invoke-virtual {v3, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->isVisible(I)Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_39

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 58
    :cond_39
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_8

    .line 61
    :cond_3c
    return v4
.end method

.method public hasAliveItems()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCachedItemCount:I

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public insertDragPlaceholder(I)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mShowingEmptyDragPlaceholder:Z

    .line 3
    if-eqz v0, :cond_19

    .line 5
    iget-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mEmptyDragPlaceholderActive:Z

    .line 7
    if-nez p1, :cond_18

    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mEmptyDragPlaceholderActive:Z

    .line 12
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getCategoryOffset()I

    .line 19
    move-result v0

    .line 20
    sget-object v1, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->PAYLOAD_PLACEHOLDER:Ljava/lang/Object;

    .line 22
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 25
    :cond_18
    return-void

    .line 26
    :cond_19
    iput p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 28
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_2d

    .line 34
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getCategoryOffset()I

    .line 41
    move-result v1

    .line 42
    add-int/2addr p1, v1

    .line 43
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 46
    :cond_2d
    return-void
.end method

.method public isExpanded()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryImpl;->isExpanded()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 3
    if-eq v0, p2, :cond_e

    .line 5
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 7
    invoke-direct {p0, p2}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->unwrapPosition(I)I

    .line 10
    move-result p2

    .line 11
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 14
    goto :goto_29

    .line 15
    :cond_e
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 17
    sget v0, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_token:I

    .line 19
    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 22
    iget-boolean p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mShowingEmptyDragPlaceholder:Z

    .line 24
    const/4 v0, 0x1

    .line 25
    if-eqz p2, :cond_20

    .line 27
    iget-boolean p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mEmptyDragPlaceholderActive:Z

    .line 29
    if-nez p2, :cond_20

    .line 31
    move p2, v0

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 p2, 0x0

    .line 34
    :goto_21
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigatorDragListener()Lmiuix/navigator/draganddrop/NavigatorDragListener;

    .line 37
    move-result-object v1

    .line 38
    xor-int/2addr p2, v0

    .line 39
    invoke-interface {v1, p1, p2}, Lmiuix/navigator/draganddrop/NavigatorDragListener;->onBindDragPlaceholder(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 42
    :goto_29
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mCategory:Lmiuix/navigator/adapter/CategoryImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryImpl;->getFooterId()I

    .line 6
    move-result v0

    .line 7
    if-ne p2, v0, :cond_12

    .line 9
    iget-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 11
    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter;->hasFooterView()Z

    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_12

    .line 17
    const/4 p2, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p2, 0x0

    .line 20
    :goto_13
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 22
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 28
    sget v1, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_token:I

    .line 30
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 33
    if-eqz p2, :cond_2b

    .line 35
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 37
    sget v0, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_footer:I

    .line 39
    const-class v1, Ljava/lang/Object;

    .line 41
    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    :cond_2b
    return-object p1
.end method

.method public postReplaceDragPlaceholder(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mPreReplaceDragPlaceholder:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mPreReplaceDragPlaceholder:Z

    .line 9
    if-nez p1, :cond_e

    .line 11
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->removeDragPlaceholder()V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->notifyDropItemReplacing()V

    .line 18
    :goto_11
    return-void
.end method

.method public preReplaceDragPlaceholder()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mPreReplaceDragPlaceholder:Z

    .line 4
    return-void
.end method

.method public removeDragPlaceholder()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mShowingEmptyDragPlaceholder:Z

    .line 3
    if-eqz v0, :cond_19

    .line 5
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mEmptyDragPlaceholderActive:Z

    .line 7
    if-eqz v0, :cond_18

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mEmptyDragPlaceholderActive:Z

    .line 12
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getCategoryOffset()I

    .line 19
    move-result v1

    .line 20
    sget-object v2, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->PAYLOAD_PLACEHOLDER:Ljava/lang/Object;

    .line 22
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 25
    :cond_18
    return-void

    .line 26
    :cond_19
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 28
    const/4 v1, -0x1

    .line 29
    iput v1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mDragPlaceholderPosition:I

    .line 31
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_30

    .line 37
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 40
    move-result-object v1

    .line 41
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getCategoryOffset()I

    .line 44
    move-result v2

    .line 45
    add-int/2addr v0, v2

    .line 46
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 49
    :cond_30
    return-void
.end method

.method public setHasStableIds(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->setHasStableIds(Z)V

    .line 6
    return-void
.end method

.method public setNavigatorDragListener(Lmiuix/navigator/draganddrop/NavigatorDragListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->mNavigatorDragListener:Lmiuix/navigator/draganddrop/NavigatorDragListener;

    .line 3
    return-void
.end method
