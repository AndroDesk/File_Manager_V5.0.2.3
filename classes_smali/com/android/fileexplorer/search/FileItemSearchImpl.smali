.class Lcom/android/fileexplorer/search/FileItemSearchImpl;
.super Lcom/android/fileexplorer/search/SearchEngineAbs;
.source "FileItemSearchImpl.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/search/SearchEngineAbs;-><init>()V

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

    new-instance v0, Lcom/android/fileexplorer/search/FileItemSearchImpl;

    invoke-direct {v0}, Lcom/android/fileexplorer/search/FileItemSearchImpl;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/android/fileexplorer/search/SearchEngineAbs;->addFilter(J)V

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

    const-class v0, Lcom/android/fileexplorer/dao/file/FileItem;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p3, p4}, Lcom/android/fileexplorer/search/FileItemSearchImpl;->tagCheckFilter(J)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->matchFileItemByTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {v3, v2, v0}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-direct {p0, p3, p4}, Lcom/android/fileexplorer/search/FileItemSearchImpl;->KeyValueCheckFilter(J)Z

    move-result p3

    if-eqz p3, :cond_33

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->matchFileItemByAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {p2, p1, v0}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p3, p4}, Lcom/android/fileexplorer/search/FileItemSearchImpl;->KeyValueCheckFilter(J)Z

    move-result p3

    if-eqz p3, :cond_35

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->matchFileItemByCategory(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2b

    const-string p2, "searchCategory result:"

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "searchengine"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    new-instance p2, Lcom/android/fileexplorer/search/SearchResult;

    const-class p3, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-direct {p2, p1, p3}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p3, p4}, Lcom/android/fileexplorer/search/FileItemSearchImpl;->KeyValueCheckFilter(J)Z

    move-result p3

    if-eqz p3, :cond_35

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->matchFileItemByPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2b

    const-string p2, "searchTag result:"

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "searchengine"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    new-instance p2, Lcom/android/fileexplorer/search/SearchResult;

    const-class p3, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-direct {p2, p1, p3}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    return-object v0
.end method
