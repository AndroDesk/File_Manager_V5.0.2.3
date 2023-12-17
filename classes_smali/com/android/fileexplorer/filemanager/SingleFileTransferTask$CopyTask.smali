.class Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;
.super Ljava/lang/Object;
.source "SingleFileTransferTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CopyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private isMove:Z

.field private newFile:Ljava/io/File;

.field private originalFile:Ljava/io/File;

.field private parentFile:Ls0/a;

.field public final synthetic this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;Ls0/a;Ljava/io/File;Ljava/io/File;Z)V
    .registers 6

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->parentFile:Ls0/a;

    iput-object p3, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->originalFile:Ljava/io/File;

    iput-object p4, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->newFile:Ljava/io/File;

    iput-boolean p5, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->isMove:Z

    return-void
.end method

.method private checkIfNeedFSync(ILjava/lang/String;JLjava/io/FileOutputStream;)Z
    .registers 6

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    return p3

    :cond_4
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p1

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lcom/android/fileexplorer/model/StorageHelper;->getUSBStorageInfo(Z)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    move p1, p4

    goto :goto_1c

    :cond_1b
    move p1, p3

    :goto_1c
    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->isLast()Z

    move-result p2

    if-eqz p2, :cond_2d

    if-eqz p1, :cond_2d

    new-instance p1, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;

    invoke-direct {p1, p0, p5}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;-><init>(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;Ljava/io/FileOutputStream;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    return p4

    :cond_2d
    if-eqz p1, :cond_32

    invoke-static {p5}, Lcom/android/fileexplorer/apptag/FileUtils;->fSync(Ljava/io/FileOutputStream;)Z

    :cond_32
    return p3
.end method

.method private copy(Ls0/a;Ljava/io/File;Ljava/io/File;Z)I
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_151

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_151

    :cond_12
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_24

    const/4 v4, 0x1

    if-eq v3, v4, :cond_24

    const/16 v4, 0xe

    if-eq v3, v4, :cond_24

    return v3

    :cond_24
    const-string v8, "SingleFileTransferTask"

    const-string v3, "start copy"

    invoke-static {v8, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v3, 0x0

    :try_start_34
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_39} :catch_11c
    .catchall {:try_start_34 .. :try_end_39} :catchall_118

    :try_start_39
    invoke-static/range {p3 .. p3}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_7c

    if-nez v0, :cond_46

    invoke-static/range {p3 .. p3}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object v0

    goto :goto_4a

    :cond_46
    invoke-static {v0, v2}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ls0/a;Ljava/io/File;)Ls0/a;

    move-result-object v0

    :goto_4a
    if-eqz v0, :cond_77

    check-cast v0, Ls0/c;

    iget-object v0, v0, Ls0/c;->c:Landroid/net/Uri;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v12, "w"

    invoke-virtual {v6, v0, v12}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_5e} :catch_113
    .catchall {:try_start_39 .. :try_end_5e} :catchall_10e

    if-eqz v6, :cond_75

    :try_start_60
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_69} :catch_70
    .catchall {:try_start_60 .. :try_end_69} :catchall_6b

    move-object v3, v0

    goto :goto_75

    :catchall_6b
    move-exception v0

    move-object v13, v3

    move-object v12, v6

    goto/16 :goto_111

    :catch_70
    move-exception v0

    move-object v13, v3

    move-object v12, v6

    goto/16 :goto_116

    :cond_75
    :goto_75
    move-object v12, v6

    goto :goto_7d

    :cond_77
    :try_start_77
    const-string v0, "copySingleFileToLocal documentFile = null!"

    invoke-static {v8, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_7c} :catch_113
    .catchall {:try_start_77 .. :try_end_7c} :catchall_10e

    :cond_7c
    move-object v12, v3

    :goto_7d
    if-nez v3, :cond_8e

    :try_start_7f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_84
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_84} :catch_8a
    .catchall {:try_start_7f .. :try_end_84} :catchall_86

    move-object v13, v0

    goto :goto_8f

    :catchall_86
    move-exception v0

    move-object v13, v3

    goto/16 :goto_111

    :catch_8a
    move-exception v0

    move-object v13, v3

    goto/16 :goto_116

    :cond_8e
    move-object v13, v3

    :goto_8f
    :try_start_8f
    invoke-direct {v7, v4, v5, v2}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->getBufferSize(JLjava/io/File;)I

    move-result v0

    iget-object v3, v7, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$000(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    invoke-static {v3, v11, v13, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copySingleFileToLocal: time = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v9

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    if-ne v0, v3, :cond_c1

    invoke-static/range {p3 .. p3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_c8

    :cond_c1
    if-nez v0, :cond_c8

    if-eqz p4, :cond_c8

    invoke-static/range {p2 .. p2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    :cond_c8
    :goto_c8
    iget-object v1, v7, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    move-result-object v1

    if-eqz v1, :cond_d9

    iget-object v1, v7, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->updateCompleteAccount()V

    :cond_d9
    iget-object v1, v7, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    move-result-object v1

    if-eqz v1, :cond_ed

    iget-object v1, v7, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->isLast()Z

    move-result v1

    if-eqz v1, :cond_f2

    :cond_ed
    iget-object v1, v7, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$000(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    :cond_f2
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v1, p0

    move v2, v0

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->checkIfNeedFSync(ILjava/lang/String;JLjava/io/FileOutputStream;)Z

    move-result v1
    :try_end_fe
    .catch Ljava/io/FileNotFoundException; {:try_start_8f .. :try_end_fe} :catch_10c
    .catchall {:try_start_8f .. :try_end_fe} :catchall_10a

    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-nez v1, :cond_106

    invoke-static {v13}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :cond_106
    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_145

    :catchall_10a
    move-exception v0

    goto :goto_111

    :catch_10c
    move-exception v0

    goto :goto_116

    :catchall_10e
    move-exception v0

    move-object v12, v3

    move-object v13, v12

    :goto_111
    move-object v3, v11

    goto :goto_147

    :catch_113
    move-exception v0

    move-object v12, v3

    move-object v13, v12

    :goto_116
    move-object v3, v11

    goto :goto_11f

    :catchall_118
    move-exception v0

    move-object v12, v3

    move-object v13, v12

    goto :goto_147

    :catch_11c
    move-exception v0

    move-object v12, v3

    move-object v13, v12

    :goto_11f
    :try_start_11f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13b
    .catchall {:try_start_11f .. :try_end_13b} :catchall_146

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v13}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    move v0, v1

    :goto_145
    return v0

    :catchall_146
    move-exception v0

    :goto_147
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v13}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_151
    :goto_151
    const/4 v0, 0x6

    return v0
.end method

.method private getBufferSize(JLjava/io/File;)I
    .registers 8

    const-wide/32 v0, 0x6400000

    cmp-long v0, p1, v0

    const v1, 0x8000

    if-ltz v0, :cond_d

    const/high16 p1, 0xa00000

    goto :goto_18

    :cond_d
    const-wide/32 v2, 0xa00000

    cmp-long p1, p1, v2

    if-lez p1, :cond_17

    const/high16 p1, 0x100000

    goto :goto_18

    :cond_17
    move p1, v1

    :goto_18
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, p1

    :goto_2c
    return v1
.end method

.method private isLast()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->isLast()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->parentFile:Ls0/a;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->originalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->newFile:Ljava/io/File;

    iget-boolean v3, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->isMove:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->copy(Ls0/a;Ljava/io/File;Ljava/io/File;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
