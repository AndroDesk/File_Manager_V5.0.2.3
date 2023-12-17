.class Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MirrorEditableViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

.field public final synthetic val$itemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->val$itemView:Landroid/view/View;

    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_33

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->access$200(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    .line 16
    if-eqz v0, :cond_33

    .line 18
    const-string v0, "MirrorEditableViewHolder"

    .line 20
    const-string v1, "onSingleTapUp: right click"

    .line 22
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 27
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->access$300(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->val$itemView:Landroid/view/View;

    .line 35
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 37
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 40
    move-result v2

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 44
    move-result v3

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 48
    move-result p1

    .line 49
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;->onRightClick(Landroid/view/View;IFF)V

    .line 52
    :cond_33
    const/4 p1, 0x1

    .line 53
    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    const-string v0, "MirrorEditableViewHolder"

    .line 3
    const-string v1, "onDoubleTap"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p1, v0, :cond_1b

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->val$itemView:Landroid/view/View;

    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 22
    move-result v1

    .line 23
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->access$100(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Landroid/view/View;I)Z

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1b
    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    const-string v0, "MirrorEditableViewHolder"

    .line 3
    const-string v1, "onSingleTapUp"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p1, v0, :cond_26

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->access$000(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 20
    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->val$itemView:Landroid/view/View;

    .line 23
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 25
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 32
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 35
    move-result v4

    .line 36
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    .line 39
    :cond_26
    return v0
.end method
