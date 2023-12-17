.class public Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;
.super Landroidx/recyclerview/widget/f$e;
.source "CategoryItemTouchCallBack.java"


# instance fields
.field private final mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/ItemTouchAdapter;)V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/f$e;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;->mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;->mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/fragment/ItemTouchAdapter;->chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/f$e;->chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;->mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/fragment/ItemTouchAdapter;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/f$e;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;->mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;

    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/ItemTouchAdapter;->getDragFlags()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/f$e;->makeMovementFlags(II)I

    move-result p1

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

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v0

    if-eq p1, v0, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;->mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/android/fileexplorer/fragment/ItemTouchAdapter;->onMove(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryItemTouchCallBack;->mAdapter:Lcom/android/fileexplorer/fragment/ItemTouchAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/fragment/ItemTouchAdapter;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/f$e;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    return-void
.end method
