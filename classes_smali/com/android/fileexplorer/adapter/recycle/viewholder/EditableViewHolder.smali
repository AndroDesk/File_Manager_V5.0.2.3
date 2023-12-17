.class public abstract Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;
.source "EditableViewHolder.java"


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


# static fields
.field private static final TAG:Ljava/lang/String; = "Drag_EditableViewHolder"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field public mChecked:Z

.field public mDragHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    const p2, 0x1020001

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance p2, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-direct {p2, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mDragHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->setNeedHandleTouchOf(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;)Landroid/widget/CheckBox;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->performOnClick(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->triggerDrag(I)V

    return-void
.end method

.method private isSelected(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->isItemSelected(I)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method private performOnClick(Landroid/view/View;I)V
    .registers 6

    const-string v0, "Drag_EditableViewHolder"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    if-nez v1, :cond_11

    const-string p1, "mListener is null, return"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isFolder()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    goto :goto_54

    :cond_22
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isViewMode()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    goto :goto_54

    :cond_32
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isPickFolderMode()Z

    move-result p1

    if-nez p1, :cond_54

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    instance-of v0, p1, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    if-eqz v0, :cond_54

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->onChoiceModeChange(IZ)V

    :cond_54
    :goto_54
    return-void
.end method

.method private triggerDrag(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerDrag position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag_EditableViewHolder"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->canDrag()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mDragHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->getDragInfo()Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    invoke-interface {v2, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->getCheckedDragFileInfos(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->startDrag(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;Ljava/util/List;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public abstract getDragInfo()Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public hasAnimationStarted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mStarted:Z

    return v0
.end method

.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    return v0
.end method

.method public isChoiceMode(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onAnimationStart(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mStarted:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x3f4ccccd  # 0.8f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_24

    :cond_1f
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    :goto_24
    return-void
.end method

.method public onAnimationStop(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mStarted:Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onClearAnimation()V

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method public onAnimationUpdate(ZF)V
    .registers 5

    if-nez p1, :cond_6

    const/high16 p1, 0x3f800000  # 1.0f

    sub-float p2, p1, p2

    :cond_6
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x3f4ccccd  # 0.8f

    const v1, 0x3e4ccccd  # 0.2f

    mul-float/2addr p2, v1

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onBind(Ljava/lang/Object;IZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZZ)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isViewMode()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_25

    :cond_10
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->isSelected(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p3, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;

    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;

    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;

    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isViewMode()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setLongClickable(Z)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;

    const-string p4, "ITEM_"

    invoke-static {p4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p0, p4, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;Ljava/lang/String;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public onClearAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onUpdateEditable(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 p1, 0x1

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

.method public processHover(Z)V
    .registers 2

    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    return-void
.end method
