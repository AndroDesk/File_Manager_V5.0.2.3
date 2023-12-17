.class Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;
.super Ljava/lang/Object;
.source "DataProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/DataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BuildFileInfoTask"
.end annotation


# instance fields
.field private flag:I

.field private mCdl:Ljava/util/concurrent/CountDownLatch;

.field private mFileList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/fileexplorer/util/DataProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/util/DataProcessor;Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CountDownLatch;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->this$0:Lcom/android/fileexplorer/util/DataProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mFiles:Ljava/util/List;

    iput-object p3, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mFileList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p4, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mCdl:Ljava/util/concurrent/CountDownLatch;

    iput p5, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->flag:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget v0, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->flag:I

    iget-object v1, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->this$0:Lcom/android/fileexplorer/util/DataProcessor;

    invoke-static {v1}, Lcom/android/fileexplorer/util/DataProcessor;->access$000(Lcom/android/fileexplorer/util/DataProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mCdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget v2, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->flag:I

    iget-object v3, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->this$0:Lcom/android/fileexplorer/util/DataProcessor;

    invoke-static {v3}, Lcom/android/fileexplorer/util/DataProcessor;->access$000(Lcom/android/fileexplorer/util/DataProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v2, v3, :cond_3a

    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mCdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_3a
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->this$0:Lcom/android/fileexplorer/util/DataProcessor;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DataProcessor;->access$100(Lcom/android/fileexplorer/util/DataProcessor;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_1a

    :cond_4b
    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->isNormalFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->this$0:Lcom/android/fileexplorer/util/DataProcessor;

    invoke-static {v2}, Lcom/android/fileexplorer/util/DataProcessor;->access$200(Lcom/android/fileexplorer/util/DataProcessor;)Lcom/android/fileexplorer/util/FileNameExtFilter;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;ZZ)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->flag:I

    iget-object v3, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->this$0:Lcom/android/fileexplorer/util/DataProcessor;

    invoke-static {v3}, Lcom/android/fileexplorer/util/DataProcessor;->access$000(Lcom/android/fileexplorer/util/DataProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v2, v3, :cond_71

    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mCdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_71
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    iput-boolean v4, v1, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    iput-boolean v4, v1, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    :cond_7d
    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mFileList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_87
    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mCdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8c} :catch_8d

    goto :goto_98

    :catch_8d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "FileFragment"

    const-string v1, "BuildFileInfoTask error"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_98
    return-void
.end method
