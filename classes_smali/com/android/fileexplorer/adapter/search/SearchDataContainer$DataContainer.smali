.class Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;
.super Ljava/lang/Object;
.source "SearchDataContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/search/SearchDataContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataContainer"
.end annotation


# instance fields
.field private mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;",
            "Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedProcessedResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/search/SearchResultContent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSavedRawResults:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/search/SearchResultContent;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchTask:Landroid/os/AsyncTask;

.field private mSearchTask1:Lcom/android/fileexplorer/controller/Task$SimpleTask;

.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/search/SearchDataContainer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/search/SearchDataContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->this$0:Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mListeners:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedProcessedResults:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mHandlerMap:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mHandlerMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedRawResults:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedProcessedResults:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->notifyDataChange(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Ljava/lang/String;J)Lcom/android/fileexplorer/search/SearchResultContent;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->makeEmptyResult(Ljava/lang/String;J)Lcom/android/fileexplorer/search/SearchResultContent;

    move-result-object p0

    return-object p0
.end method

.method private makeEmptyResult(Ljava/lang/String;J)Lcom/android/fileexplorer/search/SearchResultContent;
    .registers 6

    new-instance v0, Lcom/android/fileexplorer/search/SearchResultContent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/fileexplorer/search/SearchResultContent;-><init>(Ljava/util/List;Ljava/lang/String;J)V

    return-object v0
.end method

.method private declared-synchronized notifyDataChange(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;->onDataChanged(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private runFakeTask(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->notifyDataChange(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    return-void
.end method

.method private runSearchTask(Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 16

    new-instance v8, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;-><init>(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;)V

    iput-object v8, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask1:Lcom/android/fileexplorer/controller/Task$SimpleTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/android/fileexplorer/controller/Task$SimpleTask;->executeOn(Ljava/util/concurrent/ExecutorService;)Lcom/android/fileexplorer/controller/Task;

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cancel()V
    .registers 3

    const-string v0, "SearchDataContainer"

    const-string v1, "cancel in DataContainer"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask1:Lcom/android/fileexplorer/controller/Task$SimpleTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Lcom/android/fileexplorer/controller/Task;)V

    return-void
.end method

.method public declared-synchronized removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removePostSearchOperationAll()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public requestData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 15

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask1:Lcom/android/fileexplorer/controller/Task$SimpleTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Lcom/android/fileexplorer/controller/Task;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedProcessedResults:Ljava/util/HashMap;

    invoke-virtual {v0, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez p5, :cond_68

    iget-object p5, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedRawResults:Ljava/lang/ref/WeakReference;

    if-eqz p5, :cond_68

    if-nez v0, :cond_22

    goto :goto_68

    :cond_22
    invoke-virtual {p5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/fileexplorer/search/SearchResultContent;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/search/SearchResultContent;

    if-eqz p5, :cond_5e

    if-nez v0, :cond_33

    goto :goto_5e

    :cond_33
    invoke-virtual {v0}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_54

    invoke-virtual {v0}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchTagText()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_54

    invoke-virtual {v0}, Lcom/android/fileexplorer/search/SearchResultContent;->getMagic()J

    move-result-wide v1

    cmp-long p5, p3, v1

    if-eqz p5, :cond_50

    goto :goto_54

    :cond_50
    invoke-direct {p0, v0, p6, p7}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->runFakeTask(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    goto :goto_67

    :cond_54
    :goto_54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->runSearchTask(Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    goto :goto_67

    :cond_5e
    :goto_5e
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->runSearchTask(Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    :goto_67
    return-void

    :cond_68
    :goto_68
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->runSearchTask(Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestTagData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 15

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask1:Lcom/android/fileexplorer/controller/Task$SimpleTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Lcom/android/fileexplorer/controller/Task;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedProcessedResults:Ljava/util/HashMap;

    invoke-virtual {v0, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez p5, :cond_1c

    iget-object p5, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedRawResults:Ljava/lang/ref/WeakReference;

    if-eqz p5, :cond_1c

    if-nez v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return-void

    :cond_1c
    :goto_1c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->runSearchTask(Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    return-void
.end method

.method public setPostSearchOperation(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
