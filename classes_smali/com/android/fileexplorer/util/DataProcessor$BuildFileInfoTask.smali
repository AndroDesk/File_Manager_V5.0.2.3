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

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->this$0:Lcom/android/fileexplorer/util/DataProcessor;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mFiles:Ljava/util/List;

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mFileList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    iput-object p4, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mCdl:Ljava/util/concurrent/CountDownLatch;

    .line 12
    iput p5, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->flag:I

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->flag:I

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->this$0:Lcom/android/fileexplorer/util/DataProcessor;

    .line 5
    invoke-static {v1}, Lcom/android/fileexplorer/util/DataProcessor;->access$000(Lcom/android/fileexplorer/util/DataProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    move-result v1

    .line 13
    if-eq v0, v1, :cond_14

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mCdl:Ljava/util/concurrent/CountDownLatch;

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 20
    return-void

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mFiles:Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_87

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/io/File;

    .line 39
    iget v2, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->flag:I

    .line 41
    iget-object v3, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->this$0:Lcom/android/fileexplorer/util/DataProcessor;

    .line 43
    invoke-static {v3}, Lcom/android/fileexplorer/util/DataProcessor;->access$000(Lcom/android/fileexplorer/util/DataProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 50
    move-result v3

    .line 51
    if-eq v2, v3, :cond_3a

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mCdl:Ljava/util/concurrent/CountDownLatch;

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 58
    return-void

    .line 59
    :cond_3a
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->this$0:Lcom/android/fileexplorer/util/DataProcessor;

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DataProcessor;->access$100(Lcom/android/fileexplorer/util/DataProcessor;Ljava/lang/String;)Z

    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_4b

    .line 75
    goto :goto_1a

    .line 76
    :cond_4b
    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->isNormalFile(Ljava/lang/String;)Z

    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1a

    .line 82
    iget-object v2, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->this$0:Lcom/android/fileexplorer/util/DataProcessor;

    .line 84
    invoke-static {v2}, Lcom/android/fileexplorer/util/DataProcessor;->access$200(Lcom/android/fileexplorer/util/DataProcessor;)Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 87
    move-result-object v2

    .line 88
    const/4 v3, 0x1

    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-static {v1, v2, v4, v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;ZZ)Lcom/android/fileexplorer/model/FileInfo;

    .line 93
    move-result-object v1

    .line 94
    iget v2, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->flag:I

    .line 96
    iget-object v3, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->this$0:Lcom/android/fileexplorer/util/DataProcessor;

    .line 98
    invoke-static {v3}, Lcom/android/fileexplorer/util/DataProcessor;->access$000(Lcom/android/fileexplorer/util/DataProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 105
    move-result v3

    .line 106
    if-eq v2, v3, :cond_71

    .line 108
    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mCdl:Ljava/util/concurrent/CountDownLatch;

    .line 110
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 113
    return-void

    .line 114
    :cond_71
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 116
    invoke-static {v2}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_7d

    .line 122
    iput-boolean v4, v1, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    .line 124
    iput-boolean v4, v1, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 126
    :cond_7d
    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 128
    if-nez v2, :cond_1a

    .line 130
    iget-object v2, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mFileList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 132
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    goto :goto_1a

    .line 136
    :cond_87
    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;->mCdl:Ljava/util/concurrent/CountDownLatch;

    .line 138
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8c} :catch_8d

    .line 141
    goto :goto_98

    .line 142
    :catch_8d
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    const-string v0, "FileFragment"

    .line 148
    const-string v1, "BuildFileInfoTask error"

    .line 150
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_98
    return-void
.end method
