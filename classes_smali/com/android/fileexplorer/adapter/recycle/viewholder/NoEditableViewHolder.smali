.class public abstract Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
.source "NoEditableViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    return-void
.end method


# virtual methods
.method public onBind(Ljava/lang/Object;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZZ)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setLongClickable(Z)V

    .line 10
    return-void
.end method
