.class public Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;
.super Ljava/lang/Object;
.source "ChildCheckController.java"


# instance fields
.field private childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

.field private expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    .line 8
    return-void
.end method


# virtual methods
.method public checkAll()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 4
    iget-object v1, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1b

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 14
    iget-object v1, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->checkAll()V

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    .line 30
    if-eqz v0, :cond_23

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;->updateAllChildrenCheckState(Z)V

    .line 36
    :cond_23
    return-void
.end method

.method public checkChild(ZII)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 5
    if-eqz v0, :cond_3a

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    if-gt v0, p2, :cond_d

    .line 13
    goto :goto_3a

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 16
    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 18
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 24
    invoke-virtual {v0, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    .line 27
    move-result v1

    .line 28
    if-eq v1, p1, :cond_1f

    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 v1, 0x0

    .line 33
    :goto_20
    invoke-virtual {v0, p3, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->checkChild(IZ)V

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    .line 38
    if-eqz v0, :cond_3a

    .line 40
    if-eqz v1, :cond_3a

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 44
    iget-object v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    .line 46
    iget-boolean v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    .line 48
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3a

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    .line 56
    invoke-interface {v0, p2, p3, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;->updateChildrenCheckState(IIZ)V

    .line 59
    :cond_3a
    :goto_3a
    return-void
.end method

.method public checkGroupAll(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 11
    if-eqz v0, :cond_20

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 15
    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 23
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->checkAll()V

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    .line 28
    if-eqz p1, :cond_20

    .line 30
    invoke-interface {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;->updateGroupCheckState()V

    .line 33
    :cond_20
    return-void
.end method

.method public clearAll()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 5
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1c

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 15
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 17
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 23
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->clearSelections()V

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_2

    .line 29
    :cond_1c
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    .line 31
    if-eqz v1, :cond_23

    .line 33
    invoke-interface {v1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;->updateAllChildrenCheckState(Z)V

    .line 36
    :cond_23
    return-void
.end method

.method public clearGroupAll(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 11
    if-eqz v0, :cond_20

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 15
    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 23
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->clearSelections()V

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->childrenUpdateListener:Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;

    .line 28
    if-eqz p1, :cond_20

    .line 30
    invoke-interface {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnChildrenCheckStateChangedListener;->updateGroupCheckState()V

    .line 33
    :cond_20
    return-void
.end method

.method public getCheckedItem()Ljava/util/List;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_7
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 10
    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_45

    .line 18
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 20
    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 22
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    instance-of v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 28
    if-eqz v3, :cond_42

    .line 30
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 32
    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 34
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 40
    move v4, v1

    .line 41
    :goto_28
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 44
    move-result v5

    .line 45
    if-ge v4, v5, :cond_42

    .line 47
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_3f

    .line 53
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 56
    move-result-object v5

    .line 57
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    .line 66
    goto :goto_28

    .line 67
    :cond_42
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_7

    .line 70
    :cond_45
    return-object v0
.end method

.method public getCheckedItemCount()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 5
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v0, v2, :cond_2b

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 15
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 17
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    instance-of v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 23
    if-eqz v2, :cond_28

    .line 25
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 27
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 29
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 35
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->getCheckedItemCount()I

    .line 38
    move-result v2

    .line 39
    add-int/2addr v2, v1

    .line 40
    move v1, v2

    .line 41
    :cond_28
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_2

    .line 44
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_7
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 10
    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_4b

    .line 18
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 20
    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 22
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    instance-of v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 28
    if-eqz v3, :cond_48

    .line 30
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 32
    iget-object v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 34
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 40
    move v4, v1

    .line 41
    :goto_28
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 44
    move-result v5

    .line 45
    if-ge v4, v5, :cond_48

    .line 47
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_45

    .line 53
    invoke-static {v2, v4}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    .line 56
    move-result-wide v5

    .line 57
    iget-object v7, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 59
    invoke-virtual {v7, v5, v6}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedChildIndex(J)I

    .line 62
    move-result v5

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_45
    add-int/lit8 v4, v4, 0x1

    .line 72
    goto :goto_28

    .line 73
    :cond_48
    add-int/lit8 v2, v2, 0x1

    .line 75
    goto :goto_7

    .line 76
    :cond_4b
    return-object v0
.end method

.method public isCheckAll()Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 5
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ge v1, v2, :cond_2d

    .line 14
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 16
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 18
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    instance-of v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 24
    if-eqz v2, :cond_2a

    .line 26
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 28
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 30
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 36
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->getCheckedStatus()I

    .line 39
    move-result v2

    .line 40
    if-eq v2, v3, :cond_2a

    .line 42
    return v0

    .line 43
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_2d
    return v3
.end method

.method public isChildChecked(II)Z
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_d

    goto :goto_1c

    .line 5
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 6
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    iget v1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 3
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p1

    return p1
.end method

.method public isClearAll()Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 5
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ge v1, v2, :cond_2d

    .line 14
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 16
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 18
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    instance-of v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 24
    if-eqz v2, :cond_2a

    .line 26
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 28
    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 30
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 36
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->getCheckedStatus()I

    .line 39
    move-result v2

    .line 40
    if-eq v2, v3, :cond_2a

    .line 42
    return v0

    .line 43
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_2d
    return v3
.end method

.method public isGroupCheckAll(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1f

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/ChildCheckController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 16
    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 24
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->getCheckedStatus()I

    .line 27
    move-result p1

    .line 28
    if-eq p1, v1, :cond_1f

    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :cond_1f
    return v1
.end method
