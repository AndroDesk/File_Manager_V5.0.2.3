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
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->access$400(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->access$400(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 23
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 25
    invoke-static {v2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    .line 28
    move-result-object v2

    .line 29
    const v3, 0x7f0a038e

    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 38
    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 40
    invoke-static {v3}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    .line 43
    move-result-object v3

    .line 44
    const v4, 0x7f0a0214

    .line 47
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroid/widget/ImageView;

    .line 53
    if-eqz v2, :cond_61

    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_61

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 64
    move-result p1

    .line 65
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 67
    iget-object v4, v4, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 69
    invoke-static {v4}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 76
    move-result v4

    .line 77
    iget-object v5, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 79
    iget-object v5, v5, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 81
    iget v5, v5, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    .line 83
    sub-int/2addr v4, v5

    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 87
    move-result v5

    .line 88
    sub-int/2addr v4, v5

    .line 89
    int-to-float v4, v4

    .line 90
    cmpl-float p1, p1, v4

    .line 92
    if-ltz p1, :cond_61

    .line 94
    invoke-virtual {v2}, Landroid/view/View;->callOnClick()Z

    .line 97
    return v1

    .line 98
    :cond_61
    instance-of p1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 100
    if-eqz p1, :cond_be

    .line 102
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 104
    iget-object p1, p1, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 106
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$300(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    .line 109
    move-result-object p1

    .line 110
    if-nez p1, :cond_a9

    .line 112
    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 114
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 116
    iget-object p1, p1, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 118
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I

    .line 121
    move-result p1

    .line 122
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getFlatGroupIndex(I)I

    .line 125
    move-result p1

    .line 126
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->toggleGroup(I)Z

    .line 129
    move-result p1

    .line 130
    if-eqz v3, :cond_8f

    .line 132
    if-eqz p1, :cond_89

    .line 134
    const p1, 0x7f08026b

    .line 137
    goto :goto_8c

    .line 138
    :cond_89
    const p1, 0x7f08026a

    .line 141
    :goto_8c
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :cond_8f
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 146
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->access$400(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 153
    move-result-object p1

    .line 154
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 156
    iget-object v1, v1, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 158
    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I

    .line 161
    move-result v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getFlatGroupIndex(I)I

    .line 165
    move-result v0

    .line 166
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 169
    goto :goto_be

    .line 170
    :cond_a9
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 172
    iget-object p1, p1, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 174
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$300(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    .line 177
    move-result-object p1

    .line 178
    const/4 v0, 0x0

    .line 179
    const/4 v1, -0x1

    .line 180
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;->this$1:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;

    .line 182
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 184
    invoke-static {v2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$100(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)I

    .line 187
    move-result v2

    .line 188
    invoke-interface {p1, v0, v1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;->onGroupClick(Landroid/view/View;II)Z

    .line 191
    :cond_be
    :goto_be
    const/4 p1, 0x1

    .line 192
    return p1
.end method
