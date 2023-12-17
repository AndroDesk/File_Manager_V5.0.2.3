.class public Lcom/android/fileexplorer/controller/FileDownloadQuery;
.super Ljava/lang/Object;
.source "FileDownloadQuery.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IFileCategoryQuery;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calcDownloadFileSize(Lcom/android/fileexplorer/dao/file/AppTag;)J
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 13
    move-result-object p1

    .line 14
    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 16
    const-wide/16 v0, 0x0

    .line 18
    if-nez p1, :cond_14

    .line 20
    return-wide v0

    .line 21
    :cond_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 25
    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_4a

    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 37
    if-eqz v2, :cond_18

    .line 39
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_18

    .line 45
    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v2

    .line 53
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_18

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 65
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 72
    move-result-wide v3

    .line 73
    add-long/2addr v0, v3

    .line 74
    goto :goto_34

    .line 75
    :cond_4a
    return-wide v0
.end method

.method private getFiles(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.android.providers.downloads.ui"

    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 10
    const/4 v5, -0x1

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_50

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 33
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v1

    .line 41
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_14

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 53
    new-instance v3, Ljava/io/File;

    .line 55
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    const/4 v2, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-static {v3, v2, v4}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    .line 67
    move-result-object v2

    .line 68
    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 70
    if-eqz v3, :cond_28

    .line 72
    iget-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 74
    if-eqz v3, :cond_4c

    .line 76
    goto :goto_28

    .line 77
    :cond_4c
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_28

    .line 81
    :cond_50
    return-void
.end method

.method private loadApps()Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 11

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2, v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 20
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calcAppTagList(Ljava/util/List;)V

    .line 34
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 37
    move-result-object v1

    .line 38
    const-string v2, "com.android.providers.downloads.ui"

    .line 40
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTag(Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/AppTag;

    .line 43
    move-result-object v1

    .line 44
    const-wide/16 v2, 0x0

    .line 46
    if-nez v1, :cond_3f

    .line 48
    new-instance v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    move-result-object v5

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v9, 0x0

    .line 56
    const-string v6, "com.android.providers.downloads.ui"

    .line 58
    const-string v7, "zh_cn=下载&zh_tw=下載&=Downloads"

    .line 60
    move-object v4, v1

    .line 61
    invoke-direct/range {v4 .. v9}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    :cond_3f
    sget-boolean v4, Lcom/android/fileexplorer/util/Build;->IS_TABLET:Z

    .line 66
    if-eqz v4, :cond_47

    .line 68
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/controller/FileDownloadQuery;->calcDownloadFileSize(Lcom/android/fileexplorer/dao/file/AppTag;)J

    .line 71
    move-result-wide v2

    .line 72
    :cond_47
    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 74
    invoke-direct {v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;-><init>()V

    .line 77
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    .line 80
    move-result v1

    .line 81
    int-to-long v5, v1

    .line 82
    iput-wide v5, v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    .line 84
    iput-wide v2, v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->size:J

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/controller/FileDownloadQuery;->getFiles(Ljava/util/ArrayList;)V

    .line 94
    iput-object v1, v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 96
    const-string v1, "Download query finish time:"

    .line 98
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 101
    return-object v4
.end method


# virtual methods
.method public query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/controller/FileDownloadQuery;->loadApps()Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
