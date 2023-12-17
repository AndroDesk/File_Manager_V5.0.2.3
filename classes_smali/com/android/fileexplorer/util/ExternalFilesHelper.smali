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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    return-void
.end method

.method private getExtSdCardPaths(Landroid/content/Context;)V
    .registers 11

    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "external"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    const-string v5, "ExternalFilesHelper"

    if-ge v4, v2, :cond_6e

    aget-object v6, v1, v4

    if-eqz v6, :cond_6b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6b

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/Android/data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_41

    const-string v7, "Unexpected external file dir: "

    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :cond_41
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getExtSdCardPaths: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5d
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_66} :catch_66

    :catch_66
    iget-object v5, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_6e
    iget-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_97

    iget-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8b

    const-string p1, "getExtSdCardPaths: file maybe null, add rootPath"

    invoke-static {v5, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_97

    :cond_8b
    const-string p1, "getExtSdCardPaths: rootPath is null, add sdcard1."

    invoke-static {v5, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    const-string v0, "/storage/sdcard1"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_97
    :goto_97
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sInstance:Lcom/android/fileexplorer/util/ExternalFilesHelper;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sInstance:Lcom/android/fileexplorer/util/ExternalFilesHelper;

    return-object v0

    :cond_7
    const-class v0, Lcom/android/fileexplorer/util/ExternalFilesHelper;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sInstance:Lcom/android/fileexplorer/util/ExternalFilesHelper;

    if-nez v1, :cond_15

    new-instance v1, Lcom/android/fileexplorer/util/ExternalFilesHelper;

    invoke-direct {v1}, Lcom/android/fileexplorer/util/ExternalFilesHelper;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sInstance:Lcom/android/fileexplorer/util/ExternalFilesHelper;

    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    sget-object v0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sInstance:Lcom/android/fileexplorer/util/ExternalFilesHelper;

    return-object v0

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method public cleanCache()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mUuId:Ljava/lang/String;

    return-void
.end method

.method public getExtSdCardFolder(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

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

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getExtSdCardFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSDRootPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSDUuId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mUuId:Ljava/lang/String;

    return-object v0
.end method

.method public hasSD()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOnExtSdCard(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->hasSD()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_25

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

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

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->hasSD()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1a

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

    if-nez p1, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mUuId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->sExtSdCardPaths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_34

    :cond_d
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mUuId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    const-string p1, "updateSDInfo: rootPath = "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/util/ExternalFilesHelper;->mSDRootPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExternalFilesHelper"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getExtSdCardPaths(Landroid/content/Context;)V

    :goto_34
    return-void
.end method
