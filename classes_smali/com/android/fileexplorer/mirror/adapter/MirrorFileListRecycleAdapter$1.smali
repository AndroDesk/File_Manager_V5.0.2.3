.class Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;
.super Ljava/lang/Object;
.source "MirrorFileListRecycleAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public clearChoiceItems()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;->clearChoiceItems()V

    .line 18
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->getCheckedDragFileInfos(I)Ljava/util/ArrayList;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public isItemSelected(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->isItemChecked(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->isValid()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    return v0
.end method

.method public onChoiceModeChange(IZ)V
    .registers 6

    .line 1
    const-string v0, "onChoiceModeChange mViewMode = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 9
    invoke-static {v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$000(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "FileListRecycleAdapter"

    .line 22
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 27
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$000(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)I

    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isSingleChoiceMode(I)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_5b

    .line 37
    const-string v0, "singleChoice"

    .line 39
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 44
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$100(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Ljava/util/HashSet;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 51
    if-eqz p2, :cond_55

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v2, "onChoiceModeChange positio = "

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, ", isChecked = "

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 83
    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$200(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;I)V

    .line 86
    :cond_55
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 88
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 91
    goto :goto_74

    .line 92
    :cond_5b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 94
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$000(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)I

    .line 97
    move-result v0

    .line 98
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(I)Z

    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_74

    .line 104
    if-eqz p2, :cond_6f

    .line 106
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 108
    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$200(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;I)V

    .line 111
    goto :goto_74

    .line 112
    :cond_6f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 114
    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$300(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;I)Z

    .line 117
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 119
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_85

    .line 125
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 127
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;->onChoiceModeChange(IZ)V

    .line 134
    :cond_85
    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onDrop(Landroid/view/DragEvent;I)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_16

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    .line 18
    :cond_11
    return-void
.end method

.method public onItemDoubleClick(Landroid/view/View;III)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;->onItemDoubleClick(Landroid/view/View;III)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemLongClick(Landroid/view/View;I)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public onRightClick(Landroid/view/View;IFF)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;->onRightClick(Landroid/view/View;IFF)V

    .line 18
    :cond_11
    return-void
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter$1;->this$0:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;->access$400(Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;)Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onStartDrag(Landroid/view/DragEvent;I)V

    .line 18
    :cond_11
    return-void
.end method

.method public processHover(IZ)V
    .registers 3

    return-void
.end method
