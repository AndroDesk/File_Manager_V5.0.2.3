.class Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;
.super Ljava/lang/Object;
.source "InformationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/InformationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetSizeTask"
.end annotation


# instance fields
.field public fileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private handler:Landroid/os/Handler;

.field public isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    return-void
.end method

.method private getSize(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 9

    const-string v0, "/"

    const-string v1, "get file size failed"

    const-string v2, "InformationDialog"

    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_f

    return-void

    :cond_f
    if-nez p1, :cond_12

    return-void

    :cond_12
    iget v3, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_7a

    :try_start_18
    iget-boolean v3, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v3, :cond_62

    iget-object v3, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    new-instance v0, Ljcifs/smb/SmbFile;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    goto :goto_43

    :cond_2c
    new-instance v3, Ljcifs/smb/SmbFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_43
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object p1

    if-nez p1, :cond_4a

    return-void

    :cond_4a
    array-length v0, p1

    :goto_4b
    if-ge v5, v0, :cond_f1

    aget-object v3, p1, v5

    iget-object v4, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_58

    return-void

    :cond_58
    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljcifs/smb/SmbFile;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    :cond_62
    iget-wide v3, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    iget-wide v5, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    invoke-direct {p0, v3, v4}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->onSize(J)V
    :try_end_6c
    .catch Ljava/net/MalformedURLException; {:try_start_18 .. :try_end_6c} :catch_74
    .catch Ljcifs/smb/SmbException; {:try_start_18 .. :try_end_6c} :catch_6e

    goto/16 :goto_f1

    :catch_6e
    move-exception p1

    invoke-static {v2, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f1

    :catch_74
    move-exception p1

    invoke-static {v2, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f1

    :cond_7a
    if-nez v3, :cond_b9

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_ae

    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileInfo;

    if-nez v0, :cond_ae

    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_92

    return-void

    :cond_92
    array-length v0, p1

    :goto_93
    if-ge v5, v0, :cond_f1

    aget-object v1, p1, v5

    iget-object v2, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_a0

    return-void

    :cond_a0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_93

    :cond_ae
    iget-wide v0, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->onSize(J)V

    goto :goto_f1

    :cond_b9
    const/4 v0, 0x4

    if-ne v3, v0, :cond_f1

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_e7

    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    move-result-object v0

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mtp/MTPManager;->listFileInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ce
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_e3

    return-void

    :cond_e3
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    goto :goto_ce

    :cond_e7
    iget-wide v0, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->onSize(J)V

    :cond_f1
    :goto_f1
    return-void
.end method

.method private onSize(J)V
    .registers 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SIZE"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method
