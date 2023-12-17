.class public Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;
.super Ljava/lang/Object;
.source "ChildCheckController.java"


# instance fields
.field private childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

.field private expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    return-void
.end method


# virtual methods
.method public checkAll()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v1, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v1, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->checkAll()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;->updateAllChildrenCheckState(Z)V

    :cond_23
    return-void
.end method

.method public checkChild(ZII)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_d

    goto :goto_3a

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    invoke-virtual {v0, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result v1

    if-eq v1, p1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    invoke-virtual {v0, p3, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->checkChild(IZ)V

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    if-eqz v0, :cond_3a

    if-eqz v1, :cond_3a

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget-boolean v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    invoke-interface {v0, p2, p3, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;->updateChildrenCheckState(IIZ)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public checkGroupAll(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->checkAll()V

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    if-eqz p1, :cond_20

    invoke-interface {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;->updateGroupCheckState()V

    :cond_20
    return-void
.end method

.method public clearAll()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->clearSelections()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    if-eqz v1, :cond_23

    invoke-interface {v1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;->updateAllChildrenCheckState(Z)V

    :cond_23
    return-void
.end method

.method public clearGroupAll(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->clearSelections()V

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    if-eqz p1, :cond_20

    invoke-interface {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;->updateGroupCheckState()V

    :cond_20
    return-void
.end method

.method public getCheckedItem()Ljava/util/List;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    move v4, v1

    :goto_28
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v5

    if-ge v4, v5, :cond_42

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_45
    return-object v0
.end method

.method public getCheckedItemCount()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2b

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->getCheckedItemCount()I

    move-result v2

    add-int/2addr v2, v1

    move v1, v2

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2b
    return v1
.end method

.method public getCheckedPositions()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    move v4, v1

    :goto_28
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v5

    if-ge v4, v5, :cond_48

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-static {v2, v4}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v7, v5, v6}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedChildIndex(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_4b
    return-object v0
.end method

.method public isCheckAll()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2d

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->getCheckedStatus()I

    move-result v2

    if-eq v2, v3, :cond_2a

    return v0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2d
    return v3
.end method

.method public isChildChecked(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_d

    goto :goto_1c

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public isChildChecked(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    iget v1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p1

    return p1
.end method

.method public isClearAll()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2d

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->getCheckedStatus()I

    move-result v2

    if-eq v2, v3, :cond_2a

    return v0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2d
    return v3
.end method

.method public isGroupCheckAll(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->getCheckedStatus()I

    move-result p1

    if-eq p1, v1, :cond_1f

    const/4 p1, 0x0

    return p1

    :cond_1f
    return v1
.end method
