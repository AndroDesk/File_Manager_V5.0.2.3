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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;Landroidx/recyclerview/widget/f;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    iput-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->val$itemTouchHelper:Landroidx/recyclerview/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;III)V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p1, p2, p3, p4}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$100(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;III)V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    iget-object p1, p1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->title:Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/android/fileexplorer/statistics/StatHelper;->clickLabel(Ljava/lang/String;I)V

    :cond_1c
    return-void
.end method

.method public onChildLongClick(Landroid/view/View;III)Z
    .registers 5

    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$300(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_53

    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$300(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p2

    if-eqz p2, :cond_53

    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$400(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    move-result-object p2

    if-eqz p2, :cond_53

    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p4, p2, :cond_53

    if-gez p4, :cond_2b

    goto :goto_53

    :cond_2b
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->val$itemTouchHelper:Landroidx/recyclerview/widget/f;

    iget-object p3, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p3}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$300(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/f;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$400(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$3;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p2}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    iget-boolean p2, p2, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setSelected(Z)V

    const/4 p1, 0x1

    return p1

    :cond_53
    :goto_53
    const/4 p1, 0x0

    return p1
.end method
