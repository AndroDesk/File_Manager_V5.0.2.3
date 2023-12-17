.class public Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;
.super Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;
.source "CategoryAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;
.implements Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        "Lcom/android/fileexplorer/model/FileInfoGroup;",
        ">;",
        "Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;",
        "Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;"
    }
.end annotation


# static fields
.field public static final CAPSULE_STRING:I

.field public static final CAPSULE_TIME:I

.field private static final TAG:Ljava/lang/String; = "CategoryAdapter"


# instance fields
.field private mCapsuleStyle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;->CAPSULE_STRING:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;->CAPSULE_TIME:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;->mCapsuleStyle:I

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setFromCategoryPage(Z)V

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

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;->mCapsuleStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/view/indicator/model/FastScrollerStringCapsuleModel;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerStringCapsuleModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerStringCapsuleModel;->setContent(Ljava/lang/String;)V

    return-object v0

    :cond_24
    if-nez v0, :cond_41

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget p1, p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfoGroup;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfoGroup;->groupStartTime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance p1, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;

    invoke-direct {p1}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/view/indicator/model/FastScrollerTimeCapsuleModel;->setSortTime(J)V

    return-object p1

    :cond_41
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCheckedDragFileInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewType(ILcom/android/fileexplorer/model/FileInfoGroup;I)I
    .registers 9

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_42

    if-gez p3, :cond_14

    goto :goto_42

    :cond_14
    const/4 v0, 0x0

    :try_start_15
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_21

    move-object v0, v2

    goto :goto_2e

    :catch_21
    move-exception v2

    sget-object v3, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2e
    if-nez v0, :cond_31

    return v1

    :cond_31
    sget-boolean v1, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    if-eqz v1, :cond_3d

    invoke-static {v0}, Lcom/android/cloud/util/AdFileItemUtil;->isAd(Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 p1, 0x3

    return p1

    :cond_3d
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->getChildViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;I)I

    move-result p1

    return p1

    :cond_42
    :goto_42
    return v1
.end method

.method public bridge synthetic getChildViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;I)I
    .registers 4

    check-cast p2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;->getChildViewType(ILcom/android/fileexplorer/model/FileInfoGroup;I)I

    move-result p1

    return p1
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

.method public getDragInfo(Landroid/view/View;)Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;-><init>()V

    instance-of v1, p1, Lcom/android/fileexplorer/view/GridItemView;

    if-eqz v1, :cond_12

    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getStrokeView()Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    goto :goto_1a

    :cond_12
    check-cast p1, Lcom/android/fileexplorer/view/ListItemView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/ListItemView;->getStrokeView()Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    :goto_1a
    return-object v0
.end method

.method public isChild(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v1, 0x5

    if-eq p1, v1, :cond_e

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    const/4 v1, 0x3

    if-ne p1, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0
.end method

.method public setCapsuleStyle(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;->mCapsuleStyle:I

    return-void
.end method

.method public updateChildrenCheckState(IIZ)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->updateChildrenCheckState(IIZ)V

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedChildIndex(II)I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    if-eqz p3, :cond_18

    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isGroupAllItemsChecked(I)Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_27

    :cond_18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    goto :goto_27

    :catch_1c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;->TAG:Ljava/lang/String;

    const-string p2, "update group index error "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    return-void
.end method
