.class Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "PullToRefreshRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$1000(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$1000(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 18
    :cond_11
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$1000(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$1000(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$1000(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 10
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    .line 1
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-static {p3}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$1000(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 10
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$DataObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$1000(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 10
    return-void
.end method
