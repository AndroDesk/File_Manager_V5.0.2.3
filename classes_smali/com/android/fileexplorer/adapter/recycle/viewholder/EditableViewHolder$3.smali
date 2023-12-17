.class Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;
.super Ljava/lang/Object;
.source "EditableViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    const-string v0, "Drag_EditableViewHolder"

    const-string v1, "onLongClick"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->isValid()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemLongClick(Landroid/view/View;I)Z

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->val$position:I

    invoke-static {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->access$200(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    return p1
.end method
