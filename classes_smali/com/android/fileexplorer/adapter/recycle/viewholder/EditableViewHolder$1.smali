.class Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;
.super Ljava/lang/Object;
.source "EditableViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;->val$position:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 5
    instance-of p1, p1, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 7
    if-eqz p1, :cond_37

    .line 9
    const-string p1, "mCheckBox onClick isChecked = "

    .line 11
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 17
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->access$000(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;)Landroid/widget/CheckBox;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const-string v0, "Drag_EditableViewHolder"

    .line 34
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    .line 39
    iget-object v0, p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 41
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 43
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;->val$position:I

    .line 45
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->access$000(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;)Landroid/widget/CheckBox;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 52
    move-result p1

    .line 53
    invoke-interface {v0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->onChoiceModeChange(IZ)V

    .line 56
    :cond_37
    return-void
.end method
