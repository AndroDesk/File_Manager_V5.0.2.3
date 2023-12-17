.class Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "ExpandableGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToGridMode()V
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
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$1;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$1;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->access$000(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemViewType(I)I

    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$1;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->access$000(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroup(I)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1d

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$1;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1d
    const/4 p1, 0x1

    .line 31
    return p1
.end method
