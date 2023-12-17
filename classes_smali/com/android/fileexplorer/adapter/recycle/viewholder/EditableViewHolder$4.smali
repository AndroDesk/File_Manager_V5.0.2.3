.class Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;
.super Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;
.source "EditableViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;Ljava/lang/String;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 3
    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;->val$position:I

    .line 5
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public handleDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z
    .registers 5

    .line 1
    const-string v0, "handleDrop dragTag = "

    .line 3
    const-string v1, ", position = "

    .line 5
    invoke-static {v0, p2, v1}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    const-string v0, "Drag_EditableViewHolder"

    .line 24
    invoke-static {v0, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 29
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;->val$position:I

    .line 31
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->processDrop(Landroid/view/DragEvent;I)Z

    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public handleHover(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->processHover(Z)V

    .line 6
    return-void
.end method

.method public processLocation(FF)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->processLocation(FF)V

    .line 4
    return-void
.end method

.method public startDragReal(Landroid/view/DragEvent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->startDragReal(Landroid/view/DragEvent;)V

    .line 4
    return-void
.end method
