.class public interface abstract Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;
.super Ljava/lang/Object;
.source "IEditRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getCheckedItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getEditableItemCount()I
.end method

.method public abstract isItemCheckable(I)Z
.end method

.method public abstract setActionModeState(Z)V
.end method

.method public abstract setCheckItemIds(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setIsPendingActionModeAnim(Z)V
.end method

.method public abstract updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
.end method
