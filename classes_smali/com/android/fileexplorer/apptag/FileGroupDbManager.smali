.class public Lcom/android/fileexplorer/apptag/FileGroupDbManager;
.super Ljava/lang/Object;
.source "FileGroupDbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/FileGroupDbManager$DeletedFileDetector;,
        Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;,
        Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    }
.end annotation


# static fields
.field private static final GROUP_BY_APP:I

.field private static final GROUP_BY_DATE:I

.field private static final TAG:Ljava/lang/String; = "FileGroupDbManager"

.field private static volatile mInstance:Lcom/android/fileexplorer/apptag/FileGroupDbManager;


# instance fields
.field private mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

.field private mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

.field private mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->GROUP_BY_APP:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->GROUP_BY_DATE:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    new-instance v0, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    new-instance v0, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    return-void
.end method

.method private connectFileAndGroup(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItemsForConstruct()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    new-instance v4, Lcom/android/fileexplorer/dao/file/FileGroupDetail;

    invoke-direct {v4}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;-><init>()V

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->setFileGroupId(Ljava/lang/Long;)V

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->setFileItemId(Ljava/lang/Long;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_43
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    return-void
.end method

.method private declared-synchronized deleteFileSegment(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItemsByPath(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private fileTypeMapping(Ljava/lang/String;)I
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_TYPE_LOOK_UP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object p1, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_TYPE_LOOK_UP:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_29
    const/4 p1, -0x1

    return p1
.end method

.method private filterFileGroup(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadGroupsFromDb()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setId(Ljava/lang/Long;)V

    goto :goto_8

    :cond_30
    return-void
.end method

.method private getFileItemGroups(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_29
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method private getFileItemGroupsWithoutAppTag(Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->resetFileItems()V

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3f
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const v2, 0x7f0f0014

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const-string v3, "storage"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string v4, "storage"

    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJ)Lcom/android/fileexplorer/apptag/FileItemGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_6a
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method private getFileItemsByGroups(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method

.method private getFileItemsByPkgName(Ljava/lang/String;IZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "com.android.providers.downloads.ui"

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_60

    goto :goto_2c

    :sswitch_e
    const-string v0, "cloud"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_2c

    :cond_17
    const/4 v2, 0x2

    goto :goto_2c

    :sswitch_19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v2, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    packed-switch v2, :pswitch_data_6e

    iget-object p3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {p3, p2, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByPkgName(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_5e

    :pswitch_36  #0x2
    if-eqz p3, :cond_3d

    invoke-static {p2}, Lcom/android/cloud/fragment/model/CloudRecentGroupModel;->getCloudFilesLimit(I)Ljava/util/List;

    move-result-object p1

    goto :goto_5e

    :cond_3d
    const/4 p1, 0x0

    return-object p1

    :pswitch_3f  #0x1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "com.miui.mishare.connectivity"

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "com.xlredapple.bluetooth"

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {p3, p2, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByPkgName(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_5e

    :pswitch_58  #0x0
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadSdcardFileItems(I)Ljava/util/List;

    move-result-object p1

    :goto_5e
    return-object p1

    nop

    :sswitch_data_60
    .sparse-switch
        -0x704fbd85 -> :sswitch_22
        -0x3ea09f51 -> :sswitch_19
        0x5a5de35 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_58  #00000000
        :pswitch_3f  #00000001
        :pswitch_36  #00000002
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mInstance:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mInstance:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mInstance:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mInstance:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    return-object v0
.end method

.method private loadGroupsFromDb()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAllFileGroups()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "loadGroupsFromDb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCostDebug(Ljava/lang/String;)V

    if-eqz v2, :cond_45

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_45
    return-object v1
.end method

.method private makeAppFileItemGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/fileexplorer/apptag/FileItemGroup;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz p3, :cond_1b

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1b

    :cond_f
    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v1 .. v7}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJ)Lcom/android/fileexplorer/apptag/FileItemGroup;

    move-result-object p1

    return-object p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method private static mergeAndSortGroups(Ljava/util/List;Ljava/util/List;ILcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;I",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    return-object p0

    :cond_b
    const/4 v2, 0x1

    if-le v1, p2, :cond_10

    iput-boolean v2, p3, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    :cond_10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :cond_18
    if-le v0, v5, :cond_9e

    if-le v1, v6, :cond_9e

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v9}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_59

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v7, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setContainCloudFile(Z)V

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_8c

    :cond_59
    if-nez v7, :cond_81

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileGroup;->resetFileItems()V

    invoke-virtual {v7, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setContainCloudFile(Z)V

    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v9}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v8}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortFiles(Ljava/util/List;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_81
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :goto_8c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, p2, :cond_18

    iget-boolean p0, p3, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    if-eqz p0, :cond_97

    return-object v3

    :cond_97
    if-gt v0, v5, :cond_9b

    if-le v1, v6, :cond_9d

    :cond_9b
    iput-boolean v2, p3, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    :cond_9d
    return-object v3

    :cond_9e
    :goto_9e
    if-le v0, v5, :cond_ac

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    :cond_ac
    :goto_ac
    if-le v1, v6, :cond_c3

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setContainCloudFile(Z)V

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_ac

    :cond_c3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, p2, :cond_d0

    iput-boolean v2, p3, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    invoke-virtual {v3, v4, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_d0
    return-object v3
.end method

.method private static sortFiles(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$1;

    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sortGroupList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">(",
            "Ljava/util/List<",
            "TM;>;)",
            "Ljava/util/List<",
            "TM;>;"
        }
    .end annotation

    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/fileexplorer/apptag/FileItemGroup;

    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$2;-><init>(Lcom/android/fileexplorer/apptag/FileGroupDbManager;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private split(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xbb8

    div-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v2, v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-eq v5, v0, :cond_32

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v4

    :goto_1b
    if-eq v7, v1, :cond_2c

    mul-int/lit16 v8, v5, 0xbb8

    add-int/2addr v8, v7

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_2c
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_32
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_37
    if-eq v4, v2, :cond_48

    mul-int/lit16 v6, v0, 0xbb8

    add-int/2addr v6, v4

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_48
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method private updateFileItem(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_80

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_80

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/FileItem;

    if-nez v0, :cond_1d

    goto :goto_e

    :cond_1d
    instance-of v1, v0, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v1, :cond_22

    goto :goto_e

    :cond_22
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_75

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_45

    goto :goto_75

    :cond_45
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5b

    goto :goto_6a

    :cond_5b
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_6a
    :goto_6a
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_75
    :goto_75
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_80
    :goto_80
    return-void
.end method


# virtual methods
.method public checkAndGetFileGroupItems(Ljava/util/List;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_114

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->isContainCloudFile()Z

    move-result v9

    if-nez v9, :cond_39

    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->resetFileItems()V

    :cond_39
    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v9

    invoke-static {v8}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    move-result-object v10

    monitor-enter v9

    :try_start_42
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_46
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/fileexplorer/dao/file/FileItem;

    instance-of v13, v12, Lcom/android/cloud/bean/CloudFileItem;

    const/4 v14, 0x0

    if-nez v13, :cond_cd

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_65

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_46

    :cond_65
    new-instance v13, Ljava/io/File;

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_be

    invoke-static {v13}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_be

    if-nez v15, :cond_be

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_93

    goto :goto_be

    :cond_93
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileSize:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/dao/file/FileItem;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/fileexplorer/dao/file/FileItem;->groupTitle:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v13

    move-object v15, v0

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, v14}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f0

    :cond_be
    :goto_be
    move-object v15, v0

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_f0

    :cond_cd
    move-object v15, v0

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileSize:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/dao/file/FileItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/fileexplorer/dao/file/FileItem;->groupTitle:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, v14}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    :goto_f0
    move-object/from16 v1, p0

    move-object v0, v15

    goto/16 :goto_46

    :cond_f5
    move-object v15, v0

    monitor-exit v9
    :try_end_f7
    .catchall {:try_start_42 .. :try_end_f7} :catchall_111

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_109

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v15

    goto :goto_10d

    :cond_109
    move-object v0, v15

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_10d
    move-object/from16 v1, p0

    goto/16 :goto_24

    :catchall_111
    move-exception v0

    :try_start_112
    monitor-exit v9
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw v0

    :cond_114
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileItem(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_125
    :goto_125
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/fileexplorer/dao/file/FileItem;

    instance-of v8, v7, Lcom/android/cloud/bean/CloudFileItem;

    if-nez v8, :cond_125

    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_140

    goto :goto_125

    :cond_140
    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    goto :goto_125

    :cond_14f
    move-object/from16 v7, p0

    invoke-direct {v7, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_165

    iget-object v1, v7, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItems(Ljava/util/List;)V

    iget-object v1, v7, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V

    :cond_165
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_175

    iget-object v1, v7, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->deleteFileGroups(Ljava/util/List;)V

    iget-object v1, v7, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {v1, v5}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileGroupIds(Ljava/util/List;)V

    :cond_175
    invoke-static {v3}, Lcom/android/fileexplorer/util/FavUtil;->removeFromDbByFileItem(Ljava/util/List;)V

    return-object v0
.end method

.method public convert(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->resetFileItems()V

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    move-result-object v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_32
    invoke-static {v1}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileItem(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_3a

    :cond_51
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    goto :goto_3a

    :cond_60
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized convertEx(Ljava/util/List;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileGroup;->resetFileItems()V

    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v7

    invoke-static {v6}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->split(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    sget-object v10, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "splitList len:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_79

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    new-instance v12, Lcom/android/fileexplorer/apptag/FileGroupDbManager$DeletedFileDetector;

    invoke-direct {v12, v10}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$DeletedFileDetector;-><init>(Ljava/util/List;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_79
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/Future;
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_100

    :try_start_89
    invoke-interface {v10}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;

    iget-object v11, v10, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;->toRemovedFileItems:Ljava/util/List;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v10, v10, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;->toRemovedFileItemIds:Ljava/util/List;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_9c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_89 .. :try_end_9c} :catch_a2
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_9c} :catch_9d
    .catchall {:try_start_89 .. :try_end_9c} :catchall_100

    goto :goto_7d

    :catch_9d
    move-exception v10

    :try_start_9e
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7d

    :catch_a2
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7d

    :cond_a7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_b5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    :cond_b5
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    :cond_ba
    invoke-static {v4}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileItem(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v5}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d9

    goto :goto_c2

    :cond_d9
    invoke-virtual {v5}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    goto :goto_c2

    :cond_e8
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->deleteFileGroups(Ljava/util/List;)V

    invoke-static {v2}, Lcom/android/fileexplorer/util/FavUtil;->removeFromDbByFileItem(Ljava/util/List;)V
    :try_end_fe
    .catchall {:try_start_9e .. :try_end_fe} :catchall_100

    monitor-exit p0

    return-object p1

    :catchall_100
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public delFileGroupAndFileItemsByDirId(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_39

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_39

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->loadAllByDirId(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_39

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_34
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->deleteFileGroupsById(Ljava/util/List;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public declared-synchronized deleteAll()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->deleteAll()V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->deleteAll()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteFileByPath(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_29

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_29

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    add-int/lit8 v1, v0, 0x64

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v1

    :goto_1b
    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileSegment(Ljava/util/List;)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    move v0, v1

    goto :goto_b

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_29
    :goto_29
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized deleteFileGroup(J)V
    .registers 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->deleteFileGroupsById(Ljava/util/List;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteFileGroupDetail(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteFileGroupInTx(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->deleteFileGroupsById(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteFileItem(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItemsByPath(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteFileItemAndFileGroupDetail(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_52

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_52

    :cond_14
    const/4 v2, 0x0

    move v3, v2

    :goto_16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v4, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2a
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByPaths(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_46
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItemsByPath(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_54

    monitor-exit p0

    return-void

    :cond_52
    :goto_52
    monitor-exit p0

    return-void

    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteGroupDetailByFileItemId(J)V
    .registers 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteGroupDetailByGroupId(J)V
    .registers 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileGroupIds(Ljava/util/List;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public generateFileGroupDetail(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroupDetail;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    new-instance v4, Lcom/android/fileexplorer/dao/file/FileGroupDetail;

    invoke-direct {v4}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;-><init>()V

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->setFileGroupId(Ljava/lang/Long;)V

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->setFileItemId(Ljava/lang/Long;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_3c
    return-object v0
.end method

.method public declared-synchronized getAllFileItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFileItemByFileItems(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByFileItemS(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFileItemByPath(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByPaths(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFileItemIds(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method

.method public declared-synchronized insertOrReplaceFileItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadAllFileGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadAllFileGroupsByGroupName(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->loadAllByGroupName(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadAppFileGroupItems(Ljava/lang/String;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->countAllByPath(Ljava/lang/String;J)J

    move-result-wide v1

    int-to-long v3, p4

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iput-boolean v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->loadAllByPath(Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->checkAndGetFileGroupItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v0

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            ")",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "JI)",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    const/4 v1, 0x0

    if-ltz p5, :cond_18

    iget-object v2, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->countAll(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;J)J

    move-result-wide v2

    int-to-long v4, p5

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    iput-boolean v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    goto :goto_1a

    :cond_18
    iput-boolean v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    :goto_1a
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->loadAll(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->checkAndGetFileGroupItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    return-object v0

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadAppFileGroupItems(Ljava/util/List;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "JI)",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    move-object v1, p0

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    :cond_25
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-direct {p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, p2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    iput-object p1, p2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    monitor-exit p0

    return-object p2

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadAppGroupFileItems(Ljava/util/List;IZ)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;IZ)",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemDateGroup;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    new-instance v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-direct {v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    new-instance v3, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v3}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v3}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    if-eqz p1, :cond_247

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_247

    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_250

    :try_start_35
    iget-object v8, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v8}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->getAppTagCount()Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_81

    move v9, v0

    :goto_3e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_78

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_55

    const-string v10, "storage"

    :cond_55
    const-string v12, "com.android.providers.downloads.ui"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_76

    const-string v12, "com.miui.mishare.connectivity"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_76

    const-string v12, "com.xlredapple.bluetooth"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6e

    goto :goto_76

    :cond_6e
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :cond_76
    :goto_76
    add-int/2addr v9, v11

    goto :goto_3e

    :cond_78
    const-string v8, "com.android.providers.downloads.ui"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_81
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudRecentGroupModel;->getCloudFilesCount()I

    move-result v8

    const-string v9, "cloud"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/fileexplorer/dao/fav/Favorite;

    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/fav/Favorite;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    :cond_b7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_bb
    :goto_bb
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_204

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d2

    goto :goto_bb

    :cond_d2
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCameraAndScreenShots()Z

    move-result v12

    if-eqz v12, :cond_e9

    const-string v12, "com.xlredapple.camera"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_bb

    const-string v12, "com.xlredapple.screenshot"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e9

    goto :goto_bb

    :cond_e9
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f8

    goto :goto_bb

    :cond_f8
    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct {v1, v11, v13, v14}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemsByPkgName(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_1fc

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_1fc

    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v0, "cloud"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a8

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_118
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/fileexplorer/dao/file/FileItem;

    move-object/from16 p1, v8

    new-instance v8, Ljava/io/File;

    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_153

    invoke-static {v8}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    move-result v17

    if-eqz v17, :cond_153

    if-nez v13, :cond_153

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_160

    :cond_153
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_160
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileSize:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/dao/file/FileItem;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Lcom/android/fileexplorer/dao/file/FileItem;->groupTitle:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v8, 0x0

    invoke-static {v13, v14, v8}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1a0

    instance-of v8, v10, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v8, :cond_192

    goto :goto_1a0

    :cond_192
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v10, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    :cond_1a0
    :goto_1a0
    move-object/from16 v8, p1

    move/from16 v13, p2

    move/from16 v14, p3

    goto/16 :goto_118

    :cond_1a8
    move-object/from16 p1, v8

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1fa

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1be

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gez v8, :cond_1dc

    :cond_1be
    sget-object v8, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pkg file count error:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "count:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1dc
    const v8, 0x7f0f0014

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v8, v0}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v11, v15, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->makeAppFileItemGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    move-result-object v0

    const/4 v8, 0x0

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ff

    :cond_1fa
    const/4 v8, 0x0

    goto :goto_1ff

    :cond_1fc
    move-object/from16 p1, v8

    move v8, v0

    :goto_1ff
    move v0, v8

    move-object/from16 v8, p1

    goto/16 :goto_bb

    :cond_204
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_214

    iget-object v0, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v0, v4}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItems(Ljava/util/List;)V

    iget-object v0, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {v0, v5}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V

    :cond_214
    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_240

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_225} :catch_226
    .catchall {:try_start_35 .. :try_end_225} :catchall_250

    goto :goto_240

    :catch_226
    move-exception v0

    :try_start_227
    sget-object v4, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadDateFileGroupItems ERROR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_240
    :goto_240
    const-string v0, "loadAppGroupFileItems cost:"

    invoke-virtual {v3, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V
    :try_end_245
    .catchall {:try_start_227 .. :try_end_245} :catchall_250

    monitor-exit p0

    return-object v2

    :cond_247
    :goto_247
    :try_start_247
    sget-object v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    const-string v3, "appGroups is empty"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24e
    .catchall {:try_start_247 .. :try_end_24e} :catchall_250

    monitor-exit p0

    return-object v2

    :catchall_250
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadDateFileGroupItems(JIZ)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ)",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemDateGroup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    new-instance v1, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->init()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_ae

    const/4 v2, 0x0

    if-ltz p3, :cond_22

    :try_start_11
    iget-object v3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->countAll(I)J

    move-result-wide v3

    int-to-long v5, p3

    cmp-long v3, v3, v5

    if-lez v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    move v3, v2

    :goto_1f
    iput-boolean v3, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    goto :goto_24

    :cond_22
    iput-boolean v2, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    :goto_24
    iget-object v3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v3, v2, p1, p2, p3}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->load(IJI)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_44

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v5, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setContainCloudFile(Z)V

    goto :goto_34

    :cond_44
    if-eqz p4, :cond_71

    add-int/lit8 p4, p3, 0x1

    invoke-static {p4, p1, p2}, Lcom/android/cloud/fragment/model/CloudRecentGroupModel;->getLatestGroupData(IJ)Ljava/util/List;

    move-result-object p1

    const-string p2, "MiDrive_LOG"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileGroupsInCloud size:"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, p1, p3, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mergeAndSortGroups(Ljava/util/List;Ljava/util/List;ILcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->checkAndGetFileGroupItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    goto :goto_77

    :cond_71
    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->checkAndGetFileGroupItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    :goto_77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", checkAndGetFileGroupItems time: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_8d} :catch_8e
    .catchall {:try_start_11 .. :try_end_8d} :catchall_ae

    goto :goto_ac

    :catch_8e
    move-exception p1

    :try_start_8f
    sget-object p2, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "loadDateFileGroupItems ERROR:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ac
    .catchall {:try_start_8f .. :try_end_ac} :catchall_ae

    :goto_ac
    monitor-exit p0

    return-object v0

    :catchall_ae
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadDateFileGroupItemsWithoutAppTag(JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    new-instance v1, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->init()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_94

    const/4 v1, 0x1

    :try_start_f
    iput-boolean v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    :goto_18
    iget-boolean v2, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    if-eqz v2, :cond_92

    iget-object v2, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p3, :cond_92

    const/4 v2, 0x0

    if-ltz p3, :cond_38

    iget-object v3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v3, v2, p1, p2}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->countAll(IJ)J

    move-result-wide v3

    int-to-long v5, p3

    cmp-long v3, v3, v5

    if-lez v3, :cond_34

    move v3, v1

    goto :goto_35

    :cond_34
    move v3, v2

    :goto_35
    iput-boolean v3, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    goto :goto_3a

    :cond_38
    iput-boolean v2, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    :goto_3a
    iget-object v3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v3, v2, p1, p2, p3}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->load(IJI)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6c

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemGroupsWithoutAppTag(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    if-eqz p2, :cond_63

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :cond_63
    if-lez v2, :cond_6a

    iget-object p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6a
    move-wide p1, v3

    goto :goto_18

    :cond_6c
    sget-object p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    const-string p2, "fileGroupsInDb is empty"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_73} :catch_74
    .catchall {:try_start_f .. :try_end_73} :catchall_94

    goto :goto_92

    :catch_74
    move-exception p1

    :try_start_75
    sget-object p2, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadDateFileGroupItems ERROR:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_75 .. :try_end_92} :catchall_94

    :cond_92
    :goto_92
    monitor-exit p0

    return-object v0

    :catchall_94
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized matchFileGroupByValue(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->matchFileGroupByValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized matchFileItemByAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->fileTypeMapping(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v1, p1, v0}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->matchFileItemsAll(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->loadAll(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemsByGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    if-eqz p1, :cond_63

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_34
    if-ltz v0, :cond_60

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    :cond_60
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_65

    :cond_63
    monitor-exit p0

    return-object p1

    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized matchFileItemByCategory(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->matchFileItemsAllByType(I)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized matchFileItemByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->loadAll(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemsByGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized matchFileItemByTag(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->matchFileItemsByTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renameFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_44

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_18
    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    goto :goto_18

    :cond_3f
    iget-object p2, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->update(Ljava/lang/Iterable;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    :cond_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replaceFileItemsAndGroups(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_8

    :try_start_3
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileGroup;

    if-nez v2, :cond_2d

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2d
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setId(Ljava/lang/Long;)V

    goto :goto_11

    :cond_35
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_40

    iget-object p3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {p3, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    :cond_40
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->connectFileAndGroup(Ljava/util/List;)V
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scanInvaildFileItems(Ljava/util/List;Ljava/util/List;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->resetFileItems()V

    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    move-result-object v11

    if-eqz v9, :cond_a1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {v10, v9}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_55
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/fileexplorer/dao/file/FileItem;

    new-instance v13, Ljava/io/File;

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_93

    invoke-static {v13}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    move-result v15

    if-eqz v15, :cond_93

    if-nez v14, :cond_93

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_8f

    goto :goto_93

    :cond_8f
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_93
    :goto_93
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_55

    :cond_a1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_b3

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    :cond_b3
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    :cond_b8
    invoke-static {v6}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileItem(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d7

    goto :goto_c0

    :cond_d7
    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v8, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    goto :goto_c0

    :cond_e6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_f4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_f4

    const/4 v1, 0x0

    return v1

    :cond_f4
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    iget-object v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItems(Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->deleteFileGroups(Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {v1, v5}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileGroupIds(Ljava/util/List;)V

    invoke-static {v3}, Lcom/android/fileexplorer/util/FavUtil;->removeFromDbByFileItem(Ljava/util/List;)V

    const/4 v1, 0x1

    return v1
.end method

.method public updateFileItem(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->DATE:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->APP:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    invoke-static {p1, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->filterFileGroup(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->insertOrUpdate(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->generateFileGroupDetail(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    return-void
.end method

.method public declared-synchronized updateFileItemFileInfo(Ljava/io/File;)I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->updateFileInfo(Ljava/io/File;)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->updateFileItem(Ljava/util/List;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return v0

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateGroupDetails(Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_b5

    :try_start_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b5

    if-eqz p1, :cond_b5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_b5

    :cond_13
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAllFileGroups()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_47

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_47
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/dao/file/FileGroup;

    if-nez v5, :cond_67

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_67
    invoke-virtual {v5}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/fileexplorer/dao/file/FileGroup;->setId(Ljava/lang/Long;)V

    goto :goto_4b

    :cond_6f
    sget-object v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateGroupDetails fileItems:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_94

    iget-object v3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v3, v1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    :cond_94
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->connectFileAndGroup(Ljava/util/List;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "updateGroupDetails end: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_3 .. :try_end_b0} :catchall_b2

    monitor-exit p0

    return-void

    :catchall_b2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_b5
    :goto_b5
    monitor-exit p0

    return-void
.end method
