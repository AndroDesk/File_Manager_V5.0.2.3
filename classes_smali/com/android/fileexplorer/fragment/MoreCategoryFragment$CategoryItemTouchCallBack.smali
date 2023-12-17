.class Lcom/android/fileexplorer/fragment/MoreCategoryFragment$CategoryItemTouchCallBack;
.super Landroidx/recyclerview/widget/f$e;
.source "MoreCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/MoreCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryItemTouchCallBack"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$CategoryItemTouchCallBack;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/f$e;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$CategoryItemTouchCallBack;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I
    .registers 3

    .line 1
    const/16 p1, 0xf

    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/f$e;->makeMovementFlags(II)I

    .line 7
    move-result p1

    .line 8
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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$CategoryItemTouchCallBack;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 15
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 17
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 20
    move-result p2

    .line 21
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 24
    move-result p3

    .line 25
    invoke-virtual {p1, p2, p3}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->onMove(II)V

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    return-void
.end method
