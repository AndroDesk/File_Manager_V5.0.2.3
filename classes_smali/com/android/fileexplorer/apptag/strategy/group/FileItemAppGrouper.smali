.class Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;
.super Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;
.source "FileItemAppGrouper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileItemAppGrouper"


# instance fields
.field private mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

.field private mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

.field private mStorageVolumes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;-><init>()V

    return-void
.end method

.method private formatDate(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/android/fileexplorer/model/DateUtils;->formatGroup(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateGroupKey(Lcom/android/fileexplorer/dao/file/FileGroup;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupType()I

    move-result v2

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFileGroupEndTime(J)J
    .registers 10

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    move-result v1

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    move-result v2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    move-result v3

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getHourOfDay(J)I

    move-result v4

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getMinuteOfHour(J)I

    move-result p1

    const/16 p2, 0x3b

    const/16 v0, 0x1e

    if-ltz p1, :cond_1e

    if-gt p1, v0, :cond_1e

    move v5, v0

    goto :goto_26

    :cond_1e
    if-le p1, v0, :cond_24

    if-gt p1, p2, :cond_24

    move v5, p2

    goto :goto_26

    :cond_24
    const/4 p1, 0x0

    move v5, p1

    :goto_26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 v6, 0x3b

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p2, 0xe

    const/16 v0, 0x3e7

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    return-wide p1
.end method

.method private getFileGroupStartTime(J)J
    .registers 11

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    move-result v1

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    move-result v2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    move-result v3

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getHourOfDay(J)I

    move-result v4

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getMinuteOfHour(J)I

    move-result p1

    const/16 p2, 0x1e

    const/4 v7, 0x0

    if-ltz p1, :cond_1c

    if-gt p1, p2, :cond_1c

    goto :goto_26

    :cond_1c
    if-le p1, p2, :cond_26

    const/16 p2, 0x3b

    if-gt p1, p2, :cond_26

    const/16 p1, 0x1f

    move v5, p1

    goto :goto_27

    :cond_26
    :goto_26
    move v5, v7

    :goto_27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p2, 0xe

    invoke-virtual {p1, p2, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    return-wide p1
.end method

.method private initFromDb(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 6

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getConfigForPath(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirectName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setDirId(Ljava/lang/Long;)V

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppId(Ljava/lang/Long;)V

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag1(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getAppInfoByAppId(J)Lcom/android/fileexplorer/dao/scan/AppInfo;

    move-result-object p2

    if-eqz p2, :cond_96

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppIcon(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setPackageName(Ljava/lang/String;)V

    goto :goto_96

    :cond_4e
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getAppInfoByPkgName(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setPackageName(Ljava/lang/String;)V

    goto :goto_89

    :cond_6f
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mStorageVolumes:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getMountedStorageBySubPath(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    if-eqz v0, :cond_86

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeAppName(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppName(Ljava/lang/String;)V

    :cond_86
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setPackageName(Ljava/lang/String;)V

    :goto_89
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mStorageVolumes:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupName(Ljava/lang/String;)V

    :cond_96
    :goto_96
    return-void
.end method

.method private isInSameGroupTime(JJ)Z
    .registers 8

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    move-result v1

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    move-result p1

    invoke-static {p3, p4}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    move-result p2

    invoke-static {p3, p4}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    move-result v2

    invoke-static {p3, p4}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    move-result p3

    if-ne v0, p2, :cond_20

    if-ne v1, v2, :cond_20

    if-ne p1, p3, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method private sortByDate(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper$1;-><init>(Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_10
    return-void
.end method

.method private sortByParentDir(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    new-instance v0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper$2;-><init>(Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ")",
            "Lcom/android/fileexplorer/dao/file/FileGroup;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->isInSameGroupTime(JJ)Z

    move-result v1

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return-object v0
.end method

.method public bridge synthetic findSameGroup(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;

    move-result-object p1

    return-object p1
.end method

.method public findSameGroupFromLast(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->isInSameGroupTime(JJ)Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    return-object p1

    :cond_2f
    return-object v1
.end method

.method public bridge synthetic findSameGroupFromLast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->findSameGroupFromLast(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;

    move-result-object p1

    return-object p1
.end method

.method public makeNewFileGroup(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-direct {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupType(I)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupCreateTime(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->getFileGroupStartTime(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupStartTime(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->getFileGroupEndTime(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupEndTime(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupFileType(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupSummary(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setSummaryTime(Ljava/lang/Long;)V

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->initFromDb(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->generateGroupKey(Lcom/android/fileexplorer/dao/file/FileGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItemsForConstruct()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    return-object v0
.end method

.method public bridge synthetic makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->makeNewFileGroup(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;

    move-result-object p1

    return-object p1
.end method

.method public onPreGroup(Ljava/util/List;)Ljava/util/List;
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->sortByDate(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->sortByParentDir(Ljava/util/List;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mStorageVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onSameGroup(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItemsForConstruct()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onSameGroup(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->onSameGroup(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V

    return-void
.end method

.method public setFileItemAppName(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 4

    if-eqz p1, :cond_56

    if-nez p2, :cond_5

    goto :goto_56

    :cond_5
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setAppName(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setGroupName(Ljava/lang/String;)V

    :cond_3b
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag2(Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public bridge synthetic setFileItemAppName(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->setFileItemAppName(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V

    return-void
.end method
