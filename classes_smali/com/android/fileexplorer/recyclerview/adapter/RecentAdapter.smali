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
.field public static final CHILD_AD:I = 0x6

.field public static final CHILD_DOC:I = 0x4

.field public static final CHILD_DOC_HORIZONTAL:I = 0x5

.field public static final CHILD_VIDEO:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RecentAdapter"

.field public static final TYPE_LIST:I = 0x7


# instance fields
.field private mFromRecentSecondary:Z

.field private mIsFromAppCategory:Z

.field private mIsInstallWPS:Z


# direct methods
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

    .line 1
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;-><init>(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mFromRecentSecondary:Z

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsFromAppCategory:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->setupViewDelegate(Landroid/content/Context;)V

    .line 5
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

    .line 11
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;-><init>(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mFromRecentSecondary:Z

    .line 13
    iput-boolean p3, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsFromAppCategory:Z

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->setupViewDelegate(Landroid/content/Context;)V

    .line 15
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

    .line 6
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/recyclerview/adapter/DraggableAdapter;-><init>(Ljava/util/List;)V

    .line 7
    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mFromRecentSecondary:Z

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsFromAppCategory:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->setupViewDelegate(Landroid/content/Context;)V

    .line 10
    sget-object p1, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsInstallWPS:Z

    return-void
.end method

.method private isCloudCachedDoc(Lcom/android/fileexplorer/dao/file/FileItem;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileItem;

    .line 3
    if-eqz v0, :cond_1c

    .line 5
    invoke-static {p1}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 11
    if-eq v0, v1, :cond_1c

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->isDoc(Ljava/lang/String;)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method private isCloudVideo(Lcom/android/fileexplorer/dao/file/FileItem;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileItem;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    check-cast p1, Lcom/android/cloud/bean/CloudFileItem;

    .line 7
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    const-string v0, "video"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
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

    .line 1
    :try_start_0
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
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 33
    return-object p1

    .line 34
    :catch_21
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    const/4 p1, 0x0

    .line 39
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

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_21

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 26
    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_d

    .line 34
    :cond_21
    return-object v1
.end method

.method public getChildViewType(ILcom/android/fileexplorer/apptag/FileItemGroup;I)I
    .registers 9

    .line 2
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

    .line 3
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

    .line 4
    sget-object v3, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2c
    if-nez v0, :cond_2f

    return v1

    .line 6
    :cond_2f
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mViewMode:I

    const/4 v2, 0x6

    if-nez v1, :cond_45

    .line 7
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

    .line 8
    :cond_45
    invoke-static {v0}, Lcom/android/cloud/util/AdFileItemUtil;->isAd(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v0

    if-eqz v0, :cond_4c

    return v2

    .line 9
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

    .line 1
    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->getChildViewType(ILcom/android/fileexplorer/apptag/FileItemGroup;I)I

    move-result p1

    return p1
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

.method public getDragInfo(Landroid/view/View;)Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;-><init>()V

    .line 6
    instance-of v1, p1, Lcom/android/fileexplorer/view/GridItemView;

    .line 8
    if-eqz v1, :cond_12

    .line 10
    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getStrokeView()Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    .line 18
    goto :goto_1a

    .line 19
    :cond_12
    check-cast p1, Lcom/android/fileexplorer/view/ListItemView;

    .line 21
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/ListItemView;->getStrokeView()Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragSourceInfo;->mDragSourceView:Landroid/view/View;

    .line 27
    :goto_1a
    return-object v0
.end method

.method public getGroupViewType(ILcom/android/fileexplorer/apptag/FileItemGroup;)I
    .registers 3

    .line 2
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->getGroupViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getGroupViewType(ILcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;)I
    .registers 3

    .line 1
    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->getGroupViewType(ILcom/android/fileexplorer/apptag/FileItemGroup;)I

    move-result p1

    return p1
.end method

.method public isChild(I)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isChild(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_15

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_15

    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_15

    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p1, v0, :cond_15

    .line 16
    const/4 v0, 0x7

    .line 17
    if-ne p1, v0, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    const/4 p1, 0x1

    .line 23
    :goto_16
    return p1
.end method

.method public isGroup(I)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->isGroup(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setupViewDelegate(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance p1, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;

    .line 3
    iget-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsFromAppCategory:Z

    .line 5
    if-nez v0, :cond_d

    .line 7
    iget-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mFromRecentSecondary:Z

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    invoke-direct {p1, p0, v0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Z)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addGroupItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 21
    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 23
    const/4 v0, 0x7

    .line 24
    if-eqz p1, :cond_26

    .line 26
    iget-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->mIsFromAppCategory:Z

    .line 28
    if-nez p1, :cond_26

    .line 30
    new-instance p1, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;

    .line 32
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->addChildItemViewDelegate(ILcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 38
    goto :goto_36

    .line 39
    :cond_26
    new-instance p1, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;

    .line 41
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addChildItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 47
    new-instance p1, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;

    .line 49
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->addChildItemViewDelegate(ILcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 55
    :goto_36
    sget-boolean p1, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    .line 57
    if-eqz p1, :cond_43

    .line 59
    const/4 p1, 0x6

    .line 60
    new-instance v0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;

    .line 62
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/MultiTypeAdapter;->addChildItemViewDelegate(ILcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 68
    :cond_43
    return-void
.end method

.method public updateChildrenCheckState(IIZ)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->updateChildrenCheckState(IIZ)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->expandableList:Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableList;->getFlattenedChildIndex(II)I

    .line 9
    move-result v0

    .line 10
    sub-int/2addr v0, p2

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 13
    if-eqz p3, :cond_18

    .line 15
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isGroupAllItemsChecked(I)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_27

    .line 21
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 24
    goto :goto_27

    .line 25
    :cond_18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    .line 28
    goto :goto_27

    .line 29
    :catch_1c
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    sget-object p1, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;->TAG:Ljava/lang/String;

    .line 35
    const-string p2, "update group index error "

    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_27
    :goto_27
    return-void
.end method
