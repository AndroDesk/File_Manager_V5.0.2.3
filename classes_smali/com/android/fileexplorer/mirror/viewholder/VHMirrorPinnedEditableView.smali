.class public abstract Lcom/android/fileexplorer/mirror/viewholder/VHMirrorPinnedEditableView;
.super Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;
.source "VHMirrorPinnedEditableView.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/fileexplorer/model/group/FileGroupData;",
        "V:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;",
        ">",
        "Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder<",
        "TT;TV;>;",
        "Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getPinnedPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    check-cast v0, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 7
    iget v0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, -0x1

    .line 11
    :goto_a
    return v0
.end method
