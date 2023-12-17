.class public Lcom/android/fileexplorer/controller/FileBluetoothQuery;
.super Ljava/lang/Object;
.source "FileBluetoothQuery.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IFileCategoryQuery;


# static fields
.field private static final BLUETOOTH_STORAGE_PATH:Ljava/lang/String;

.field private static final BLUETOOTH_STORAGE_PATH_ON_R:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FileBluetoothQuery"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/controller/FileBluetoothQuery;->BLUETOOTH_STORAGE_PATH:Ljava/lang/String;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/controller/FileBluetoothQuery;->BLUETOOTH_STORAGE_PATH_ON_R:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    :try_start_0
    invoke-static {p2}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_1f

    :catch_8
    move-exception p2

    const-string v0, "bluetooth file sort error: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileBluetoothQuery"

    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    invoke-static {p1}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileInfo(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    goto :goto_27

    :cond_43
    return-void
.end method

.method private getFiles(Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/fileexplorer/controller/FileBluetoothQuery;->BLUETOOTH_STORAGE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    array-length v2, v0

    move v3, v1

    :goto_11
    if-ge v3, v2, :cond_36

    aget-object v4, v0, v3

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v4

    iget-object v5, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    if-eqz v5, :cond_33

    iget-boolean v6, v4, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-nez v6, :cond_33

    iget-boolean v6, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v6, :cond_27

    goto :goto_33

    :cond_27
    const-string v6, "/storage/emulated/legacy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    goto :goto_33

    :cond_30
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_36
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 9

    new-instance p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    invoke-direct {p3}, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;-><init>()V

    new-instance p4, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {p4}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {p4}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/controller/FileBluetoothQuery;->getFiles(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1b

    return-object p3

    :cond_1b
    if-eqz p5, :cond_36

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    sget-boolean p2, Lcom/android/fileexplorer/util/Build;->IS_TABLET:Z

    if-eqz p2, :cond_31

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/util/List;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_33

    :cond_31
    const-wide/16 v0, 0x0

    :goto_33
    iput-wide v0, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->size:J

    goto :goto_39

    :cond_36
    invoke-direct {p0, v0, p2}, Lcom/android/fileexplorer/controller/FileBluetoothQuery;->filterFiles(Ljava/util/ArrayList;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    :goto_39
    const/4 p2, 0x0

    iput-boolean p2, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "query finish:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    return-object p3
.end method
