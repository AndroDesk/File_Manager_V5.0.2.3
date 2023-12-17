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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->val$refreshRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->stopAnimation()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->val$refreshRecyclerView:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->access$100(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->access$000(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
