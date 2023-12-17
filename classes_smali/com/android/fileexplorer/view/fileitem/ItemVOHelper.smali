.class public Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;
.super Ljava/lang/Object;
.source "ItemVOHelper.java"


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

.method public static buildSizeAndTimeInfo(Ljava/util/List;Landroid/content/Context;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    iget-object v3, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    if-nez v3, :cond_17

    goto :goto_6

    :cond_17
    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v4, v3, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    const/4 v5, 0x1

    if-nez v4, :cond_30

    const v3, 0x7f182d8d

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    goto :goto_6

    :cond_30
    iget-wide v6, v3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean v1, v3, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {v6, v7, v1}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    iget-boolean v1, v3, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_c3

    instance-of v1, v3, Lcom/android/fileexplorer/model/StorageFileInfo;

    if-eqz v1, :cond_95

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f11003f

    new-array v6, v5, [Ljava/lang/Object;

    check-cast v3, Lcom/android/fileexplorer/model/StorageFileInfo;

    iget-wide v7, v3, Lcom/android/fileexplorer/model/StorageFileInfo;->availableSize:J

    invoke-static {v7, v8}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f110452

    new-array v7, v5, [Ljava/lang/Object;

    iget-wide v8, v3, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v8, v9}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v1, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    goto :goto_cb

    :cond_95
    new-instance v1, Ljava/io/File;

    iget-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_b4

    array-length v4, v1

    move v6, v0

    move v7, v6

    :goto_a5
    if-ge v6, v4, :cond_b5

    aget-object v8, v1, v6

    invoke-static {v8, v0}, Lcom/android/fileexplorer/model/Util;->isHiddenCompat(Ljava/io/File;Z)Z

    move-result v8

    if-nez v8, :cond_b1

    add-int/lit8 v7, v7, 0x1

    :cond_b1
    add-int/lit8 v6, v6, 0x1

    goto :goto_a5

    :cond_b4
    move v7, v0

    :cond_b5
    iput v7, v3, Lcom/android/fileexplorer/model/FileInfo;->count:I

    iput v7, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->count:I

    const v1, 0x7f0f0014

    invoke-static {v1, v7}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    goto :goto_cb

    :cond_c3
    iget-wide v3, v3, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    :goto_cb
    move v1, v5

    goto/16 :goto_6

    :cond_ce
    return v1
.end method

.method private static buildVO(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/content/Context;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;
    .registers 6

    new-instance v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;-><init>()V

    iput-object p0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->owner:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_21
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v2

    :goto_55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result p1

    if-eqz p1, :cond_6f

    const p1, 0x7f0f0014

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getCount()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    goto :goto_79

    :cond_6f
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    :goto_79
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "image/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_99

    const-string p1, "video/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_97

    goto :goto_99

    :cond_97
    move p0, v1

    goto :goto_9a

    :cond_99
    :goto_99
    const/4 p0, 0x1

    :goto_9a
    if-eqz p0, :cond_9f

    const v1, 0x7f08062e

    :cond_9f
    iput v1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->imageParentRes:I

    iput p0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->imageParentPadding:I

    return-object v0
.end method

.method private static buildVO(Lcom/android/fileexplorer/model/FileInfo;Landroid/content/Context;Ljava/util/Map;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit16 v1, v1, 0x2000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    iput-object p0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    iget-boolean v4, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    iput-boolean v4, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    if-eqz p2, :cond_4d

    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-boolean v4, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    :cond_4d
    iget-object p2, p0, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v4, ""

    if-eqz p2, :cond_5a

    iput-object v4, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->owner:Ljava/lang/String;

    goto :goto_8f

    :cond_5a
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result p2

    if-eqz p2, :cond_78

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->owner:Ljava/lang/String;

    goto :goto_8f

    :cond_78
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->owner:Ljava/lang/String;

    :goto_8f
    if-eqz v1, :cond_a5

    instance-of p2, p0, Lcom/android/fileexplorer/model/PcModeFileInfo;

    if-eqz p2, :cond_a5

    move-object p2, p0

    check-cast p2, Lcom/android/fileexplorer/model/PcModeFileInfo;

    iget-object v1, p2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a5

    iget-object p2, p2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    goto :goto_a9

    :cond_a5
    iget-object p2, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    :goto_a9
    iget-boolean p2, p0, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    if-nez p2, :cond_be

    const p2, 0x7f182d8d

    invoke-static/range {p2 .. p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    goto/16 :goto_136

    :cond_be
    iget-wide v4, p0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean p2, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {v4, v5, p2}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz p2, :cond_12e

    instance-of p2, p0, Lcom/android/fileexplorer/model/StorageFileInfo;

    if-eqz p2, :cond_124

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f11003f

    new-array v4, v2, [Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lcom/android/fileexplorer/model/StorageFileInfo;

    iget-wide v6, v5, Lcom/android/fileexplorer/model/StorageFileInfo;->availableSize:J

    invoke-static {v6, v7}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p2, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f110452

    new-array v6, v2, [Ljava/lang/Object;

    iget-wide v7, v5, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v7, v8}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object p2, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    goto :goto_136

    :cond_124
    const p1, 0x7f0f0014

    invoke-static {p1, v3}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    goto :goto_136

    :cond_12e
    iget-wide p1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    :goto_136
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getResID(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->resId:I

    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "image/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15a

    const-string p1, "video/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_159

    goto :goto_15a

    :cond_159
    move v2, v3

    :cond_15a
    :goto_15a
    if-eqz v2, :cond_15f

    const v3, 0x7f08062e

    :cond_15f
    iput v3, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->imageParentRes:I

    iput v2, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->imageParentPadding:I

    return-object v0
.end method

.method public static buildVOList(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/fileexplorer/mirror/model/BaseItemInfo;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
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

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    instance-of v2, v1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v2, :cond_24

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->buildVO(Lcom/android/fileexplorer/model/FileInfo;Landroid/content/Context;Ljava/util/Map;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_24
    instance-of v2, v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-static {v1, p1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->buildVO(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/content/Context;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_32
    return-object v0
.end method

.method public static buildVOList(Ljava/util/List;Ljava/util/Map;Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/fileexplorer/mirror/model/BaseItemInfo;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
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

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    instance-of v2, v1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v2, :cond_23

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {v1, p2, p1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->buildVO(Lcom/android/fileexplorer/model/FileInfo;Landroid/content/Context;Ljava/util/Map;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    instance-of v2, v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-static {v1, p2}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->buildVO(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/content/Context;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_31
    return-object v0
.end method

.method public static restoreFileInfoList(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
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

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    iget-object v1, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method
