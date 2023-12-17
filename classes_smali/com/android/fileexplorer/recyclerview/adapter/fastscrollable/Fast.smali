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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;-><init>(Ljava/util/List;)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getUnflattenedPosition(I)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/apptag/FileItemGroup;

    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance p1, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;

    invoke-direct {p1}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;->setSortTime(J)V

    return-object p1
.end method

.method public getDataPositionByDrag(IIFI)I
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemCount()I

    move-result p1

    int-to-float p2, p1

    mul-float/2addr p2, p3

    float-to-int p2, p2

    add-int/lit8 p1, p1, -0x1

    const/4 p3, 0x0

    invoke-static {p2, p3, p1}, La/b;->q(III)I

    move-result p1

    return p1
.end method
