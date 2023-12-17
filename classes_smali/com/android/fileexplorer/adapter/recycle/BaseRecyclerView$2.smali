.class Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;
.super Ljava/lang/Object;
.source "BaseRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$100(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Landroidx/core/widget/j;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$100(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Landroidx/core/widget/j;

    move-result-object v0

    iget-object v0, v0, Landroidx/core/widget/j;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$200(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$300(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$400(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_2a
    return-void
.end method
