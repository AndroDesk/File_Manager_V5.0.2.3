.class Lcom/android/fileexplorer/search/SearchManager$DefaultMergerImpl;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Lcom/android/fileexplorer/search/SearchManager$IMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/search/SearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultMergerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/search/SearchManager;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/search/SearchManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/search/SearchManager$DefaultMergerImpl;->this$0:Lcom/android/fileexplorer/search/SearchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/search/SearchManager;Lcom/android/fileexplorer/search/SearchManager$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/search/SearchManager$DefaultMergerImpl;-><init>(Lcom/android/fileexplorer/search/SearchManager;)V

    return-void
.end method

.method private create()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public mergeList(Ljava/util/List;)Lcom/android/fileexplorer/search/SearchResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;)",
            "Lcom/android/fileexplorer/search/SearchResult;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Lcom/android/fileexplorer/search/SearchResult;

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/search/SearchManager$DefaultMergerImpl;->create()Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p1

    .line 20
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_27

    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    .line 32
    invoke-virtual {v2}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    goto :goto_13

    .line 40
    :cond_27
    new-instance p1, Lcom/android/fileexplorer/search/SearchResult;

    .line 42
    invoke-direct {p1, v1, v0}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 45
    return-object p1
.end method
