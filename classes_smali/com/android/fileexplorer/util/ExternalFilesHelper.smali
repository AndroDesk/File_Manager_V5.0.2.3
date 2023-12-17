.class public Lcom/android/fileexplorer/util/ExternalFilesHelper;
.super Ljava/lang/Object;
.source "ExternalFilesHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalFilesHelper"

.field private static volatile sInstance:Lcom/android/fileexplorer/util/ExternalFilesHelper;


# instance fields
.field private mSDRootPath:Ljava/lang/String;

.field private mUuId:Ljava/lang/String;

.field private sExtSdCardPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    .line 11
    return-void
.end method

.method private getExtSdCardPaths(Landroid/content/Context;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    const-string v0, "external"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 11
    move-result-object v1

    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_e
    const-string v5, "ExternalFilesHelper"

    .line 17
    if-ge v4, v2, :cond_6e

    .line 19
    aget-object v6, v1, v4

    .line 21
    if-eqz v6, :cond_6b

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 26
    move-result-object v7

    .line 27
    invoke-virtual {v6, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v7

    .line 31
    if-nez v7, :cond_6b

    .line 33
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    move-result-object v7

    .line 37
    const-string v8, "/Android/data"

    .line 39
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 42
    move-result v7

    .line 43
    if-gez v7, :cond_41

    .line 45
    const-string v7, "Unexpected external file dir: "

    .line 47
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v6

    .line 62
    invoke-static {v5, v6}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    goto :goto_6b

    .line 66
    :cond_41
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 73
    move-result-object v6

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string v8, "getExtSdCardPaths: path = "

    .line 81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v7

    .line 91
    invoke-static {v5, v7}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :try_start_5d
    new-instance v5, Ljava/io/File;

    .line 96
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 102
    move-result-object v6
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_66} :catch_66

    .line 103
    :catch_66
    iget-object v5, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    .line 105
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    .line 110
    goto :goto_e

    .line 111
    :cond_6e
    iget-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_97

    .line 119
    iget-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_8b

    .line 127
    const-string p1, "getExtSdCardPaths: file maybe null, add rootPath"

    .line 129
    invoke-static {v5, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    .line 134
    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    .line 136
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    goto :goto_97

    .line 140
    :cond_8b
    const-string p1, "getExtSdCardPaths: rootPath is null, add sdcard1."

    .line 142
    invoke-static {v5, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    .line 147
    const-string v0, "/storage/sdcard1"

    .line 149
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_97
    :goto_97
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sInstance:Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    sget-object v0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sInstance:Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 7
    return-object v0

    .line 8
    :cond_7
    const-class v0, Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    sget-object v1, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sInstance:Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 13
    if-nez v1, :cond_15

    .line 15
    new-instance v1, Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 17
    invoke-direct {v1}, Lcom/android/fileexplorer/util/ExternalFilesHelper;-><init>()V

    .line 20
    sput-object v1, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sInstance:Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 22
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 23
    sget-object v0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sInstance:Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 25
    return-object v0

    .line 26
    :catchall_19
    move-exception v1

    .line 27
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    .line 28
    throw v1
.end method


# virtual methods
.method public cleanCache()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mUuId:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public getExtSdCardFolder(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    .line 3
    :try_start_2
    iget-object v2, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_24} :catch_28

    return-object p1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_28
    :cond_28
    return-object v1
.end method

.method public getExtSdCardFolder(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getExtSdCardFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSDRootPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSDUuId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mUuId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hasSD()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public isOnExtSdCard(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->hasSD()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_25

    .line 4
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    :cond_25
    :goto_25
    return v0
.end method

.method public isOnExtSdCard(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->hasSD()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1a

    .line 2
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getExtSdCardFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    :goto_1a
    return v1
.end method

.method public updateSDInfo(Lcom/android/fileexplorer/model/StorageInfo;)V
    .registers 3

    .line 1
    if-nez p1, :cond_d

    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mUuId:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    goto :goto_34

    .line 14
    :cond_d
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getUuid()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mUuId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    .line 26
    const-string p1, "updateSDInfo: rootPath = "

    .line 28
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    const-string v0, "ExternalFilesHelper"

    .line 43
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getExtSdCardPaths(Landroid/content/Context;)V

    .line 53
    :goto_34
    return-void
.end method
