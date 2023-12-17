.class public Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;
.super Ljava/lang/Object;
.source "ExpandableListPosition.java"


# static fields
.field public static final ADCHILD:I = 0x3

.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childPos:I

.field public flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    sput-object v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static getRecycledOrCreate()Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_19

    .line 12
    sget-object v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 21
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_20

    .line 22
    invoke-direct {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->resetState()V

    .line 25
    return-object v1

    .line 26
    :cond_19
    :try_start_19
    new-instance v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 28
    invoke-direct {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;-><init>()V

    .line 31
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :catchall_20
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    .line 35
    throw v1
.end method

.method public static obtain(IIII)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->getRecycledOrCreate()Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 4
    move-result-object v0

    .line 5
    iput p0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    .line 7
    iput p1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 9
    iput p2, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 11
    iput p3, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->flatListPos:I

    .line 13
    return-object v0
.end method

.method public static obtainChildPosition(II)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, p1, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->obtain(IIII)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static obtainGroupPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, v1, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->obtain(IIII)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static obtainPosition(J)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;
    .registers 5

    .line 1
    const-wide v0, 0xffffffffL

    .line 6
    cmp-long v0, p0, v0

    .line 8
    if-nez v0, :cond_b

    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-static {}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->getRecycledOrCreate()Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    .line 19
    move-result v1

    .line 20
    iput v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 22
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne v1, v2, :cond_25

    .line 29
    iput v2, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    .line 31
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    .line 34
    move-result p0

    .line 35
    iput p0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 37
    goto :goto_28

    .line 38
    :cond_25
    const/4 p0, 0x2

    .line 39
    iput p0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    .line 41
    :goto_28
    return-object v0
.end method

.method private resetState()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 6
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->flatListPos:I

    .line 8
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_32

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_12

    .line 18
    goto :goto_32

    .line 19
    :cond_12
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 21
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 23
    iget v3, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 25
    if-eq v2, v3, :cond_1b

    .line 27
    return v1

    .line 28
    :cond_1b
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 30
    iget v3, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 32
    if-eq v2, v3, :cond_22

    .line 34
    return v1

    .line 35
    :cond_22
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->flatListPos:I

    .line 37
    iget v3, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->flatListPos:I

    .line 39
    if-eq v2, v3, :cond_29

    .line 41
    return v1

    .line 42
    :cond_29
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    .line 44
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    .line 46
    if-ne v2, p1, :cond_30

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v0, v1

    .line 50
    :goto_31
    return v0

    .line 51
    :cond_32
    :goto_32
    return v1
.end method

.method public getPackedPosition()J
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_e

    .line 6
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 8
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 10
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0

    .line 15
    :cond_e
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 17
    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    .line 20
    move-result-wide v0

    .line 21
    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->flatListPos:I

    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public recycle()V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x5

    .line 11
    if-ge v1, v2, :cond_11

    .line 13
    sget-object v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_11
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_13
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    .line 22
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "ExpandableListPosition{groupPos="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", childPos="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", flatListPos="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->flatListPos:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", type="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    .line 39
    const/16 v2, 0x7d

    .line 41
    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
