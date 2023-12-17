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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAbsGrouper;-><init>()V

    .line 4
    return-void
.end method

.method private formatDate(J)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 3
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/model/DateUtils;->formatGroup(Ljava/util/Date;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method private generateGroupKey(Lcom/android/fileexplorer/dao/file/FileGroup;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupType()I

    .line 12
    move-result v2

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->formatDate(J)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupPath()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method private getFileGroupEndTime(J)J
    .registers 10

    .line 1
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    .line 4
    move-result v1

    .line 5
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    .line 8
    move-result v2

    .line 9
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    .line 12
    move-result v3

    .line 13
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getHourOfDay(J)I

    .line 16
    move-result v4

    .line 17
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getMinuteOfHour(J)I

    .line 20
    move-result p1

    .line 21
    const/16 p2, 0x3b

    .line 23
    const/16 v0, 0x1e

    .line 25
    if-ltz p1, :cond_1e

    .line 27
    if-gt p1, v0, :cond_1e

    .line 29
    move v5, v0

    .line 30
    goto :goto_26

    .line 31
    :cond_1e
    if-le p1, v0, :cond_24

    .line 33
    if-gt p1, p2, :cond_24

    .line 35
    move v5, p2

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    const/4 p1, 0x0

    .line 38
    move v5, p1

    .line 39
    :goto_26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 42
    move-result-object p1

    .line 43
    const/16 v6, 0x3b

    .line 45
    move-object v0, p1

    .line 46
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 49
    const/16 p2, 0xe

    .line 51
    const/16 v0, 0x3e7

    .line 53
    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    .line 56
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 63
    move-result-wide p1

    .line 64
    return-wide p1
.end method

.method private getFileGroupStartTime(J)J
    .registers 11

    .line 1
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    .line 4
    move-result v1

    .line 5
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    .line 8
    move-result v2

    .line 9
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    .line 12
    move-result v3

    .line 13
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getHourOfDay(J)I

    .line 16
    move-result v4

    .line 17
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getMinuteOfHour(J)I

    .line 20
    move-result p1

    .line 21
    const/16 p2, 0x1e

    .line 23
    const/4 v7, 0x0

    .line 24
    if-ltz p1, :cond_1c

    .line 26
    if-gt p1, p2, :cond_1c

    .line 28
    goto :goto_26

    .line 29
    :cond_1c
    if-le p1, p2, :cond_26

    .line 31
    const/16 p2, 0x3b

    .line 33
    if-gt p1, p2, :cond_26

    .line 35
    const/16 p1, 0x1f

    .line 37
    move v5, p1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    :goto_26
    move v5, v7

    .line 40
    :goto_27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 43
    move-result-object p1

    .line 44
    const/4 v6, 0x0

    .line 45
    move-object v0, p1

    .line 46
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 49
    const/16 p2, 0xe

    .line 51
    invoke-virtual {p1, p2, v7}, Ljava/util/Calendar;->set(II)V

    .line 54
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 61
    move-result-wide p1

    .line 62
    return-wide p1
.end method

.method private initFromDb(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getConfigForPath(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_4e

    .line 15
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirectName()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupName(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setDirId(Ljava/lang/Long;)V

    .line 29
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppId(Ljava/lang/Long;)V

    .line 36
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirTag()Ljava/lang/String;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag1(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 50
    move-result-wide v1

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getAppInfoByAppId(J)Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_96

    .line 57
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppName()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppName(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppIcon()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppIcon(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setPackageName(Ljava/lang/String;)V

    .line 78
    goto :goto_96

    .line 79
    :cond_4e
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getAppInfoByPkgName(Ljava/lang/String;)Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_6f

    .line 97
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppName()Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setPackageName(Ljava/lang/String;)V

    .line 111
    goto :goto_89

    .line 112
    :cond_6f
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    iget-object v2, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mStorageVolumes:Ljava/util/ArrayList;

    .line 118
    invoke-static {v0, v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getMountedStorageBySubPath(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 121
    move-result-object v0

    .line 122
    if-eqz v0, :cond_86

    .line 124
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeAppName(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppName(Ljava/lang/String;)V

    .line 135
    :cond_86
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setPackageName(Ljava/lang/String;)V

    .line 138
    :goto_89
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 141
    move-result-object p2

    .line 142
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mStorageVolumes:Ljava/util/ArrayList;

    .line 144
    invoke-static {p2, v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupName(Ljava/lang/String;)V

    .line 151
    :cond_96
    :goto_96
    return-void
.end method

.method private isInSameGroupTime(JJ)Z
    .registers 8

    .line 1
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    .line 8
    move-result v1

    .line 9
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    .line 12
    move-result p1

    .line 13
    invoke-static {p3, p4}, Lcom/android/fileexplorer/model/TimeUtils;->getYearOfTime(J)I

    .line 16
    move-result p2

    .line 17
    invoke-static {p3, p4}, Lcom/android/fileexplorer/model/TimeUtils;->getMonthOfTime(J)I

    .line 20
    move-result v2

    .line 21
    invoke-static {p3, p4}, Lcom/android/fileexplorer/model/TimeUtils;->getDayOfTime(J)I

    .line 24
    move-result p3

    .line 25
    if-ne v0, p2, :cond_20

    .line 27
    if-ne v1, v2, :cond_20

    .line 29
    if-ne p1, p3, :cond_20

    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
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

    .line 1
    if-eqz p1, :cond_10

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_10

    .line 9
    new-instance v0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper$1;

    .line 11
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper$1;-><init>(Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;)V

    .line 14
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 17
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

    .line 1
    if-eqz p1, :cond_a

    .line 3
    new-instance v0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper$2;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper$2;-><init>(Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;)V

    .line 8
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
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

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 3
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

    .line 4
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

    .line 1
    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->findSameGroup(Ljava/util/List;Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;

    move-result-object p1

    return-object p1
.end method

.method public findSameGroupFromLast(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 3
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

    .line 4
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_2f

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    return-object p1

    :cond_2f
    return-object v1
.end method

.method public bridge synthetic findSameGroupFromLast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->findSameGroupFromLast(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;

    move-result-object p1

    return-object p1
.end method

.method public makeNewFileGroup(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/dao/file/FileGroup;
    .registers 5

    .line 2
    new-instance v0, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-direct {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupType(I)V

    .line 4
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupCreateTime(Ljava/lang/Long;)V

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->getFileGroupStartTime(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupStartTime(Ljava/lang/Long;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->getFileGroupEndTime(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupEndTime(Ljava/lang/Long;)V

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupPath(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupFileType(Ljava/lang/Integer;)V

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupSummary(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setSummaryTime(Ljava/lang/Long;)V

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->initFromDb(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->generateGroupKey(Lcom/android/fileexplorer/dao/file/FileGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupKey(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItemsForConstruct()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mCurrentFileGroup:Lcom/android/fileexplorer/dao/file/FileGroup;

    return-object v0
.end method

.method public bridge synthetic makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->sortByDate(Ljava/util/List;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->sortByParentDir(Ljava/util/List;)V

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mAppScanConfigManager:Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->mStorageVolumes:Ljava/util/ArrayList;

    .line 28
    return-object v0
.end method

.method public onSameGroup(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 3

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItemsForConstruct()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onSameGroup(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
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

    .line 2
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

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setAppName(Ljava/lang/String;)V

    .line 4
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

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setGroupName(Ljava/lang/String;)V

    .line 6
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

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag2(Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public bridge synthetic setFileItemAppName(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemAppGrouper;->setFileItemAppName(Lcom/android/fileexplorer/dao/file/FileGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V

    return-void
.end method
