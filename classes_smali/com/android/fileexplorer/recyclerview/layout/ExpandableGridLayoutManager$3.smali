.class Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$3;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "ExpandableGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
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
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$3;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager$3;->this$0:Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 6
    invoke-static {p1, p3}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->access$102(Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;I)I

    .line 9
    return-void
.end method
