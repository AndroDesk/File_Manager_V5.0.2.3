.class Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;
.super Ljava/lang/Object;
.source "LoadMoreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->loadMoreFail(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

.field public final synthetic val$refreshRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->val$refreshRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    .line 10
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->stopAnimation()V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->val$refreshRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 20
    move-result v1

    .line 21
    neg-int v1, v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    .line 28
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->access$100(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;)Landroid/widget/TextView;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    .line 38
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->access$000(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;)Landroid/widget/ImageView;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    return-void
.end method
