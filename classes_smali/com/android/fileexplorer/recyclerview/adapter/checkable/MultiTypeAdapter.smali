.class public Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;
.super Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;
.source "MultiTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "G:",
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup<",
        "TC;>;>",
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter<",
        "TC;TG;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TG;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    .line 4
    return-void
.end method


# virtual methods
.method public addChildItemViewDelegate(ILcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate<",
            "TC;TG;>;)",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter<",
            "TC;TG;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->addDelegate(ILcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    .line 6
    return-object p0
.end method

.method public addGroupItemViewDelegate(ILcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate<",
            "TC;TG;>;)",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter<",
            "TC;TG;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->addDelegate(ILcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    .line 6
    return-object p0
.end method

.method public getGroupViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITG;)I"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemViewType(I)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getItemViewType(I)I
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemViewType(I)I

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getExpandableGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 18
    iget v2, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v2, v3, :cond_1f

    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq v2, v0, :cond_1a

    .line 26
    return v2

    .line 27
    :cond_1a
    invoke-virtual {p0, p1, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->getGroupViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;)I

    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1f
    iget v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 34
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getChildViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;I)I

    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V
    .registers 4

    .line 2
    check-cast p1, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V
    .registers 8

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getExpandableGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 5
    iget v2, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_17

    goto :goto_22

    .line 6
    :cond_17
    invoke-virtual {p0, p2, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->getGroupViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;)I

    move-result v2

    goto :goto_22

    .line 7
    :cond_1c
    iget v2, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getChildViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;I)I

    move-result v2

    .line 8
    :goto_22
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;

    if-eqz v3, :cond_3e

    .line 10
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v4, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget-boolean v3, v3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 11
    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;

    invoke-virtual {v2, p1, v1, p2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;->onBindGroupViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;IZ)V

    goto :goto_51

    .line 12
    :cond_3e
    instance-of v3, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    if-eqz v3, :cond_4a

    .line 13
    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    iget v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    invoke-virtual {v2, p1, v1, p2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V

    goto :goto_51

    :cond_4a
    const-string p1, "MultiTypeAdapter onBindViewHolder"

    const-string p2, "Unknown state"

    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;ILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_60

    .line 15
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_60

    .line 16
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getExpandableGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;

    .line 18
    iget v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_26

    const/4 v2, 0x2

    if-eq v1, v2, :cond_21

    goto :goto_2c

    .line 19
    :cond_21
    invoke-virtual {p0, p2, v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->getGroupViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;)I

    move-result v1

    goto :goto_2c

    .line 20
    :cond_26
    iget v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    invoke-virtual {p0, p2, v4, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getChildViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;I)I

    move-result v1

    .line 21
    :goto_2c
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->mItemViewDelegateManager:Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;

    move-result-object v1

    .line 22
    instance-of v2, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;

    if-eqz v2, :cond_48

    .line 23
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, p3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget-boolean p3, p3, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v2, v0, p3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p3

    .line 24
    check-cast v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;

    invoke-virtual {v1, p1, v4, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;->onBindGroupViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;IZ)V

    goto :goto_5f

    .line 25
    :cond_48
    instance-of v2, v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    if-eqz v2, :cond_58

    .line 26
    move-object v2, v1

    check-cast v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    iget v6, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    move-object v3, p1

    move v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;IILjava/util/List;)V

    goto :goto_5f

    :cond_58
    const-string p1, "MultiTypeAdapter onBindViewHolder"

    const-string p2, "Unknown state"

    .line 27
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return-void

    .line 28
    :cond_60
    :goto_60
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;I)V

    return-void
.end method
