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
.field private static final GROUP_BY_APP:I = 0x1

.field private static final GROUP_BY_DATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FileGroupDbManager"

.field private static volatile mInstance:Lcom/android/fileexplorer/apptag/FileGroupDbManager;


# instance fields
.field private mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

.field private mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

.field private mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 6
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 11
    new-instance v0, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 13
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 18
    new-instance v0, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 20
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 25
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

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_43

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 25
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItemsForConstruct()Ljava/util/List;

    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v2

    .line 33
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_c

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 45
    new-instance v4, Lcom/android/fileexplorer/dao/file/FileGroupDetail;

    .line 47
    invoke-direct {v4}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;-><init>()V

    .line 50
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->setFileGroupId(Ljava/lang/Long;)V

    .line 57
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->setFileItemId(Ljava/lang/Long;)V

    .line 64
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_20

    .line 68
    :cond_43
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    .line 73
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItemsByPath(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method private fileTypeMapping(Ljava/lang/String;)I
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_TYPE_LOOK_UP:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_29

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_a

    .line 29
    sget-object p1, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_TYPE_LOOK_UP:Ljava/util/HashMap;

    .line 31
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Integer;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_29
    const/4 p1, -0x1

    .line 43
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

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadGroupsFromDb()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_30

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 21
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_8

    .line 31
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 41
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setId(Ljava/lang/Long;)V

    .line 48
    goto :goto_8

    .line 49
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_29

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_9

    .line 28
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_9

    .line 34
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_9

    .line 42
    :cond_29
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    .line 45
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_6a

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->resetFileItems()V

    .line 25
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 28
    move-result-object v2

    .line 29
    new-instance v5, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v2

    .line 38
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_3f

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 50
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag2()Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_25

    .line 60
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_25

    .line 64
    :cond_3f
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_9

    .line 70
    const v2, 0x7f0f0014

    .line 73
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v3

    .line 77
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    .line 80
    move-result-object v6

    .line 81
    const/4 v2, 0x0

    .line 82
    const-string v3, "storage"

    .line 84
    invoke-static {v3, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    const/4 v7, 0x1

    .line 89
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 96
    move-result-wide v8

    .line 97
    const-string v4, "storage"

    .line 99
    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJ)Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    goto :goto_9

    .line 107
    :cond_6a
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    .line 110
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    goto :goto_9

    .line 30
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

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 8
    const-string v1, "com.android.providers.downloads.ui"

    .line 10
    const/4 v2, -0x1

    .line 11
    sparse-switch v0, :sswitch_data_60

    .line 14
    goto :goto_2c

    .line 15
    :sswitch_e
    const-string v0, "cloud"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_17

    .line 23
    goto :goto_2c

    .line 24
    :cond_17
    const/4 v2, 0x2

    .line 25
    goto :goto_2c

    .line 26
    :sswitch_19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_20

    .line 32
    goto :goto_2c

    .line 33
    :cond_20
    const/4 v2, 0x1

    .line 34
    goto :goto_2c

    .line 35
    :sswitch_22
    const-string v0, "storage"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2b

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    const/4 v2, 0x0

    .line 45
    :goto_2c
    packed-switch v2, :pswitch_data_6e

    .line 48
    iget-object p3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 50
    invoke-virtual {p3, p2, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByPkgName(ILjava/lang/String;)Ljava/util/List;

    .line 53
    move-result-object p1

    .line 54
    goto :goto_5e

    .line 55
    :pswitch_36  #0x2
    if-eqz p3, :cond_3d

    .line 57
    invoke-static {p2}, Lcom/android/cloud/fragment/model/CloudRecentGroupModel;->getCloudFilesLimit(I)Ljava/util/List;

    .line 60
    move-result-object p1

    .line 61
    goto :goto_5e

    .line 62
    :cond_3d
    const/4 p1, 0x0

    .line 63
    return-object p1

    .line 64
    :pswitch_3f  #0x1
    new-instance p1, Ljava/util/ArrayList;

    .line 66
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    const-string p3, "com.miui.mishare.connectivity"

    .line 74
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const-string p3, "com.xlredapple.bluetooth"

    .line 79
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 84
    invoke-virtual {p3, p2, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByPkgName(ILjava/util/List;)Ljava/util/List;

    .line 87
    move-result-object p1

    .line 88
    goto :goto_5e

    .line 89
    :pswitch_58  #0x0
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 91
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadSdcardFileItems(I)Ljava/util/List;

    .line 94
    move-result-object p1

    .line 95
    :goto_5e
    return-object p1

    .line 96
    nop

    .line 97
    :sswitch_data_60
    .sparse-switch
        -0x704fbd85 -> :sswitch_22
        -0x3ea09f51 -> :sswitch_19
        0x5a5de35 -> :sswitch_e
    .end sparse-switch

    .line 111
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_58  #00000000
        :pswitch_3f  #00000001
        :pswitch_36  #00000002
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mInstance:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mInstance:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;-><init>()V

    .line 17
    sput-object v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mInstance:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mInstance:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 26
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAllFileGroups()Ljava/util/List;

    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    sget-object v4, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v4, "loadGroupsFromDb: "

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCostDebug(Ljava/lang/String;)V

    .line 44
    if-eqz v2, :cond_45

    .line 46
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v0

    .line 50
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_45

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 62
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    goto :goto_31

    .line 70
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

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1b

    .line 7
    if-eqz p3, :cond_1b

    .line 9
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_1b

    .line 16
    :cond_f
    const/4 v5, 0x0

    .line 17
    const-wide/16 v6, -0x1

    .line 19
    move-object v1, p1

    .line 20
    move-object v2, p2

    .line 21
    move-object v3, p3

    .line 22
    move-object v4, p4

    .line 23
    invoke-static/range {v1 .. v7}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJ)Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    .line 29
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

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    return-object p0

    .line 12
    :cond_b
    const/4 v2, 0x1

    .line 13
    if-le v1, p2, :cond_10

    .line 15
    iput-boolean v2, p3, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 17
    :cond_10
    new-instance v3, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    const/4 v4, 0x0

    .line 23
    move v5, v4

    .line 24
    move v6, v5

    .line 25
    :cond_18
    if-le v0, v5, :cond_9e

    .line 27
    if-le v1, v6, :cond_9e

    .line 29
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v7

    .line 33
    check-cast v7, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 35
    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    .line 38
    move-result-object v7

    .line 39
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 46
    move-result-wide v7

    .line 47
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v9

    .line 51
    check-cast v9, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 53
    invoke-virtual {v9}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    .line 56
    move-result-object v9

    .line 57
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 64
    move-result-wide v9

    .line 65
    cmp-long v7, v7, v9

    .line 67
    if-gez v7, :cond_59

    .line 69
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 75
    invoke-virtual {v7, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setContainCloudFile(Z)V

    .line 78
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 84
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :goto_56
    add-int/lit8 v6, v6, 0x1

    .line 89
    goto :goto_8c

    .line 90
    :cond_59
    if-nez v7, :cond_81

    .line 92
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 98
    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileGroup;->resetFileItems()V

    .line 101
    invoke-virtual {v7, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setContainCloudFile(Z)V

    .line 104
    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 107
    move-result-object v8

    .line 108
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v9

    .line 112
    check-cast v9, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 114
    invoke-virtual {v9}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 117
    move-result-object v9

    .line 118
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-static {v8}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortFiles(Ljava/util/List;)V

    .line 124
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v5, v5, 0x1

    .line 129
    goto :goto_56

    .line 130
    :cond_81
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    move-result-object v7

    .line 134
    check-cast v7, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 136
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v5, v5, 0x1

    .line 141
    :goto_8c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 144
    move-result v7

    .line 145
    if-ne v7, p2, :cond_18

    .line 147
    iget-boolean p0, p3, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 149
    if-eqz p0, :cond_97

    .line 151
    return-object v3

    .line 152
    :cond_97
    if-gt v0, v5, :cond_9b

    .line 154
    if-le v1, v6, :cond_9d

    .line 156
    :cond_9b
    iput-boolean v2, p3, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 158
    :cond_9d
    return-object v3

    .line 159
    :cond_9e
    :goto_9e
    if-le v0, v5, :cond_ac

    .line 161
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    move-result-object v7

    .line 165
    check-cast v7, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 167
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v5, v5, 0x1

    .line 172
    goto :goto_9e

    .line 173
    :cond_ac
    :goto_ac
    if-le v1, v6, :cond_c3

    .line 175
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 181
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setContainCloudFile(Z)V

    .line 184
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    move-result-object p0

    .line 188
    check-cast p0, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 190
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v6, v6, 0x1

    .line 195
    goto :goto_ac

    .line 196
    :cond_c3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 199
    move-result p0

    .line 200
    if-le p0, p2, :cond_d0

    .line 202
    iput-boolean v2, p3, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 204
    invoke-virtual {v3, v4, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 207
    move-result-object p0

    .line 208
    return-object p0

    .line 209
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$1;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$1;-><init>()V

    .line 6
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9
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

    .line 1
    if-eqz p1, :cond_30

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_30

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    move-result v1

    .line 24
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, [Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, [Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 36
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$2;

    .line 38
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$2;-><init>(Lcom/android/fileexplorer/apptag/FileGroupDbManager;)V

    .line 41
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 44
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_30
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 54
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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xbb8

    .line 7
    div-int/2addr v0, v1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    move-result v2

    .line 12
    rem-int/2addr v2, v1

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    const/4 v4, 0x0

    .line 19
    move v5, v4

    .line 20
    :goto_13
    if-eq v5, v0, :cond_32

    .line 22
    new-instance v6, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 27
    move v7, v4

    .line 28
    :goto_1b
    if-eq v7, v1, :cond_2c

    .line 30
    mul-int/lit16 v8, v5, 0xbb8

    .line 32
    add-int/2addr v8, v7

    .line 33
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 39
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v7, v7, 0x1

    .line 44
    goto :goto_1b

    .line 45
    :cond_2c
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 50
    goto :goto_13

    .line 51
    :cond_32
    new-instance v5, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    :goto_37
    if-eq v4, v2, :cond_48

    .line 58
    mul-int/lit16 v6, v0, 0xbb8

    .line 60
    add-int/2addr v6, v4

    .line 61
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 67
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 72
    goto :goto_37

    .line 73
    :cond_48
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_80

    .line 2
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

    .line 3
    :cond_1d
    instance-of v1, v0, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v1, :cond_22

    goto :goto_e

    .line 4
    :cond_22
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_45

    goto :goto_75

    .line 7
    :cond_45
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5b

    goto :goto_6a

    :cond_5b
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    .line 10
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 11
    :cond_6a
    :goto_6a
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 13
    :cond_75
    :goto_75
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
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

    .line 1
    move-object/from16 v1, p0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v5, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v6, Ljava/util/HashMap;

    .line 30
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v7

    .line 37
    :goto_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_114

    .line 43
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 49
    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->isContainCloudFile()Z

    .line 52
    move-result v9

    .line 53
    if-nez v9, :cond_39

    .line 55
    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->resetFileItems()V

    .line 58
    :cond_39
    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 61
    move-result-object v9

    .line 62
    invoke-static {v8}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 65
    move-result-object v10

    .line 66
    monitor-enter v9

    .line 67
    :try_start_42
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v11

    .line 71
    :goto_46
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v12

    .line 75
    if-eqz v12, :cond_f5

    .line 77
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v12

    .line 81
    check-cast v12, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 83
    instance-of v13, v12, Lcom/android/cloud/bean/CloudFileItem;

    .line 85
    const/4 v14, 0x0

    .line 86
    if-nez v13, :cond_cd

    .line 88
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 91
    move-result-object v13

    .line 92
    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 95
    move-result v13

    .line 96
    if-eqz v13, :cond_65

    .line 98
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 101
    goto :goto_46

    .line 102
    :cond_65
    new-instance v13, Ljava/io/File;

    .line 104
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 107
    move-result-object v15

    .line 108
    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 114
    move-result-object v15

    .line 115
    invoke-static {v15}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 118
    move-result v15

    .line 119
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 122
    move-result-object v16

    .line 123
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    .line 126
    move-result-wide v16

    .line 127
    const-wide/16 v18, 0x0

    .line 129
    cmp-long v16, v16, v18

    .line 131
    if-eqz v16, :cond_be

    .line 133
    invoke-static {v13}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    .line 136
    move-result v16

    .line 137
    if-eqz v16, :cond_be

    .line 139
    if-nez v15, :cond_be

    .line 141
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    .line 144
    move-result v13

    .line 145
    if-eqz v13, :cond_93

    .line 147
    goto :goto_be

    .line 148
    :cond_93
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    .line 151
    move-result-object v13

    .line 152
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 155
    move-result-wide v15

    .line 156
    invoke-static/range {v15 .. v16}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 159
    move-result-object v13

    .line 160
    iput-object v13, v12, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileSize:Ljava/lang/String;

    .line 162
    invoke-static {v12}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/dao/file/FileItem;)Ljava/lang/String;

    .line 165
    move-result-object v13

    .line 166
    iput-object v13, v12, Lcom/android/fileexplorer/dao/file/FileItem;->groupTitle:Ljava/lang/String;

    .line 168
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 171
    move-result-object v13

    .line 172
    move-object v15, v0

    .line 173
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 176
    move-result-wide v0

    .line 177
    invoke-static {v0, v1, v14}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 181
    iput-object v0, v12, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    .line 183
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v6, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    goto :goto_f0

    .line 191
    :cond_be
    :goto_be
    move-object v15, v0

    .line 192
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 205
    goto :goto_f0

    .line 206
    :cond_cd
    move-object v15, v0

    .line 207
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 214
    move-result-wide v0

    .line 215
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    iput-object v0, v12, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileSize:Ljava/lang/String;

    .line 221
    invoke-static {v12}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/dao/file/FileItem;)Ljava/lang/String;

    .line 224
    move-result-object v0

    .line 225
    iput-object v0, v12, Lcom/android/fileexplorer/dao/file/FileItem;->groupTitle:Ljava/lang/String;

    .line 227
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 234
    move-result-wide v0

    .line 235
    invoke-static {v0, v1, v14}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    .line 238
    move-result-object v0

    .line 239
    iput-object v0, v12, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    .line 241
    :goto_f0
    move-object/from16 v1, p0

    .line 243
    move-object v0, v15

    .line 244
    goto/16 :goto_46

    .line 246
    :cond_f5
    move-object v15, v0

    .line 247
    monitor-exit v9
    :try_end_f7
    .catchall {:try_start_42 .. :try_end_f7} :catchall_111

    .line 248
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_109

    .line 254
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    move-object v0, v15

    .line 265
    goto :goto_10d

    .line 266
    :cond_109
    move-object v0, v15

    .line 267
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :goto_10d
    move-object/from16 v1, p0

    .line 272
    goto/16 :goto_24

    .line 274
    :catchall_111
    move-exception v0

    .line 275
    :try_start_112
    monitor-exit v9
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    .line 276
    throw v0

    .line 277
    :cond_114
    new-instance v1, Ljava/util/ArrayList;

    .line 279
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 282
    move-result-object v6

    .line 283
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    invoke-static {v1}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileItem(Ljava/util/List;)Ljava/util/HashSet;

    .line 289
    move-result-object v6

    .line 290
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 293
    move-result-object v1

    .line 294
    :cond_125
    :goto_125
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    move-result v7

    .line 298
    if-eqz v7, :cond_14f

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    move-result-object v7

    .line 304
    check-cast v7, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 306
    instance-of v8, v7, Lcom/android/cloud/bean/CloudFileItem;

    .line 308
    if-nez v8, :cond_125

    .line 310
    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 313
    move-result-object v8

    .line 314
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 317
    move-result v8

    .line 318
    if-eqz v8, :cond_140

    .line 320
    goto :goto_125

    .line 321
    :cond_140
    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 324
    move-result-object v8

    .line 325
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 328
    move-result-object v8

    .line 329
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 332
    move-result v8

    .line 333
    iput-boolean v8, v7, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    .line 335
    goto :goto_125

    .line 336
    :cond_14f
    move-object/from16 v7, p0

    .line 338
    invoke-direct {v7, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 345
    move-result v1

    .line 346
    if-nez v1, :cond_165

    .line 348
    iget-object v1, v7, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 350
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItems(Ljava/util/List;)V

    .line 353
    iget-object v1, v7, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 355
    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V

    .line 358
    :cond_165
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_175

    .line 364
    iget-object v1, v7, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 366
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->deleteFileGroups(Ljava/util/List;)V

    .line 369
    iget-object v1, v7, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 371
    invoke-virtual {v1, v5}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileGroupIds(Ljava/util/List;)V

    .line 374
    :cond_175
    invoke-static {v3}, Lcom/android/fileexplorer/util/FavUtil;->removeFromDbByFileItem(Ljava/util/List;)V

    .line 377
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_32

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 27
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->resetFileItems()V

    .line 30
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_e

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_e

    .line 51
    :cond_32
    invoke-static {v1}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileItem(Ljava/util/List;)Ljava/util/HashSet;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v1

    .line 59
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_60

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 71
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_51

    .line 81
    goto :goto_3a

    .line 82
    :cond_51
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 93
    move-result v3

    .line 94
    iput-boolean v3, v2, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    .line 96
    goto :goto_3a

    .line 97
    :cond_60
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    .line 100
    move-result-object p1

    .line 101
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v5, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p1

    .line 36
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_ba

    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 48
    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileGroup;->resetFileItems()V

    .line 51
    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 54
    move-result-object v7

    .line 55
    invoke-static {v6}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 58
    move-result-object v8

    .line 59
    invoke-direct {p0, v7}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->split(Ljava/util/List;)Ljava/util/List;

    .line 62
    move-result-object v9

    .line 63
    sget-object v10, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    .line 65
    new-instance v11, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v12, "splitList len:"

    .line 72
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 78
    move-result v12

    .line 79
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v11

    .line 86
    invoke-static {v10, v11}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object v9

    .line 93
    :goto_5c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v10

    .line 97
    if-eqz v10, :cond_79

    .line 99
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v10

    .line 103
    check-cast v10, Ljava/util/List;

    .line 105
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 108
    move-result-object v11

    .line 109
    new-instance v12, Lcom/android/fileexplorer/apptag/FileGroupDbManager$DeletedFileDetector;

    .line 111
    invoke-direct {v12, v10}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$DeletedFileDetector;-><init>(Ljava/util/List;)V

    .line 114
    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 117
    move-result-object v10

    .line 118
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    goto :goto_5c

    .line 122
    :cond_79
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v9

    .line 126
    :goto_7d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v10

    .line 130
    if-eqz v10, :cond_a7

    .line 132
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v10

    .line 136
    check-cast v10, Ljava/util/concurrent/Future;
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_100

    .line 138
    :try_start_89
    invoke-interface {v10}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 141
    move-result-object v10

    .line 142
    check-cast v10, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;

    .line 144
    iget-object v11, v10, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;->toRemovedFileItems:Ljava/util/List;

    .line 146
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    iget-object v10, v10, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;->toRemovedFileItemIds:Ljava/util/List;

    .line 151
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-interface {v7, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_9c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_89 .. :try_end_9c} :catch_a2
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_9c} :catch_9d
    .catchall {:try_start_89 .. :try_end_9c} :catchall_100

    .line 157
    goto :goto_7d

    .line 158
    :catch_9d
    move-exception v10

    .line 159
    :try_start_9e
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    goto :goto_7d

    .line 163
    :catch_a2
    move-exception v10

    .line 164
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    goto :goto_7d

    .line 168
    :cond_a7
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 171
    move-result v9

    .line 172
    if-lez v9, :cond_b5

    .line 174
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    goto/16 :goto_23

    .line 182
    :cond_b5
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    goto/16 :goto_23

    .line 187
    :cond_ba
    invoke-static {v4}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileItem(Ljava/util/List;)Ljava/util/HashSet;

    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    move-result-object v4

    .line 195
    :goto_c2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_e8

    .line 201
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    move-result-object v5

    .line 205
    check-cast v5, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 207
    invoke-virtual {v5}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 210
    move-result-object v6

    .line 211
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    move-result v6

    .line 215
    if-eqz v6, :cond_d9

    .line 217
    goto :goto_c2

    .line 218
    :cond_d9
    invoke-virtual {v5}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 221
    move-result-object v6

    .line 222
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 225
    move-result-object v6

    .line 226
    invoke-virtual {p1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 229
    move-result v6

    .line 230
    iput-boolean v6, v5, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    .line 232
    goto :goto_c2

    .line 233
    :cond_e8
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    .line 236
    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 239
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItems(Ljava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 244
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V

    .line 247
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 249
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->deleteFileGroups(Ljava/util/List;)V

    .line 252
    invoke-static {v2}, Lcom/android/fileexplorer/util/FavUtil;->removeFromDbByFileItem(Ljava/util/List;)V
    :try_end_fe
    .catchall {:try_start_9e .. :try_end_fe} :catchall_100

    .line 255
    monitor-exit p0

    .line 256
    return-object p1

    .line 257
    :catchall_100
    move-exception p1

    .line 258
    monitor-exit p0

    .line 259
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

    .line 1
    if-eqz p1, :cond_39

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_39

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->loadAllByDirId(Ljava/util/List;)Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_39

    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_39

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p1

    .line 33
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_34

    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 45
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_20

    .line 53
    :cond_34
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 55
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->deleteFileGroupsById(Ljava/util/List;)V

    .line 58
    :cond_39
    :goto_39
    return-void
.end method

.method public declared-synchronized deleteAll()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 4
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->deleteAll()V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->deleteAll()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_d
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
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

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_29

    .line 4
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    goto :goto_29

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_24

    .line 18
    add-int/lit8 v1, v0, 0x64

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    move-result v2

    .line 24
    if-le v1, v2, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v2, v1

    .line 28
    :goto_1b
    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileSegment(Ljava/util/List;)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    .line 35
    move v0, v1

    .line 36
    goto :goto_b

    .line 37
    :cond_24
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    monitor-exit p0

    .line 41
    throw p1

    .line 42
    :cond_29
    :goto_29
    monitor-exit p0

    .line 43
    return-void
.end method

.method public declared-synchronized deleteFileGroup(J)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 4
    cmp-long v0, p1, v0

    .line 6
    if-gez v0, :cond_9

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->deleteFileGroupsById(Ljava/util/List;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->deleteFileGroupsById(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized deleteFileItem(Ljava/lang/String;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItemsByPath(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    if-eqz p1, :cond_52

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_14

    .line 20
    goto :goto_52

    .line 21
    :cond_14
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v4

    .line 27
    if-ge v3, v4, :cond_2a

    .line 29
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 35
    iget-object v4, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_16

    .line 43
    :cond_2a
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 45
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByPaths(Ljava/util/List;)Ljava/util/List;

    .line 48
    move-result-object p1

    .line 49
    :goto_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 52
    move-result v3

    .line 53
    if-ge v2, v3, :cond_46

    .line 55
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 61
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_30

    .line 71
    :cond_46
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 73
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItemsByPath(Ljava/util/List;)V

    .line 76
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 78
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_54

    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 83
    :cond_52
    :goto_52
    monitor-exit p0

    .line 84
    return-void

    .line 85
    :catchall_54
    move-exception p1

    .line 86
    monitor-exit p0

    .line 87
    throw p1
.end method

.method public declared-synchronized deleteGroupDetailByFileItemId(J)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 4
    cmp-long v0, p1, v0

    .line 6
    if-gez v0, :cond_9

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public declared-synchronized deleteGroupDetailByGroupId(J)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 4
    cmp-long v0, p1, v0

    .line 6
    if-gez v0, :cond_9

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileGroupIds(Ljava/util/List;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p2

    .line 10
    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3c

    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v2

    .line 26
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_9

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 38
    new-instance v4, Lcom/android/fileexplorer/dao/file/FileGroupDetail;

    .line 40
    invoke-direct {v4}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;-><init>()V

    .line 43
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->setFileGroupId(Ljava/lang/Long;)V

    .line 50
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->setFileItemId(Ljava/lang/Long;)V

    .line 57
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_19

    .line 61
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 4
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    .line 7
    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByFileItemS(Ljava/util/List;)Ljava/util/List;

    .line 7
    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByPaths(Ljava/util/List;)Ljava/util/List;

    .line 7
    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_9

    .line 30
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 4
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    .line 7
    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->loadAllByGroupName(Ljava/util/List;)Ljava/util/List;

    .line 7
    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
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

    .line 17
    :try_start_1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    .line 18
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

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->loadAllByPath(Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->checkAndGetFileGroupItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 21
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

    .line 1
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

    .line 2
    :try_start_1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    const/4 v1, 0x0

    if-ltz p5, :cond_18

    .line 3
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

    .line 4
    :cond_18
    iput-boolean v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 5
    :goto_1a
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->loadAll(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->checkAndGetFileGroupItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 7
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

    .line 8
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
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

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    .line 12
    :cond_25
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-direct {p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    const/4 p3, 0x0

    .line 14
    iput-boolean p3, p2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 15
    iput-object p1, p2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 16
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

    .line 1
    move-object/from16 v1, p0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_3
    new-instance v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 6
    invoke-direct {v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    .line 9
    new-instance v3, Lcom/android/fileexplorer/util/TimeCost;

    .line 11
    invoke-direct {v3}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 14
    invoke-virtual {v3}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 17
    if-eqz p1, :cond_247

    .line 19
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1a

    .line 25
    goto/16 :goto_247

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v6, Ljava/util/HashMap;

    .line 42
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 45
    new-instance v7, Ljava/util/TreeMap;

    .line 47
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    .line 50
    move-result-object v8

    .line 51
    invoke-direct {v7, v8}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_250

    .line 54
    :try_start_35
    iget-object v8, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 56
    invoke-virtual {v8}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->getAppTagCount()Landroid/database/Cursor;

    .line 59
    move-result-object v8

    .line 60
    if-eqz v8, :cond_81

    .line 62
    move v9, v0

    .line 63
    :goto_3e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 66
    move-result v10

    .line 67
    if-eqz v10, :cond_78

    .line 69
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object v10

    .line 73
    const/4 v11, 0x1

    .line 74
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 77
    move-result v11

    .line 78
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    move-result v12

    .line 82
    if-eqz v12, :cond_55

    .line 84
    const-string v10, "storage"

    .line 86
    :cond_55
    const-string v12, "com.android.providers.downloads.ui"

    .line 88
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v12

    .line 92
    if-nez v12, :cond_76

    .line 94
    const-string v12, "com.miui.mishare.connectivity"

    .line 96
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v12

    .line 100
    if-nez v12, :cond_76

    .line 102
    const-string v12, "com.xlredapple.bluetooth"

    .line 104
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v12

    .line 108
    if-eqz v12, :cond_6e

    .line 110
    goto :goto_76

    .line 111
    :cond_6e
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v11

    .line 115
    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    goto :goto_3e

    .line 119
    :cond_76
    :goto_76
    add-int/2addr v9, v11

    .line 120
    goto :goto_3e

    .line 121
    :cond_78
    const-string v8, "com.android.providers.downloads.ui"

    .line 123
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_81
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudRecentGroupModel;->getCloudFilesCount()I

    .line 133
    move-result v8

    .line 134
    const-string v9, "cloud"

    .line 136
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object v8

    .line 140
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 146
    move-result-object v8

    .line 147
    invoke-virtual {v8}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    .line 150
    move-result-object v8

    .line 151
    new-instance v9, Ljava/util/HashSet;

    .line 153
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 156
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 159
    move-result-object v8

    .line 160
    :goto_9f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    move-result v10

    .line 164
    if-eqz v10, :cond_b7

    .line 166
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    move-result-object v10

    .line 170
    check-cast v10, Lcom/android/fileexplorer/dao/fav/Favorite;

    .line 172
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/fav/Favorite;->getLocation()Ljava/lang/String;

    .line 175
    move-result-object v10

    .line 176
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 179
    move-result-object v10

    .line 180
    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    goto :goto_9f

    .line 184
    :cond_b7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    move-result-object v8

    .line 188
    :cond_bb
    :goto_bb
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    move-result v10

    .line 192
    if-eqz v10, :cond_204

    .line 194
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    move-result-object v10

    .line 198
    check-cast v10, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 200
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 203
    move-result-object v11

    .line 204
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    move-result v12

    .line 208
    if-eqz v12, :cond_d2

    .line 210
    goto :goto_bb

    .line 211
    :cond_d2
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCameraAndScreenShots()Z

    .line 214
    move-result v12

    .line 215
    if-eqz v12, :cond_e9

    .line 217
    const-string v12, "com.xlredapple.camera"

    .line 219
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result v12

    .line 223
    if-nez v12, :cond_bb

    .line 225
    const-string v12, "com.xlredapple.screenshot"

    .line 227
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    move-result v12

    .line 231
    if-eqz v12, :cond_e9

    .line 233
    goto :goto_bb

    .line 234
    :cond_e9
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    .line 237
    move-result-object v12

    .line 238
    invoke-static {v11, v12}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    move-result-object v12

    .line 242
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 245
    move-result v13

    .line 246
    if-eqz v13, :cond_f8

    .line 248
    goto :goto_bb

    .line 249
    :cond_f8
    move/from16 v13, p2

    .line 251
    move/from16 v14, p3

    .line 253
    invoke-direct {v1, v11, v13, v14}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemsByPkgName(Ljava/lang/String;IZ)Ljava/util/List;

    .line 256
    move-result-object v15

    .line 257
    if-eqz v15, :cond_1fc

    .line 259
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 262
    move-result v16

    .line 263
    if-lez v16, :cond_1fc

    .line 265
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 268
    move-result-object v10

    .line 269
    const-string v0, "cloud"

    .line 271
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_1a8

    .line 277
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 280
    move-result-object v0

    .line 281
    :goto_118
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    move-result v10

    .line 285
    if-eqz v10, :cond_1a8

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    move-result-object v10

    .line 291
    check-cast v10, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 293
    move-object/from16 p1, v8

    .line 295
    new-instance v8, Ljava/io/File;

    .line 297
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 300
    move-result-object v13

    .line 301
    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 307
    move-result-object v13

    .line 308
    invoke-static {v13}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 311
    move-result v13

    .line 312
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 315
    move-result-object v17

    .line 316
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    .line 319
    move-result-wide v17

    .line 320
    const-wide/16 v19, 0x0

    .line 322
    cmp-long v17, v17, v19

    .line 324
    if-eqz v17, :cond_153

    .line 326
    invoke-static {v8}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    .line 329
    move-result v17

    .line 330
    if-eqz v17, :cond_153

    .line 332
    if-nez v13, :cond_153

    .line 334
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    .line 337
    move-result v8

    .line 338
    if-eqz v8, :cond_160

    .line 340
    :cond_153
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    .line 346
    move-result-object v8

    .line 347
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 353
    :cond_160
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    .line 356
    move-result-object v8

    .line 357
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 360
    move-result-wide v17

    .line 361
    invoke-static/range {v17 .. v18}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 364
    move-result-object v8

    .line 365
    iput-object v8, v10, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileSize:Ljava/lang/String;

    .line 367
    invoke-static {v10}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/dao/file/FileItem;)Ljava/lang/String;

    .line 370
    move-result-object v8

    .line 371
    iput-object v8, v10, Lcom/android/fileexplorer/dao/file/FileItem;->groupTitle:Ljava/lang/String;

    .line 373
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 376
    move-result-object v8

    .line 377
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 380
    move-result-wide v13

    .line 381
    const/4 v8, 0x0

    .line 382
    invoke-static {v13, v14, v8}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    .line 385
    move-result-object v13

    .line 386
    iput-object v13, v10, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    .line 388
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 391
    move-result-object v8

    .line 392
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 395
    move-result v8

    .line 396
    if-nez v8, :cond_1a0

    .line 398
    instance-of v8, v10, Lcom/android/cloud/bean/CloudFileItem;

    .line 400
    if-eqz v8, :cond_192

    .line 402
    goto :goto_1a0

    .line 403
    :cond_192
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 406
    move-result-object v8

    .line 407
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 410
    move-result-object v8

    .line 411
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 414
    move-result v8

    .line 415
    iput-boolean v8, v10, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    .line 417
    :cond_1a0
    :goto_1a0
    move-object/from16 v8, p1

    .line 419
    move/from16 v13, p2

    .line 421
    move/from16 v14, p3

    .line 423
    goto/16 :goto_118

    .line 425
    :cond_1a8
    move-object/from16 p1, v8

    .line 427
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 430
    move-result v0

    .line 431
    if-nez v0, :cond_1fa

    .line 433
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Ljava/lang/Integer;

    .line 439
    if-eqz v0, :cond_1be

    .line 441
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 444
    move-result v8

    .line 445
    if-gez v8, :cond_1dc

    .line 447
    :cond_1be
    sget-object v8, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    .line 449
    new-instance v10, Ljava/lang/StringBuilder;

    .line 451
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    const-string v13, "pkg file count error:"

    .line 456
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v13, "count:"

    .line 464
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    move-result-object v10

    .line 474
    invoke-static {v8, v10}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_1dc
    const v8, 0x7f0f0014

    .line 480
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 483
    move-result v0

    .line 484
    invoke-static {v8, v0}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    .line 487
    move-result-object v0

    .line 488
    invoke-direct {v1, v12, v11, v15, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->makeAppFileItemGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 491
    move-result-object v0

    .line 492
    const/4 v8, 0x0

    .line 493
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 496
    move-result-object v10

    .line 497
    check-cast v10, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 499
    invoke-virtual {v10}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 502
    move-result-object v10

    .line 503
    invoke-virtual {v7, v10, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    goto :goto_1ff

    .line 507
    :cond_1fa
    const/4 v8, 0x0

    .line 508
    goto :goto_1ff

    .line 509
    :cond_1fc
    move-object/from16 p1, v8

    .line 511
    move v8, v0

    .line 512
    :goto_1ff
    move v0, v8

    .line 513
    move-object/from16 v8, p1

    .line 515
    goto/16 :goto_bb

    .line 517
    :cond_204
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 520
    move-result v0

    .line 521
    if-nez v0, :cond_214

    .line 523
    iget-object v0, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 525
    invoke-virtual {v0, v4}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItems(Ljava/util/List;)V

    .line 528
    iget-object v0, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 530
    invoke-virtual {v0, v5}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V

    .line 533
    :cond_214
    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    .line 536
    move-result v0

    .line 537
    if-lez v0, :cond_240

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v7}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 544
    move-result-object v4

    .line 545
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 548
    iput-object v0, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_225} :catch_226
    .catchall {:try_start_35 .. :try_end_225} :catchall_250

    .line 550
    goto :goto_240

    .line 551
    :catch_226
    move-exception v0

    .line 552
    :try_start_227
    sget-object v4, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    .line 556
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    const-string v6, "loadDateFileGroupItems ERROR:"

    .line 561
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    move-result-object v5

    .line 571
    invoke-static {v4, v5}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 577
    :cond_240
    :goto_240
    const-string v0, "loadAppGroupFileItems cost:"

    .line 579
    invoke-virtual {v3, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V
    :try_end_245
    .catchall {:try_start_227 .. :try_end_245} :catchall_250

    .line 582
    monitor-exit p0

    .line 583
    return-object v2

    .line 584
    :cond_247
    :goto_247
    :try_start_247
    sget-object v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    .line 586
    const-string v3, "appGroups is empty"

    .line 588
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24e
    .catchall {:try_start_247 .. :try_end_24e} :catchall_250

    .line 591
    monitor-exit p0

    .line 592
    return-object v2

    .line 593
    :catchall_250
    move-exception v0

    .line 594
    monitor-exit p0

    .line 595
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 4
    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    .line 7
    new-instance v1, Lcom/android/fileexplorer/util/TimeCost;

    .line 9
    invoke-direct {v1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 12
    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->init()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_ae

    .line 15
    const/4 v2, 0x0

    .line 16
    if-ltz p3, :cond_22

    .line 18
    :try_start_11
    iget-object v3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 20
    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->countAll(I)J

    .line 23
    move-result-wide v3

    .line 24
    int-to-long v5, p3

    .line 25
    cmp-long v3, v3, v5

    .line 27
    if-lez v3, :cond_1e

    .line 29
    const/4 v3, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v3, v2

    .line 32
    :goto_1f
    iput-boolean v3, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    iput-boolean v2, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 37
    :goto_24
    iget-object v3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 39
    invoke-virtual {v3, v2, p1, p2, p3}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->load(IJI)Ljava/util/List;

    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 46
    move-result v4

    .line 47
    if-lez v4, :cond_44

    .line 49
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v4

    .line 53
    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_44

    .line 59
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 65
    invoke-virtual {v5, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setContainCloudFile(Z)V

    .line 68
    goto :goto_34

    .line 69
    :cond_44
    if-eqz p4, :cond_71

    .line 71
    add-int/lit8 p4, p3, 0x1

    .line 73
    invoke-static {p4, p1, p2}, Lcom/android/cloud/fragment/model/CloudRecentGroupModel;->getLatestGroupData(IJ)Ljava/util/List;

    .line 76
    move-result-object p1

    .line 77
    const-string p2, "MiDrive_LOG"

    .line 79
    new-instance p4, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string v2, "fileGroupsInCloud size:"

    .line 86
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 92
    move-result v2

    .line 93
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p4

    .line 100
    invoke-static {p2, p4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {v3, p1, p3, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mergeAndSortGroups(Ljava/util/List;Ljava/util/List;ILcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)Ljava/util/List;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->checkAndGetFileGroupItems(Ljava/util/List;)Ljava/util/List;

    .line 110
    move-result-object p1

    .line 111
    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 113
    goto :goto_77

    .line 114
    :cond_71
    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->checkAndGetFileGroupItems(Ljava/util/List;)Ljava/util/List;

    .line 117
    move-result-object p1

    .line 118
    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 120
    :goto_77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    sget-object p2, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string p2, ", checkAndGetFileGroupItems time: "

    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_8d} :catch_8e
    .catchall {:try_start_11 .. :try_end_8d} :catchall_ae

    .line 142
    goto :goto_ac

    .line 143
    :catch_8e
    move-exception p1

    .line 144
    :try_start_8f
    sget-object p2, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    .line 146
    new-instance p3, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    const-string p4, "loadDateFileGroupItems ERROR:"

    .line 153
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 159
    move-result-object p4

    .line 160
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p3

    .line 167
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ac
    .catchall {:try_start_8f .. :try_end_ac} :catchall_ae

    .line 173
    :goto_ac
    monitor-exit p0

    .line 174
    return-object v0

    .line 175
    :catchall_ae
    move-exception p1

    .line 176
    monitor-exit p0

    .line 177
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 4
    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    .line 7
    new-instance v1, Lcom/android/fileexplorer/util/TimeCost;

    .line 9
    invoke-direct {v1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 12
    invoke-virtual {v1}, Lcom/android/fileexplorer/util/TimeCost;->init()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_94

    .line 15
    const/4 v1, 0x1

    .line 16
    :try_start_f
    iput-boolean v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v2, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 25
    :goto_18
    iget-boolean v2, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 27
    if-eqz v2, :cond_92

    .line 29
    iget-object v2, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 34
    move-result v2

    .line 35
    if-ge v2, p3, :cond_92

    .line 37
    const/4 v2, 0x0

    .line 38
    if-ltz p3, :cond_38

    .line 40
    iget-object v3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 42
    invoke-virtual {v3, v2, p1, p2}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->countAll(IJ)J

    .line 45
    move-result-wide v3

    .line 46
    int-to-long v5, p3

    .line 47
    cmp-long v3, v3, v5

    .line 49
    if-lez v3, :cond_34

    .line 51
    move v3, v1

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v3, v2

    .line 54
    :goto_35
    iput-boolean v3, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 56
    goto :goto_3a

    .line 57
    :cond_38
    iput-boolean v2, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 59
    :goto_3a
    iget-object v3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 61
    invoke-virtual {v3, v2, p1, p2, p3}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->load(IJI)Ljava/util/List;

    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 68
    move-result p2

    .line 69
    if-lez p2, :cond_6c

    .line 71
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemGroupsWithoutAppTag(Ljava/util/List;)Ljava/util/List;

    .line 74
    move-result-object p2

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 78
    move-result v3

    .line 79
    sub-int/2addr v3, v1

    .line 80
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 86
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 93
    move-result-wide v3

    .line 94
    if-eqz p2, :cond_63

    .line 96
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 99
    move-result v2

    .line 100
    :cond_63
    if-lez v2, :cond_6a

    .line 102
    iget-object p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 104
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_6a
    move-wide p1, v3

    .line 108
    goto :goto_18

    .line 109
    :cond_6c
    sget-object p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    .line 111
    const-string p2, "fileGroupsInDb is empty"

    .line 113
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_73} :catch_74
    .catchall {:try_start_f .. :try_end_73} :catchall_94

    .line 116
    goto :goto_92

    .line 117
    :catch_74
    move-exception p1

    .line 118
    :try_start_75
    sget-object p2, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v1, "loadDateFileGroupItems ERROR:"

    .line 127
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p3

    .line 141
    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_75 .. :try_end_92} :catchall_94

    .line 147
    :cond_92
    :goto_92
    monitor-exit p0

    .line 148
    return-object v0

    .line 149
    :catchall_94
    move-exception p1

    .line 150
    monitor-exit p0

    .line 151
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->matchFileGroupByValue(Ljava/lang/String;)Ljava/util/List;

    .line 7
    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->fileTypeMapping(Ljava/lang/String;)I

    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 8
    invoke-virtual {v1, p1, v0}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->matchFileItemsAll(Ljava/lang/String;I)Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_63

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 20
    const/4 v3, 0x0

    .line 21
    const-wide/16 v4, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v2, p2

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->loadAll(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Ljava/util/List;

    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemsByGroups(Ljava/util/List;)Ljava/util/List;

    .line 32
    move-result-object p2

    .line 33
    if-eqz p1, :cond_63

    .line 35
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_63

    .line 41
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_60

    .line 47
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 50
    move-result v0

    .line 51
    add-int/lit8 v0, v0, -0x1

    .line 53
    :goto_34
    if-ltz v0, :cond_60

    .line 55
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v2

    .line 65
    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_5d

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 77
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_40

    .line 91
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 94
    :cond_5d
    add-int/lit8 v0, v0, -0x1

    .line 96
    goto :goto_34

    .line 97
    :cond_60
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_65

    .line 100
    :cond_63
    monitor-exit p0

    .line 101
    return-object p1

    .line 102
    :catchall_65
    move-exception p1

    .line 103
    monitor-exit p0

    .line 104
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->matchFileItemsAllByType(I)Ljava/util/List;

    .line 7
    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 4
    const/4 v2, 0x0

    .line 5
    const-wide/16 v3, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v1, p2

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->loadAll(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemsByGroups(Ljava/util/List;)Ljava/util/List;

    .line 16
    move-result-object p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 17
    monitor-exit p0

    .line 18
    return-object p1

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->matchFileItemsByTag(Ljava/lang/String;)Ljava/util/List;

    .line 7
    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized renameFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByPath(Ljava/lang/String;)Ljava/util/List;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_44

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_44

    .line 16
    new-instance v0, Ljava/io/File;

    .line 18
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p2

    .line 25
    :cond_18
    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_3f

    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_18

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_18

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    .line 63
    goto :goto_18

    .line 64
    :cond_3f
    iget-object p2, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 66
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->update(Ljava/lang/Iterable;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 69
    :cond_44
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :catchall_46
    move-exception p1

    .line 72
    monitor-exit p0

    .line 73
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

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_8

    .line 4
    :try_start_3
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    .line 9
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_35

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 30
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 40
    if-nez v2, :cond_2d

    .line 42
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_11

    .line 46
    :cond_2d
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setId(Ljava/lang/Long;)V

    .line 53
    goto :goto_11

    .line 54
    :cond_35
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    move-result p3

    .line 58
    if-nez p3, :cond_40

    .line 60
    iget-object p3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 62
    invoke-virtual {p3, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    .line 65
    :cond_40
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->connectFileAndGroup(Ljava/util/List;)V
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_45

    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :catchall_45
    move-exception p1

    .line 71
    monitor-exit p0

    .line 72
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

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v6, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v7

    .line 34
    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v8

    .line 38
    if-eqz v8, :cond_b8

    .line 40
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v8

    .line 44
    check-cast v8, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 46
    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->resetFileItems()V

    .line 49
    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 52
    move-result-object v9

    .line 53
    new-instance v10, Ljava/util/ArrayList;

    .line 55
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-static {v8}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 61
    move-result-object v11

    .line 62
    if-eqz v9, :cond_a1

    .line 64
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 67
    move-result v12

    .line 68
    if-nez v12, :cond_a1

    .line 70
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 73
    move-result v12

    .line 74
    new-array v12, v12, [Ljava/lang/Object;

    .line 76
    invoke-static {v10, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 79
    invoke-static {v10, v9}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 82
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object v9

    .line 86
    :goto_55
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v12

    .line 90
    if-eqz v12, :cond_a1

    .line 92
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v12

    .line 96
    check-cast v12, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 98
    new-instance v13, Ljava/io/File;

    .line 100
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 103
    move-result-object v14

    .line 104
    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 110
    move-result-object v14

    .line 111
    invoke-static {v14}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 114
    move-result v14

    .line 115
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 118
    move-result-object v15

    .line 119
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 122
    move-result-wide v15

    .line 123
    const-wide/16 v17, 0x0

    .line 125
    cmp-long v15, v15, v17

    .line 127
    if-eqz v15, :cond_93

    .line 129
    invoke-static {v13}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    .line 132
    move-result v15

    .line 133
    if-eqz v15, :cond_93

    .line 135
    if-nez v14, :cond_93

    .line 137
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    .line 140
    move-result v13

    .line 141
    if-eqz v13, :cond_8f

    .line 143
    goto :goto_93

    .line 144
    :cond_8f
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_55

    .line 148
    :cond_93
    :goto_93
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v12}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    .line 154
    move-result-object v12

    .line 155
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 161
    goto :goto_55

    .line 162
    :cond_a1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 165
    move-result v9

    .line 166
    if-nez v9, :cond_b3

    .line 168
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    .line 174
    move-result-object v8

    .line 175
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    goto/16 :goto_21

    .line 180
    :cond_b3
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    goto/16 :goto_21

    .line 185
    :cond_b8
    invoke-static {v6}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileItem(Ljava/util/List;)Ljava/util/HashSet;

    .line 188
    move-result-object v7

    .line 189
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    move-result-object v6

    .line 193
    :goto_c0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    move-result v8

    .line 197
    if-eqz v8, :cond_e6

    .line 199
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    move-result-object v8

    .line 203
    check-cast v8, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 205
    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 208
    move-result-object v9

    .line 209
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    move-result v9

    .line 213
    if-eqz v9, :cond_d7

    .line 215
    goto :goto_c0

    .line 216
    :cond_d7
    invoke-virtual {v8}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 219
    move-result-object v9

    .line 220
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 223
    move-result-object v9

    .line 224
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 227
    move-result v9

    .line 228
    iput-boolean v9, v8, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    .line 230
    goto :goto_c0

    .line 231
    :cond_e6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 234
    move-result v6

    .line 235
    if-nez v6, :cond_f4

    .line 237
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 240
    move-result v6

    .line 241
    if-nez v6, :cond_f4

    .line 243
    const/4 v1, 0x0

    .line 244
    return v1

    .line 245
    :cond_f4
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->sortGroupList(Ljava/util/List;)Ljava/util/List;

    .line 248
    iget-object v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 250
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->deleteFileItems(Ljava/util/List;)V

    .line 253
    iget-object v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 255
    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V

    .line 258
    iget-object v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 260
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->deleteFileGroups(Ljava/util/List;)V

    .line 263
    iget-object v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    .line 265
    invoke-virtual {v1, v5}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileGroupIds(Ljava/util/List;)V

    .line 268
    invoke-static {v3}, Lcom/android/fileexplorer/util/FavUtil;->removeFromDbByFileItem(Ljava/util/List;)V

    .line 271
    const/4 v1, 0x1

    .line 272
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

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->DATE:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->APP:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    invoke-static {p1, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->filterFileGroup(Ljava/util/List;)V

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;->insertOrUpdate(Ljava/util/List;)V

    .line 20
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;->deleteByFileItemIds(Ljava/util/List;)V

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDetailDataUtils:Lcom/android/fileexplorer/util/dao/FileGroupDetailDataUtils;

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->generateFileGroupDetail(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    return-void
.end method

.method public declared-synchronized updateFileItemFileInfo(Ljava/io/File;)I
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->updateFileInfo(Ljava/io/File;)I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->loadAllFileItemsByPath(Ljava/lang/String;)Ljava/util/List;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->updateFileItem(Ljava/util/List;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 21
    monitor-exit p0

    .line 22
    return v0

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
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

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p2, :cond_b5

    .line 4
    :try_start_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_b5

    .line 10
    if-eqz p1, :cond_b5

    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_13

    .line 18
    goto/16 :goto_b5

    .line 20
    :cond_13
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 22
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 25
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v2, Ljava/util/HashMap;

    .line 35
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAllFileGroups()Ljava/util/List;

    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_47

    .line 48
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v3

    .line 52
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_47

    .line 58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 64
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    goto :goto_33

    .line 72
    :cond_47
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object v3

    .line 76
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_6f

    .line 82
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 88
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 98
    if-nez v5, :cond_67

    .line 100
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_4b

    .line 104
    :cond_67
    invoke-virtual {v5}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v4, v5}, Lcom/android/fileexplorer/dao/file/FileGroup;->setId(Ljava/lang/Long;)V

    .line 111
    goto :goto_4b

    .line 112
    :cond_6f
    sget-object v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->TAG:Ljava/lang/String;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    const-string v4, "updateGroupDetails fileItems:"

    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 127
    move-result v4

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v3

    .line 135
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_94

    .line 144
    iget-object v3, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileGroupDaoUtils:Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;

    .line 146
    invoke-virtual {v3, v1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    .line 149
    :cond_94
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->mFileItemDaoUtils:Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;

    .line 151
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    .line 154
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->connectFileAndGroup(Ljava/util/List;)V

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string p2, "updateGroupDetails end: "

    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_3 .. :try_end_b0} :catchall_b2

    .line 177
    monitor-exit p0

    .line 178
    return-void

    .line 179
    :catchall_b2
    move-exception p1

    .line 180
    monitor-exit p0

    .line 181
    throw p1

    .line 182
    :cond_b5
    :goto_b5
    monitor-exit p0

    .line 183
    return-void
.end method
