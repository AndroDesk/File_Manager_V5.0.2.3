.class Lcom/android/fileexplorer/apptag/FileGroupDbManager$DeletedFileDetector;
.super Ljava/lang/Object;
.source "FileGroupDbManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/apptag/FileGroupDbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeletedFileDetector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public fileItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$DeletedFileDetector;->fileItems:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public call()Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;
    .registers 7

    .line 2
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;-><init>(Lcom/android/fileexplorer/apptag/FileGroupDbManager$1;)V

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$DeletedFileDetector;->fileItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 6
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getSkipLimitPath()Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, 0x0

    goto :goto_31

    .line 8
    :cond_29
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v4

    .line 9
    :goto_31
    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3f

    if-nez v4, :cond_3f

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 10
    :cond_3f
    iget-object v3, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;->toRemovedFileItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v3, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;->toRemovedFileItemIds:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_4e
    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setSkipLimitPath(Z)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$DeletedFileDetector;->call()Lcom/android/fileexplorer/apptag/FileGroupDbManager$ResultHolder;

    move-result-object v0

    return-object v0
.end method
