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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 22

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->id:Ljava/lang/Long;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupKey:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupType:I

    move-object v1, p4

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupName:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupCreateTime:Ljava/lang/Long;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupStartTime:Ljava/lang/Long;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupEndTime:Ljava/lang/Long;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupPath:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupFileType:Ljava/lang/Integer;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupSummary:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->dirId:Ljava/lang/Long;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->appName:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->packageName:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag1:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag2:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag3:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->appIcon:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->appId:Ljava/lang/Long;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileGroup;->summaryTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public __setDaoSession(Lcom/android/fileexplorer/dao/file/DaoSession;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->daoSession:Lcom/android/fileexplorer/dao/file/DaoSession;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/DaoSession;->getFileGroupDao()Lcom/android/fileexplorer/dao/file/FileGroupDao;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->myDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

    return-void
.end method

.method public delete()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->myDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    return-void

    :cond_8
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAppIcon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->appIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->appId:Ljava/lang/Long;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->dirId:Ljava/lang/Long;

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

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->daoSession:Lcom/android/fileexplorer/dao/file/DaoSession;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/DaoSession;->getFileItemDao()Lcom/android/fileexplorer/dao/file/FileItemDao;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_11
    iget-object v2, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->id:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/dao/file/FileItemDao;->_queryFileGroup_FileItems(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_51

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "FileExplorer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "数据id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->id:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "FileExplorer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryFileItemsError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    monitor-enter p0

    :try_start_52
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    if-nez v0, :cond_58

    iput-object v1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    :cond_58
    monitor-exit p0

    goto :goto_65

    :catchall_5a
    move-exception v0

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    throw v0

    :cond_5d
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

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

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;

    return-object v0
.end method

.method public getGroupCreateTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupCreateTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getGroupEndTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupEndTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getGroupFileType()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupFileType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupStartTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupStartTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getGroupSummary()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupTag1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag1:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupTag2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag2:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupTag3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag3:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupType()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupType:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->summaryTime:Ljava/lang/Long;

    return-object v0
.end method

.method public initFromContentValues(Landroid/content/ContentValues;)V
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setId(Ljava/lang/Long;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupKey:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupKey(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupType:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupType(I)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupName(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupCreateTime(Ljava/lang/Long;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupStartTime:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupStartTime(Ljava/lang/Long;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupEndTime:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupEndTime(Ljava/lang/Long;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupPath:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupPath(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupFileType:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupFileType(Ljava/lang/Integer;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupSummary:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupSummary(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setDirId(Ljava/lang/Long;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppName(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setPackageName(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag1:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag1(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag2:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag2(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag3:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag3(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppIcon:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppIcon(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppId:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppId(Ljava/lang/Long;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->SummaryTime:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setSummaryTime(Ljava/lang/Long;)V

    return-void
.end method

.method public isContainCloudFile()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->containCloudFile:Z

    return v0
.end method

.method public refresh()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->myDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->refresh(Ljava/lang/Object;)V

    return-void

    :cond_8
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized resetFileItems()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->fileItems:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAppIcon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->appIcon:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->appId:Ljava/lang/Long;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->appName:Ljava/lang/String;

    return-void
.end method

.method public setContainCloudFile(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->containCloudFile:Z

    return-void
.end method

.method public setDirId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->dirId:Ljava/lang/Long;

    return-void
.end method

.method public setGroupCreateTime(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupCreateTime:Ljava/lang/Long;

    return-void
.end method

.method public setGroupEndTime(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupEndTime:Ljava/lang/Long;

    return-void
.end method

.method public setGroupFileType(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupFileType:Ljava/lang/Integer;

    return-void
.end method

.method public setGroupKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupKey:Ljava/lang/String;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setGroupPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupPath:Ljava/lang/String;

    return-void
.end method

.method public setGroupStartTime(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupStartTime:Ljava/lang/Long;

    return-void
.end method

.method public setGroupSummary(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupSummary:Ljava/lang/String;

    return-void
.end method

.method public setGroupTag1(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag1:Ljava/lang/String;

    return-void
.end method

.method public setGroupTag2(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag2:Ljava/lang/String;

    return-void
.end method

.method public setGroupTag3(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupTag3:Ljava/lang/String;

    return-void
.end method

.method public setGroupType(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->groupType:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSummaryTime(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->summaryTime:Ljava/lang/Long;

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupKey:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupType:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupStartTime:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupStartTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupEndTime:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupEndTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupPath:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupFileType:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupFileType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupSummary:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getDirId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag1:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag2:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag3:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppIcon:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppId:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->SummaryTime:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getSummaryTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public update()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroup;->myDao:Lcom/android/fileexplorer/dao/file/FileGroupDao;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    return-void

    :cond_8
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
