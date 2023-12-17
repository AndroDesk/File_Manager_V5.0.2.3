.class public Lcom/android/fileexplorer/recyclerview/adapter/fastscrollable/Fast;
.super Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;
.source "Fast.java"

# interfaces
.implements Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;
.implements Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        "Lcom/android/fileexplorer/apptag/FileItemGroup;",
        ">;",
        "Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;",
        "Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    .line 4
    return-void
.end method


# virtual methods
.method public computeScrollOffset(II)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public computeScrollPositionAndOffset(IIF)[I
    .registers 4

    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public computeScrollRange(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getCapsuleContent(I)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 19
    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 24
    move-result-wide v0

    .line 25
    new-instance p1, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;

    .line 27
    invoke-direct {p1}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;-><init>()V

    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;->setSortTime(J)V

    .line 33
    return-object p1
.end method

.method public getDataPositionByDrag(IIFI)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemCount()I

    .line 4
    move-result p1

    .line 5
    int-to-float p2, p1

    .line 6
    mul-float/2addr p2, p3

    .line 7
    float-to-int p2, p2

    .line 8
    add-int/lit8 p1, p1, -0x1

    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-static {p2, p3, p1}, La/b;->q(III)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method
