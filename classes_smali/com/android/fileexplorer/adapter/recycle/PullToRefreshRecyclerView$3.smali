.class Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$3;
.super Ljava/lang/Object;
.source "PullToRefreshRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->notifyRefresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$300(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$300(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onRefresh()V

    .line 18
    :cond_11
    return-void
.end method
