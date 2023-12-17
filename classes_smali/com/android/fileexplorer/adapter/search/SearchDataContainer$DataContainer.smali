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
.method public constructor <init>(Lcom/android/fileexplorer/adapter/search/SearchDataContainer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->this$0:Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mListeners:Ljava/util/List;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedProcessedResults:Ljava/util/HashMap;

    .line 20
    new-instance p1, Ljava/util/HashMap;

    .line 22
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mHandlerMap:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mHandlerMap:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedRawResults:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedProcessedResults:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->notifyDataChange(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Ljava/lang/String;J)Lcom/android/fileexplorer/search/SearchResultContent;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->makeEmptyResult(Ljava/lang/String;J)Lcom/android/fileexplorer/search/SearchResultContent;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private makeEmptyResult(Ljava/lang/String;J)Lcom/android/fileexplorer/search/SearchResultContent;
    .registers 6

    .line 1
    new-instance v0, Lcom/android/fileexplorer/search/SearchResultContent;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/fileexplorer/search/SearchResultContent;-><init>(Ljava/util/List;Ljava/lang/String;J)V

    .line 11
    return-object v0
.end method

.method private declared-synchronized notifyDataChange(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mListeners:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v0

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_17

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;

    .line 20
    invoke-interface {v1, p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;->onDataChanged(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    .line 23
    goto :goto_7

    .line 24
    :cond_17
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    monitor-exit p0

    .line 28
    throw p1
.end method

.method private runFakeTask(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->notifyDataChange(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method private runSearchTask(Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 16

    .line 1
    new-instance v8, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;

    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p6

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p1

    .line 8
    move-wide v5, p3

    .line 9
    move-object v7, p5

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;-><init>(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;)V

    .line 13
    iput-object v8, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask1:Lcom/android/fileexplorer/controller/Task$SimpleTask;

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v8, p1}, Lcom/android/fileexplorer/controller/Task$SimpleTask;->executeOn(Ljava/util/concurrent/ExecutorService;)Lcom/android/fileexplorer/controller/Task;

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mListeners:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public cancel()V
    .registers 3

    .line 1
    const-string v0, "SearchDataContainer"

    .line 3
    const-string v1, "cancel in DataContainer"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask:Landroid/os/AsyncTask;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask1:Lcom/android/fileexplorer/controller/Task$SimpleTask;

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Lcom/android/fileexplorer/controller/Task;)V

    .line 18
    return-void
.end method

.method public declared-synchronized removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mListeners:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public removePostSearchOperationAll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mHandlerMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    return-void
.end method

.method public requestData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask:Landroid/os/AsyncTask;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask1:Lcom/android/fileexplorer/controller/Task$SimpleTask;

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Lcom/android/fileexplorer/controller/Task;)V

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedProcessedResults:Ljava/util/HashMap;

    .line 20
    invoke-virtual {v0, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 26
    if-nez p5, :cond_68

    .line 28
    iget-object p5, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedRawResults:Ljava/lang/ref/WeakReference;

    .line 30
    if-eqz p5, :cond_68

    .line 32
    if-nez v0, :cond_22

    .line 34
    goto :goto_68

    .line 35
    :cond_22
    invoke-virtual {p5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    move-result-object p5

    .line 39
    check-cast p5, Lcom/android/fileexplorer/search/SearchResultContent;

    .line 41
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/fileexplorer/search/SearchResultContent;

    .line 47
    if-eqz p5, :cond_5e

    .line 49
    if-nez v0, :cond_33

    .line 51
    goto :goto_5e

    .line 52
    :cond_33
    invoke-virtual {v0}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    .line 55
    move-result-object p5

    .line 56
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p5

    .line 60
    if-eqz p5, :cond_54

    .line 62
    invoke-virtual {v0}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchTagText()Ljava/lang/String;

    .line 65
    move-result-object p5

    .line 66
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p5

    .line 70
    if-eqz p5, :cond_54

    .line 72
    invoke-virtual {v0}, Lcom/android/fileexplorer/search/SearchResultContent;->getMagic()J

    .line 75
    move-result-wide v1

    .line 76
    cmp-long p5, p3, v1

    .line 78
    if-eqz p5, :cond_50

    .line 80
    goto :goto_54

    .line 81
    :cond_50
    invoke-direct {p0, v0, p6, p7}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->runFakeTask(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    .line 84
    goto :goto_67

    .line 85
    :cond_54
    :goto_54
    move-object v0, p0

    .line 86
    move-object v1, p1

    .line 87
    move-object v2, p2

    .line 88
    move-wide v3, p3

    .line 89
    move-object v5, p6

    .line 90
    move-object v6, p7

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->runSearchTask(Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    .line 94
    goto :goto_67

    .line 95
    :cond_5e
    :goto_5e
    move-object v0, p0

    .line 96
    move-object v1, p1

    .line 97
    move-object v2, p2

    .line 98
    move-wide v3, p3

    .line 99
    move-object v5, p6

    .line 100
    move-object v6, p7

    .line 101
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->runSearchTask(Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    .line 104
    :goto_67
    return-void

    .line 105
    :cond_68
    :goto_68
    move-object v0, p0

    .line 106
    move-object v1, p1

    .line 107
    move-object v2, p2

    .line 108
    move-wide v3, p3

    .line 109
    move-object v5, p6

    .line 110
    move-object v6, p7

    .line 111
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->runSearchTask(Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method public requestTagData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask:Landroid/os/AsyncTask;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSearchTask1:Lcom/android/fileexplorer/controller/Task$SimpleTask;

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Lcom/android/fileexplorer/controller/Task;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedProcessedResults:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v0, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 19
    if-nez p5, :cond_1c

    .line 21
    iget-object p5, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mSavedRawResults:Ljava/lang/ref/WeakReference;

    .line 23
    if-eqz p5, :cond_1c

    .line 25
    if-nez v0, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    return-void

    .line 29
    :cond_1c
    :goto_1c
    move-object v0, p0

    .line 30
    move-object v1, p1

    .line 31
    move-object v2, p2

    .line 32
    move-wide v3, p3

    .line 33
    move-object v5, p6

    .line 34
    move-object v6, p7

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->runSearchTask(Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public setPostSearchOperation(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->mHandlerMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method
