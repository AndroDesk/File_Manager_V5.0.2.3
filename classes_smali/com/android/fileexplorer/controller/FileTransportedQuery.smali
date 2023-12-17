.class public Lcom/android/fileexplorer/controller/FileTransportedQuery;
.super Ljava/lang/Object;
.source "FileTransportedQuery.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IFileCategoryQuery;
.implements Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FileMiShareQuery"


# instance fields
.field private mForceAllFilesAsync:Z

.field private mLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/controller/FileTransportedQuery;->mForceAllFilesAsync:Z

    .line 7
    return-void
.end method

.method private filterFiles(Ljava/util/ArrayList;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/util/Comparator;

    .line 4
    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 8
    goto :goto_1f

    .line 9
    :catch_8
    move-exception p2

    .line 10
    sget-object v0, Lcom/android/fileexplorer/controller/FileTransportedQuery;->TAG:Ljava/lang/String;

    .line 12
    const-string v1, "bluetooth and mi share file sort error: "

    .line 14
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_1f
    invoke-static {p1}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileInfo(Ljava/util/List;)Ljava/util/HashSet;

    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p1

    .line 40
    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_43

    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 52
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_27

    .line 64
    const/4 v1, 0x1

    .line 65
    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 67
    goto :goto_27

    .line 68
    :cond_43
    return-void
.end method


# virtual methods
.method public onScanFinish(I)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/controller/FileTransportedQuery;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 8
    :cond_7
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->unRegisterOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 15
    return-void
.end method

.method public query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 16

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p5, :cond_36

    .line 12
    iget-boolean v2, p0, Lcom/android/fileexplorer/controller/FileTransportedQuery;->mForceAllFilesAsync:Z

    .line 14
    if-eqz v2, :cond_36

    .line 16
    iget-object v2, p0, Lcom/android/fileexplorer/controller/FileTransportedQuery;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 18
    if-nez v2, :cond_1b

    .line 20
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 26
    iput-object v2, p0, Lcom/android/fileexplorer/controller/FileTransportedQuery;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 28
    :cond_1b
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 35
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 42
    :try_start_29
    iget-object v2, p0, Lcom/android/fileexplorer/controller/FileTransportedQuery;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 44
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2e} :catch_2f

    .line 47
    goto :goto_33

    .line 48
    :catch_2f
    move-exception v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    :goto_33
    const/4 v2, 0x0

    .line 53
    iput-object v2, p0, Lcom/android/fileexplorer/controller/FileTransportedQuery;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 55
    :cond_36
    new-instance v3, Lcom/android/fileexplorer/controller/FileBluetoothQuery;

    .line 57
    invoke-direct {v3}, Lcom/android/fileexplorer/controller/FileBluetoothQuery;-><init>()V

    .line 60
    move-object v4, p1

    .line 61
    move-object v5, p2

    .line 62
    move v6, p3

    .line 63
    move v7, p4

    .line 64
    move v8, p5

    .line 65
    invoke-virtual/range {v3 .. v8}, Lcom/android/fileexplorer/controller/FileBluetoothQuery;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 68
    move-result-object v2

    .line 69
    new-instance v3, Lcom/android/fileexplorer/controller/FileMiShareQuery;

    .line 71
    invoke-direct {v3}, Lcom/android/fileexplorer/controller/FileMiShareQuery;-><init>()V

    .line 74
    invoke-virtual/range {v3 .. v8}, Lcom/android/fileexplorer/controller/FileMiShareQuery;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 77
    move-result-object v3

    .line 78
    new-instance v4, Lcom/android/fileexplorer/controller/FileDownloadQuery;

    .line 80
    invoke-direct {v4}, Lcom/android/fileexplorer/controller/FileDownloadQuery;-><init>()V

    .line 83
    move-object v5, p1

    .line 84
    move-object v6, p2

    .line 85
    move v7, p3

    .line 86
    move v8, p4

    .line 87
    move v9, p5

    .line 88
    invoke-virtual/range {v4 .. v9}, Lcom/android/fileexplorer/controller/FileDownloadQuery;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 91
    move-result-object p3

    .line 92
    new-instance p4, Ljava/util/ArrayList;

    .line 94
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v2, v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v2, v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object p3, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    new-instance p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 114
    invoke-direct {p3}, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;-><init>()V

    .line 117
    if-eqz p5, :cond_7e

    .line 119
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 122
    move-result p2

    .line 123
    int-to-long v2, p2

    .line 124
    iput-wide v2, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    .line 126
    goto :goto_81

    .line 127
    :cond_7e
    invoke-direct {p0, p4, p2}, Lcom/android/fileexplorer/controller/FileTransportedQuery;->filterFiles(Ljava/util/ArrayList;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 130
    :goto_81
    iput-object p4, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 132
    iput-boolean v1, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string p1, "query finish:"

    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 158
    return-object p3
.end method

.method public setForceAllFilesAsync(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/controller/FileTransportedQuery;->mForceAllFilesAsync:Z

    .line 3
    return-void
.end method
