.class public Lcom/android/fileexplorer/search/SearchResultContent;
.super Ljava/lang/Object;
.source "SearchResultContent.java"


# instance fields
.field private mMagic:J

.field private mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchTagText:Ljava/lang/String;

.field private mSearchtext:Ljava/lang/String;

.field private mTagResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mResults:Ljava/util/List;

    iput-wide p3, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mMagic:J

    iput-object p2, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mSearchtext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mResults:Ljava/util/List;

    iput-wide p4, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mMagic:J

    iput-object p2, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mSearchtext:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mSearchTagText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMagic()J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mMagic:J

    return-wide v0
.end method

.method public getResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mResults:Ljava/util/List;

    return-object v0
.end method

.method public getSearchTagText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mSearchTagText:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchtext()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mSearchtext:Ljava/lang/String;

    return-object v0
.end method

.method public getTagResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mTagResults:Ljava/util/List;

    return-object v0
.end method

.method public setTagResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/fileexplorer/search/SearchResultContent;->mTagResults:Ljava/util/List;

    return-void
.end method
