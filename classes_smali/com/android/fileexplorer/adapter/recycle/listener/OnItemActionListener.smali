.class public interface abstract Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;
.super Ljava/lang/Object;
.source "OnItemActionListener.java"


# virtual methods
.method public abstract getCheckedDragFileInfos(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isValid()Z
.end method

.method public abstract onDrop(Landroid/view/DragEvent;I)Z
.end method

.method public abstract onItemClick(Landroid/view/View;III)V
.end method

.method public abstract onItemLongClick(Landroid/view/View;I)Z
.end method

.method public abstract onStartDrag(Landroid/view/DragEvent;I)V
.end method
