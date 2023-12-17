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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;->val$position:I

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "handleDrop dragTag = "

    const-string v1, ", position = "

    invoke-static {v0, p2, v1}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Drag_EditableViewHolder"

    invoke-static {v0, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;->val$position:I

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->processDrop(Landroid/view/DragEvent;I)Z

    move-result p1

    return p1
.end method

.method public handleHover(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->processHover(Z)V

    return-void
.end method

.method public processLocation(FF)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->processLocation(FF)V

    return-void
.end method

.method public startDragReal(Landroid/view/DragEvent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->startDragReal(Landroid/view/DragEvent;)V

    return-void
.end method
