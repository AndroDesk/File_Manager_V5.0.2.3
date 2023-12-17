.class public Lcom/android/fileexplorer/controller/InstalledAppCategoryQuery;
.super Ljava/lang/Object;
.source "InstalledAppCategoryQuery.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IFileCategoryQuery;


# static fields
.field private static final TAG:Ljava/lang/String; = "InstalledAppCategoryQuery"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calcInstalledAppSize(Ljava/util/List;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1f

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 19
    new-instance v3, Ljava/io/File;

    .line 21
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 23
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 29
    move-result-wide v2

    .line 30
    add-long/2addr v0, v2

    .line 31
    goto :goto_6

    .line 32
    :cond_1f
    return-wide v0
.end method


# virtual methods
.method public query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 9

    .line 1
    new-instance p1, Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    invoke-direct {p1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 9
    new-instance p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 11
    invoke-direct {p3}, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;-><init>()V

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getInstalledApps()Ljava/util/List;

    .line 17
    move-result-object p4

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    if-eqz p5, :cond_2d

    .line 25
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 28
    move-result p2

    .line 29
    int-to-long v1, p2

    .line 30
    iput-wide v1, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->count:J

    .line 32
    sget-boolean p2, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 34
    if-eqz p2, :cond_28

    .line 36
    invoke-direct {p0, p4}, Lcom/android/fileexplorer/controller/InstalledAppCategoryQuery;->calcInstalledAppSize(Ljava/util/List;)J

    .line 39
    move-result-wide p4

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    const-wide/16 p4, 0x0

    .line 43
    :goto_2a
    iput-wide p4, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->size:J

    .line 45
    goto :goto_6c

    .line 46
    :cond_2d
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 49
    move-result-object p5

    .line 50
    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    move-result-object p5

    .line 54
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p4

    .line 58
    :goto_39
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_4d

    .line 64
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 70
    invoke-static {p5, v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/fileexplorer/model/FileInfo;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_39

    .line 78
    :cond_4d
    :try_start_4d
    invoke-static {p2}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/util/Comparator;

    .line 81
    move-result-object p2

    .line 82
    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_54} :catch_55

    .line 85
    goto :goto_6c

    .line 86
    :catch_55
    move-exception p2

    .line 87
    const-string p4, "installApp sort error: "

    .line 89
    invoke-static {p4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-result-object p4

    .line 93
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 104
    const-string p4, "InstalledAppCategoryQuery"

    .line 106
    invoke-static {p4, p2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_6c
    iput-object v0, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    .line 111
    const/4 p2, 0x0

    .line 112
    iput-boolean p2, p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    .line 114
    const-string p2, "InstallApp query finish time:"

    .line 116
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 119
    return-object p3
.end method
