.class Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;
.super Ljava/lang/Object;
.source "StickyHeaderDecoration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getStickyView(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

.field public final synthetic val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic val$parent:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->val$parent:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    instance-of p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 14
    if-eqz p1, :cond_72

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 18
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    const v0, 0x7f0a0214

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/widget/ImageView;

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$300(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_61

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    move-object v1, v0

    .line 42
    check-cast v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 44
    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 46
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 48
    invoke-static {v2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I

    .line 51
    move-result v2

    .line 52
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getFlatGroupIndex(I)I

    .line 55
    move-result v0

    .line 56
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->toggleGroup(I)Z

    .line 59
    move-result v0

    .line 60
    if-eqz p1, :cond_49

    .line 62
    if-eqz v0, :cond_43

    .line 64
    const v0, 0x7f08026b

    .line 67
    goto :goto_46

    .line 68
    :cond_43
    const v0, 0x7f08026a

    .line 71
    :goto_46
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    :cond_49
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->val$parent:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 79
    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 82
    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 84
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 86
    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I

    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getFlatGroupIndex(I)I

    .line 93
    move-result v0

    .line 94
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 97
    goto :goto_72

    .line 98
    :cond_61
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 100
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$300(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    .line 103
    move-result-object p1

    .line 104
    const/4 v0, 0x0

    .line 105
    const/4 v1, -0x1

    .line 106
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 108
    invoke-static {v2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I

    .line 111
    move-result v2

    .line 112
    invoke-interface {p1, v0, v1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;->onGroupClick(Landroid/view/View;II)Z

    .line 115
    :cond_72
    :goto_72
    return-void
.end method
