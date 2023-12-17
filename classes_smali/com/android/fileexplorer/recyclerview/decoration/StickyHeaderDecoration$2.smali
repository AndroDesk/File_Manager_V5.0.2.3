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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->val$parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    if-eqz p1, :cond_76

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f032f82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$300(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    move-result-object v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {v2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getFlatGroupIndex(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->toggleGroup(I)Z

    move-result v0

    if-eqz p1, :cond_4d

    if-eqz v0, :cond_47

    const v0, 0x7f08026b

    goto :goto_4a

    :cond_47
    const v0, 0x7f08026a

    :goto_4a
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4d
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->val$parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getFlatGroupIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    goto :goto_76

    :cond_65
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$300(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$2;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {v2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;->onGroupClick(Landroid/view/View;II)Z

    :cond_76
    :goto_76
    return-void
.end method
