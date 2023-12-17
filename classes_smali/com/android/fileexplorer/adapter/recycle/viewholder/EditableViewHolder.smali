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
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    const p2, 0x1020001

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/widget/CheckBox;

    .line 13
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 19
    new-instance p2, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 21
    invoke-direct {p2, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;-><init>(Landroid/view/View;)V

    .line 24
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mDragHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->setNeedHandleTouchOf(Z)V

    .line 30
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;)Landroid/widget/CheckBox;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->performOnClick(Landroid/view/View;I)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->triggerDrag(I)V

    .line 4
    return-void
.end method

.method private isSelected(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 3
    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 9
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->isItemSelected(I)Z

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

.method private performOnClick(Landroid/view/View;I)V
    .registers 6

    .line 1
    const-string v0, "Drag_EditableViewHolder"

    .line 3
    const-string v1, "onClick"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 10
    if-nez v1, :cond_11

    .line 12
    const-string p1, "mListener is null, return"

    .line 14
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isFolder()Z

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_22

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 30
    move-result v2

    .line 31
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    .line 34
    goto :goto_54

    .line 35
    :cond_22
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isViewMode()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_32

    .line 41
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 46
    move-result v2

    .line 47
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    .line 50
    goto :goto_54

    .line 51
    :cond_32
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isPickFolderMode()Z

    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_54

    .line 57
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 59
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 62
    move-result v0

    .line 63
    xor-int/lit8 v0, v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 68
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 70
    instance-of v0, p1, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 72
    if-eqz v0, :cond_54

    .line 74
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 76
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 78
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 81
    move-result v0

    .line 82
    invoke-interface {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->onChoiceModeChange(IZ)V

    .line 85
    :cond_54
    :goto_54
    return-void
.end method

.method private triggerDrag(I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "triggerDrag position = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Drag_EditableViewHolder"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->canDrag()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2f

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 31
    if-eqz v0, :cond_2f

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mDragHelper:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 35
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->getDragInfo()Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;

    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 41
    invoke-interface {v2, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->getCheckedDragFileInfos(I)Ljava/util/ArrayList;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;->startDrag(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;Ljava/util/List;)V

    .line 48
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

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mStarted:Z

    .line 3
    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    .line 3
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

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mStarted:Z

    .line 4
    if-eqz p1, :cond_1f

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 20
    const v0, 0x3f4ccccd  # 0.8f

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 31
    goto :goto_24

    .line 32
    :cond_1f
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 37
    :goto_24
    return-void
.end method

.method public onAnimationStop(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mStarted:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->onClearAnimation()V

    .line 7
    if-nez p1, :cond_e

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_e
    return-void
.end method

.method public onAnimationUpdate(ZF)V
    .registers 5

    .line 1
    if-nez p1, :cond_6

    .line 3
    const/high16 p1, 0x3f800000  # 1.0f

    .line 5
    sub-float p2, p1, p2

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 14
    const v0, 0x3f4ccccd  # 0.8f

    .line 17
    const v1, 0x3e4ccccd  # 0.2f

    .line 20
    mul-float/2addr p2, v1

    .line 21
    add-float/2addr p2, v0

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 30
    return-void
.end method

.method public onBind(Ljava/lang/Object;IZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZZ)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isViewMode()Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_10

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 12
    const/4 p3, 0x0

    .line 13
    invoke-virtual {p1, p3}, Landroid/view/View;->setClickable(Z)V

    .line 16
    goto :goto_25

    .line 17
    :cond_10
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->isSelected(I)Z

    .line 20
    move-result p1

    .line 21
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    .line 23
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 25
    invoke-virtual {p3, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 30
    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;

    .line 32
    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V

    .line 35
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    :goto_25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 40
    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;

    .line 42
    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V

    .line 45
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 50
    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;

    .line 52
    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$3;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;I)V

    .line 55
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 58
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->isViewMode()Z

    .line 63
    move-result p3

    .line 64
    invoke-virtual {p1, p3}, Landroid/view/View;->setLongClickable(Z)V

    .line 67
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 69
    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;

    .line 71
    const-string p4, "ITEM_"

    .line 73
    invoke-static {p4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    move-result-object p4

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 80
    move-result v0

    .line 81
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p4

    .line 88
    invoke-direct {p3, p0, p4, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder$4;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;Ljava/lang/String;I)V

    .line 91
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 94
    return-void
.end method

.method public onClearAnimation()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 3
    const/high16 v1, 0x3f800000  # 1.0f

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 18
    return-void
.end method

.method public onUpdateEditable(Z)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 6
    const/4 p1, 0x1

    .line 7
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

.method public processHover(Z)V
    .registers 2

    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/EditableViewHolder;->mChecked:Z

    .line 3
    return-void
.end method
