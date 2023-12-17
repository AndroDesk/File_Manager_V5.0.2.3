.class Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$1;
.super Ljava/lang/Object;
.source "PullToRefreshRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->setRefreshComplete()V
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
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$200(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setRefreshComplete()V

    .line 10
    return-void
.end method
