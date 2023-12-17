.class public Lcom/android/cloud/fragment/model/CloudRecentGroupModel;
.super Ljava/lang/Object;
.source "CloudRecentGroupModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudRecentGroupModel"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudFilesCount()I
    .registers 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/cloud/CloudDriveManager;->getCloudFilesCount()I

    .line 8
    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    goto :goto_21

    .line 10
    :catch_9
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v2, "getCloudFilesCount error:"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "CloudRecentGroupModel"

    .line 30
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, -0x1

    .line 34
    :goto_21
    return v0
.end method

.method public static getCloudFilesLimit(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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
    :try_start_5
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, p0, v2}, Lcom/android/cloud/CloudDriveManager;->getCloudFilesLimit(IZ)Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 19
    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3f

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 31
    invoke-static {v1}, Lcom/android/cloud/util/CloudFileUtils;->transSyncInfoToFileItem(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/cloud/bean/CloudFileItem;

    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_12

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    .line 40
    goto :goto_12

    .line 41
    :catch_28
    move-exception p0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v2, "getCloudFilesCount error:"

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    const-string v1, "CloudRecentGroupModel"

    .line 61
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_3f
    return-object v0
.end method

.method public static getLatestFileData(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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
    :try_start_5
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, ""

    .line 12
    invoke-virtual {v1, p0, v2}, Lcom/android/cloud/CloudDriveManager;->getLatestGroupData(ILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_5a

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/util/List;

    .line 42
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v2

    .line 46
    :cond_2d
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_17

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 58
    invoke-static {v3}, Lcom/android/cloud/util/CloudFileUtils;->transSyncInfoToFileItem(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/cloud/bean/CloudFileItem;

    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_2d

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_43

    .line 67
    goto :goto_2d

    .line 68
    :catch_43
    move-exception p0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string v2, "getLatestGroupData error:"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    const-string v1, "CloudRecentGroupModel"

    .line 88
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_5a
    return-object v0
.end method

.method public static getLatestGroupData(IJ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-wide/16 v1, 0x0

    .line 8
    cmp-long v1, p1, v1

    .line 10
    if-nez v1, :cond_e

    .line 12
    :try_start_b
    const-string p1, ""

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-static {p1, p2}, Lcom/micloud/midrive/utils/CalendarUtils;->generateGroupId(J)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    :goto_12
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, p0, p1}, Lcom/android/cloud/CloudDriveManager;->getLatestGroupData(ILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p1

    .line 35
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_8a

    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Ljava/lang/String;

    .line 47
    new-instance v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 49
    invoke-direct {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;-><init>()V

    .line 52
    invoke-virtual {v1, p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupKey(Ljava/lang/String;)V

    .line 55
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setId(Ljava/lang/Long;)V

    .line 62
    invoke-static {p2}, Lcom/android/fileexplorer/model/TimeUtils;->getTimeByDateStr(Ljava/lang/String;)J

    .line 65
    move-result-wide v2

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupCreateTime(Ljava/lang/Long;)V

    .line 73
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItemsForConstruct()Ljava/util/List;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Ljava/util/List;

    .line 83
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object p2

    .line 87
    :cond_56
    :goto_56
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_6c

    .line 93
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 99
    invoke-static {v3}, Lcom/android/cloud/util/CloudFileUtils;->transSyncInfoToFileItem(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/cloud/bean/CloudFileItem;

    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_56

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_56

    .line 109
    :cond_6c
    invoke-static {v2}, Lcom/android/cloud/fragment/model/CloudRecentGroupModel;->sortFiles(Ljava/util/List;)V

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_72} :catch_73

    .line 115
    goto :goto_22

    .line 116
    :catch_73
    move-exception p0

    .line 117
    const-string p1, "getLatestGroupData error:"

    .line 119
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    const-string p1, "CloudRecentGroupModel"

    .line 136
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_8a
    return-object v0
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
    new-instance v0, Lcom/android/cloud/fragment/model/CloudRecentGroupModel$1;

    .line 3
    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudRecentGroupModel$1;-><init>()V

    .line 6
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9
    return-void
.end method
