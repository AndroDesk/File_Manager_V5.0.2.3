.class public Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;
.super Ljava/lang/Object;
.source "ItemVOHelper.java"


# direct methods
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

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_ca

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 19
    iget-object v3, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 21
    if-nez v3, :cond_17

    .line 23
    goto :goto_6

    .line 24
    :cond_17
    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    .line 26
    iget-boolean v4, v3, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 28
    const/4 v5, 0x1

    .line 29
    if-nez v4, :cond_2c

    .line 31
    const v3, 0x7f11001b

    .line 34
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    iput-object v3, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 40
    const-string v3, ""

    .line 42
    iput-object v3, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    .line 44
    goto :goto_6

    .line 45
    :cond_2c
    iget-wide v6, v3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 47
    iget-boolean v1, v3, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 49
    invoke-static {v6, v7, v1}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v1

    .line 57
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    .line 70
    iget-boolean v1, v3, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 72
    if-eqz v1, :cond_bf

    .line 74
    instance-of v1, v3, Lcom/android/fileexplorer/model/StorageFileInfo;

    .line 76
    if-eqz v1, :cond_91

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    move-result-object v1

    .line 82
    const v4, 0x7f11003f

    .line 85
    new-array v6, v5, [Ljava/lang/Object;

    .line 87
    check-cast v3, Lcom/android/fileexplorer/model/StorageFileInfo;

    .line 89
    iget-wide v7, v3, Lcom/android/fileexplorer/model/StorageFileInfo;->availableSize:J

    .line 91
    invoke-static {v7, v8}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 94
    move-result-object v7

    .line 95
    aput-object v7, v6, v0

    .line 97
    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    move-result-object v4

    .line 105
    const v6, 0x7f110452

    .line 108
    new-array v7, v5, [Ljava/lang/Object;

    .line 110
    iget-wide v8, v3, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 112
    invoke-static {v8, v9}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    aput-object v3, v7, v0

    .line 118
    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object v3

    .line 122
    iput-object v1, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    iput-object v1, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    .line 145
    goto :goto_c7

    .line 146
    :cond_91
    new-instance v1, Ljava/io/File;

    .line 148
    iget-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 150
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 156
    move-result-object v1

    .line 157
    if-eqz v1, :cond_b0

    .line 159
    array-length v4, v1

    .line 160
    move v6, v0

    .line 161
    move v7, v6

    .line 162
    :goto_a1
    if-ge v6, v4, :cond_b1

    .line 164
    aget-object v8, v1, v6

    .line 166
    invoke-static {v8, v0}, Lcom/android/fileexplorer/model/Util;->isHiddenCompat(Ljava/io/File;Z)Z

    .line 169
    move-result v8

    .line 170
    if-nez v8, :cond_ad

    .line 172
    add-int/lit8 v7, v7, 0x1

    .line 174
    :cond_ad
    add-int/lit8 v6, v6, 0x1

    .line 176
    goto :goto_a1

    .line 177
    :cond_b0
    move v7, v0

    .line 178
    :cond_b1
    iput v7, v3, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 180
    iput v7, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->count:I

    .line 182
    const v1, 0x7f0f0014

    .line 185
    invoke-static {v1, v7}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 189
    iput-object v1, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 191
    goto :goto_c7

    .line 192
    :cond_bf
    iget-wide v3, v3, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 194
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 198
    iput-object v1, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 200
    :goto_c7
    move v1, v5

    .line 201
    goto/16 :goto_6

    .line 203
    :cond_ca
    return v1
.end method

.method private static buildVO(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/content/Context;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;
    .registers 6

    .line 44
    new-instance v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;-><init>()V

    .line 45
    iput-object p0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    const-string v1, ""

    .line 46
    iput-object v1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->owner:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 49
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_21
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 53
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
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

    .line 55
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result p1

    if-eqz p1, :cond_6f

    const p1, 0x7f0f0014

    .line 56
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getCount()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    goto :goto_79

    .line 57
    :cond_6f
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 58
    :goto_79
    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "image/"

    .line 59
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

    .line 60
    :cond_9f
    iput v1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->imageParentRes:I

    .line 61
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    .line 2
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

    .line 3
    :goto_1b
    iput-object p0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 4
    iget-boolean v4, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    iput-boolean v4, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    .line 5
    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->packageName:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    if-eqz p2, :cond_4d

    .line 8
    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-boolean v4, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v4, :cond_4d

    .line 9
    iget-object v4, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    .line 10
    :cond_4d
    iget-object p2, p0, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v4, ""

    if-eqz p2, :cond_5a

    .line 11
    iput-object v4, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->owner:Ljava/lang/String;

    goto :goto_8f

    .line 12
    :cond_5a
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result p2

    if-eqz p2, :cond_78

    .line 13
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

    .line 14
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

    .line 15
    instance-of p2, p0, Lcom/android/fileexplorer/model/PcModeFileInfo;

    if-eqz p2, :cond_a5

    move-object p2, p0

    check-cast p2, Lcom/android/fileexplorer/model/PcModeFileInfo;

    iget-object v1, p2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 16
    iget-object p2, p2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    goto :goto_a9

    .line 17
    :cond_a5
    iget-object p2, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->name:Ljava/lang/CharSequence;

    .line 18
    :goto_a9
    iget-boolean p2, p0, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    if-nez p2, :cond_ba

    const p2, 0x7f11001b

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 20
    iput-object v4, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    goto/16 :goto_132

    .line 21
    :cond_ba
    iget-wide v4, p0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean p2, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {v4, v5, p2}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 23
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    .line 24
    iget-boolean p2, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz p2, :cond_12a

    .line 25
    instance-of p2, p0, Lcom/android/fileexplorer/model/StorageFileInfo;

    if-eqz p2, :cond_120

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f11003f

    new-array v4, v2, [Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lcom/android/fileexplorer/model/StorageFileInfo;

    iget-wide v6, v5, Lcom/android/fileexplorer/model/StorageFileInfo;->availableSize:J

    .line 27
    invoke-static {v6, v7}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 28
    invoke-virtual {p2, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f110452

    new-array v6, v2, [Ljava/lang/Object;

    iget-wide v7, v5, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 30
    invoke-static {v7, v8}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    .line 31
    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 32
    iput-object p2, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getTextSeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->modifiedTime:Ljava/lang/String;

    goto :goto_132

    :cond_120
    const p1, 0x7f0f0014

    .line 34
    invoke-static {p1, v3}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    goto :goto_132

    .line 35
    :cond_12a
    iget-wide p1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->size:Ljava/lang/String;

    .line 36
    :goto_132
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/PathIdentifyManager;->getResID(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->resId:I

    .line 37
    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "image/"

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_156

    const-string p1, "video/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_155

    goto :goto_156

    :cond_155
    move v2, v3

    :cond_156
    :goto_156
    if-eqz v2, :cond_15b

    const v3, 0x7f08062e

    .line 39
    :cond_15b
    iput v3, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->imageParentRes:I

    .line 40
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

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
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

    .line 9
    instance-of v2, v1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v2, :cond_24

    .line 10
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->buildVO(Lcom/android/fileexplorer/model/FileInfo;Landroid/content/Context;Ljava/util/Map;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 11
    :cond_24
    instance-of v2, v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    if-eqz v2, :cond_9

    .line 12
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
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

    .line 3
    instance-of v2, v1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v2, :cond_23

    .line 4
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {v1, p2, p1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->buildVO(Lcom/android/fileexplorer/model/FileInfo;Landroid/content/Context;Ljava/util/Map;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 5
    :cond_23
    instance-of v2, v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    if-eqz v2, :cond_9

    .line 6
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 22
    iget-object v1, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 24
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    return-object v0
.end method
