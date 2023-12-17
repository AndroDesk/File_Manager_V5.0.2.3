.class public Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;
.super Ljava/lang/Object;
.source "ExpandCollapseController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private listener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/ExpandCollapseListener;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/ExpandCollapseListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList<",
            "TT;>;",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/ExpandCollapseListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->listener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/ExpandCollapseListener;

    .line 8
    return-void
.end method

.method private collapseGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->listener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/ExpandCollapseListener;

    if-eqz v0, :cond_29

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedGroupIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 4
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result p1

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/ExpandCollapseListener;->onGroupCollapsed(II)V

    :cond_29
    return-void
.end method

.method private expandGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->listener:Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/ExpandCollapseListener;

    if-eqz v0, :cond_28

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedGroupIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v2, v2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 4
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result p1

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/ExpandCollapseListener;->onGroupExpanded(II)V

    :cond_28
    return-void
.end method


# virtual methods
.method public collapseGroup(I)V
    .registers 5

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget v2, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget-boolean v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->collapseGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)V

    :cond_17
    return-void
.end method

.method public collapseGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V
    .registers 5

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedGroupIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget v2, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget-boolean v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 9
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->collapseGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)V

    :cond_1b
    return-void
.end method

.method public expandGroup(I)V
    .registers 5

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget v2, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget-boolean v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_17

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)V

    :cond_17
    return-void
.end method

.method public expandGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)V
    .registers 5

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedGroupIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget v2, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget-boolean v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 9
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)V

    :cond_1b
    return-void
.end method

.method public isGroupExpanded(I)Z
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget-boolean v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    return p1
.end method

.method public isGroupExpanded(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget-boolean v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    return p1
.end method

.method public toggleGroup(I)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget v2, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget-boolean v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->collapseGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)V

    goto :goto_1b

    .line 4
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)V

    :goto_1b
    return v0
.end method

.method public toggleGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)Z
    .registers 5

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedGroupIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    iget-object v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget v2, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget-boolean v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 8
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->collapseGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)V

    goto :goto_1f

    .line 9
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandCollapseController;->expandGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)V

    :goto_1f
    return v0
.end method
