.class public abstract Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;
.super Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;
.source "DraggableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "G:",
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup<",
        "TC;>;>",
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter<",
        "TC;TG;>;"
    }
.end annotation


# instance fields
.field private mChildClickListener:Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter<",
            "TC;TG;>.OnChildClick",
            "ListenerWrapper;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TG;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;-><init>(Ljava/util/List;)V

    .line 4
    new-instance p1, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, p0, v0}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$1;)V

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->mChildClickListener:Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;

    .line 12
    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public enableLongPressToUnCheck()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getCheckedDragFileInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getChildViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITG;I)I"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getChildViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;I)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public abstract getDragInfo(Landroid/view/View;)Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;
.end method

.method public onViewHolderCreated(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Landroid/view/View;I)V
    .registers 4

    .line 1
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 3
    invoke-direct {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;-><init>(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isChild(I)Z

    .line 9
    move-result p3

    .line 10
    if-eqz p3, :cond_f

    .line 12
    const/4 p3, 0x1

    .line 13
    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->setNeedHandleTouchOf(Z)V

    .line 16
    :cond_f
    const p3, 0x7f0a014f

    .line 19
    invoke-virtual {p2, p3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 22
    return-void
.end method

.method public setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->mChildClickListener:Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter$OnChildClickListenerWrapper;->setWrapped(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    .line 6
    return-void
.end method
