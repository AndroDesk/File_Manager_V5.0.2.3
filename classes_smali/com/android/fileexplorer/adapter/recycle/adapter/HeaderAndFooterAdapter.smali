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
.field private static final BASE_ITEM_TYPE_FOOTER:I = 0x30d40

.field private static final BASE_ITEM_TYPE_HEADER:I = 0x186a0


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
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;-><init>(Ljava/util/List;)V

    .line 6
    new-instance v0, Landroidx/collection/g;

    .line 8
    invoke-direct {v0}, Landroidx/collection/g;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    .line 13
    new-instance v0, Landroidx/collection/g;

    .line 15
    invoke-direct {v0}, Landroidx/collection/g;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    .line 20
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    .line 22
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;)Landroidx/collection/g;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;)Landroidx/collection/g;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    .line 3
    return-object p0
.end method

.method private getRealItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getItemCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private isFooterViewPos(I)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getHeadersCount()I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getRealItemCount()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    if-lt p1, v0, :cond_d

    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    :goto_e
    return p1
.end method

.method private isHeaderViewPos(I)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getHeadersCount()I

    .line 4
    move-result v0

    .line 5
    if-ge p1, v0, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    return p1
.end method


# virtual methods
.method public addFootView(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    .line 3
    invoke-virtual {v0}, Landroidx/collection/g;->g()I

    .line 6
    move-result v1

    .line 7
    const v2, 0x30d40

    .line 10
    add-int/2addr v1, v2

    .line 11
    invoke-virtual {v0, v1, p1}, Landroidx/collection/g;->f(ILjava/lang/Object;)V

    .line 14
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    .line 3
    invoke-virtual {v0}, Landroidx/collection/g;->g()I

    .line 6
    move-result v1

    .line 7
    const v2, 0x186a0

    .line 10
    add-int/2addr v1, v2

    .line 11
    invoke-virtual {v0, v1, p1}, Landroidx/collection/g;->f(ILjava/lang/Object;)V

    .line 14
    return-void
.end method

.method public getFootersCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    .line 3
    invoke-virtual {v0}, Landroidx/collection/g;->g()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeadersCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    .line 3
    invoke-virtual {v0}, Landroidx/collection/g;->g()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemCount()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getHeadersCount()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getFootersCount()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getRealItemCount()I

    .line 13
    move-result v0

    .line 14
    add-int/2addr v1, v0

    .line 15
    return v1
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isHeaderViewPos(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getItemViewType(I)I

    .line 10
    move-result p1

    .line 11
    int-to-long v0, p1

    .line 12
    return-wide v0

    .line 13
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isFooterViewPos(I)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_18

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getItemViewType(I)I

    .line 22
    move-result p1

    .line 23
    int-to-long v0, p1

    .line 24
    return-wide v0

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    .line 27
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getItemId(I)J

    .line 30
    move-result-wide v0

    .line 31
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isHeaderViewPos(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    .line 9
    invoke-virtual {v0, p1}, Landroidx/collection/g;->e(I)I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isFooterViewPos(I)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_24

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getHeadersCount()I

    .line 25
    move-result v1

    .line 26
    sub-int/2addr p1, v1

    .line 27
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getRealItemCount()I

    .line 30
    move-result v1

    .line 31
    sub-int/2addr p1, v1

    .line 32
    invoke-virtual {v0, p1}, Landroidx/collection/g;->e(I)I

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    .line 39
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getHeadersCount()I

    .line 42
    move-result v1

    .line 43
    sub-int/2addr p1, v1

    .line 44
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->getItemViewType(I)I

    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    .line 3
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;

    .line 5
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;)V

    .line 8
    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$SpanSizeCallback;)V

    .line 11
    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;I)V
    .registers 5

    .line 1
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isHeaderViewPos(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isFooterViewPos(I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    .line 17
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getHeadersCount()I

    .line 20
    move-result v1

    .line 21
    sub-int/2addr p2, v1

    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->onBindViewHolder(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;I)V

    .line 25
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p2, v1}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 4
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$ViewHolder;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mHeaderViews:Landroidx/collection/g;

    .line 5
    invoke-virtual {v0, p2, v1}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p0, p2, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$ViewHolder;-><init>(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-object p1

    .line 7
    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    .line 8
    invoke-virtual {v0, p2, v1}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 9
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$ViewHolder;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mFootViews:Landroidx/collection/g;

    .line 10
    invoke-virtual {v0, p2, v1}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 11
    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p0, p2, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$ViewHolder;-><init>(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-object p1

    .line 12
    :cond_2d
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isHeaderViewPos(I)Z

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_15

    .line 16
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->isFooterViewPos(I)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_18

    .line 22
    :cond_15
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils;->setFullSpan(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 25
    :cond_18
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->mInnerAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 9
    return-void
.end method
