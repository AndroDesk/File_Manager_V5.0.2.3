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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->access$200(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    if-eqz v0, :cond_33

    const-string v0, "MirrorEditableViewHolder"

    const-string v1, "onSingleTapUp: right click"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->access$300(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->val$itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;->onRightClick(Landroid/view/View;IFF)V

    :cond_33
    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "MirrorEditableViewHolder"

    const-string v1, "onDoubleTap"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->access$100(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Landroid/view/View;I)Z

    move-result p1

    return p1

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

    const-string v0, "MirrorEditableViewHolder"

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_26

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->access$000(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    move-result-object p1

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->val$itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v4

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    :cond_26
    return v0
.end method
