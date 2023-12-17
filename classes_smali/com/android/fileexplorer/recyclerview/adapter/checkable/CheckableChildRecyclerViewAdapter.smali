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

.field public static final CHOICE_MODE_CUSTOM:I

.field public static final CHOICE_MODE_MODAL:I

.field public static final CHOICE_MODE_NORMAL:I

.field public static final CHOICE_MODE_SINGLE:I

.field public static final REFRESH_MODE_DIRECT:I

.field public static final REFRESH_MODE_STANDARD:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->CHOICE_MODE_CUSTOM:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->CHOICE_MODE_MODAL:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->CHOICE_MODE_NORMAL:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->CHOICE_MODE_SINGLE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->REFRESH_MODE_DIRECT:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->REFRESH_MODE_STANDARD:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TG;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mViewMode:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->refreshMode:I

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceSingleMode:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    const/16 p1, 0x12c

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->DRAG_ANIMATION_DURATION:I

    new-instance p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;)V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childClickListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mChoiceModeOnBeforeLongClick:Z

    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    new-instance p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-direct {p1, v0, p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;)V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroid/view/ActionMode;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->notifyItemOnScreenChanged()V

    return-void
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mChoiceModeOnBeforeLongClick:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isFromCategoryPage:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mModeChangedListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;

    return-object p0
.end method

.method private notifyItemOnScreenChanged()V
    .registers 6

    const-string v0, "notifyItemOnScreenChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->refreshMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_45

    :goto_b
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_6f

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroupExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getChildViewType(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_35

    goto :goto_42

    :cond_35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "view_update_type_checkbox"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6f

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroupExpanded(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedFirstChildIndex(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_6f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private notifyItemOnScreenChanged(I)V
    .registers 6

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->refreshMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3d

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    if-ne v2, p1, :cond_37

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_37

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "view_update_type_checkbox"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3a
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3d
    return-void
.end method

.method private onChildCheckStateChanged(IIZ)V
    .registers 6

    :goto_0
    if-ge p1, p2, :cond_1e

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemViewType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;

    move-result-object v0

    instance-of v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/OnCheckStateChangedListener;

    if-eqz v1, :cond_1b

    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/OnCheckStateChangedListener;

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v1

    invoke-interface {v0, v1, p1, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/OnCheckStateChangedListener;->onCheckChange(Landroidx/recyclerview/widget/RecyclerView$b0;IZ)V

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1e
    return-void
.end method

.method private saveCategoryOrder()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_27

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    iget-object v3, v3, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_24

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/CategoryUtil;->saveAllCategoriesToSP(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkAll()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->checkAll()V

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

    const/4 p2, 0x1

    new-array p3, p2, [Landroid/view/View;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-static {p3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p3, p2, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v0, p3, p4

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-interface {p1, v0, p3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    new-instance p3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p3, v0, v1}, Lmiuix/animation/base/AnimConfig;->setMinDuration(J)Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    aput-object p3, p2, p4

    invoke-interface {p1, p2}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public clearAll()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->clearAll()V

    return-void
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 8

    const/4 p1, 0x1

    new-array v0, p1, [Landroid/view/View;

    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, p1, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v3, v1, v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-interface {v0, v3, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Lmiuix/animation/base/AnimConfig;->setMinDuration(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-interface {v0, p1}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isIsSelected()Z

    move-result p1

    if-eqz p1, :cond_35

    return-void

    :cond_35
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public enableLongPressToUnCheck()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getCheckedItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->getCheckedItemCount()I

    move-result v0

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

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->getCheckedItem()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewType(I)I
    .registers 5

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

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isCheckAll()Z

    move-result v0

    return v0
.end method

.method public isChoiceModeOnBeforeLongClick()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mChoiceModeOnBeforeLongClick:Z

    return v0
.end method

.method public isGroupAllItemsChecked(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isGroupCheckAll(I)Z

    move-result p1

    return p1
.end method

.method public isInSelectionMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isIsSelected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mIsSelected:Z

    return v0
.end method

.method public isSingleMode()Z
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceSingleMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onMove(II)V
    .registers 7

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    array-length v0, v0

    if-ge p1, p2, :cond_14

    sub-int v1, p1, v0

    :goto_7
    sub-int v2, p2, v0

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v1, v3

    goto :goto_7

    :cond_14
    sub-int v1, p1, v0

    :goto_16
    sub-int v2, p2, v0

    if-le v1, v2, :cond_24

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    :cond_24
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->saveCategoryOrder()V

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    sub-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    iget-boolean p1, p1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setSelected(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_16

    const-string v0, "child_check_controller_checked_state_map"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_16

    :cond_b
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v1, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "child_check_controller_checked_state_map"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    if-eqz p2, :cond_23

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$1;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_23
    return-void
.end method

.method public setActionModeChangeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->actionModeChangeListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;

    return-void
.end method

.method public setChildChecked(ZII)V
    .registers 6

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->actionModeChangeListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;->onStartActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    goto :goto_20

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    :goto_20
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_2b
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->checkChild(ZII)V

    return-void
.end method

.method public setChoiceMode(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    return-void
.end method

.method public setChoiceSingleMode(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_5

    :cond_4
    const/4 p1, -0x1

    :goto_5
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceSingleMode:I

    return-void
.end method

.method public setFromCategoryPage(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isFromCategoryPage:Z

    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->setWrapped(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    return-void
.end method

.method public setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childClickListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$OnChildClickListenerWrapper;->setWrapped(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    return-void
.end method

.method public setOnModeChangedListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mModeChangedListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;

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

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mPadChildItems:Ljava/util/List;

    return-void
.end method

.method public setRefreshMode(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->refreshMode:I

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mIsSelected:Z

    return-void
.end method

.method public setViewMode(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mViewMode:I

    return-void
.end method

.method public toggleCheckAll()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isCheckAll()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->clearAll()V

    goto :goto_13

    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->checkAll()V

    :goto_13
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_24
    return-void
.end method

.method public toggleGroupCheckAll(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->isGroupCheckAll(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->clearGroupAll(I)V

    goto :goto_13

    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->childCheckController:Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->checkGroupAll(I)V

    :goto_13
    return-void
.end method

.method public updateAllChildrenCheckState(Z)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    invoke-virtual {v1, v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    :cond_e
    return-void
.end method

.method public updateCheckState()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    return-void
.end method

.method public updateChildrenCheckState(IIZ)V
    .registers 5

    iget p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_20

    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    if-nez p3, :cond_20

    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->actionModeChangeListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;

    if-eqz p3, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    invoke-interface {p3, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;->onStartActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    goto :goto_20

    :cond_16
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    invoke-virtual {p3, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p3

    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    :cond_20
    :goto_20
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {p3, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedChildIndex(II)I

    move-result p1

    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->notifyItemOnScreenChanged(I)V

    return-void
.end method

.method public updateChoiceState()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    :cond_13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateGroupCheckState()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->actionModeChangeListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;->onStartActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    goto :goto_20

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->multiChoiceModeCallback:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->choiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
