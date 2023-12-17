.class Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StickyHeaderDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->access$400(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->access$400(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {v2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f032e18

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {v3}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f032f82

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_69

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    iget-object v4, v4, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {v4}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    iget-object v5, v5, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    iget v5, v5, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_69

    invoke-virtual {v2}, Landroid/view/View;->callOnClick()Z

    return v1

    :cond_69
    instance-of p1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    if-eqz p1, :cond_c6

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    iget-object p1, p1, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$300(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    move-result-object p1

    if-nez p1, :cond_b1

    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    iget-object p1, p1, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getFlatGroupIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->toggleGroup(I)Z

    move-result p1

    if-eqz v3, :cond_97

    if-eqz p1, :cond_91

    const p1, 0x7f08026b

    goto :goto_94

    :cond_91
    const p1, 0x7f08026a

    :goto_94
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_97
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->access$400(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    iget-object v1, v1, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getFlatGroupIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    goto :goto_c6

    :cond_b1
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    iget-object p1, p1, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$300(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-static {v2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;->onGroupClick(Landroid/view/View;II)Z

    :cond_c6
    :goto_c6
    const/4 p1, 0x1

    return p1
.end method
