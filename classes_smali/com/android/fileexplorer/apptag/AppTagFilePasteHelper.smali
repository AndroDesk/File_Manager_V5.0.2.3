.class public Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;
.super Ljava/lang/Object;
.source "AppTagFilePasteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;

    :cond_b
    sget-object v0, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;->sInstance:Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;

    return-object v0
.end method


# virtual methods
.method public pasteFile(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    if-eqz p1, :cond_fb

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_fb

    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;

    iget-object v5, v4, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;->oldPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;->newPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_37
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getFileItemByPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_42

    return-void

    :cond_42
    if-eqz p2, :cond_67

    invoke-virtual {v3, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileByPath(Ljava/util/List;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v5}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_64
    invoke-virtual {v3, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileGroupDetail(Ljava/util/List;)V

    :cond_67
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_70

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileByPath(Ljava/util/List;)V

    :cond_70
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_79
    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ea

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;->oldPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    new-instance v3, Ljava/io/File;

    iget-object v4, v4, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;->newPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-direct {v4}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSize(Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/fileexplorer/dao/file/FileItem;->setParentDir(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    :cond_ea
    const-string p1, " pasteFile step1 time = "

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->insertNewFiles(Ljava/util/List;)V

    const-string p1, " pasteFile step2 time = "

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    :cond_fb
    :goto_fb
    return-void
.end method
