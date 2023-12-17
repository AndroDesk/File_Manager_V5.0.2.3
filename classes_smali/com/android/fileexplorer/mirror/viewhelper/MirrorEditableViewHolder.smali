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
.field private static final DOUBLE_TAP_MESSAGE:I

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final TAG:Ljava/lang/String; = "MirrorEditableViewHolder"


# instance fields
.field public mChecked:Z

.field private mCountDownTask:Ljava/lang/Runnable;

.field public mDragHelper:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

.field public mDragListener:Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x929c1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->DOUBLE_TAP_MESSAGE:I

    const v0, 0x92cba

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

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

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    new-instance p2, Landroidx/activity/b;

    const/16 v0, 0x10

    invoke-direct {p2, p0, v0}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mCountDownTask:Ljava/lang/Runnable;

    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$1;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Landroid/view/View;)V

    invoke-direct {p2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object v0, p1

    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;

    invoke-interface {v0, p2}, Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;->setGestureDetector(Landroid/view/GestureDetector;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$2;

    const-string v1, "MIRROR_ITEM_"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder$2;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mDragListener:Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;

    new-instance v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;-><init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Landroid/view/View;ZLandroid/view/GestureDetector;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mDragHelper:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->lambda$new$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;Landroid/view/View;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->performOnClick(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    return-object p0
.end method

.method private isSelected(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    instance-of v1, v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;->isItemSelected(I)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$0()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    instance-of v1, v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    if-eqz v1, :cond_20

    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;->onItemDoubleClick(Landroid/view/View;III)Z

    :cond_20
    return-void
.end method

.method private performOnClick(Landroid/view/View;I)Z
    .registers 7

    const-string v0, "MirrorEditableViewHolder"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    const/4 v2, 0x1

    if-nez v1, :cond_12

    const-string p1, "mListener is null, return"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_12
    instance-of v0, v1, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    if-eqz v0, :cond_20

    check-cast v1, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v3

    invoke-interface {v1, p1, p2, v0, v3}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;->onItemDoubleClick(Landroid/view/View;III)Z

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

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isFolder()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mDragListener:Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;

    if-eqz p1, :cond_13

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto :goto_19

    :cond_13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :goto_19
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->isSelected(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->updateItemSelected(Z)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->onBind(Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;IZZ)V

    return-void
.end method

.method public onUpdateEditable(Z)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->updateItemSelected(Z)V

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onUpdateEditable(Z)Z

    move-result p1

    return p1
.end method

.method public processDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onDrop(Landroid/view/DragEvent;I)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public processHover(IZ)V
    .registers 7

    const-string v0, "MirrorEditableViewHolder"

    if-eqz p2, :cond_11

    const-string v1, "processHover isHover isFolder"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mCountDownTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    goto :goto_16

    :cond_11
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mCountDownTask:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    :goto_16
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->isHighLight()Z

    move-result v1

    if-eq p2, v1, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processHover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->setHighLight(Z)V

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->updateItemSelected(Z)V

    :cond_4a
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    instance-of v1, v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    if-eqz v1, :cond_58

    if-gez p1, :cond_53

    return-void

    :cond_53
    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;->processHover(IZ)V

    :cond_58
    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mChecked:Z

    return-void
.end method

.method public triggerDrag(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->canDrag()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->mDragHelper:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableViewHolder;->getDragInfo()Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    invoke-interface {v2, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->getCheckedDragFileInfos(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;->startDrag(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragSourceInfo;Ljava/util/ArrayList;)V

    :cond_19
    return-void
.end method

.method public updateItemSelected(Z)V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz v0, :cond_2d

    const v1, 0x7f032fe1

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x7f032c10

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_26

    if-eqz p1, :cond_22

    const/4 v2, 0x0

    goto :goto_23

    :cond_22
    const/4 v2, 0x4

    :goto_23
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    instance-of v0, v1, Lcom/android/fileexplorer/mirror/view/MirrorStateTextView;

    if-eqz v0, :cond_2d

    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_2d
    return-void
.end method
