.class public interface abstract Lmiuix/navigator/draganddrop/NavigatorDragListener;
.super Ljava/lang/Object;
.source "NavigatorDragListener.java"


# virtual methods
.method public abstract onBindDragPlaceholder(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
.end method

.method public onDragHover(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 14
    :cond_d
    return-void
.end method

.method public abstract onDragStart(Landroid/view/DragEvent;Lmiuix/navigator/draganddrop/DragStartFeedback;)V
.end method

.method public abstract onDropAccept(Landroid/view/DragEvent;Landroidx/recyclerview/widget/RecyclerView$b0;)Z
.end method

.method public abstract onDropInsert(Landroid/view/DragEvent;Lmiuix/navigator/adapter/CategoryAdapter;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DragEvent;",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "+",
            "Lmiuix/navigator/adapter/CategoryAdapter$Item;",
            ">;I)Z"
        }
    .end annotation
.end method
