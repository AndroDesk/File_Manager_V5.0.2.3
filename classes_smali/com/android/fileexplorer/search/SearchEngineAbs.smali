.class abstract Lcom/android/fileexplorer/search/SearchEngineAbs;
.super Ljava/lang/Object;
.source "SearchEngineAbs.java"


# instance fields
.field private mFilters:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/fileexplorer/search/SearchEngineAbs;->mFilters:J

    .line 8
    return-void
.end method


# virtual methods
.method public addFilter(J)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/search/SearchEngineAbs;->mFilters:J

    .line 3
    or-long/2addr p1, v0

    .line 4
    iput-wide p1, p0, Lcom/android/fileexplorer/search/SearchEngineAbs;->mFilters:J

    .line 6
    return-void
.end method

.method public checkFilters(J)Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/search/SearchEngineAbs;->mFilters:J

    .line 3
    and-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    cmp-long p1, p1, v0

    .line 8
    if-eqz p1, :cond_b

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    return p1
.end method

.method public abstract search(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
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
.end method

.method public abstract searchCategory(Ljava/lang/String;IJ)Ljava/util/List;
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
.end method

.method public abstract searchTag(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
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
.end method
