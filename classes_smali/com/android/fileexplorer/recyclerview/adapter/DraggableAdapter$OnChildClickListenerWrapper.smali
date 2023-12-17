.class Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;
.super Ljava/lang/Object;
.source "DraggableAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnChildClickListenerWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;

.field private wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;)V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public onChildClick(Landroid/view/View;III)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->hasWrappedCallback()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;->onChildClick(Landroid/view/View;III)V

    .line 12
    :cond_b
    return-void
.end method

.method public onChildLongClick(Landroid/view/View;III)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->getCheckedDragFileInfos()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/cloud/util/CloudFileUtils;->getSupportDragFileInfos(Ljava/util/List;)Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2a

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;

    .line 19
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isChoiceModeOnBeforeLongClick()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2a

    .line 25
    const v1, 0x7f0a014f

    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 34
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;

    .line 36
    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->getDragInfo(Landroid/view/View;)Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->startDrag(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;Ljava/util/List;)V

    .line 43
    :cond_2a
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->hasWrappedCallback()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_37

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 51
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;->onChildLongClick(Landroid/view/View;III)Z

    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_37
    const/4 p1, 0x1

    .line 57
    return p1
.end method

.method public setWrapped(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 3
    return-void
.end method
