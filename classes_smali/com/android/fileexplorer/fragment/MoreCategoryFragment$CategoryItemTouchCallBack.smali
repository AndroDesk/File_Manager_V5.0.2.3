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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$CategoryItemTouchCallBack;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/f$e;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;Lcom/android/fileexplorer/fragment/MoreCategoryFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$CategoryItemTouchCallBack;-><init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I
    .registers 3

    const/16 p1, 0xf

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$CategoryItemTouchCallBack;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->onMove(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    return-void
.end method
