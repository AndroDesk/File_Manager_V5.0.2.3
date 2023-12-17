.class public Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;
.super Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;
.source "ExpandableRecyclerViewAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/ExpandCollapseListener;
.implements Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "G:",
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup<",
        "TC;>;>",
        "Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter<",
        "TG;>;",
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/ExpandCollapseListener;",
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;"
    }
.end annotation


# static fields
.field private static final EXPAND_STATE_KEY_MAP:Ljava/lang/String; = "expandable_recyclerview_adapter_expand_state_key_map"

.field private static final EXPAND_STATE_VALUE_MAP:Ljava/lang/String; = "expandable_recyclerview_adapter_expand_state_value_map"


# instance fields
.field private childClickListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

.field private expandCollapseController:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController<",
            "TC;>;"
        }
    .end annotation
.end field

.field private expandCollapseListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/GroupExpandCollapseListener;

.field public expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList<",
            "TC;>;"
        }
    .end annotation
.end field

.field private groupClickListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

.field public mExpandable:Z


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

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TG;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;-><init>(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->mExpandable:Z

    .line 4
    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-direct {v0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;-><init>(Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 5
    new-instance p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;

    invoke-direct {p1, v0, p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/ExpandCollapseListener;)V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseController:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->lambda$setListener$0(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->childClickListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 3
    return-object p0
.end method

.method private synthetic lambda$setListener$0(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 13
    if-gez v1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->childClickListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 18
    if-eqz v2, :cond_18

    .line 20
    iget v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 22
    invoke-interface {v2, p2, p1, v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;->onChildClick(Landroid/view/View;III)V

    .line 25
    :cond_18
    return-void
.end method


# virtual methods
.method public addChildItemViewDelegate(ILcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate<",
            "TC;TG;>;)",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter<",
            "TC;TG;>;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addChildItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate<",
            "TC;TG;>;)",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter<",
            "TC;TG;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->addDelegate(ILcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    return-object p0
.end method

.method public addGroupItemViewDelegate(ILcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate<",
            "TC;TG;>;)",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter<",
            "TC;TG;>;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addGroupItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate<",
            "TC;TG;>;)",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter<",
            "TC;TG;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->addDelegate(ILcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    return-object p0
.end method

.method public addItemViewDelegate(ILcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
            "TG;>;)",
            "Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter<",
            "TG;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addItemViewDelegate(Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
            "TG;>;)",
            "Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter<",
            "TG;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public collapseGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseController:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->collapseGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V

    .line 6
    return-void
.end method

.method public expandGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseController:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V

    .line 6
    return-void
.end method

.method public getFlatGroupIndex(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedGroupIndex(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getGroupPos(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 6
    move-result-object p1

    .line 7
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 9
    return p1
.end method

.method public getGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 5
    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getVisibleItemCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 6
    move-result-object p1

    .line 7
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    .line 9
    return p1
.end method

.method public getUnFlatPos(I)[I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [I

    .line 10
    iget v1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 12
    const/4 v2, 0x0

    .line 13
    aput v1, v0, v2

    .line 15
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 17
    const/4 v1, 0x1

    .line 18
    aput p1, v0, v1

    .line 20
    return-object v0
.end method

.method public isChild(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public isGroup(I)Z
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return p1
.end method

.method public isGroupExpanded(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseController:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->isGroupExpanded(I)Z

    move-result p1

    return p1
.end method

.method public isGroupExpanded(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseController:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->isGroupExpanded(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    iget v2, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getExpandableGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    move-result-object v2

    .line 5
    instance-of v3, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;

    if-eqz v3, :cond_2a

    .line 6
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v4, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget-boolean v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 7
    check-cast v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;

    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;->onBindGroupViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;IZ)V

    goto :goto_3d

    .line 8
    :cond_2a
    instance-of v3, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    if-eqz v3, :cond_36

    .line 9
    check-cast v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    iget v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V

    goto :goto_3d

    :cond_36
    const-string p1, "ExpandableRecyclerViewAdapter onBindViewHolder"

    const-string p2, "Unknown state"

    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-void
.end method

.method public onGroupClick(Landroid/view/View;II)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->groupClickListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;->onGroupClick(Landroid/view/View;II)Z

    .line 8
    :cond_7
    iget-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->mExpandable:Z

    .line 10
    if-eqz p1, :cond_19

    .line 12
    const-string p1, "最近tab页"

    .line 14
    const-string p3, "最近tab页_折叠"

    .line 16
    invoke-static {p1, p3}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseController:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;

    .line 21
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->toggleGroup(I)Z

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public onGroupCollapsed(II)V
    .registers 4

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 6
    if-lez p2, :cond_25

    .line 8
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/GroupExpandCollapseListener;

    .line 13
    if-eqz p1, :cond_25

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 20
    move-result-object p1

    .line 21
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 23
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/GroupExpandCollapseListener;

    .line 25
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 35
    invoke-interface {p2, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/GroupExpandCollapseListener;->onGroupCollapsed(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V

    .line 38
    :cond_25
    return-void
.end method

.method public onGroupExpanded(II)V
    .registers 4

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 6
    if-lez p2, :cond_25

    .line 8
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 11
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/GroupExpandCollapseListener;

    .line 13
    if-eqz p2, :cond_25

    .line 15
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 17
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 20
    move-result-object p1

    .line 21
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 23
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/GroupExpandCollapseListener;

    .line 25
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroups()Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 35
    invoke-interface {p2, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/GroupExpandCollapseListener;->onGroupExpanded(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V

    .line 38
    :cond_25
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    if-eqz p1, :cond_3e

    .line 3
    const-string v0, "expandable_recyclerview_adapter_expand_state_key_map"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    const-string v2, "expandable_recyclerview_adapter_expand_state_value_map"

    .line 11
    if-nez v1, :cond_13

    .line 13
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_13

    .line 19
    goto :goto_3e

    .line 20
    :cond_13
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    .line 27
    move-result-object p1

    .line 28
    if-eqz v0, :cond_3e

    .line 30
    if-nez p1, :cond_20

    .line 32
    goto :goto_3e

    .line 33
    :cond_20
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 35
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 37
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 40
    iput-object v2, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    .line 42
    const/4 v1, 0x0

    .line 43
    :goto_2a
    array-length v2, p1

    .line 44
    if-ge v1, v2, :cond_3b

    .line 46
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 48
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    .line 50
    aget v3, v0, v1

    .line 52
    aget-boolean v4, p1, v1

    .line 54
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_2a

    .line 60
    :cond_3b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 63
    :cond_3e
    :goto_3e
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 8
    move-result v0

    .line 9
    new-array v1, v0, [Z

    .line 11
    new-array v2, v0, [I

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_d
    if-ge v3, v0, :cond_26

    .line 16
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 18
    iget-object v4, v4, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    .line 20
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 23
    move-result v4

    .line 24
    iget-object v5, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 26
    iget-object v5, v5, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    .line 28
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 31
    move-result v5

    .line 32
    aput v4, v2, v3

    .line 34
    aput-boolean v5, v1, v3

    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_d

    .line 39
    :cond_26
    const-string v0, "expandable_recyclerview_adapter_expand_state_key_map"

    .line 41
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 44
    const-string v0, "expandable_recyclerview_adapter_expand_state_value_map"

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 49
    return-void
.end method

.method public removeAllDelegate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->removeAllDelegate()V

    .line 6
    return-void
.end method

.method public setAllGroupExpand()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 8
    return-void
.end method

.method public setExpandable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->mExpandable:Z

    .line 3
    return-void
.end method

.method public setListener(Landroid/view/ViewGroup;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V
    .registers 8

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->isEnabled(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroup(I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_18

    .line 14
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 16
    new-instance p3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$1;

    .line 18
    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$1;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;)V

    .line 21
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    goto :goto_3b

    .line 25
    :cond_18
    invoke-virtual {p0, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isChild(I)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_38

    .line 31
    sget-object p1, Lcom/android/fileexplorer/util/DebounceHelper;->Companion:Lcom/android/fileexplorer/util/DebounceHelper$Companion;

    .line 33
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 35
    const-wide/16 v0, 0x1f4

    .line 37
    new-instance v2, Lcom/android/fileexplorer/adapter/a;

    .line 39
    const/4 v3, 0x6

    .line 40
    invoke-direct {v2, v3, p0, p2}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p1, p3, v0, v1, v2}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 48
    new-instance p3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$2;

    .line 50
    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter$2;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;)V

    .line 53
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 56
    goto :goto_3b

    .line 57
    :cond_38
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->setListener(Landroid/view/ViewGroup;Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V

    .line 60
    :goto_3b
    return-void
.end method

.method public setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->childClickListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;

    .line 3
    return-void
.end method

.method public setOnGroupClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->groupClickListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;

    .line 3
    return-void
.end method

.method public setOnGroupExpandCollapseListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/GroupExpandCollapseListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseListener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/GroupExpandCollapseListener;

    .line 3
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter$OnItemClickListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string v0, "Unsupported"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public sync()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->sync()V

    .line 6
    return-void
.end method

.method public toggleGroup(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseController:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->toggleGroup(I)Z

    move-result p1

    return p1
.end method

.method public toggleGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandCollapseController:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->toggleGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z

    move-result p1

    return p1
.end method
