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
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$100(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Landroidx/core/widget/j;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2a

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$100(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Landroidx/core/widget/j;

    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Landroidx/core/widget/j;->a:Landroid/widget/OverScroller;

    .line 17
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2a

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 25
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$200(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)I

    .line 28
    move-result v1

    .line 29
    invoke-static {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$300(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 34
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->access$400(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)Ljava/lang/Runnable;

    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 40
    invoke-static {v0, v1}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 43
    :cond_2a
    return-void
.end method
