.class Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "CloudFileListRecyclerAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChoiceItems()V
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

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

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

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

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0, p1}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$500(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;I)Z

    move-result p1

    return p1
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

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

    iget-object v1, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v1}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$000(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudFileListRecyclerAdapter"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$000(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)I

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isSingleChoiceMode(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "singleChoice"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$100(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Ljava/util/HashSet;

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

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0, p1}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$200(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;I)V

    :cond_55
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_74

    :cond_5b
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$000(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)I

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(I)Z

    move-result v0

    if-eqz v0, :cond_74

    if-eqz p2, :cond_6f

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0, p1}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$200(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;I)V

    goto :goto_74

    :cond_6f
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0, p1}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$300(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;I)Z

    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->onChoiceModeChange(IZ)V

    :cond_85
    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

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
    .registers 6

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    :cond_11
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemLongClick(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;->this$0:Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;

    invoke-static {v0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onStartDrag(Landroid/view/DragEvent;I)V

    :cond_11
    return-void
.end method
