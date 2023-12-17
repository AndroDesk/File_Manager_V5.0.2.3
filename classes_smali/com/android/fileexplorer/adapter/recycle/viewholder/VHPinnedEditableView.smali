.class public abstract Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedEditableView;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;
.source "VHPinnedEditableView.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/fileexplorer/model/group/FileGroupData;",
        ">",
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder<",
        "TT;>;",
        "Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-void
.end method


# virtual methods
.method public getPinnedPosition()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget v0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method
