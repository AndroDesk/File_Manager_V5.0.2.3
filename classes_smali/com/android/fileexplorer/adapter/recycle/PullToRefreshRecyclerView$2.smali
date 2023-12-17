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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isSpecialViewType(I)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$2;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method
