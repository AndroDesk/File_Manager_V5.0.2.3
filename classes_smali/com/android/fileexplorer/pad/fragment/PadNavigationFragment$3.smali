.class Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;
.super Ljava/lang/Object;
.source "PadNavigationFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->setupAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

.field public final synthetic val$itemTouchHelper:Landroidx/recyclerview/widget/f;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;Landroidx/recyclerview/widget/f;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->val$itemTouchHelper:Landroidx/recyclerview/widget/f;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1c

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 9
    invoke-static {p1, p2, p3, p4}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$100(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;III)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 14
    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;

    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 24
    iget-object p1, p1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->title:Ljava/lang/String;

    .line 26
    invoke-static {p1, p4}, Lcom/android/fileexplorer/statistics/StatHelper;->clickLabel(Ljava/lang/String;I)V

    .line 29
    :cond_1c
    return-void
.end method

.method public onChildLongClick(Landroid/view/View;III)Z
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 3
    invoke-static {p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$300(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_53

    .line 9
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 11
    invoke-static {p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$300(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_53

    .line 21
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 23
    invoke-static {p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$400(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_53

    .line 29
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 31
    invoke-static {p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;

    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 38
    move-result p2

    .line 39
    if-ge p4, p2, :cond_53

    .line 41
    if-gez p4, :cond_2b

    .line 43
    goto :goto_53

    .line 44
    :cond_2b
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->val$itemTouchHelper:Landroidx/recyclerview/widget/f;

    .line 46
    iget-object p3, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 48
    invoke-static {p3}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$300(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/f;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 59
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 61
    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$400(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 64
    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 67
    invoke-static {p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;

    .line 70
    move-result-object p2

    .line 71
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 77
    iget-boolean p2, p2, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    .line 79
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setSelected(Z)V

    .line 82
    const/4 p1, 0x1

    .line 83
    return p1

    .line 84
    :cond_53
    :goto_53
    const/4 p1, 0x0

    .line 85
    return p1
.end method
