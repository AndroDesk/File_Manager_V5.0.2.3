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

    const v0, 0x7f11012a

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/cloud/util/CloudFileUtils;->textSeparator:Ljava/lang/String;

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

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/FileItem;

    instance-of v1, v0, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    goto :goto_4

    :cond_24
    return-void
.end method

.method public static errorToast(Lcom/micloud/midrive/task/BaseTask$TaskException;)V
    .registers 2

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2d

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;

    if-eqz v0, :cond_18

    const p0, 0x7f1102d3

    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_2d

    :cond_18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$DiskFullException;

    if-eqz p0, :cond_27

    const p0, 0x7f1102ff

    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_2d

    :cond_27
    const p0, 0x7f110323

    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2b
    return-object v0
.end method

.method public static getCheckedFileStatus(Ljava/util/List;)Lcom/android/cloud/listener/choice/CheckedFileStatus;
    .registers 5

    new-instance v0, Lcom/android/cloud/listener/choice/CheckedFileStatus;

    invoke-direct {v0}, Lcom/android/cloud/listener/choice/CheckedFileStatus;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_9

    :cond_16
    invoke-static {v1}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatus(Ljava/lang/Object;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    move-result-object v1

    sget-object v2, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_23

    invoke-virtual {v0, v3}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->setContainOnlyCloudFile(Z)V

    goto :goto_9

    :cond_23
    sget-object v2, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL_AND_CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    if-ne v1, v2, :cond_2b

    invoke-virtual {v0, v3}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->setContainCachedCloudFile(Z)V

    goto :goto_9

    :cond_2b
    invoke-virtual {v0, v3}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->setContainLocalFile(Z)V

    goto :goto_9

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    return-object v0
.end method

.method public static getCloudFileInfoV2(Lcom/android/cloud/bean/CloudFileItem;)Lcom/android/cloud/bean/CloudFileInfo;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-direct {v1}, Lcom/android/cloud/bean/CloudFileInfo;-><init>()V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    return-object v0

    :cond_1a
    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean v0, p0, Lcom/android/cloud/bean/CloudFileItem;->isFav:Z

    iput-boolean v0, v1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setCloudId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getCreateTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setCreateTime(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getLocalModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setLocalModifyTime(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setParentId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getRevision()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setRevision(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setLabel(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getPrivacyStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setPrivacyStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setCoverUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getSha1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setSha1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getTransferId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/cloud/bean/CloudFileInfo;->setTransferId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileItem;->getCloudLocalFileId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setCloudLocalFileId(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getCloudFileItem(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/cloud/bean/CloudFileItem;
    .registers 5

    new-instance v0, Lcom/android/cloud/bean/CloudFileItem;

    invoke-direct {v0}, Lcom/android/cloud/bean/CloudFileItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setCloudId(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setFileName(Ljava/lang/String;)V

    if-eqz p3, :cond_27

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    :cond_27
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setParentDir(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setModifyTime(Ljava/lang/Long;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setFileSize(Ljava/lang/Long;)V

    return-object v0
.end method

.method public static getFileStatus(Ljava/lang/Object;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;
    .registers 2

    instance-of v0, p0, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/cloud/bean/CloudFileItem;

    invoke-static {p0}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v0, :cond_16

    check-cast p0, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-static {p0}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileInfo(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    move-result-object p0

    return-object p0

    :cond_16
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    return-object p0
.end method

.method public static getFileStatusByFileInfo(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;
    .registers 2

    instance-of v0, p0, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    return-object p0

    :cond_f
    check-cast p0, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_2b

    :cond_28
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL_AND_CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    return-object p0

    :cond_2b
    :goto_2b
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    return-object p0

    :cond_2e
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    return-object p0
.end method

.method public static getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;
    .registers 2

    instance-of v0, p0, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    goto :goto_13

    :cond_11
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL_AND_CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    :goto_13
    return-object p0

    :cond_14
    sget-object p0, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-nez v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_31

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_31

    :cond_e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_12

    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v2, :cond_12

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_12

    :cond_2d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_31
    :goto_31
    return-object v0
.end method

.method public static transFileInfoToUploadInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Lcom/micloud/midrive/infos/UploadFileInfo;
    .registers 14

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v11, Lcom/micloud/midrive/infos/UploadFileInfo;

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    iget-wide v9, p0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    move-object v0, v11

    move-object v2, p1

    move-wide v7, v9

    invoke-direct/range {v0 .. v10}, Lcom/micloud/midrive/infos/UploadFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-object v11
.end method

.method private static transLocalInfoToCloudFileInfo(Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Lcom/android/cloud/bean/CloudFileInfo;
    .registers 7

    new-instance v0, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-direct {v0}, Lcom/android/cloud/bean/CloudFileInfo;-><init>()V

    if-nez p2, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setCloudId(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setCloudLocalFileId(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setCreateTime(Ljava/lang/Long;)V

    const-string p0, ""

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setType(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/cloud/bean/CloudFileInfo;->setParentId(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setRevision(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setStatus(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/cloud/bean/CloudFileInfo;->setTransferId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static transSyncInfoToCloudFileInfo(Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/cloud/bean/CloudFileInfo;
    .registers 7

    iget-object v0, p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    new-instance v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-direct {v1}, Lcom/android/cloud/bean/CloudFileInfo;-><init>()V

    iget-wide v2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    iput-wide v2, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-object v2, p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    goto :goto_1e

    :cond_1a
    iget-object v2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    :goto_1e
    iget-object v2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    const-string v3, "folder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    iget-wide v2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    iput-wide v2, v1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getFolderItemCount()I

    move-result p2

    iput p2, v1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    iget-object p2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/android/cloud/bean/CloudFileInfo;->setCloudId(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setCloudLocalFileId(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v1, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    iget-wide v2, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->createTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setCreateTime(Ljava/lang/Long;)V

    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setType(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setParentId(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setRevision(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setStatus(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setLabel(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/cloud/bean/CloudFileInfo;->setSha1(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/cloud/bean/CloudFileInfo;->setTransferId(Ljava/lang/String;)V

    return-object v1
.end method

.method public static transSyncInfoToFileItem(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/cloud/bean/CloudFileItem;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v2, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-object v3, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    if-nez v1, :cond_f

    if-nez v2, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Lcom/android/cloud/bean/CloudFileItem;

    invoke-direct {v0}, Lcom/android/cloud/bean/CloudFileItem;-><init>()V

    if-nez v1, :cond_47

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileSize(Ljava/lang/Long;)V

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setModifyTime(Ljava/lang/Long;)V

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setParentDir(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setType(Ljava/lang/String;)V

    goto :goto_a2

    :cond_47
    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setCloudId(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setParentDir(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setType(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setSha1(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setStatus(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setRevision(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setLabel(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setParentId(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/cloud/bean/CloudFileItem;->setModifyTime(Ljava/lang/Long;)V

    if-eqz v2, :cond_94

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileSize(Ljava/lang/Long;)V

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileName(Ljava/lang/String;)V

    goto :goto_a2

    :cond_94
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/cloud/bean/CloudFileItem;->setFileName(Ljava/lang/String;)V

    iget-wide v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setFileSize(Ljava/lang/Long;)V

    :goto_a2
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setTransferId(Ljava/lang/String;)V

    sget-object p0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    const p0, 0x7f110065

    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/bean/CloudFileItem;->setAppName(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/cloud/bean/CloudFileItem;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/cloud/bean/CloudFileItem;->setCloudLocalFileId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static transSyncInfoToFileItemVO(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;
    .registers 8

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-object v2, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    invoke-direct {v4}, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;-><init>()V

    if-eqz v0, :cond_16

    invoke-static {v2, v3, p0}, Lcom/android/cloud/util/CloudFileUtils;->transSyncInfoToCloudFileInfo(Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/cloud/bean/CloudFileInfo;

    move-result-object v0

    goto :goto_1a

    :cond_16
    invoke-static {v2, v3, v1}, Lcom/android/cloud/util/CloudFileUtils;->transLocalInfoToCloudFileInfo(Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Lcom/android/cloud/bean/CloudFileInfo;

    move-result-object v0

    :goto_1a
    if-nez v0, :cond_1e

    const/4 p0, 0x0

    return-object p0

    :cond_1e
    iput-object v0, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    iget-boolean v2, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    iput-boolean v2, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    const v2, 0x7f0f0014

    const/4 v3, 0x0

    if-eqz v1, :cond_8c

    iget-object v5, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v5, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v5

    invoke-static {v5, v6, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v5, :cond_70

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/cloud/util/CloudFileUtils;->textSeparator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getFolderItemCount()I

    move-result p0

    invoke-static {v2, p0}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_89

    :cond_70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/cloud/util/CloudFileUtils;->textSeparator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_89
    iput-object p0, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    goto :goto_d1

    :cond_8c
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iput-object v1, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    iget-wide v5, v0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {v5, v6, v1}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_b8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/cloud/util/CloudFileUtils;->textSeparator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getFolderItemCount()I

    move-result p0

    invoke-static {v2, p0}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_cf

    :cond_b8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/cloud/util/CloudFileUtils;->textSeparator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_cf
    iput-object p0, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    :goto_d1
    iget-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ee

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ec

    goto :goto_ee

    :cond_ec
    move p0, v3

    goto :goto_ef

    :cond_ee
    :goto_ee
    const/4 p0, 0x1

    :goto_ef
    if-eqz p0, :cond_f4

    const v3, 0x7f08062e

    :cond_f4
    iput v3, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->imageParentRes:I

    iput p0, v4, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->imageParentPadding:I

    return-object v4
.end method
