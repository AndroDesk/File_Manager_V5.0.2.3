.class public Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;
.super Ljava/lang/Object;
.source "ExpandableList.java"


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
.field public final defaultValue:Z

.field public expandedGroupIndexes:Landroid/util/SparseBooleanArray;

.field public groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup<",
            "TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 6
    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    .line 8
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 10
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    .line 15
    return-void
.end method

.method private numberOfVisibleItemsInGroup(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    .line 3
    iget-boolean v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_19

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 20
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 23
    move-result p1

    .line 24
    add-int/2addr p1, v1

    .line 25
    return p1

    .line 26
    :cond_19
    return v1
.end method


# virtual methods
.method public getExpandableGroup(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;",
            ")",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 3
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 11
    return-object p1
.end method

.method public getExpandableGroupItemCount(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 3
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public getFlattenedChildIndex(II)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p1, :cond_c

    .line 6
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->numberOfVisibleItemsInGroup(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public getFlattenedChildIndex(J)I
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->obtainPosition(J)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedChildIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)I

    move-result p1

    return p1
.end method

.method public getFlattenedChildIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)I
    .registers 6

    .line 3
    iget v0, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 4
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_10

    .line 5
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->numberOfVisibleItemsInGroup(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public getFlattenedFirstChildIndex(I)I
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedGroupIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getFlattenedFirstChildIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)I
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedGroupIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getFlattenedGroupIndex(I)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p1, :cond_c

    .line 3
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->numberOfVisibleItemsInGroup(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    return v1
.end method

.method public getFlattenedGroupIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;)I
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v0, p1, :cond_12

    .line 5
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->numberOfVisibleItemsInGroup(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    return v1
.end method

.method public getFlattenedGroupIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)I
    .registers 5

    .line 1
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v0, p1, :cond_e

    .line 2
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->numberOfVisibleItemsInGroup(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return v1
.end method

.method public getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v2, p1

    .line 3
    move v1, v0

    .line 4
    :goto_3
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 9
    move-result v3

    .line 10
    const/4 v4, -0x1

    .line 11
    if-ge v1, v3, :cond_25

    .line 13
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->numberOfVisibleItemsInGroup(I)I

    .line 16
    move-result v3

    .line 17
    if-nez v2, :cond_18

    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-static {v0, v1, v4, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->obtain(IIII)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_18
    if-ge v2, v3, :cond_21

    .line 27
    const/4 v0, 0x1

    .line 28
    sub-int/2addr v2, v0

    .line 29
    invoke-static {v0, v1, v2, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->obtain(IIII)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_21
    sub-int/2addr v2, v3

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_3

    .line 38
    :cond_25
    const-string v1, "getUnflattenedPosition"

    .line 40
    const-string v2, "Unknown state"

    .line 42
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {v4, v0, v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->obtain(IIII)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method public getVisibleItemCount()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_12

    .line 11
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->numberOfVisibleItemsInGroup(I)I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v1, v2

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_2

    .line 19
    :cond_12
    return v1
.end method

.method public sync()V
    .registers 1

    return-void
.end method
