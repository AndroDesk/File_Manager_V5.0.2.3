.class Lcom/android/fileexplorer/search/FileItemSearchImpl;
.super Lcom/android/fileexplorer/search/SearchEngineAbs;
.source "FileItemSearchImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/search/SearchEngineAbs;-><init>()V

    .line 4
    return-void
.end method

.method private KeyValueCheckFilter(J)Z
    .registers 5

    const-wide/16 v0, 0x1

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public static create(J)Lcom/android/fileexplorer/search/FileItemSearchImpl;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/search/FileItemSearchImpl;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/search/FileItemSearchImpl;-><init>()V

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/android/fileexplorer/search/SearchEngineAbs;->addFilter(J)V

    .line 9
    return-object v0
.end method

.method private tagCheckFilter(J)Z
    .registers 5

    const-wide/16 v0, 0x2

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method


# virtual methods
.method public search(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-direct {p0, p3, p4}, Lcom/android/fileexplorer/search/FileItemSearchImpl;->tagCheckFilter(J)Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1d

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->matchFileItemByTag(Ljava/lang/String;)Ljava/util/List;

    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/android/fileexplorer/search/SearchResult;

    .line 24
    invoke-direct {v3, v2, v0}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 27
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_1d
    invoke-direct {p0, p3, p4}, Lcom/android/fileexplorer/search/FileItemSearchImpl;->KeyValueCheckFilter(J)Z

    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_33

    .line 36
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p3, p1, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->matchFileItemByAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lcom/android/fileexplorer/search/SearchResult;

    .line 46
    invoke-direct {p2, p1, v0}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 49
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_33
    return-object v1
.end method

.method public searchCategory(Ljava/lang/String;IJ)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-direct {p0, p3, p4}, Lcom/android/fileexplorer/search/FileItemSearchImpl;->KeyValueCheckFilter(J)Z

    .line 9
    move-result p3

    .line 10
    if-eqz p3, :cond_35

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p3, p1, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->matchFileItemByCategory(Ljava/lang/String;I)Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_2b

    .line 22
    const-string p2, "searchCategory result:"

    .line 24
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    move-result p3

    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    const-string p3, "searchengine"

    .line 41
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_2b
    new-instance p2, Lcom/android/fileexplorer/search/SearchResult;

    .line 46
    const-class p3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 48
    invoke-direct {p2, p1, p3}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 51
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_35
    return-object v0
.end method

.method public searchTag(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-direct {p0, p3, p4}, Lcom/android/fileexplorer/search/FileItemSearchImpl;->KeyValueCheckFilter(J)Z

    .line 9
    move-result p3

    .line 10
    if-eqz p3, :cond_35

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p3, p1, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->matchFileItemByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_2b

    .line 22
    const-string p2, "searchTag result:"

    .line 24
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    move-result p3

    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    const-string p3, "searchengine"

    .line 41
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_2b
    new-instance p2, Lcom/android/fileexplorer/search/SearchResult;

    .line 46
    const-class p3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 48
    invoke-direct {p2, p1, p3}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 51
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_35
    return-object v0
.end method
