.class public Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;
.super Ljava/lang/Object;
.source "SingleFileTransferTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleFileTransferTask"


# instance fields
.field private mDesFile:Ljava/io/File;

.field private mIDialogOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field private mIsMove:Z

.field private mParams:Lcom/android/fileexplorer/filemanager/FileTransferParams;

.field private mParentDF:Ls0/a;

.field private mResultCode:I

.field private mSrcFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;ZLs0/a;Lcom/android/fileexplorer/filemanager/FileTransferParams;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mIDialogOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mSrcFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mDesFile:Ljava/io/File;

    iput-boolean p4, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mIsMove:Z

    iput-object p5, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mParentDF:Ls0/a;

    iput-object p6, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mParams:Lcom/android/fileexplorer/filemanager/FileTransferParams;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mIDialogOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mParams:Lcom/android/fileexplorer/filemanager/FileTransferParams;

    return-object p0
.end method

.method private static copyFilePoorway(Ljava/util/concurrent/ThreadPoolExecutor;Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;)V
    .registers 3

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    sget-object p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 p1, 0x3e8

    if-le p0, p1, :cond_76

    sget-object p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, "rmfutureRes"

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_33
    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_73

    :try_start_39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_33

    :cond_6a
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_6d} :catch_6e

    goto :goto_33

    :catch_6e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_33

    :cond_73
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_76
    return-void
.end method

.method private copySingleFileToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;ZLs0/a;)I
    .registers 15

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "copyFile: file not exist or is directory, "

    const-string v2, "SingleFileTransferTask"

    if-nez v0, :cond_1e

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    return p1

    :cond_1e
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xc

    return p1

    :cond_39
    const-string v0, "copySingleFileToLocal: from "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_59
    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e7

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    const-string p1, "same folder copy"

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_74
    const/4 v0, 0x5

    if-eqz p1, :cond_7e

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v1

    if-eqz v1, :cond_7e

    return v0

    :cond_7e
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isToAll()Z

    move-result v1

    if-nez v1, :cond_97

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setStatus(I)V

    :cond_97
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getStatus()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_c8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_aa

    const/4 p2, 0x3

    if-eq p1, p2, :cond_a9

    return v0

    :cond_a9
    return v1

    :cond_aa
    invoke-static {p3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    new-instance p1, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;-><init>(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;Ls0/a;Ljava/io/File;Ljava/io/File;Z)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->call()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    return p1

    :cond_c8
    invoke-static {p3}, Lcom/android/fileexplorer/model/Util;->renameReal(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p3

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;-><init>(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;Ls0/a;Ljava/io/File;Ljava/io/File;Z)V

    invoke-virtual {p3}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->call()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    return p2

    :cond_e7
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_f0

    const/16 p1, 0xe

    return p1

    :cond_f0
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    move-result-object p1

    sget-object v0, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->COPY:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p5

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;-><init>(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;Ls0/a;Ljava/io/File;Ljava/io/File;Z)V

    iget-object p2, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mParams:Lcom/android/fileexplorer/filemanager/FileTransferParams;

    if-eqz p2, :cond_11c

    invoke-virtual {p2}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->getUseThreadPool()Z

    move-result p2

    if-eqz p2, :cond_11c

    if-nez p4, :cond_11c

    const-string p2, "multi thread"

    invoke-static {v2, p2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->copyFilePoorway(Ljava/util/concurrent/ThreadPoolExecutor;Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;)V

    goto :goto_129

    :cond_11c
    const-string p1, "single thread"

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->call()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_129} :catch_12a

    :goto_129
    return v1

    :catch_12a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x4

    return p1
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 7

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mIDialogOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mSrcFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mDesFile:Ljava/io/File;

    iget-boolean v4, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mIsMove:Z

    iget-object v5, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->mParentDF:Ls0/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->copySingleFileToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;ZLs0/a;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
