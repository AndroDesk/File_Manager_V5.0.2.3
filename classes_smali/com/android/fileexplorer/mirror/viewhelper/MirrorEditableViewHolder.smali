.class public abstract Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
.source "MirrorEditableViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;",
        "V:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;",
        ">",
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MESSAGE:I = 0x457

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "MirrorEditableViewHolder"


# instance fields
.field public mChecked:Z

.field private mCountDownTask:Ljava/lang/Runnable;

.field public mDragHelper:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

.field public mDragListener:Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    new-instance p2, Landroidx/activity/b;

    .line 6
    const/16 v0, 0x10

    .line 8
    invoke-direct {p2, p0, v0}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 11
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mCountDownTask:Ljava/lang/Runnable;

    .line 13
    new-instance p2, Landroid/view/GestureDetector;

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;

    .line 21
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Landroid/view/View;)V

    .line 24
    invoke-direct {p2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 27
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;

    .line 30
    invoke-interface {v0, p2}, Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;->setGestureDetector(Landroid/view/GestureDetector;)V

    .line 33
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$2;

    .line 35
    const-string v1, "MIRROR_ITEM_"

    .line 37
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$2;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Ljava/lang/String;)V

    .line 55
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mDragListener:Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;

    .line 57
    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Landroid/view/View;ZLandroid/view/GestureDetector;)V

    .line 63
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mDragHelper:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 65
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->lambda$new$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Landroid/view/View;I)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->performOnClick(Landroid/view/View;I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 3
    return-object p0
.end method

.method private isSelected(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 3
    instance-of v1, v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    .line 9
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;->isItemSelected(I)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method private synthetic lambda$new$0()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 3
    if-eqz v0, :cond_20

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isFolder()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_20

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 13
    instance-of v1, v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    .line 15
    if-eqz v1, :cond_20

    .line 17
    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 29
    move-result v4

    .line 30
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;->onItemDoubleClick(Landroid/view/View;III)Z

    .line 33
    :cond_20
    return-void
.end method

.method private performOnClick(Landroid/view/View;I)Z
    .registers 7

    .line 1
    const-string v0, "MirrorEditableViewHolder"

    .line 3
    const-string v1, "onClick"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_12

    .line 13
    const-string p1, "mListener is null, return"

    .line 15
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return v2

    .line 19
    :cond_12
    instance-of v0, v1, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    .line 21
    if-eqz v0, :cond_20

    .line 23
    check-cast v1, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 29
    move-result v3

    .line 30
    invoke-interface {v1, p1, p2, v0, v3}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;->onItemDoubleClick(Landroid/view/View;III)Z

    .line 33
    :cond_20
    return v2
.end method


# virtual methods
.method public abstract getDragInfo()Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public isChecked()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

    .line 3
    return v0
.end method

.method public isChoiceMode(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZZ)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isFolder()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mDragListener:Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;

    if-eqz p1, :cond_13

    .line 4
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto :goto_19

    .line 5
    :cond_13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 6
    :goto_19
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->isSelected(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->updateItemSelected(Z)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

    return-void
.end method

.method public onUpdateEditable(Z)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->updateItemSelected(Z)V

    .line 4
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onUpdateEditable(Z)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public processDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onDrop(Landroid/view/DragEvent;I)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public processHover(IZ)V
    .registers 7

    .line 1
    const-string v0, "MirrorEditableViewHolder"

    .line 3
    if-eqz p2, :cond_11

    .line 5
    const-string v1, "processHover isHover isFolder"

    .line 7
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mCountDownTask:Ljava/lang/Runnable;

    .line 12
    const-wide/16 v2, 0x320

    .line 14
    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mCountDownTask:Ljava/lang/Runnable;

    .line 20
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 23
    :goto_16
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 25
    check-cast v1, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;

    .line 27
    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->isHighLight()Z

    .line 30
    move-result v1

    .line 31
    if-eq p2, v1, :cond_4a

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v2, "processHover: "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    const-string v2, " pos: "

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 54
    move-result v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 67
    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;

    .line 69
    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setHighLight(Z)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->updateItemSelected(Z)V

    .line 75
    :cond_4a
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 77
    instance-of v1, v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    .line 79
    if-eqz v1, :cond_58

    .line 81
    if-gez p1, :cond_53

    .line 83
    return-void

    .line 84
    :cond_53
    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    .line 86
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;->processHover(IZ)V

    .line 89
    :cond_58
    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

    .line 3
    return-void
.end method

.method public triggerDrag(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->canDrag()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_19

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 9
    if-eqz v0, :cond_19

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mDragHelper:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->getDragInfo()Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;

    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 19
    invoke-interface {v2, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->getCheckedDragFileInfos(I)Ljava/util/ArrayList;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->startDrag(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;Ljava/util/ArrayList;)V

    .line 26
    :cond_19
    return-void
.end method

.method public updateItemSelected(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_25

    .line 5
    const v1, 0x7f0a0277

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 14
    const v2, 0x7f0a0186

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v0, :cond_1e

    .line 23
    if-eqz p1, :cond_1a

    .line 25
    const/4 v2, 0x0

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v2, 0x4

    .line 28
    :goto_1b
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    :cond_1e
    instance-of v0, v1, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;

    .line 33
    if-eqz v0, :cond_25

    .line 35
    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    .line 38
    :cond_25
    return-void
.end method
