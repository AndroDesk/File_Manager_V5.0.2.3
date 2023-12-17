.class public Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;
.super Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;
.source "RecentAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;
.implements Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        "Lcom/android/fileexplorer/apptag/FileItemGroup;",
        ">;",
        "Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;",
        "Lcom/android/fileexplorer/view/indicator/ScrollingCalculator;"
    }
.end annotation


# static fields
.field public static final CHILD_AD:I

.field public static final CHILD_DOC:I

.field public static final CHILD_DOC_HORIZONTAL:I

.field public static final CHILD_VIDEO:I

.field private static final TAG:Ljava/lang/String; = "RecentAdapter"

.field public static final TYPE_LIST:I


# instance fields
.field private mFromRecentSecondary:Z

.field private mIsFromAppCategory:Z

.field private mIsInstallWPS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->CHILD_AD:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->CHILD_DOC:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->CHILD_DOC_HORIZONTAL:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->CHILD_VIDEO:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->TYPE_LIST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;-><init>(Ljava/util/List;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mFromRecentSecondary:Z

    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsFromAppCategory:Z

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->setupViewDelegate(Landroid/content/Context;)V

    sget-object p1, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsInstallWPS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;-><init>(Ljava/util/List;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mFromRecentSecondary:Z

    iput-boolean p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsFromAppCategory:Z

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->setupViewDelegate(Landroid/content/Context;)V

    sget-object p1, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsInstallWPS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;-><init>(Ljava/util/List;)V

    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mFromRecentSecondary:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsFromAppCategory:Z

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->setupViewDelegate(Landroid/content/Context;)V

    sget-object p1, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsInstallWPS:Z

    return-void
.end method

.method private isCloudCachedDoc(Lcom/android/fileexplorer/dao/file/FileItem;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v0, :cond_1c

    invoke-static {p1}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    move-result-object v0

    sget-object v1, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    if-eq v0, v1, :cond_1c

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->isDoc(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method private isCloudVideo(Lcom/android/fileexplorer/dao/file/FileItem;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/android/cloud/bean/CloudFileItem;

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
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

    :try_start_0
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
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCheckedDragFileInfos()Ljava/util/List;
    .registers 4
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-object v1
.end method

.method public getChildViewType(ILcom/android/fileexplorer/apptag/FileItemGroup;I)I
    .registers 9

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_12

    goto :goto_51

    :cond_12
    const/4 v0, 0x0

    :try_start_13
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1f

    move-object v0, v2

    goto :goto_2c

    :catch_1f
    move-exception v2

    sget-object v3, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2c
    if-nez v0, :cond_2f

    return v1

    :cond_2f
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mViewMode:I

    const/4 v2, 0x6

    if-nez v1, :cond_45

    sget-boolean p1, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    if-eqz p1, :cond_43

    iget-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsFromAppCategory:Z

    if-nez p1, :cond_43

    invoke-static {v0}, Lcom/android/cloud/util/AdFileItemUtil;->isAd(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result p1

    if-eqz p1, :cond_43

    return v2

    :cond_43
    const/4 p1, 0x7

    return p1

    :cond_45
    invoke-static {v0}, Lcom/android/cloud/util/AdFileItemUtil;->isAd(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v0

    if-eqz v0, :cond_4c

    return v2

    :cond_4c
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;->getChildViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;I)I

    move-result p1

    return p1

    :cond_51
    :goto_51
    return v1
.end method

.method public bridge synthetic getChildViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;I)I
    .registers 4

    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->getChildViewType(ILcom/android/fileexplorer/apptag/FileItemGroup;I)I

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

.method public getGroupViewType(ILcom/android/fileexplorer/apptag/FileItemGroup;)I
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->getGroupViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getGroupViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;)I
    .registers 3

    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->getGroupViewType(ILcom/android/fileexplorer/apptag/FileItemGroup;)I

    move-result p1

    return p1
.end method

.method public isChild(I)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isChild(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    const/4 v0, 0x5

    if-eq p1, v0, :cond_15

    const/4 v0, 0x7

    if-ne p1, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public isGroup(I)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroup(I)Z

    move-result p1

    return p1
.end method

.method public setupViewDelegate(Landroid/content/Context;)V
    .registers 3

    new-instance p1, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;

    iget-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsFromAppCategory:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mFromRecentSecondary:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-direct {p1, p0, v0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Z)V

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addGroupItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    const/4 v0, 0x7

    if-eqz p1, :cond_26

    iget-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsFromAppCategory:Z

    if-nez p1, :cond_26

    new-instance p1, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->addChildItemViewDelegate(ILcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    goto :goto_36

    :cond_26
    new-instance p1, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addChildItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    new-instance p1, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->addChildItemViewDelegate(ILcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    :goto_36
    sget-boolean p1, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    if-eqz p1, :cond_43

    const/4 p1, 0x6

    new-instance v0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->addChildItemViewDelegate(ILcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    :cond_43
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

    sget-object p1, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->TAG:Ljava/lang/String;

    const-string p2, "update group index error "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    return-void
.end method
