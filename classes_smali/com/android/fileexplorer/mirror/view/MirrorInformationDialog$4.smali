.class Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;
.super Ljava/lang/Object;
.source "MirrorInformationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->asyncGetSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private size:J

.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSize(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 9

    const-string v0, "/"

    const-string v1, "get file size failed"

    const-string v2, "InformationDialog"

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {v3}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_13

    return-void

    :cond_13
    if-nez p1, :cond_16

    return-void

    :cond_16
    iget v3, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_84

    :try_start_1c
    iget-boolean v3, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v3, :cond_6a

    iget-object v3, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    new-instance v0, Ljcifs/smb/SmbFile;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    goto :goto_47

    :cond_30
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

    :goto_47
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object p1

    if-nez p1, :cond_4e

    return-void

    :cond_4e
    array-length v0, p1

    :goto_4f
    if-ge v5, v0, :cond_103

    aget-object v3, p1, v5

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {v4}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_60

    return-void

    :cond_60
    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljcifs/smb/SmbFile;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_6a
    iget-wide v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    iget-wide v5, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {p1, v3, v4}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;J)V
    :try_end_76
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_76} :catch_7e
    .catch Ljcifs/smb/SmbException; {:try_start_1c .. :try_end_76} :catch_78

    goto/16 :goto_103

    :catch_78
    move-exception p1

    invoke-static {v2, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_103

    :catch_7e
    move-exception p1

    invoke-static {v2, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_103

    :cond_84
    if-nez v3, :cond_c5

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_b8

    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_98

    return-void

    :cond_98
    array-length v0, p1

    :goto_99
    if-ge v5, v0, :cond_103

    aget-object v1, p1, v5

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {v2}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_aa

    return-void

    :cond_aa
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_99

    :cond_b8
    iget-wide v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;J)V

    goto :goto_103

    :cond_c5
    const/4 v0, 0x4

    if-ne v3, v0, :cond_103

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_f7

    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    move-result-object v0

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mtp/MTPManager;->listFileInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_da
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_f3

    return-void

    :cond_f3
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    goto :goto_da

    :cond_f7
    iget-wide v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;J)V

    :cond_103
    :goto_103
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method
