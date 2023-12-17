.class public Lcom/android/fileexplorer/controller/FileMiShareQuery;
.super Ljava/lang/Object;
.source "FileMiShareQuery.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IFileCategoryQuery;


# static fields
.field private static final TAG:Ljava/lang/String; = "FileMiShareQuery"


# direct methods
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
    sget-object v0, Lcom/android/fileexplorer/controller/FileMiShareQuery;->TAG:Ljava/lang/String;

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

.method private getFiles(Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/util/FileHelper;->getMiShareFile()Ljava/io/File;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_18

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_18

    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    :cond_18
    invoke-static {}, Lcom/android/fileexplorer/util/FileHelper;->getNewMiShareFile()Ljava/io/File;

    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_2b

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2b

    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz v1, :cond_33

    .line 51
    return v2

    .line 52
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v0

    .line 56
    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5e

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/io/File;

    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-static {v1, v3, v2}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    .line 72
    move-result-object v1

    .line 73
    iget-object v3, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 75
    if-eqz v3, :cond_37

    .line 77
    iget-boolean v4, v1, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 79
    if-eqz v4, :cond_51

    .line 81
    goto :goto_37

    .line 82
    :cond_51
    const-string v4, "/storage/emulated/legacy"

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_5a

    .line 90
    goto :goto_37

    .line 91
    :cond_5a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_37

    .line 95
    :cond_5e
    const/4 p1, 0x1

    .line 96
    return p1
.end method


# virtual methods
.method public query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 9

    .line 1
    new-instance p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 3
    invoke-direct {p3}, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;-><init>()V

    .line 6
    new-instance p4, Lcom/android/fileexplorer/util/TimeCost;

    .line 8
    invoke-direct {p4}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 11
    invoke-virtual {p4}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object v0, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 21
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/controller/FileMiShareQuery;->getFiles(Ljava/util/ArrayList;)Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1b

    .line 27
    return-object p3

    .line 28
    :cond_1b
    if-eqz p5, :cond_36

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result p2

    .line 34
    int-to-long v1, p2

    .line 35
    iput-wide v1, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    .line 37
    sget-boolean p2, Lcom/android/fileexplorer/util/Build;->IS_TABLET:Z

    .line 39
    if-eqz p2, :cond_31

    .line 41
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/util/List;)Ljava/lang/Long;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 48
    move-result-wide v0

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    const-wide/16 v0, 0x0

    .line 52
    :goto_33
    iput-wide v0, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->size:J

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    invoke-direct {p0, v0, p2}, Lcom/android/fileexplorer/controller/FileMiShareQuery;->filterFiles(Ljava/util/ArrayList;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 58
    :goto_39
    const/4 p2, 0x0

    .line 59
    iput-boolean p2, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string p1, "query finish:"

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p4, p1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 85
    return-object p3
.end method
