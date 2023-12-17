.class public Lcom/android/cloud/util/CloudFileUtils;
.super Ljava/lang/Object;
.source "CloudFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/util/CloudFileUtils$FileCloudState;,
        Lcom/android/cloud/util/CloudFileUtils$FileStatus;
    }
.end annotation


# static fields
.field public static final LOCAL_FILE_ID:J = -0x1L

.field private static final textSeparator:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const v0, 0x7f11012a

    .line 4
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/cloud/util/CloudFileUtils;->textSeparator:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCloudLocalFiles(Ljava/util/List;)V
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
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_24

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 17
    instance-of v1, v0, Lcom/android/cloud/bean/CloudFileItem;

    .line 19
    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_4

    .line 31
    const-string v1, ""

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 36
    goto :goto_4

    .line 37
    :cond_24
    return-void
.end method

.method public static errorToast(Lcom/micloud/midrive/task/BaseTask$TaskException;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_2d

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_2d

    .line 10
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;

    .line 16
    if-eqz v0, :cond_18

    .line 18
    const p0, 0x7f1102d3

    .line 21
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 24
    goto :goto_2d

    .line 25
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 28
    move-result-object p0

    .line 29
    instance-of p0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$DiskFullException;

    .line 31
    if-eqz p0, :cond_27

    .line 33
    const p0, 0x7f1102ff

    .line 36
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 39
    goto :goto_2d

    .line 40
    :cond_27
    const p0, 0x7f110323

    .line 43
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method

.method public static getCheckedCloudFileInfos(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/cloud/bean/CloudFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_29

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 24
    if-eqz v2, :cond_9

    .line 26
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 28
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_9

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_9

    .line 42
    :cond_29
    return-object v0
.end method

.method public static getCheckedCloudIds(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2d

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 24
    if-eqz v2, :cond_9

    .line 26
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 28
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_9

    .line 38
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_9

    .line 46
    :cond_2d
    return-object v0
.end method

.method public static getCheckedCloudLocalFiles(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2b

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 24
    if-eqz v2, :cond_9

    .line 26
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 28
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_9

    .line 36
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_9

    .line 44
    :cond_2b
    return-object v0
.end method

.method public static getCheckedFileStatus(Ljava/util/List;)Lcom/android/cloud/listener/choice/CheckedFileStatus;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/cloud/listener/choice/CheckedFileStatus;

    .line 3
    invoke-direct {v0}, Lcom/android/cloud/listener/choice/CheckedFileStatus;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2f

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_16

    .line 22
    goto :goto_9

    .line 23
    :cond_16
    invoke-static {v1}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatus(Ljava/lang/Object;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 29
    const/4 v3, 0x1

    .line 30
    if-ne v1, v2, :cond_23

    .line 32
    invoke-virtual {v0, v3}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->setContainOnlyCloudFile(Z)V

    .line 35
    goto :goto_9

    .line 36
    :cond_23
    sget-object v2, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL_AND_CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 38
    if-ne v1, v2, :cond_2b

    .line 40
    invoke-virtual {v0, v3}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->setContainCachedCloudFile(Z)V

    .line 43
    goto :goto_9

    .line 44
    :cond_2b
    invoke-virtual {v0, v3}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->setContainLocalFile(Z)V

    .line 47
    goto :goto_9

    .line 48
    :cond_2f
    return-object v0
.end method

.method public static getCheckedTranferIds(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_23

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 24
    if-eqz v2, :cond_9

    .line 26
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 28
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_9

    .line 36
    :cond_23
    return-object v0
.end method

.method public static getCloudFileInfoV2(Lcom/android/cloud/bean/CloudFileItem;)Lcom/android/cloud/bean/CloudFileInfo;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    new-instance v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 7
    invoke-direct {v1}, Lcom/android/cloud/bean/CloudFileInfo;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getModifyTime()Ljava/lang/Long;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 20
    const-wide/16 v4, 0x0

    .line 22
    cmp-long v2, v2, v4

    .line 24
    if-nez v2, :cond_1a

    .line 26
    return-object v0

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getFileName()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 36
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 43
    move-result-wide v2

    .line 44
    iput-wide v2, v1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 46
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getModifyTime()Ljava/lang/Long;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 53
    move-result-wide v2

    .line 54
    iput-wide v2, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 56
    iget-boolean v0, p0, Lcom/android/cloud/bean/CloudFileItem;->isFav:Z

    .line 58
    iput-boolean v0, v1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 60
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    iput-object v0, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setCloudId(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getCreateTime()Ljava/lang/Long;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setCreateTime(Ljava/lang/Long;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getLocalModifyTime()Ljava/lang/Long;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setLocalModifyTime(Ljava/lang/Long;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setType(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getParentId()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setParentId(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getRevision()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setRevision(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getStatus()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setStatus(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getLabel()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setLabel(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getPrivacyStatus()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setPrivacyStatus(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getCoverUrl()Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setCoverUrl(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getSha1()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setSha1(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getTransferId()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setTransferId(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getCloudLocalFileId()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setCloudLocalFileId(Ljava/lang/String;)V

    .line 157
    return-object v1
.end method

.method public static getCloudFileItem(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/cloud/bean/CloudFileItem;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/cloud/bean/CloudFileItem;

    .line 3
    invoke-direct {v0}, Lcom/android/cloud/bean/CloudFileItem;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setCloudId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setFileName(Ljava/lang/String;)V

    .line 16
    if-eqz p3, :cond_27

    .line 18
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    .line 40
    :cond_27
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setParentDir(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 57
    move-result-wide p2

    .line 58
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 65
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 68
    move-result-wide p0

    .line 69
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setFileSize(Ljava/lang/Long;)V

    .line 76
    return-object v0
.end method

.method public static getFileStatus(Ljava/lang/Object;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/android/cloud/bean/CloudFileItem;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p0, Lcom/android/cloud/bean/CloudFileItem;

    .line 7
    invoke-static {p0}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    instance-of v0, p0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 14
    if-eqz v0, :cond_16

    .line 16
    check-cast p0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 18
    invoke-static {p0}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileInfo(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_16
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 25
    return-object p0
.end method

.method public static getFileStatusByFileInfo(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 3
    if-eqz v0, :cond_2e

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 15
    return-object p0

    .line 16
    :cond_f
    check-cast p0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 18
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2b

    .line 28
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    const-string v0, "-"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_28

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL_AND_CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 43
    return-object p0

    .line 44
    :cond_2b
    :goto_2b
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 46
    return-object p0

    .line 47
    :cond_2e
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 49
    return-object p0
.end method

.method public static getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/android/cloud/bean/CloudFileItem;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_11

    .line 15
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL_AND_CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 20
    :goto_13
    return-object p0

    .line 21
    :cond_14
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 23
    return-object p0
.end method

.method public static getLocalFiles(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 24
    if-nez v2, :cond_9

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    return-object v0
.end method

.method public static getSupportDragFileInfos(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p0, :cond_31

    .line 8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_e

    .line 14
    goto :goto_31

    .line 15
    :cond_e
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
    if-eqz v1, :cond_31

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 31
    if-eqz v1, :cond_12

    .line 33
    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 35
    if-nez v2, :cond_12

    .line 37
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2d

    .line 45
    goto :goto_12

    .line 46
    :cond_2d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_12

    .line 50
    :cond_31
    :goto_31
    return-object v0
.end method

.method public static transFileInfoToUploadInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Lcom/micloud/midrive/infos/UploadFileInfo;
    .registers 14

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v11, Lcom/micloud/midrive/infos/UploadFileInfo;

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    iget-object v3, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 15
    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 17
    iget-wide v5, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 19
    iget-wide v9, p0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 21
    move-object v0, v11

    .line 22
    move-object v2, p1

    .line 23
    move-wide v7, v9

    .line 24
    invoke-direct/range {v0 .. v10}, Lcom/micloud/midrive/infos/UploadFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 27
    return-object v11
.end method

.method private static transLocalInfoToCloudFileInfo(Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Lcom/android/cloud/bean/CloudFileInfo;
    .registers 7

    .line 1
    new-instance v0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/cloud/bean/CloudFileInfo;-><init>()V

    .line 6
    if-nez p2, :cond_9

    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_9
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 13
    move-result-wide v1

    .line 14
    iput-wide v1, v0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 16
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 25
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 28
    move-result-wide v2

    .line 29
    iput-wide v2, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 31
    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 33
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setCloudId(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setCloudLocalFileId(Ljava/lang/String;)V

    .line 39
    const-wide/16 v1, -0x1

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object p0

    .line 45
    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 47
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 53
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 56
    move-result-wide v1

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setCreateTime(Ljava/lang/Long;)V

    .line 64
    const-string p0, ""

    .line 66
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setType(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {v0, p2}, Lcom/android/cloud/bean/CloudFileInfo;->setParentId(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setRevision(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setStatus(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setLabel(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p1}, Lcom/android/cloud/bean/CloudFileInfo;->setTransferId(Ljava/lang/String;)V

    .line 88
    return-object v0
.end method

.method public static transSyncInfoToCloudFileInfo(Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/cloud/bean/CloudFileInfo;
    .registers 7

    .line 1
    iget-object v0, p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_6
    new-instance v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 9
    invoke-direct {v1}, Lcom/android/cloud/bean/CloudFileInfo;-><init>()V

    .line 12
    iget-wide v2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    .line 14
    iput-wide v2, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 16
    iget-object v2, p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 18
    if-eqz v2, :cond_1a

    .line 20
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    iget-object v2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 29
    iput-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 31
    :goto_1e
    iget-object v2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 33
    const-string v3, "folder"

    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    iput-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 41
    iget-wide v2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 43
    iput-wide v2, v1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 45
    const/4 v2, 0x0

    .line 46
    iput-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 48
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getFolderItemCount()I

    .line 51
    move-result p2

    .line 52
    iput p2, v1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 54
    iget-object p2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 56
    invoke-virtual {v1, p2}, Lcom/android/cloud/bean/CloudFileInfo;->setCloudId(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setCloudLocalFileId(Ljava/lang/String;)V

    .line 62
    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 64
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 67
    move-result-object p0

    .line 68
    iput-object p0, v1, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 70
    iget-wide v2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->createTime:J

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setCreateTime(Ljava/lang/Long;)V

    .line 79
    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 81
    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setType(Ljava/lang/String;)V

    .line 84
    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 86
    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setParentId(Ljava/lang/String;)V

    .line 89
    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    .line 91
    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setRevision(Ljava/lang/String;)V

    .line 94
    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    .line 96
    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setStatus(Ljava/lang/String;)V

    .line 99
    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->label:Ljava/lang/String;

    .line 101
    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setLabel(Ljava/lang/String;)V

    .line 104
    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    .line 106
    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setSha1(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, p1}, Lcom/android/cloud/bean/CloudFileInfo;->setTransferId(Ljava/lang/String;)V

    .line 112
    return-object v1
.end method

.method public static transSyncInfoToFileItem(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/cloud/bean/CloudFileItem;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 7
    iget-object v2, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 9
    iget-object v3, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 11
    if-nez v1, :cond_f

    .line 13
    if-nez v2, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    new-instance v0, Lcom/android/cloud/bean/CloudFileItem;

    .line 18
    invoke-direct {v0}, Lcom/android/cloud/bean/CloudFileItem;-><init>()V

    .line 21
    if-nez v1, :cond_47

    .line 23
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 33
    move-result-wide v4

    .line 34
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileSize(Ljava/lang/Long;)V

    .line 41
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileName(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 51
    move-result-wide v4

    .line 52
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 59
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setParentDir(Ljava/lang/String;)V

    .line 66
    const-string v1, ""

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setType(Ljava/lang/String;)V

    .line 71
    goto :goto_a2

    .line 72
    :cond_47
    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setCloudId(Ljava/lang/String;)V

    .line 77
    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setParentDir(Ljava/lang/String;)V

    .line 82
    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setType(Ljava/lang/String;)V

    .line 87
    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setSha1(Ljava/lang/String;)V

    .line 92
    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setStatus(Ljava/lang/String;)V

    .line 97
    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setRevision(Ljava/lang/String;)V

    .line 102
    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->label:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setLabel(Ljava/lang/String;)V

    .line 107
    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setParentId(Ljava/lang/String;)V

    .line 112
    iget-wide v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    .line 114
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 121
    if-eqz v2, :cond_94

    .line 123
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 133
    move-result-wide v4

    .line 134
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileSize(Ljava/lang/Long;)V

    .line 141
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileName(Ljava/lang/String;)V

    .line 148
    goto :goto_a2

    .line 149
    :cond_94
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v2}, Lcom/android/cloud/bean/CloudFileItem;->setFileName(Ljava/lang/String;)V

    .line 154
    iget-wide v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 156
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileSize(Ljava/lang/Long;)V

    .line 163
    :goto_a2
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setTransferId(Ljava/lang/String;)V

    .line 170
    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 172
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 175
    move-result p0

    .line 176
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 183
    const p0, 0x7f110065

    .line 186
    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setAppName(Ljava/lang/String;)V

    .line 193
    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setGroupName(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v3}, Lcom/android/cloud/bean/CloudFileItem;->setCloudLocalFileId(Ljava/lang/String;)V

    .line 203
    return-object v0
.end method

.method public static transSyncInfoToFileItemVO(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 5
    iget-object v2, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 13
    invoke-direct {v4}, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;-><init>()V

    .line 16
    if-eqz v0, :cond_16

    .line 18
    invoke-static {v2, v3, p0}, Lcom/android/cloud/util/CloudFileUtils;->transSyncInfoToCloudFileInfo(Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/cloud/bean/CloudFileInfo;

    .line 21
    move-result-object v0

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    invoke-static {v2, v3, v1}, Lcom/android/cloud/util/CloudFileUtils;->transLocalInfoToCloudFileInfo(Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Lcom/android/cloud/bean/CloudFileInfo;

    .line 26
    move-result-object v0

    .line 27
    :goto_1a
    if-nez v0, :cond_1e

    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_1e
    iput-object v0, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 33
    iget-boolean v2, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 35
    iput-boolean v2, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    .line 37
    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 39
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 42
    move-result-wide v2

    .line 43
    iput-wide v2, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    .line 45
    const v2, 0x7f0f0014

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v1, :cond_8c

    .line 51
    iget-object v5, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 53
    check-cast v5, Lcom/android/cloud/bean/CloudFileInfo;

    .line 55
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 58
    move-result-object v6

    .line 59
    iput-object v6, v5, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 61
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 65
    iput-object v5, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 67
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 71
    iput-object v5, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 76
    move-result-wide v5

    .line 77
    invoke-static {v5, v6, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    .line 80
    move-result-object v5

    .line 81
    iput-object v5, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    .line 83
    iget-boolean v5, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 85
    if-eqz v5, :cond_70

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    sget-object v5, Lcom/android/cloud/util/CloudFileUtils;->textSeparator:Ljava/lang/String;

    .line 94
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getFolderItemCount()I

    .line 100
    move-result p0

    .line 101
    invoke-static {v2, p0}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    goto :goto_89

    .line 113
    :cond_70
    new-instance p0, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    sget-object v2, Lcom/android/cloud/util/CloudFileUtils;->textSeparator:Ljava/lang/String;

    .line 120
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 126
    move-result-wide v1

    .line 127
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    :goto_89
    iput-object p0, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 140
    goto :goto_d1

    .line 141
    :cond_8c
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 143
    iput-object v1, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    .line 145
    iget-wide v5, v0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 147
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 149
    invoke-static {v5, v6, v1}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    iput-object v1, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    .line 155
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 157
    if-eqz v1, :cond_b8

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    sget-object v5, Lcom/android/cloud/util/CloudFileUtils;->textSeparator:Ljava/lang/String;

    .line 166
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getFolderItemCount()I

    .line 172
    move-result p0

    .line 173
    invoke-static {v2, p0}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object p0

    .line 184
    goto :goto_cf

    .line 185
    :cond_b8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    sget-object v1, Lcom/android/cloud/util/CloudFileUtils;->textSeparator:Ljava/lang/String;

    .line 192
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-wide v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 197
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object p0

    .line 208
    :goto_cf
    iput-object p0, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 210
    :goto_d1
    iget-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 212
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object p0

    .line 216
    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    move-result-object p0

    .line 220
    const-string v0, "image/"

    .line 222
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_ee

    .line 228
    const-string v0, "video/"

    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 233
    move-result p0

    .line 234
    if-eqz p0, :cond_ec

    .line 236
    goto :goto_ee

    .line 237
    :cond_ec
    move p0, v3

    .line 238
    goto :goto_ef

    .line 239
    :cond_ee
    :goto_ee
    const/4 p0, 0x1

    .line 240
    :goto_ef
    if-eqz p0, :cond_f4

    .line 242
    const v3, 0x7f08062e

    .line 245
    :cond_f4
    iput v3, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->imageParentRes:I

    .line 247
    iput p0, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->imageParentPadding:I

    .line 249
    return-object v4
.end method
