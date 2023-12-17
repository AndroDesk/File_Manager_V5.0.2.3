.class public interface abstract Lcom/android/fileexplorer/fragment/ItemTouchAdapter;
.super Ljava/lang/Object;
.source "ItemTouchAdapter.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;II)",
            "Landroidx/recyclerview/widget/RecyclerView$b0;"
        }
    .end annotation
.end method

.method public abstract clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V
.end method

.method public abstract getDragFlags()I
.end method

.method public abstract onMove(II)V
.end method

.method public abstract onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end method
