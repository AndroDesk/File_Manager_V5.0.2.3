.class public Lcom/android/fileexplorer/search/SearchManager;
.super Ljava/lang/Object;
.source "SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;,
        Lcom/android/fileexplorer/search/SearchManager$DefaultMergerImpl;,
        Lcom/android/fileexplorer/search/SearchManager$IMerger;,
        Lcom/android/fileexplorer/search/SearchManager$SearchManagerHolder;
    }
.end annotation


# static fields
.field public static final SEARCH_FILTER_CLOUD_ITEM:J = 0x8L

.field private static final SEARCH_FILTER_GROUP:J = 0x4L

.field public static final SEARCH_FILTER_ITEM:J = 0x1L

.field public static final SEARCH_FILTER_ONLY_TAG:J = 0x2L

.field private static final TAG:Ljava/lang/String; = "searchengine"


# instance fields
.field private mEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchEngineAbs;",
            ">;"
        }
    .end annotation
.end field

.field private mMerger:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/fileexplorer/search/SearchManager$IMerger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mEngines:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mMerger:Ljava/util/HashMap;

    const-wide/16 v0, 0x3

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/search/FileItemSearchImpl;->create(J)Lcom/android/fileexplorer/search/FileItemSearchImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->addEngine(Lcom/android/fileexplorer/search/SearchEngineAbs;)V

    const-wide/16 v0, 0x4

    .line 6
    invoke-static {v0, v1}, Lcom/android/fileexplorer/search/FileGroupSearchImpl;->create(J)Lcom/android/fileexplorer/search/FileGroupSearchImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->addEngine(Lcom/android/fileexplorer/search/SearchEngineAbs;)V

    const-wide/16 v0, 0x1

    .line 7
    invoke-static {v0, v1}, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;->create(J)Lcom/android/fileexplorer/search/MediaStoreSearchImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->addEngine(Lcom/android/fileexplorer/search/SearchEngineAbs;)V

    const-wide/16 v0, 0x8

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->create(J)Lcom/android/fileexplorer/search/CloudFileSearchImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->addEngine(Lcom/android/fileexplorer/search/SearchEngineAbs;)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mMerger:Ljava/util/HashMap;

    const-class v1, Lcom/android/fileexplorer/dao/file/FileItem;

    new-instance v2, Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/fileexplorer/search/SearchManager$DeredundantMergerFileItemImpl;-><init>(Lcom/android/fileexplorer/search/SearchManager;Lcom/android/fileexplorer/search/SearchManager$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/search/SearchManager$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/search/SearchManager;-><init>()V

    return-void
.end method

.method private addEngine(Lcom/android/fileexplorer/search/SearchEngineAbs;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mEngines:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/search/SearchManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/search/SearchManager$SearchManagerHolder;->instance:Lcom/android/fileexplorer/search/SearchManager;

    .line 3
    return-object v0
.end method

.method private getMerger(Ljava/lang/Class;)Lcom/android/fileexplorer/search/SearchManager$IMerger;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/fileexplorer/search/SearchManager$IMerger;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mMerger:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/fileexplorer/search/SearchManager$IMerger;

    .line 9
    if-nez v0, :cond_15

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mMerger:Ljava/util/HashMap;

    .line 13
    new-instance v1, Lcom/android/fileexplorer/search/SearchManager$DefaultMergerImpl;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/search/SearchManager$DefaultMergerImpl;-><init>(Lcom/android/fileexplorer/search/SearchManager;Lcom/android/fileexplorer/search/SearchManager$1;)V

    .line 19
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mMerger:Ljava/util/HashMap;

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/fileexplorer/search/SearchManager$IMerger;

    .line 30
    return-object p1
.end method

.method private merge(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object p1

    .line 8
    :cond_7
    const-string v0, "searchengine"

    .line 10
    const-string v1, "start merge - category"

    .line 12
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p1

    .line 24
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3f

    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    .line 36
    invoke-virtual {v2}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/util/List;

    .line 46
    if-nez v3, :cond_3b

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {v2}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_3b
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_17

    .line 64
    :cond_3f
    const-string p1, "end merge - category"

    .line 66
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    .line 71
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object v2

    .line 82
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_79

    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/Class;

    .line 94
    const-string v4, "start merge - merge"

    .line 96
    invoke-static {v0, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Ljava/util/List;

    .line 105
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/search/SearchManager;->getMerger(Ljava/lang/Class;)Lcom/android/fileexplorer/search/SearchManager$IMerger;

    .line 108
    move-result-object v3

    .line 109
    invoke-interface {v3, v4}, Lcom/android/fileexplorer/search/SearchManager$IMerger;->mergeList(Ljava/util/List;)Lcom/android/fileexplorer/search/SearchResult;

    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v3, "end merge - merge"

    .line 118
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    goto :goto_51

    .line 122
    :cond_79
    return-object p1
.end method


# virtual methods
.method public search(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 11
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

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 3
    :cond_c
    iget-object v1, p0, Lcom/android/fileexplorer/search/SearchManager;->mEngines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchEngineAbs;

    const-string v3, "start search, engine"

    .line 4
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "searchengine"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/fileexplorer/search/SearchEngineAbs;->search(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v3

    const-string v5, "end search, engine"

    .line 7
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_12

    const-string v2, "end search, result :"

    .line 9
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 12
    :cond_6e
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->merge(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljava/lang/String;Ljava/util/List;J)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/search/SearchManager;->getInstance()Lcom/android/fileexplorer/search/SearchManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p3, p4}, Lcom/android/fileexplorer/search/SearchManager;->search(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    .line 25
    :cond_21
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->merge(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public searchAppTag(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 11
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
    iget-object v1, p0, Lcom/android/fileexplorer/search/SearchManager;->mEngines:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_6d

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/fileexplorer/search/SearchEngineAbs;

    .line 24
    invoke-virtual {v2, p3, p4}, Lcom/android/fileexplorer/search/SearchEngineAbs;->checkFilters(J)Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_b

    .line 30
    const-string v3, "start search, engine"

    .line 32
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    const-string v4, "searchengine"

    .line 53
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/fileexplorer/search/SearchEngineAbs;->searchTag(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    .line 59
    move-result-object v3

    .line 60
    const-string v5, "end search, engine"

    .line 62
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz v3, :cond_b

    .line 86
    const-string v2, "end search, result:"

    .line 88
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    move-result-object v2

    .line 92
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 95
    move-result v5

    .line 96
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    goto :goto_b

    .line 110
    :cond_6d
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->merge(Ljava/util/List;)Ljava/util/List;

    .line 113
    move-result-object p1

    .line 114
    return-object p1
.end method

.method public searchCategory(Ljava/lang/String;IJ)Ljava/util/List;
    .registers 11
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
    iget-object v1, p0, Lcom/android/fileexplorer/search/SearchManager;->mEngines:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_4f

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/fileexplorer/search/SearchEngineAbs;

    .line 24
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/fileexplorer/search/SearchEngineAbs;->searchCategory(Ljava/lang/String;IJ)Ljava/util/List;

    .line 27
    move-result-object v3

    .line 28
    const-string v4, "end search, engine"

    .line 30
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    const-string v4, "searchengine"

    .line 51
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-eqz v3, :cond_b

    .line 56
    const-string v2, "end search, result:"

    .line 58
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 65
    move-result v5

    .line 66
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    goto :goto_b

    .line 80
    :cond_4f
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->merge(Ljava/util/List;)Ljava/util/List;

    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method

.method public searchFolder(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    iget-object v1, p0, Lcom/android/fileexplorer/search/SearchManager;->mEngines:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_30

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/fileexplorer/search/SearchEngineAbs;

    .line 24
    instance-of v3, v2, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;

    .line 26
    if-eqz v3, :cond_22

    .line 28
    move-object v0, v2

    .line 29
    check-cast v0, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;->searchFolder(Ljava/lang/String;)Ljava/util/List;

    .line 34
    move-result-object v0

    .line 35
    :cond_22
    instance-of v3, v2, Lcom/android/fileexplorer/search/CloudFileSearchImpl;

    .line 37
    if-eqz v3, :cond_b

    .line 39
    check-cast v2, Lcom/android/fileexplorer/search/CloudFileSearchImpl;

    .line 41
    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->searchFolder(Ljava/lang/String;)Ljava/util/List;

    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    goto :goto_b

    .line 49
    :cond_30
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->merge(Ljava/util/List;)Ljava/util/List;

    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method
