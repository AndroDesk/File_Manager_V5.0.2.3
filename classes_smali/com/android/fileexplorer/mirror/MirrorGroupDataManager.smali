.class public Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;
.super Ljava/lang/Object;
.source "MirrorGroupDataManager.java"


# static fields
.field public static final GROUP_COLUMN_DOC:I = 0x3

.field public static final GROUP_COLUMN_VIDEO:I = 0x8

.field public static final RECENT_GROUP_DOC_MAX_SHOW_SIZE:I = 0x8

.field public static final RECENT_GROUP_NORMAL_MAX_SHOW_SIZE:I = 0x8

.field public static final RECENT_GROUP_PICTURE_MAX_SHOW_SIZE:I = 0x10

.field public static final RECENT_GROUP_VIDEO_MAX_SHOW_SIZE:I

.field private static final TAG:Ljava/lang/String; = "GroupDataManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "com.miui.video"

    const v1, 0x7858e936

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Util;->isAppSupport(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x8

    goto :goto_10

    :cond_e
    const/16 v0, 0xc

    :goto_10
    sput v0, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->RECENT_GROUP_VIDEO_MAX_SHOW_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFileGroup(Ljava/lang/Class;IJLcom/android/fileexplorer/apptag/FileItemAppGroup;Z)Lcom/android/fileexplorer/model/group/FileGroupParent;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;IJ",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            "Z)",
            "Lcom/android/fileexplorer/model/group/FileGroupParent<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Lcom/android/fileexplorer/model/group/FileGroupParent;

    invoke-direct {p0}, Lcom/android/fileexplorer/model/group/FileGroupParent;-><init>()V

    iput-wide p2, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupCreateTime:J

    sget-object p2, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Parent:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    iput-object p2, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    iput-boolean p5, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->expandable:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    iput-object p4, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mFileItemGroup:Lcom/android/fileexplorer/apptag/FileItemGroup;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mChildren:Ljava/util/List;

    iput p1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->id:J

    return-object p0
.end method

.method public static createFileGroupDatas(Ljava/util/List;Ljava/util/List;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;Z)V"
        }
    .end annotation

    const-class v0, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz p1, :cond_fd

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_fd

    :cond_c
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x11

    if-nez v1, :cond_2b

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupData;

    if-eqz v1, :cond_2b

    iget v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createGroupDivider(Ljava/lang/Class;II)Lcom/android/fileexplorer/model/group/FileGroupData;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "GroupDataManager"

    if-ge v1, v3, :cond_e9

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    if-eqz v3, :cond_e5

    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_e5

    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4e

    goto/16 :goto_e5

    :cond_4e
    const-string v5, "createRecentFileGroupDatas size = "

    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->sortFileListByTime(Ljava/util/List;)V

    iget-object v4, v3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x10

    const/16 v7, 0x8

    if-ne v5, v4, :cond_82

    const/4 v4, 0x4

    :goto_80
    move v11, v6

    goto :goto_a4

    :cond_82
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, v4, :cond_8f

    const/16 v4, 0xf

    sget v6, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->RECENT_GROUP_VIDEO_MAX_SHOW_SIZE:I

    goto :goto_80

    :cond_8f
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, v4, :cond_a0

    sget-object v4, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a0

    goto :goto_a2

    :cond_a0
    const/16 v6, 0xe

    :goto_a2
    move v4, v6

    move v11, v7

    :goto_a4
    const-class v5, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz p2, :cond_aa

    move v6, v7

    goto :goto_ab

    :cond_aa
    const/4 v6, 0x6

    :goto_ab
    iget-object v7, v3, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v9, v3

    move v10, p2

    invoke-static/range {v5 .. v10}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createFileGroup(Ljava/lang/Class;IJLcom/android/fileexplorer/apptag/FileItemAppGroup;Z)Lcom/android/fileexplorer/model/group/FileGroupParent;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v5, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupAllCount:I

    if-gt v11, v6, :cond_c5

    if-nez p2, :cond_c6

    :cond_c5
    move v11, v6

    :cond_c6
    iput v11, v5, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v5, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, p0, v5, v4, p2}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->makeRecentGroupContents(Lcom/android/fileexplorer/apptag/FileItemAppGroup;Ljava/util/List;Lcom/android/fileexplorer/model/group/FileGroupParent;IZ)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_e5

    iget v3, v5, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    invoke-static {v0, v3, v2}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createGroupDivider(Ljava/lang/Class;II)Lcom/android/fileexplorer/model/group/FileGroupData;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e5
    :goto_e5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2c

    :cond_e9
    const-string p1, "createRecentFileGroupDatas mergeGroupDates: size = "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fd
    :goto_fd
    return-void
.end method

.method private static createGroupChild(Ljava/lang/Object;IJ)Lcom/android/fileexplorer/model/group/FileGroupChild;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IJ)",
            "Lcom/android/fileexplorer/model/group/FileGroupChild<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/model/group/FileGroupChild;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/group/FileGroupChild;-><init>()V

    iput-object p0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    sget-object p0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Child:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    iput-object p0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    iput-wide p2, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->id:J

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    iput p1, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    return-object v0
.end method

.method private static createGroupDivider(Ljava/lang/Class;II)Lcom/android/fileexplorer/model/group/FileGroupData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;II)",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Lcom/android/fileexplorer/model/group/FileGroupData;

    invoke-direct {p0}, Lcom/android/fileexplorer/model/group/FileGroupData;-><init>()V

    iput p2, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    sget-object p2, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Divider:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    iput-object p2, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    iput p1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    return-object p0
.end method

.method public static createNoGroupDatas(Ljava/util/List;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_46

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_46

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    if-nez v2, :cond_1e

    goto :goto_2d

    :cond_1e
    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, p1, v3, v4}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createGroupChild(Ljava/lang/Object;IJ)Lcom/android/fileexplorer/model/group/FileGroupChild;

    move-result-object v2

    iput v1, v2, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_30
    const-string p0, "createNoGroupDatas mergeGroupDates: size = "

    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GroupDataManager"

    invoke-static {p1, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-object v0
.end method

.method public static createPictureFileGroupDatas(Ljava/util/List;II)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_97

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_97

    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "GroupDataManager"

    if-ge v2, v3, :cond_83

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    if-nez v3, :cond_22

    goto :goto_80

    :cond_22
    iget-object v5, v3, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, p2, v5, v6}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createGroupChild(Ljava/lang/Object;IJ)Lcom/android/fileexplorer/model/group/FileGroupChild;

    move-result-object v5

    if-eqz v1, :cond_3d

    iget-wide v6, v1, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupCreateTime:J

    iget-wide v8, v3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/fileexplorer/model/TimeUtils;->isInSameDay(JJ)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {v1, v5}, Lcom/android/fileexplorer/model/group/FileGroupParent;->addChild(Lcom/android/fileexplorer/model/group/FileGroupChild;)V

    goto :goto_7d

    :cond_3d
    :goto_3d
    if-eqz v1, :cond_4c

    const-class v6, Lcom/android/fileexplorer/model/FileInfo;

    iget v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    const/16 v7, 0x9

    invoke-static {v6, v1, v7}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createGroupDivider(Ljava/lang/Class;II)Lcom/android/fileexplorer/model/group/FileGroupData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    const-class v6, Lcom/android/fileexplorer/model/FileInfo;

    iget-wide v8, v3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, p1

    invoke-static/range {v6 .. v11}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createFileGroup(Ljava/lang/Class;IJLcom/android/fileexplorer/apptag/FileItemAppGroup;Z)Lcom/android/fileexplorer/model/group/FileGroupParent;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    invoke-virtual {v1, v5}, Lcom/android/fileexplorer/model/group/FileGroupParent;->addChild(Lcom/android/fileexplorer/model/group/FileGroupChild;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mergeGroupDates: createGroup, time = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupCreateTime:J

    invoke-static {v6, v7}, Lcom/android/fileexplorer/model/TimeUtils;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7d
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_83
    const-string p0, "createFileGroupDatas mergeGroupDates: size = "

    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    :goto_97
    return-object v0
.end method

.method public static getEditableCount(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_21

    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget-boolean v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    if-eqz v1, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_21
    :goto_21
    return v0
.end method

.method public static makeRecentGroupContents(Lcom/android/fileexplorer/apptag/FileItemAppGroup;Ljava/util/List;Lcom/android/fileexplorer/model/group/FileGroupParent;IZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;",
            "Lcom/android/fileexplorer/model/group/FileGroupParent<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;IZ)V"
        }
    .end annotation

    if-eqz p0, :cond_87

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_87

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_87

    :cond_14
    iget v0, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupAllCount:I

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->needJumpToVideo(II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    if-eqz p4, :cond_28

    move p4, v1

    goto :goto_29

    :cond_28
    move p4, v2

    :goto_29
    if-eqz p4, :cond_2f

    const/16 v0, 0x8

    iput v0, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    :cond_2f
    const-string v0, "makeRecentGroupContents size = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GroupDataManager"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_4a
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_87

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v3, :cond_84

    iget v4, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    if-lt v0, v4, :cond_65

    goto :goto_84

    :cond_65
    if-eqz p4, :cond_6d

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_6d

    move v4, v1

    goto :goto_6e

    :cond_6d
    move v4, v2

    :goto_6e
    iput-boolean v4, v3, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getUniqueId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, p3, v4, v5}, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->createGroupChild(Ljava/lang/Object;IJ)Lcom/android/fileexplorer/model/group/FileGroupChild;

    move-result-object v3

    iput-object p2, v3, Lcom/android/fileexplorer/model/group/FileGroupChild;->mParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    invoke-virtual {p2, v3, v2}, Lcom/android/fileexplorer/model/group/FileGroupParent;->addChild(Lcom/android/fileexplorer/model/group/FileGroupChild;Z)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_84
    :goto_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_87
    :goto_87
    return-void
.end method

.method private static needJumpToVideo(II)Z
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p1, :cond_12

    const/16 p1, 0x8

    if-le p0, p1, :cond_12

    sget p0, Lcom/android/fileexplorer/mirror/MirrorGroupDataManager;->RECENT_GROUP_VIDEO_MAX_SHOW_SIZE:I

    if-ne p0, p1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static updateDataByActionMode(ZLjava/util/List;ILjava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_86

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_86

    :cond_a
    const-string v0, "updateDataByActionMode position = "

    const-string v1, "GroupDataManager"

    invoke-static {v0, p2, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2d

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupData;

    instance-of p3, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;

    if-eqz p3, :cond_18

    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupParent;

    iput-boolean p0, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    goto :goto_18

    :cond_2d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gt p0, p2, :cond_34

    return-void

    :cond_34
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget p0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    if-ne v0, p0, :cond_3f

    return-void

    :cond_3f
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;

    if-eqz p2, :cond_86

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupParent;

    add-int/lit8 p2, p0, 0x1

    iget v0, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    add-int/2addr v0, p0

    const/4 v2, 0x0

    if-nez p3, :cond_56

    goto :goto_68

    :cond_56
    move v3, p2

    :goto_57
    if-gt v3, v0, :cond_67

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    goto :goto_68

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :cond_67
    const/4 v2, 0x1

    :goto_68
    const-string p3, "updateDataByActionMode section = "

    const-string v3, ", startPos = "

    const-string v4, ", end = "

    invoke-static {p3, p0, v3, p2, v4}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isCheckAll = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    :cond_86
    :goto_86
    return-void
.end method
