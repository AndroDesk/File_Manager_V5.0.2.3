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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;)V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onChildClick(Landroid/view/View;III)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->hasWrappedCallback()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;->onChildClick(Landroid/view/View;III)V

    :cond_b
    return-void
.end method

.method public onChildLongClick(Landroid/view/View;III)Z
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->getCheckedDragFileInfos()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cloud/util/CloudFileUtils;->getSupportDragFileInfos(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isChoiceModeOnBeforeLongClick()Z

    move-result v1

    if-eqz v1, :cond_2a

    const v1, 0x7f0a014f

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->this$0:Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;

    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->getDragInfo(Landroid/view/View;)Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->startDrag(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;Ljava/util/List;)V

    :cond_2a
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->hasWrappedCallback()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;->onChildLongClick(Landroid/view/View;III)Z

    move-result p1

    return p1

    :cond_37
    const/4 p1, 0x1

    return p1
.end method

.method public setWrapped(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->wrapped:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    return-void
.end method
