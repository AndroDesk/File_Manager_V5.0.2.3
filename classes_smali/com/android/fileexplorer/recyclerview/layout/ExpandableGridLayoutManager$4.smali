.class Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$4;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "ExpandableGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$4;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$4;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->access$202(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;I)I

    .line 7
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$4;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    const/4 p2, -0x1

    .line 4
    invoke-static {p1, p2}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->access$202(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;I)I

    .line 7
    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$4;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    const/4 p2, -0x1

    .line 4
    invoke-static {p1, p2}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->access$202(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;I)I

    .line 7
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$4;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    const/4 p2, -0x1

    .line 4
    invoke-static {p1, p2}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->access$202(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;I)I

    .line 7
    return-void
.end method
