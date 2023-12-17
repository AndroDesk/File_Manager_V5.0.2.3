.class public Lcom/android/fileexplorer/controller/FileDownloadQuery;
.super Ljava/lang/Object;
.source "FileDownloadQuery.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IFileCategoryQuery;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calcDownloadFileSize(Lcom/android/fileexplorer/dao/file/AppTag;)J
    .registers 7

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    const-wide/16 v0, 0x0

    if-nez p1, :cond_14

    return-wide v0

    :cond_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_34

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

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v0

    const-string v1, "com.android.providers.downloads.ui"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v2

    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_28

    iget-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-eqz v3, :cond_4c

    goto :goto_28

    :cond_4c
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_50
    return-void
.end method

.method private loadApps()Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 11

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calcAppTagList(Ljava/util/List;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v1

    const-string v2, "com.android.providers.downloads.ui"

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTag(Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_3f

    new-instance v1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, "com.android.providers.downloads.ui"

    const-string v7, "zh_cn=下载&zh_tw=下載&=Downloads"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3f
    sget-boolean v4, Lcom/android/fileexplorer/util/Build;->IS_TABLET:Z

    if-eqz v4, :cond_47

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/controller/FileDownloadQuery;->calcDownloadFileSize(Lcom/android/fileexplorer/dao/file/AppTag;)J

    move-result-wide v2

    :cond_47
    new-instance v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    invoke-direct {v4}, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;-><init>()V

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    iput-wide v2, v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->size:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/controller/FileDownloadQuery;->getFiles(Ljava/util/ArrayList;)V

    iput-object v1, v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    const-string v1, "Download query finish time:"

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 6

    invoke-direct {p0}, Lcom/android/fileexplorer/controller/FileDownloadQuery;->loadApps()Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    return-object p1
.end method
