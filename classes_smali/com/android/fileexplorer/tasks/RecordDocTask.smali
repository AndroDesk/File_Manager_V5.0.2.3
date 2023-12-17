.class public Lcom/android/fileexplorer/tasks/RecordDocTask;
.super Ljava/lang/Object;
.source "RecordDocTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Z)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_33

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setRecordDocInfo(Z)V

    .line 19
    new-instance v1, Ljava/util/HashMap;

    .line 21
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    iget-wide v2, v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    .line 26
    long-to-int v2, v2

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "count"

    .line 33
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-wide v2, v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->size:J

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object v0

    .line 42
    const-string v2, "length"

    .line 44
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "doc_info"

    .line 49
    invoke-static {v0, v1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    :cond_33
    return-void
.end method
