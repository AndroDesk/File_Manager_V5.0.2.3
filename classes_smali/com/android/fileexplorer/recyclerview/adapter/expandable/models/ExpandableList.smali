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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private numberOfVisibleItemsInGroup(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->expandedGroupIndexes:Landroid/util/SparseBooleanArray;

    iget-boolean v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->defaultValue:Z

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result p1

    add-int/2addr p1, v1

    return p1

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

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    return-object p1
.end method

.method public getExpandableGroupItemCount(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)I
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result p1

    return p1
.end method

.method public getFlattenedChildIndex(II)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p1, :cond_c

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

    invoke-static {p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->obtainPosition(J)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedChildIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)I

    move-result p1

    return p1
.end method

.method public getFlattenedChildIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)I
    .registers 6

    iget v0, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_10

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

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedGroupIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getFlattenedFirstChildIndex(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;)I
    .registers 2

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

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v0, p1, :cond_12

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

    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v0, p1, :cond_e

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

    const/4 v0, 0x0

    move v2, p1

    move v1, v0

    :goto_3
    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v1, v3, :cond_25

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->numberOfVisibleItemsInGroup(I)I

    move-result v3

    if-nez v2, :cond_18

    const/4 v0, 0x2

    invoke-static {v0, v1, v4, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->obtain(IIII)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    return-object p1

    :cond_18
    if-ge v2, v3, :cond_21

    const/4 v0, 0x1

    sub-int/2addr v2, v0

    invoke-static {v0, v1, v2, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->obtain(IIII)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    return-object p1

    :cond_21
    sub-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_25
    const-string v1, "getUnflattenedPosition"

    const-string v2, "Unknown state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v0, v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->obtain(IIII)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    return-object p1
.end method

.method public getVisibleItemCount()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_12

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->numberOfVisibleItemsInGroup(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    return v1
.end method

.method public sync()V
    .registers 1

    return-void
.end method
