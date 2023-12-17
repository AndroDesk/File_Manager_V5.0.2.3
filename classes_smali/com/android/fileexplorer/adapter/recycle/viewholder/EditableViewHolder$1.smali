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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    iget-object p1, p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    instance-of p1, p1, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    if-eqz p1, :cond_37

    const-string p1, "mCheckBox onClick isChecked = "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->access$000(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Drag_EditableViewHolder"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;

    iget-object v0, p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;->val$position:I

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->access$000(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->onChoiceModeChange(IZ)V

    :cond_37
    return-void
.end method
