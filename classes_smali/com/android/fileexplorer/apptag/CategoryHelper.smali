.class public Lcom/android/fileexplorer/apptag/CategoryHelper;
.super Ljava/lang/Object;
.source "CategoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/CategoryHelper$Singleton;
    }
.end annotation


# static fields
.field private static sRecentLoadLatch:Ljava/util/concurrent/CountDownLatch;

.field private static sRecentScanLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 7
    sput-object v0, Lcom/android/fileexplorer/apptag/CategoryHelper;->sRecentLoadLatch:Ljava/util/concurrent/CountDownLatch;

    .line 9
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 14
    sput-object v0, Lcom/android/fileexplorer/apptag/CategoryHelper;->sRecentScanLatch:Ljava/util/concurrent/CountDownLatch;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/apptag/CategoryHelper;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/CategoryHelper$Singleton;->access$000()Lcom/android/fileexplorer/apptag/CategoryHelper;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public declared-synchronized initAppTag()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/apptag/CategoryHelper;->sRecentLoadLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 7
    sget-object v0, Lcom/android/fileexplorer/apptag/CategoryHelper;->sRecentScanLatch:Ljava/util/concurrent/CountDownLatch;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_b} :catch_e
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    .line 12
    goto :goto_12

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    goto :goto_3b

    .line 15
    :catch_e
    move-exception v0

    .line 16
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    :goto_12
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_39

    .line 33
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 44
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    .line 51
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calcAppTagList(Ljava/util/List;)V
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_c

    .line 58
    :cond_39
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_3b
    monitor-exit p0

    .line 61
    throw v0
.end method

.method public recentLoadCountDown()V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/CategoryHelper;->sRecentLoadLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    cmp-long v0, v0, v2

    .line 11
    if-lez v0, :cond_11

    .line 13
    sget-object v0, Lcom/android/fileexplorer/apptag/CategoryHelper;->sRecentLoadLatch:Ljava/util/concurrent/CountDownLatch;

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 18
    :cond_11
    return-void
.end method

.method public recentScanCountDown()V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/CategoryHelper;->sRecentScanLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    cmp-long v0, v0, v2

    .line 11
    if-lez v0, :cond_11

    .line 13
    sget-object v0, Lcom/android/fileexplorer/apptag/CategoryHelper;->sRecentScanLatch:Ljava/util/concurrent/CountDownLatch;

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 18
    :cond_11
    return-void
.end method
