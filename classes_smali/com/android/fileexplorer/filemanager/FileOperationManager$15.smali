.class Lcom/android/fileexplorer/filemanager/FileOperationManager$15;
.super Landroid/os/AsyncTask;
.source "FileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCopyOrMoveThread(Lcom/android/fileexplorer/model/FileInfo;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public isFromMirrorProvider:Z

.field public scanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public final synthetic val$destParent:Lcom/android/fileexplorer/model/FileInfo;

.field public final synthetic val$destType:I

.field public final synthetic val$isMove:Z

.field public final synthetic val$isOverWrite:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;ZZI)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    .line 5
    iput-boolean p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isOverWrite:Z

    .line 7
    iput-boolean p4, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    .line 9
    iput p5, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destType:I

    .line 11
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/filemanager/FileOperationManager$15;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->lambda$onPostExecute$0()V

    return-void
.end method

.method private synthetic lambda$onPostExecute$0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_17

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 13
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 21
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    .line 24
    :cond_17
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 22

    move-object/from16 v1, p0

    const-string v2, "com.android.fileexplorer"

    .line 2
    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$300(Lcom/android/fileexplorer/filemanager/FileOperationManager;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "currentOperationList empty or item is null"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1b
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 8
    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 9
    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0, v4, v5}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    .line 10
    :cond_4a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v5, :cond_79

    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    if-eqz v0, :cond_79

    .line 11
    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0, v6, v4}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->setFilesProgress(II)V

    :cond_79
    const/4 v6, 0x4

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    .line 13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v15, Lcom/android/fileexplorer/filemanager/FileTransferParams;

    invoke-direct {v15}, Lcom/android/fileexplorer/filemanager/FileTransferParams;-><init>()V

    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setTotalFileCount(I)V

    .line 16
    invoke-virtual {v15}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setUseThreadPool()V

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    move-result-object v0

    sget-object v8, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->COPY:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    invoke-virtual {v0, v8}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x2

    const/4 v8, 0x0

    :try_start_a4
    const-string v9, "android.os.MiPerf"

    .line 18
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "miPerfSceneBoostAcquire"

    new-array v11, v0, [Ljava/lang/Class;

    .line 19
    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v4

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_ba
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a4 .. :try_end_ba} :catch_d8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a4 .. :try_end_ba} :catch_d6
    .catch Ljava/lang/IllegalAccessException; {:try_start_a4 .. :try_end_ba} :catch_d4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a4 .. :try_end_ba} :catch_d2

    :try_start_ba
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v4

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v5

    invoke-virtual {v9, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ba .. :try_end_c7} :catch_cf
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ba .. :try_end_c7} :catch_cd
    .catch Ljava/lang/IllegalAccessException; {:try_start_ba .. :try_end_c7} :catch_cb
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_ba .. :try_end_c7} :catch_c9

    move-object v13, v9

    goto :goto_dd

    :catch_c9
    move-exception v0

    goto :goto_d0

    :catch_cb
    move-exception v0

    goto :goto_d0

    :catch_cd
    move-exception v0

    goto :goto_d0

    :catch_cf
    move-exception v0

    :goto_d0
    move-object v8, v9

    goto :goto_d9

    :catch_d2
    move-exception v0

    goto :goto_d9

    :catch_d4
    move-exception v0

    goto :goto_d9

    :catch_d6
    move-exception v0

    goto :goto_d9

    :catch_d8
    move-exception v0

    .line 21
    :goto_d9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v13, v8

    :goto_dd
    move v0, v4

    .line 22
    :goto_de
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_34b

    .line 23
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFrom()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_f1

    move v6, v5

    goto :goto_f2

    :cond_f1
    move v6, v0

    :goto_f2
    if-eqz v6, :cond_10b

    .line 24
    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10b

    .line 25
    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->resetProgress()V

    .line 26
    :cond_10b
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/fileexplorer/model/FileInfo;

    .line 27
    invoke-virtual {v15, v4}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setCurrentIndex(I)V

    .line 28
    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_132

    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v0

    if-eqz v0, :cond_132

    const/4 v6, 0x5

    goto/16 :goto_34b

    .line 29
    :cond_132
    iget-object v8, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v10, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v11, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isOverWrite:Z

    iget-boolean v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz v6, :cond_143

    iget-boolean v9, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->isFromMirrorProvider:Z

    if-eqz v9, :cond_143

    move/from16 v16, v5

    goto :goto_146

    :cond_143
    const/4 v9, 0x0

    move/from16 v16, v9

    :goto_146
    move-object v9, v12

    move-object/from16 v17, v12

    move v12, v0

    move-object/from16 v18, v13

    move-object v13, v15

    move-object/from16 p1, v14

    move/from16 v14, v16

    invoke-static/range {v8 .. v14}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$500(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/model/FileInfo;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I

    move-result v8

    const-string v0, "futureRes"

    .line 30
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_160
    :goto_160
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_194

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    .line 32
    :try_start_16c
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_160

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v5, :cond_160

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_18e} :catch_18f

    goto :goto_195

    :catch_18f
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_160

    :cond_194
    move v0, v8

    .line 35
    :goto_195
    sget-object v8, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 36
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v5, :cond_1cc

    iget-object v8, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v8, v8, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1cc

    iget-object v8, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v8, v8, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    if-eqz v8, :cond_1cc

    .line 38
    iget-object v8, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v8, v8, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->setFilesProgress(II)V

    :cond_1cc
    const-string v8, ""

    if-eqz v6, :cond_1dd

    .line 39
    iget-boolean v9, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->isFromMirrorProvider:Z

    if-eqz v9, :cond_1dd

    move-object/from16 v9, v17

    .line 40
    iget-object v10, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/fileexplorer/model/ContentFile;->getRelativePathFromMirrorUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1e0

    :cond_1dd
    move-object/from16 v9, v17

    move-object v10, v8

    .line 41
    :goto_1e0
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v13, v13, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1f6

    move-object v10, v8

    goto :goto_201

    :cond_1f6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    .line 42
    invoke-static {v13, v14, v10}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 43
    :goto_201
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v9, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 44
    iget-object v11, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    iget v11, v11, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-nez v11, :cond_219

    move v11, v5

    goto :goto_21a

    :cond_219
    const/4 v11, 0x0

    :goto_21a
    if-eqz v11, :cond_221

    .line 45
    iget-object v12, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_221
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "copy result "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_307

    .line 47
    iget-object v12, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v12, :cond_307

    .line 48
    iget v12, v9, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_2bf

    if-eqz v6, :cond_251

    .line 49
    iget-boolean v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->isFromMirrorProvider:Z

    if-eqz v6, :cond_251

    iget-object v6, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/fileexplorer/model/ContentFile;->generateFromMirrorUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    move-result-object v6

    goto :goto_257

    :cond_251
    iget-object v6, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/fileexplorer/model/ContentFile;->generateFromUri(Ljava/lang/String;)Lcom/android/fileexplorer/model/ContentFile;

    move-result-object v6

    .line 50
    :goto_257
    invoke-static {v6}, Lcom/android/fileexplorer/model/ContentFile;->isEmpty(Lcom/android/fileexplorer/model/ContentFile;)Z

    move-result v10

    if-eqz v10, :cond_275

    .line 51
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "startCopyOrMoveThread uriFile error : "

    .line 52
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 53
    iget-object v8, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33b

    .line 54
    :cond_275
    iget-object v10, v6, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    iput-object v10, v9, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 55
    iget-object v10, v6, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    iput-object v10, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 56
    new-instance v10, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v13, v13, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/fileexplorer/model/ContentFile;->relativePath:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_294

    goto :goto_2a7

    :cond_294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/fileexplorer/model/ContentFile;->relativePath:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2a7
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v6, v6, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    invoke-direct {v10, v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v11, :cond_2ee

    .line 57
    iget-object v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2ee

    :cond_2bf
    if-nez v12, :cond_2ee

    .line 58
    new-instance v6, Ljava/io/File;

    iget-object v8, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v8, v8, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-object v10, v9, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {v6, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 59
    iget-boolean v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz v6, :cond_2e5

    iget-boolean v6, v9, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-nez v6, :cond_2dc

    iget-boolean v6, v9, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v6, :cond_2e5

    .line 60
    :cond_2dc
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    move-result-object v6

    iget-object v8, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v8, v10}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->update(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_2e5
    iget-boolean v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz v6, :cond_2ee

    .line 62
    iget-object v6, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->checkFileLocationChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2ee
    :goto_2ee
    if-eqz v11, :cond_337

    .line 63
    iget-object v6, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_337

    .line 64
    new-instance v6, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;

    invoke-direct {v6}, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;-><init>()V

    .line 65
    iput-object v10, v6, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;->newPath:Ljava/lang/String;

    .line 66
    iget-object v8, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;->oldPath:Ljava/lang/String;

    .line 67
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_337

    :cond_307
    const/16 v6, 0x11

    if-ne v6, v0, :cond_337

    .line 68
    new-instance v4, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    iget-boolean v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz v6, :cond_315

    const v6, 0x7f0a006a

    goto :goto_318

    :cond_315
    const v6, 0x7f0a0054

    :goto_318
    invoke-direct {v4, v6}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    .line 69
    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setFileList(Ljava/util/ArrayList;)V

    .line 70
    iget-object v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v4, v6}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setFileInfo(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 71
    iget-boolean v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isOverWrite:Z

    invoke-virtual {v4, v6}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setOverwrite(Z)V

    .line 72
    iget v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destType:I

    invoke-virtual {v4, v6}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setDestType(I)V

    .line 73
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object v6

    iget-object v8, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {v6, v4, v8}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V

    goto :goto_33b

    :cond_337
    :goto_337
    if-eqz v0, :cond_33d

    if-eq v0, v5, :cond_33d

    :goto_33b
    move v6, v0

    goto :goto_34f

    :cond_33d
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v14, p1

    move-object/from16 v13, v18

    move/from16 v19, v6

    move v6, v0

    move/from16 v0, v19

    goto/16 :goto_de

    :cond_34b
    :goto_34b
    move-object/from16 v18, v13

    move-object/from16 p1, v14

    .line 74
    :goto_34f
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const-wide v8, 0x7fffffffffffffffL

    .line 75
    :try_start_357
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v4, p1

    invoke-virtual {v4, v8, v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_369

    .line 76
    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_364
    .catch Ljava/lang/InterruptedException; {:try_start_357 .. :try_end_364} :catch_365

    goto :goto_369

    :catch_365
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_369
    :goto_369
    move-object/from16 v8, v18

    if-eqz v8, :cond_386

    const/4 v0, 0x2

    :try_start_36e
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/16 v2, 0x33

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37f
    .catch Ljava/lang/IllegalAccessException; {:try_start_36e .. :try_end_37f} :catch_382
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_36e .. :try_end_37f} :catch_380

    goto :goto_386

    :catch_380
    move-exception v0

    goto :goto_383

    :catch_382
    move-exception v0

    .line 79
    :goto_383
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :cond_386
    :goto_386
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_395

    .line 81
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;

    move-result-object v0

    iget-boolean v2, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    invoke-virtual {v0, v7, v2}, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;->pasteFile(Ljava/util/List;Z)V

    .line 82
    :cond_395
    iget-boolean v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz v0, :cond_3a9

    const/4 v0, 0x0

    .line 83
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/util/ArrayList;Z)V

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/fileexplorer/event/UpdateFileListEvent;

    invoke-direct {v2}, Lcom/android/fileexplorer/event/UpdateFileListEvent;-><init>()V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 85
    :cond_3a9
    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/util/List;)V

    .line 86
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->getFromPage()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result v2

    const-string v4, "本地"

    .line 88
    invoke-static {v0, v4, v2, v3}, Lcom/android/fileexplorer/statistics/StatHelper;->fileMoveOrCopy(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 89
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$600(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/model/ViewDragManager;->getInstance()Lcom/android/fileexplorer/model/ViewDragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/ViewDragManager;->releasePermission()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setActionRunning(Z)V

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute copy result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17a

    .line 7
    new-instance v0, Lcom/android/fileexplorer/filemanager/e;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/filemanager/e;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager$15;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_14e

    if-eq p1, v1, :cond_14e

    const/4 v2, 0x2

    const v3, 0x7f110162

    if-eq p1, v2, :cond_141

    if-eq p1, v0, :cond_12f

    const/4 v2, 0x5

    if-eq p1, v2, :cond_109

    const/4 v0, 0x6

    const v1, 0x7f110297

    const v2, 0x7f1100f2

    if-eq p1, v0, :cond_f6

    const/16 v0, 0xe

    if-eq p1, v0, :cond_e5

    const/16 v0, 0x11

    if-eq p1, v0, :cond_bc

    const/16 v0, 0x16

    if-eq p1, v0, :cond_b4

    packed-switch p1, :pswitch_data_18e

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unknown error"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-boolean p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz p1, :cond_7b

    goto :goto_7c

    :cond_7b
    move v1, v2

    :goto_7c
    invoke-static {v1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    .line 11
    :pswitch_81  #0xa
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "delete file error"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11015b

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    .line 13
    :pswitch_92  #0x9
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "create file failed"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11015a

    .line 14
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    .line 15
    :pswitch_a3  #0x8
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cannot create directory"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110159

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    :cond_b4
    const p1, 0x7f11015f

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    .line 18
    :cond_bc
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz p1, :cond_d7

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_17a

    .line 20
    :cond_d7
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "error destParent is null"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v3}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    .line 22
    :cond_e5
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "already exist"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11015e

    .line 23
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    .line 24
    :cond_f6
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ori not exist"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-boolean p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz p1, :cond_104

    goto :goto_105

    :cond_104
    move v1, v2

    :goto_105
    invoke-static {v1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_17a

    .line 26
    :cond_109
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v2, "cancelled by user"

    invoke-static {p1, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    if-eqz p1, :cond_17a

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFrom()I

    move-result p1

    if-ne v0, p1, :cond_17a

    .line 28
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/FileChangeEvent;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZLjava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_17a

    .line 29
    :cond_12f
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V

    goto :goto_17a

    .line 30
    :cond_141
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "invalid path"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {v3}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_17a

    .line 32
    :cond_14e
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v2, "copy succeed"

    invoke-static {p1, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destType:I

    invoke-static {p1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$700(Lcom/android/fileexplorer/filemanager/FileOperationManager;I)V

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    if-eqz p1, :cond_17a

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFrom()I

    move-result p1

    if-ne v0, p1, :cond_17a

    .line 35
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/FileChangeEvent;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZLjava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 36
    :cond_17a
    :goto_17a
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/FileChangeEvent;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_18e
    .packed-switch 0x8
        :pswitch_a3  #00000008
        :pswitch_92  #00000009
        :pswitch_81  #0000000a
    .end packed-switch
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setActionRunning(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_8d

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    .line 21
    if-eqz v0, :cond_8d

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 25
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$300(Lcom/android/fileexplorer/filemanager/FileOperationManager;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_8d

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 33
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 42
    iget v0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 44
    const v3, 0x7f110317

    .line 47
    const/4 v4, 0x3

    .line 48
    if-ne v0, v4, :cond_45

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    .line 52
    iget v0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 54
    if-ne v0, v4, :cond_45

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 58
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 60
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 66
    invoke-interface {v0, v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    .line 69
    goto :goto_78

    .line 70
    :cond_45
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 72
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 80
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 82
    const-string v5, "content://com.xiaomi.mirror.remoteprovider"

    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_69

    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 92
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 94
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 100
    invoke-interface {v0, v3, v2, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showProgressDialog(IZZ)V

    .line 103
    iput-boolean v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->isFromMirrorProvider:Z

    .line 105
    goto :goto_78

    .line 106
    :cond_69
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 108
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 110
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 116
    invoke-interface {v0, v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showProgressDialog(I)V

    .line 119
    iput-boolean v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->isFromMirrorProvider:Z

    .line 121
    :goto_78
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    .line 123
    iget v0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 125
    if-eq v0, v4, :cond_80

    .line 127
    if-nez v0, :cond_8d

    .line 129
    :cond_80
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 131
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 133
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 139
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->startSpeedTimer()V

    .line 142
    :cond_8d
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 144
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$400(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V

    .line 147
    return-void
.end method
