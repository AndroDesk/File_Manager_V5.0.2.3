.class public interface abstract Lmiuix/navigator/draganddrop/NavigatorDragListener;
.super Ljava/lang/Object;
.source "NavigatorDragListener.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onBindDragPlaceholder(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
.end method

.method public onDragHover(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

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
