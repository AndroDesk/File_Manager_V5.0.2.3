.class Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "PullToRefreshRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

.field public final synthetic val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isSpecialViewType(I)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_f

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 14
    move-result p1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 p1, 0x1

    .line 17
    :goto_10
    return p1
.end method
