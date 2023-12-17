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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;ZZI)V
    .registers 6

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    iput-boolean p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isOverWrite:Z

    iput-boolean p4, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    iput p5, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destType:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/filemanager/FileOperationManager$15;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->lambda$onPostExecute$0()V

    return-void
.end method

.method private synthetic lambda$onPostExecute$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    :cond_17
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 22

    move-object/from16 v1, p0

    const-string v2, "com.android.fileexplorer"

    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$300(Lcom/android/fileexplorer/filemanager/FileOperationManager;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "currentOperationList empty or item is null"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1b
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0, v4, v5}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/android/fileexplorer/filemanager/FileTransferParams;

    invoke-direct {v15}, Lcom/android/fileexplorer/filemanager/FileTransferParams;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setTotalFileCount(I)V

    invoke-virtual {v15}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setUseThreadPool()V

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

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "miPerfSceneBoostAcquire"

    new-array v11, v0, [Ljava/lang/Class;

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

    :goto_d9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v13, v8

    :goto_dd
    move v0, v4

    :goto_de
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_34b

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

    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10b

    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->resetProgress()V

    :cond_10b
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v15, v4}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setCurrentIndex(I)V

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

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

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

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_160

    :cond_194
    move v0, v8

    :goto_195
    sget-object v8, Lcom/android/fileexplorer/filemanager/FileOperationManager;->futureRes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

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

    iget-boolean v9, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->isFromMirrorProvider:Z

    if-eqz v9, :cond_1dd

    move-object/from16 v9, v17

    iget-object v10, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/fileexplorer/model/ContentFile;->getRelativePathFromMirrorUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1e0

    :cond_1dd
    move-object/from16 v9, v17

    move-object v10, v8

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

    invoke-static {v13, v14, v10}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_201
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v9, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    iget v11, v11, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-nez v11, :cond_219

    move v11, v5

    goto :goto_21a

    :cond_219
    const/4 v11, 0x0

    :goto_21a
    if-eqz v11, :cond_221

    iget-object v12, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    iget-object v12, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v12, :cond_307

    iget v12, v9, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_2bf

    if-eqz v6, :cond_251

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

    :goto_257
    invoke-static {v6}, Lcom/android/fileexplorer/model/ContentFile;->isEmpty(Lcom/android/fileexplorer/model/ContentFile;)Z

    move-result v10

    if-eqz v10, :cond_275

    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "startCopyOrMoveThread uriFile error : "

    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33b

    :cond_275
    iget-object v10, v6, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    iput-object v10, v9, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iget-object v10, v6, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    iput-object v10, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

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

    iget-object v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2ee

    :cond_2bf
    if-nez v12, :cond_2ee

    new-instance v6, Ljava/io/File;

    iget-object v8, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v8, v8, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-object v10, v9, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {v6, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iget-boolean v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz v6, :cond_2e5

    iget-boolean v6, v9, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-nez v6, :cond_2dc

    iget-boolean v6, v9, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v6, :cond_2e5

    :cond_2dc
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    move-result-object v6

    iget-object v8, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v8, v10}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->update(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e5
    iget-boolean v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz v6, :cond_2ee

    iget-object v6, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->checkFileLocationChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2ee
    :goto_2ee
    if-eqz v11, :cond_337

    iget-object v6, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_337

    new-instance v6, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;

    invoke-direct {v6}, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;-><init>()V

    iput-object v10, v6, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;->newPath:Ljava/lang/String;

    iget-object v8, v9, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper$PasteFile;->oldPath:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_337

    :cond_307
    const/16 v6, 0x11

    if-ne v6, v0, :cond_337

    new-instance v4, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    iget-boolean v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz v6, :cond_315

    const v6, 0x7f0a006a

    goto :goto_318

    :cond_315
    const v6, 0x7f0a0054

    :goto_318
    invoke-direct {v4, v6}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setFileList(Ljava/util/ArrayList;)V

    iget-object v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v4, v6}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setFileInfo(Lcom/android/fileexplorer/model/FileInfo;)V

    iget-boolean v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isOverWrite:Z

    invoke-virtual {v4, v6}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setOverwrite(Z)V

    iget v6, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destType:I

    invoke-virtual {v4, v6}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setDestType(I)V

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

    :goto_34f
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const-wide v8, 0x7fffffffffffffffL

    :try_start_357
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v4, p1

    invoke-virtual {v4, v8, v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_369

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_364
    .catch Ljava/lang/InterruptedException; {:try_start_357 .. :try_end_364} :catch_365

    goto :goto_369

    :catch_365
    move-exception v0

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

    :goto_383
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_386
    :goto_386
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_395

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;

    move-result-object v0

    iget-boolean v2, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    invoke-virtual {v0, v7, v2}, Lcom/android/fileexplorer/apptag/AppTagFilePasteHelper;->pasteFile(Ljava/util/List;Z)V

    :cond_395
    iget-boolean v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz v0, :cond_3a9

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/util/ArrayList;Z)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/fileexplorer/event/UpdateFileListEvent;

    invoke-direct {v2}, Lcom/android/fileexplorer/event/UpdateFileListEvent;-><init>()V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3a9
    iget-object v0, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/util/List;)V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->getFromPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result v2

    const-string v4, "本地"

    invoke-static {v0, v4, v2, v3}, Lcom/android/fileexplorer/statistics/StatHelper;->fileMoveOrCopy(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$600(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V

    invoke-static {}, Lcom/android/fileexplorer/model/ViewDragManager;->getInstance()Lcom/android/fileexplorer/model/ViewDragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/ViewDragManager;->releasePermission()V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setActionRunning(Z)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17a

    new-instance v0, Lcom/android/fileexplorer/filemanager/e;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/filemanager/e;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager$15;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

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

    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unknown error"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz p1, :cond_7b

    goto :goto_7c

    :cond_7b
    move v1, v2

    :goto_7c
    invoke-static {v1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    :pswitch_81  #0xa
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "delete file error"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11015b

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    :pswitch_92  #0x9
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "create file failed"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11015a

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    :pswitch_a3  #0x8
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cannot create directory"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110159

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    :cond_b4
    const p1, 0x7f11015f

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    :cond_bc
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz p1, :cond_d7

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

    :cond_d7
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "error destParent is null"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    :cond_e5
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "already exist"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11015e

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto/16 :goto_17a

    :cond_f6
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ori not exist"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$isMove:Z

    if-eqz p1, :cond_104

    goto :goto_105

    :cond_104
    move v1, v2

    :goto_105
    invoke-static {v1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_17a

    :cond_109
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v2, "cancelled by user"

    invoke-static {p1, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    if-eqz p1, :cond_17a

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFrom()I

    move-result p1

    if-ne v0, p1, :cond_17a

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/FileChangeEvent;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZLjava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_17a

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

    :cond_141
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "invalid path"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_17a

    :cond_14e
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v2, "copy succeed"

    invoke-static {p1, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destType:I

    invoke-static {p1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$700(Lcom/android/fileexplorer/filemanager/FileOperationManager;I)V

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    if-eqz p1, :cond_17a

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFrom()I

    move-result p1

    if-ne v0, p1, :cond_17a

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/FileChangeEvent;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->scanList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZLjava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

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

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 7

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setActionRunning(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$300(Lcom/android/fileexplorer/filemanager/FileOperationManager;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    iget v0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const v3, 0x7f110317

    const/4 v4, 0x3

    if-ne v0, v4, :cond_45

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    iget v0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-ne v0, v4, :cond_45

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0, v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    goto :goto_78

    :cond_45
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    const-string v5, "content://com.xiaomi.mirror.remoteprovider"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0, v3, v2, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showProgressDialog(IZZ)V

    iput-boolean v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->isFromMirrorProvider:Z

    goto :goto_78

    :cond_69
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0, v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showProgressDialog(I)V

    iput-boolean v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->isFromMirrorProvider:Z

    :goto_78
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->val$destParent:Lcom/android/fileexplorer/model/FileInfo;

    iget v0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-eq v0, v4, :cond_80

    if-nez v0, :cond_8d

    :cond_80
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->startSpeedTimer()V

    :cond_8d
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$400(Lcom/android/fileexplorer/filemanager/FileOperationManager;)V

    return-void
.end method
