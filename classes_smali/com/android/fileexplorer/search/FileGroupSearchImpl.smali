.class Lcom/android/fileexplorer/search/FileGroupSearchImpl;
.super Lcom/android/fileexplorer/search/SearchEngineAbs;
.source "FileGroupSearchImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/search/SearchEngineAbs;-><init>()V

    .line 4
    return-void
.end method

.method public static create(J)Lcom/android/fileexplorer/search/FileGroupSearchImpl;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/search/FileGroupSearchImpl;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/search/FileGroupSearchImpl;-><init>()V

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/android/fileexplorer/search/SearchEngineAbs;->addFilter(J)V

    .line 9
    return-object v0
.end method


# virtual methods
.method public search(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 5
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
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->matchFileGroupByValue(Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    .line 11
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance p3, Lcom/android/fileexplorer/search/SearchResult;

    .line 16
    const-class p4, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 18
    invoke-direct {p3, p1, p4}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 21
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    return-object p2
.end method

.method public searchCategory(Ljava/lang/String;IJ)Ljava/util/List;
    .registers 5
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public searchTag(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 5
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

    const/4 p1, 0x0

    return-object p1
.end method
