.class Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;
.super Ljava/lang/Object;
.source "NewFileListRecycleAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChoiceItems()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->clearChoiceItems()V

    :cond_11
    return-void
.end method

.method public getCheckedDragFileInfos(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->getCheckedDragFileInfos(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public isItemSelected(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$500(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;I)Z

    move-result p1

    return p1
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->isValid()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public onChoiceModeChange(IZ)V
    .registers 6

    const-string v0, "onChoiceModeChange mViewMode = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$000(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileListRecycleAdapter"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$000(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)I

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isSingleChoiceMode(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "singleChoice"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$100(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p2, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChoiceModeChange positio = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isChecked = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$200(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;I)V

    :cond_55
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_74

    :cond_5b
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$000(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)I

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(I)Z

    move-result v0

    if-eqz v0, :cond_74

    if-eqz p2, :cond_6f

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$200(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;I)V

    goto :goto_74

    :cond_6f
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$300(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;I)Z

    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->onChoiceModeChange(IZ)V

    :cond_85
    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onDrop(Landroid/view/DragEvent;I)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$600(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {p1, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(I)Z

    goto :goto_26

    :cond_23
    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    :cond_37
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 6

    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p1, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_TIME:I

    invoke-virtual {v0, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(I)Z

    goto :goto_1e

    :cond_1b
    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_1e
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemLongClick(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 v1, 0x1

    :cond_33
    return v1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onStartDrag(Landroid/view/DragEvent;I)V

    :cond_11
    return-void
.end method
