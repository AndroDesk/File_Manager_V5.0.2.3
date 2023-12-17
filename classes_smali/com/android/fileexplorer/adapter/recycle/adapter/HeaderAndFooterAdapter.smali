.class public Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;
.super Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;
.source "HeaderAndFooterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils;,
        Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final BASE_ITEM_TYPE_FOOTER:I

.field private static final BASE_ITEM_TYPE_HEADER:I


# instance fields
.field private mFootViews:Landroidx/collection/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/g<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Landroidx/collection/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/g<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0xa20d6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->BASE_ITEM_TYPE_FOOTER:I

    const v0, 0x8ab36

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->BASE_ITEM_TYPE_HEADER:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V
    .registers 3

    iget-object v0, p1, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;-><init>(Ljava/util/List;)V

    new-instance v0, Landroidx/collection/g;

    invoke-direct {v0}, Landroidx/collection/g;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    new-instance v0, Landroidx/collection/g;

    invoke-direct {v0}, Landroidx/collection/g;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;)Landroidx/collection/g;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;)Landroidx/collection/g;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    return-object p0
.end method

.method private getRealItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method private isFooterViewPos(I)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getHeadersCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getRealItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method private isHeaderViewPos(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getHeadersCount()I

    move-result v0

    if-ge p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method


# virtual methods
.method public addFootView(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    invoke-virtual {v0}, Landroidx/collection/g;->g()I

    move-result v1

    const v2, 0x30d40

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/collection/g;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    invoke-virtual {v0}, Landroidx/collection/g;->g()I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/collection/g;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public getFootersCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    invoke-virtual {v0}, Landroidx/collection/g;->g()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    invoke-virtual {v0}, Landroidx/collection/g;->g()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getFootersCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getRealItemCount()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getItemId(I)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getItemViewType(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_c
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getItemViewType(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    invoke-virtual {v0, p1}, Landroidx/collection/g;->e(I)I

    move-result p1

    return p1

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getRealItemCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/collection/g;->e(I)I

    move-result p1

    return p1

    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;)V

    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$SpanSizeCallback;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;I)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->onBindViewHolder(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$ViewHolder;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    invoke-virtual {v0, p2, v1}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p0, p2, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$ViewHolder;-><init>(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-object p1

    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    invoke-virtual {v0, p2, v1}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$ViewHolder;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    invoke-virtual {v0, p2, v1}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p0, p2, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$ViewHolder;-><init>(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-object p1

    :cond_2d
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isHeaderViewPos(I)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_15
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils;->setFullSpan(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    :cond_18
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-void
.end method
