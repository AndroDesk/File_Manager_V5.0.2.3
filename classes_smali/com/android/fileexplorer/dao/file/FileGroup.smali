.class public Lcom/android/fileexplorer/dao/file/FileGroup;
.super Ljava/lang/Object;
.source "FileGroup.java"

# interfaces
.implements Lcom/android/fileexplorer/dao/ContentValuable;


# instance fields
.field private appIcon:Ljava/lang/String;

.field private appId:Ljava/lang/Long;

.field private appName:Ljava/lang/String;

.field private transient containCloudFile:Z

.field private transient daoSession:Lcom/android/fileexplorer/dao/file/DaoSession;

.field private dirId:Ljava/lang/Long;

.field private fileItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private groupCreateTime:Ljava/lang/Long;

.field private groupEndTime:Ljava/lang/Long;

.field private groupFileType:Ljava/lang/Integer;

.field private groupKey:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private groupPath:Ljava/lang/String;

.field private groupStartTime:Ljava/lang/Long;

.field private groupSummary:Ljava/lang/String;

.field private groupTag1:Ljava/lang/String;

.field private groupTag2:Ljava/lang/String;

.field private groupTag3:Ljava/lang/String;

.field private groupType:I

.field private id:Ljava/lang/Long;

.field private transient myDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

.field private packageName:Ljava/lang/String;

.field private summaryTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 22

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->id:Ljava/lang/Long;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupKey:Ljava/lang/String;

    move v1, p3

    .line 4
    iput v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupType:I

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupName:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupCreateTime:Ljava/lang/Long;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupStartTime:Ljava/lang/Long;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupEndTime:Ljava/lang/Long;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupPath:Ljava/lang/String;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupFileType:Ljava/lang/Integer;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupSummary:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->dirId:Ljava/lang/Long;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->appName:Ljava/lang/String;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->packageName:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag1:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag2:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag3:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->appIcon:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->appId:Ljava/lang/Long;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->summaryTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public __setDaoSession(Lcom/android/fileexplorer/dao/file/DaoSession;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->daoSession:Lcom/android/fileexplorer/dao/file/DaoSession;

    .line 3
    if-eqz p1, :cond_9

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/DaoSession;->getFileGroupDao()Lcom/android/fileexplorer/dao/file/FileGroupDao;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->myDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

    .line 13
    return-void
.end method

.method public delete()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->myDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 11
    const-string v1, "Entity is detached from DAO context"

    .line 13
    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 16
    throw v0
.end method

.method public getAppIcon()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->appIcon:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getAppId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->appId:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->appName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDirId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->dirId:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getFileItems()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    .line 3
    if-nez v0, :cond_65

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->daoSession:Lcom/android/fileexplorer/dao/file/DaoSession;

    .line 7
    if-eqz v0, :cond_5d

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/DaoSession;->getFileItemDao()Lcom/android/fileexplorer/dao/file/FileItemDao;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :try_start_11
    iget-object v2, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->id:Ljava/lang/Long;

    .line 20
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItemDao;->_queryFileGroup_FileItems(Ljava/lang/Long;)Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 27
    goto :goto_51

    .line 28
    :catch_1b
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    const-string v2, "FileExplorer"

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v4, "数据id: "

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v4, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->id:Ljava/lang/Long;

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v2, "FileExplorer"

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v4, "queryFileItemsError "

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_51
    monitor-enter p0

    .line 83
    :try_start_52
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    .line 85
    if-nez v0, :cond_58

    .line 87
    iput-object v1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    .line 89
    :cond_58
    monitor-exit p0

    .line 90
    goto :goto_65

    .line 91
    :catchall_5a
    move-exception v0

    .line 92
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    .line 93
    throw v0

    .line 94
    :cond_5d
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 96
    const-string v1, "Entity is detached from DAO context"

    .line 98
    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 101
    throw v0

    .line 102
    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    .line 104
    return-object v0
.end method

.method public getFileItemsForConstruct()Ljava/util/List;
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
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    .line 14
    return-object v0
.end method

.method public getGroupCreateTime()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupCreateTime:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getGroupEndTime()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupEndTime:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getGroupFileType()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupFileType:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupKey:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGroupPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGroupStartTime()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupStartTime:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getGroupSummary()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupSummary:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGroupTag1()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag1:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGroupTag2()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag2:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGroupTag3()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag3:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGroupType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupType:I

    .line 3
    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->id:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->packageName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSummaryTime()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->summaryTime:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public initFromContentValues(Landroid/content/ContentValues;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setId(Ljava/lang/Long;)V

    .line 12
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupKey:Lorg/greenrobot/greendao/Property;

    .line 14
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupKey(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupType:Lorg/greenrobot/greendao/Property;

    .line 25
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupType(I)V

    .line 38
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

    .line 40
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupName(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    .line 51
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupCreateTime(Ljava/lang/Long;)V

    .line 60
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupStartTime:Lorg/greenrobot/greendao/Property;

    .line 62
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupStartTime(Ljava/lang/Long;)V

    .line 71
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupEndTime:Lorg/greenrobot/greendao/Property;

    .line 73
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupEndTime(Ljava/lang/Long;)V

    .line 82
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupPath:Lorg/greenrobot/greendao/Property;

    .line 84
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupPath(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupFileType:Lorg/greenrobot/greendao/Property;

    .line 95
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupFileType(Ljava/lang/Integer;)V

    .line 104
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupSummary:Lorg/greenrobot/greendao/Property;

    .line 106
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupSummary(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    .line 117
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setDirId(Ljava/lang/Long;)V

    .line 126
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    .line 128
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppName(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    .line 139
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setPackageName(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag1:Lorg/greenrobot/greendao/Property;

    .line 150
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag1(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag2:Lorg/greenrobot/greendao/Property;

    .line 161
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag2(Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag3:Lorg/greenrobot/greendao/Property;

    .line 172
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag3(Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppIcon:Lorg/greenrobot/greendao/Property;

    .line 183
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppIcon(Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppId:Lorg/greenrobot/greendao/Property;

    .line 194
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppId(Ljava/lang/Long;)V

    .line 203
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->SummaryTime:Lorg/greenrobot/greendao/Property;

    .line 205
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 207
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setSummaryTime(Ljava/lang/Long;)V

    .line 214
    return-void
.end method

.method public isContainCloudFile()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->containCloudFile:Z

    .line 3
    return v0
.end method

.method public refresh()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->myDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->refresh(Ljava/lang/Object;)V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 11
    const-string v1, "Entity is detached from DAO context"

    .line 13
    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 16
    throw v0
.end method

.method public declared-synchronized resetFileItems()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    iput-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_6
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public setAppIcon(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->appIcon:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setAppId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->appId:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->appName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setContainCloudFile(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->containCloudFile:Z

    .line 3
    return-void
.end method

.method public setDirId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->dirId:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setGroupCreateTime(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupCreateTime:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setGroupEndTime(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupEndTime:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setGroupFileType(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupFileType:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public setGroupKey(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupKey:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setGroupPath(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupPath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setGroupStartTime(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupStartTime:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setGroupSummary(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupSummary:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setGroupTag1(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag1:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setGroupTag2(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag2:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setGroupTag3(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag3:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setGroupType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupType:I

    .line 3
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->id:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->packageName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSummaryTime(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->summaryTime:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 8
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupKey:Lorg/greenrobot/greendao/Property;

    .line 19
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupType:Lorg/greenrobot/greendao/Property;

    .line 30
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupType()I

    .line 35
    move-result v2

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

    .line 45
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    .line 56
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupStartTime:Lorg/greenrobot/greendao/Property;

    .line 67
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupStartTime()Ljava/lang/Long;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupEndTime:Lorg/greenrobot/greendao/Property;

    .line 78
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupEndTime()Ljava/lang/Long;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupPath:Lorg/greenrobot/greendao/Property;

    .line 89
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupPath()Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupFileType:Lorg/greenrobot/greendao/Property;

    .line 100
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupFileType()Ljava/lang/Integer;

    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupSummary:Lorg/greenrobot/greendao/Property;

    .line 111
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupSummary()Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    .line 122
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getDirId()Ljava/lang/Long;

    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    .line 133
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    .line 144
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getPackageName()Ljava/lang/String;

    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag1:Lorg/greenrobot/greendao/Property;

    .line 155
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag1()Ljava/lang/String;

    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag2:Lorg/greenrobot/greendao/Property;

    .line 166
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag2()Ljava/lang/String;

    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag3:Lorg/greenrobot/greendao/Property;

    .line 177
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag3()Ljava/lang/String;

    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppIcon:Lorg/greenrobot/greendao/Property;

    .line 188
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppIcon()Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppId:Lorg/greenrobot/greendao/Property;

    .line 199
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppId()Ljava/lang/Long;

    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->SummaryTime:Lorg/greenrobot/greendao/Property;

    .line 210
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getSummaryTime()Ljava/lang/Long;

    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    return-object v0
.end method

.method public update()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->myDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 11
    const-string v1, "Entity is detached from DAO context"

    .line 13
    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 16
    throw v0
.end method
