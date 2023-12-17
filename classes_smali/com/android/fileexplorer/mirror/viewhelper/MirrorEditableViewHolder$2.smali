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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$2;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z
    .registers 4

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$2;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->processDrop(Landroid/view/DragEvent;I)Z

    move-result p1

    return p1
.end method

.method public handleHover(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHover: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorEditableViewHolder"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$2;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->processHover(IZ)V

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
