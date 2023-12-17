.class public Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;
.super Landroidx/recyclerview/widget/f$e;
.source "CategoryItemTouchCallBack.java"


# instance fields
.field private final mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/ItemTouchAdapter;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/f$e;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;->mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;

    .line 6
    return-void
.end method


# virtual methods
.method public chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;II)",
            "Landroidx/recyclerview/widget/RecyclerView$b0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;->mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;

    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/fragment/ItemTouchAdapter;->chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/f$e;->chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;->mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/fragment/ItemTouchAdapter;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/f$e;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 9
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;->mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;

    .line 3
    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/ItemTouchAdapter;->getDragFlags()I

    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/f$e;->makeMovementFlags(II)I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 8
    move-result v0

    .line 9
    if-eq p1, v0, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;->mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;

    .line 15
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 18
    move-result p2

    .line 19
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 22
    move-result p3

    .line 23
    invoke-interface {p1, p2, p3}, Lcom/android/fileexplorer/fragment/ItemTouchAdapter;->onMove(II)V

    .line 26
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;->mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/fragment/ItemTouchAdapter;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/f$e;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 9
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    return-void
.end method
