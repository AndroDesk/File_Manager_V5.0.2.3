.class Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$2;
.super Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;
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


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$2;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 3
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$2;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->processDrop(Landroid/view/DragEvent;I)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public handleHover(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "handleHover: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MirrorEditableViewHolder"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$2;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->processHover(IZ)V

    .line 32
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
