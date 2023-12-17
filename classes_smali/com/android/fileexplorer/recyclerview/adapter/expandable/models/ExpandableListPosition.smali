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

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRecycledOrCreate()Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    sget-object v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_20

    invoke-direct {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->resetState()V

    return-object v1

    :cond_19
    :try_start_19
    new-instance v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    invoke-direct {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static obtain(IIII)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->getRecycledOrCreate()Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object v0

    iput p0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    iput p1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iput p2, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    iput p3, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->flatListPos:I

    return-object v0
.end method

.method public static obtainChildPosition(II)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->obtain(IIII)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p0

    return-object p0
.end method

.method public static obtainGroupPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->obtain(IIII)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p0

    return-object p0
.end method

.method public static obtainPosition(J)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;
    .registers 5

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    :cond_b
    invoke-static {}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->getRecycledOrCreate()Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object v0

    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    iput v2, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result p0

    iput p0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    goto :goto_28

    :cond_25
    const/4 p0, 0x2

    iput p0, v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    :goto_28
    return-object v0
.end method

.method private resetState()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->flatListPos:I

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    :cond_12
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget v3, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    iget v3, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    if-eq v2, v3, :cond_22

    return v1

    :cond_22
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->flatListPos:I

    iget v3, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->flatListPos:I

    if-eq v2, v3, :cond_29

    return v1

    :cond_29
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    if-ne v2, p1, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    return v0

    :cond_32
    :goto_32
    return v1
.end method

.method public getPackedPosition()J
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    return-wide v0

    :cond_e
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->flatListPos:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    add-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_11

    sget-object v1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "ExpandableListPosition{groupPos="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", childPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->childPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flatListPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->flatListPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->type:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
