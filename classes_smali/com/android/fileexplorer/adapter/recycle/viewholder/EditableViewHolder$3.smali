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
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->val$position:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 1
    const-string v0, "Drag_EditableViewHolder"

    .line 3
    const-string v1, "onLongClick"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 10
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 12
    if-eqz v0, :cond_25

    .line 14
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->isValid()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_25

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 22
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 24
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->val$position:I

    .line 26
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemLongClick(Landroid/view/View;I)Z

    .line 29
    move-result p1

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 32
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;->val$position:I

    .line 34
    invoke-static {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->access$200(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    :goto_26
    return p1
.end method
