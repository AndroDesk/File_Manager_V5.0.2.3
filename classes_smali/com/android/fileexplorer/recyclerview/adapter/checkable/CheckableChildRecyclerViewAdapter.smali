.class public Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;
.super Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;
.source "CheckableChildRecyclerViewAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;
.implements Lcom/android/fileexplorer/fragment/ItemTouchAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;,
        Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;,
        Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "G:",
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup<",
        "TC;>;>",
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter<",
        "TC;TG;>;",
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;",
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;",
        "Lcom/android/fileexplorer/fragment/ItemTouchAdapter;"
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_MAP:Ljava/lang/String; = "child_check_controller_checked_state_map"

.field public static final CHOICE_MODE_CUSTOM:I = 0x3

.field public static final CHOICE_MODE_MODAL:I = 0x2

.field public static final CHOICE_MODE_NORMAL:I = 0x1

.field public static final CHOICE_MODE_SINGLE:I = 0x4

.field public static final REFRESH_MODE_DIRECT:I = 0x2

.field public static final REFRESH_MODE_STANDARD:I = 0x1

.field public static final VIEW_MODE:I


# instance fields
.field private final DRAG_ANIMATION_DURATION:I

.field private actionModeChangeListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;

.field private childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

.field private childClickListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter<",
            "TC;TG;>.OnChildClick",
            "ListenerWrapper;"
        }
    .end annotation
.end field

.field private choiceActionMode:Landroid/view/ActionMode;

.field private choiceMode:I

.field private choiceSingleMode:I

.field private isFromCategoryPage:Z

.field private mChoiceModeOnBeforeLongClick:Z

.field private mIsSelected:Z

.field private mModeChangedListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;

.field private mPadChildItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

.field public mViewMode:I

.field private multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter<",
            "TC;TG;>.MultiChoiceModeWrapper;"
        }
    .end annotation
.end field

.field private refreshMode:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TG;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mViewMode:I

    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    .line 10
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->refreshMode:I

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceSingleMode:I

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    .line 21
    const/16 p1, 0x12c

    .line 23
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->DRAG_ANIMATION_DURATION:I

    .line 25
    new-instance p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p1, p0, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;)V

    .line 31
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childClickListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;

    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mChoiceModeOnBeforeLongClick:Z

    .line 36
    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    .line 39
    new-instance p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 41
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 43
    invoke-direct {p1, v0, p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;)V

    .line 46
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 48
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroid/view/ActionMode;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 3
    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->notifyItemOnScreenChanged()V

    .line 4
    return-void
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mChoiceModeOnBeforeLongClick:Z

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isFromCategoryPage:Z

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mModeChangedListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;

    .line 3
    return-object p0
.end method

.method private notifyItemOnScreenChanged()V
    .registers 6

    const-string v0, "notifyItemOnScreenChanged"

    .line 1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->refreshMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_45

    .line 3
    :goto_b
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_6f

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    .line 7
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroupExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getChildViewType(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_35

    goto :goto_42

    .line 9
    :cond_35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "view_update_type_checkbox"

    .line 10
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0, v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 12
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6f

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroupExpanded(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 15
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedFirstChildIndex(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 16
    :cond_6f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private notifyItemOnScreenChanged(I)V
    .registers 6

    .line 17
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->refreshMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    const/4 v0, 0x0

    .line 18
    :goto_6
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 21
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    if-ne v2, p1, :cond_37

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "view_update_type_checkbox"

    .line 24
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {p0, v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 26
    :cond_3a
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3d
    return-void
.end method

.method private onChildCheckStateChanged(IIZ)V
    .registers 6

    .line 1
    :goto_0
    if-ge p1, p2, :cond_1e

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemViewType(I)I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;

    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/OnCheckStateChangedListener;

    .line 15
    if-eqz v1, :cond_1b

    .line 17
    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/OnCheckStateChangedListener;

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1, p1, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/OnCheckStateChangedListener;->onCheckChange(Landroidx/recyclerview/widget/RecyclerView$b0;IZ)V

    .line 28
    :cond_1b
    add-int/lit8 p1, p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1e
    return-void
.end method

.method private saveCategoryOrder()V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_c
    if-ge v2, v1, :cond_27

    .line 15
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    .line 17
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 23
    iget-object v3, v3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    add-int/lit8 v3, v1, -0x1

    .line 30
    if-eq v2, v3, :cond_24

    .line 32
    const/16 v3, 0x2c

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_c

    .line 40
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/android/fileexplorer/util/CategoryUtil;->saveAllCategoriesToSP(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public checkAll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->checkAll()V

    .line 6
    return-void
.end method

.method public chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 7
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

    .line 1
    const/4 p2, 0x1

    .line 2
    new-array p3, p2, [Landroid/view/View;

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    const/4 p4, 0x0

    .line 7
    aput-object p1, p3, p4

    .line 9
    invoke-static {p3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 16
    move-result-object p1

    .line 17
    new-array p3, p2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 19
    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 21
    aput-object v0, p3, p4

    .line 23
    const/high16 v0, 0x3f800000  # 1.0f

    .line 25
    invoke-interface {p1, v0, p3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 28
    move-result-object p1

    .line 29
    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    .line 31
    new-instance p3, Lmiuix/animation/base/AnimConfig;

    .line 33
    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 36
    const-wide/16 v0, 0x12c

    .line 38
    invoke-virtual {p3, v0, v1}, Lmiuix/animation/base/AnimConfig;->setMinDuration(J)Lmiuix/animation/base/AnimConfig;

    .line 41
    move-result-object p3

    .line 42
    aput-object p3, p2, p4

    .line 44
    invoke-interface {p1, p2}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 47
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public clearAll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->clearAll()V

    .line 6
    return-void
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 8

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array v0, p1, [Landroid/view/View;

    .line 4
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 16
    move-result-object v0

    .line 17
    new-array v1, p1, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 19
    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 21
    aput-object v3, v1, v2

    .line 23
    const/high16 v3, 0x3f800000  # 1.0f

    .line 25
    invoke-interface {v0, v3, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 28
    move-result-object v0

    .line 29
    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    .line 31
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 33
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 36
    const-wide/16 v3, 0x12c

    .line 38
    invoke-virtual {v1, v3, v4}, Lmiuix/animation/base/AnimConfig;->setMinDuration(J)Lmiuix/animation/base/AnimConfig;

    .line 41
    move-result-object v1

    .line 42
    aput-object v1, p1, v2

    .line 44
    invoke-interface {v0, p1}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isIsSelected()Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_35

    .line 53
    return-void

    .line 54
    :cond_35
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 59
    return-void
.end method

.method public enableLongPressToUnCheck()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 3
    return-object v0
.end method

.method public getCheckedItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->getCheckedItemCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCheckedItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->getCheckedItem()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getChildViewType(I)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getExpandableGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getUnFlatPos(I)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getChildViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;I)I

    move-result p1

    return p1
.end method

.method public getChildViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITG;I)I"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getDragFlags()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public isAllItemsChecked()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isCheckAll()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isChoiceModeOnBeforeLongClick()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mChoiceModeOnBeforeLongClick:Z

    .line 3
    return v0
.end method

.method public isGroupAllItemsChecked(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isGroupCheckAll(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isInSelectionMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isIsSelected()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mIsSelected:Z

    .line 3
    return v0
.end method

.method public isSingleMode()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceSingleMode:I

    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    return-void
.end method

.method public onMove(II)V
    .registers 7

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    array-length v0, v0

    .line 4
    if-ge p1, p2, :cond_14

    .line 6
    sub-int v1, p1, v0

    .line 8
    :goto_7
    sub-int v2, p2, v0

    .line 10
    if-ge v1, v2, :cond_24

    .line 12
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    .line 14
    add-int/lit8 v3, v1, 0x1

    .line 16
    invoke-static {v2, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 19
    move v1, v3

    .line 20
    goto :goto_7

    .line 21
    :cond_14
    sub-int v1, p1, v0

    .line 23
    :goto_16
    sub-int v2, p2, v0

    .line 25
    if-le v1, v2, :cond_24

    .line 27
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    .line 29
    add-int/lit8 v3, v1, -0x1

    .line 31
    invoke-static {v2, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 36
    goto :goto_16

    .line 37
    :cond_24
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 40
    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->saveCategoryOrder()V

    .line 43
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    .line 45
    sub-int/2addr p2, v0

    .line 46
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 52
    iget-boolean p1, p1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setSelected(Z)V

    .line 57
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_16

    .line 3
    const-string v0, "child_check_controller_checked_state_map"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_16

    .line 12
    :cond_b
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 20
    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 5
    iget-object v1, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    const-string v1, "child_check_controller_checked_state_map"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 15
    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 10
    if-eqz p2, :cond_23

    .line 12
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 17
    move-result-object p2

    .line 18
    const-wide/16 v0, 0x12c

    .line 20
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 23
    move-result-object p2

    .line 24
    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;

    .line 26
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 29
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 36
    :cond_23
    return-void
.end method

.method public setActionModeChangeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->actionModeChangeListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;

    .line 3
    return-void
.end method

.method public setChildChecked(ZII)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_2b

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 8
    if-nez v0, :cond_2b

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->actionModeChangeListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;

    .line 12
    if-eqz v0, :cond_16

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 16
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;->onStartActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 22
    goto :goto_20

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 33
    :goto_20
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 35
    if-nez v0, :cond_2b

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 39
    if-eqz v0, :cond_2b

    .line 41
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 44
    :cond_2b
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 46
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->checkChild(ZII)V

    .line 49
    return-void
.end method

.method public setChoiceMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    .line 3
    return-void
.end method

.method public setChoiceSingleMode(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 p1, 0x4

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 p1, -0x1

    .line 6
    :goto_5
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceSingleMode:I

    .line 8
    return-void
.end method

.method public setFromCategoryPage(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isFromCategoryPage:Z

    .line 3
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 14
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->setWrapped(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 17
    return-void
.end method

.method public setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childClickListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->setWrapped(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    .line 6
    return-void
.end method

.method public setOnModeChangedListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mModeChangedListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;

    .line 3
    return-void
.end method

.method public setPadItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setRefreshMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->refreshMode:I

    .line 3
    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mIsSelected:Z

    .line 3
    return-void
.end method

.method public setViewMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mViewMode:I

    .line 3
    return-void
.end method

.method public toggleCheckAll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isCheckAll()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->clearAll()V

    .line 14
    goto :goto_13

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 17
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->checkAll()V

    .line 20
    :goto_13
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_24

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 37
    :cond_24
    return-void
.end method

.method public toggleGroupCheckAll(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isGroupCheckAll(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->clearGroupAll(I)V

    .line 14
    goto :goto_13

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->checkGroupAll(I)V

    .line 20
    :goto_13
    return-void
.end method

.method public updateAllChildrenCheckState(Z)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_e

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 8
    if-eqz v0, :cond_e

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 12
    invoke-virtual {v1, v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 15
    :cond_e
    return-void
.end method

.method public updateCheckState()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    .line 8
    return-void
.end method

.method public updateChildrenCheckState(IIZ)V
    .registers 5

    .line 1
    iget p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p3, v0, :cond_20

    .line 6
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 8
    if-nez p3, :cond_20

    .line 10
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->actionModeChangeListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;

    .line 12
    if-eqz p3, :cond_16

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 16
    invoke-interface {p3, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;->onStartActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 19
    move-result-object p3

    .line 20
    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 22
    goto :goto_20

    .line 23
    :cond_16
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 27
    invoke-virtual {p3, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 30
    move-result-object p3

    .line 31
    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 33
    :cond_20
    :goto_20
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 35
    invoke-virtual {p3, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedChildIndex(II)I

    .line 38
    move-result p1

    .line 39
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 41
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 43
    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->notifyItemOnScreenChanged(I)V

    .line 49
    return-void
.end method

.method public updateChoiceState()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_13

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 8
    if-nez v0, :cond_13

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 23
    return-void
.end method

.method public updateGroupCheckState()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_20

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 8
    if-nez v0, :cond_20

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->actionModeChangeListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;

    .line 12
    if-eqz v0, :cond_16

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 16
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;->onStartActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 22
    goto :goto_20

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 33
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    .line 35
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method
