.class Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "PinnedSectionRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataChangeObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;-><init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->access$500(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    .line 6
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->access$500(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->access$500(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->access$500(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    .line 6
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->access$500(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    .line 6
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->access$500(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    .line 6
    return-void
.end method
