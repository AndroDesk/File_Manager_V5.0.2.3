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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mEngines:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mMerger:Ljava/util/HashMap;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lcom/android/fileexplorer/search/FileItemSearchImpl;->create(J)Lcom/android/fileexplorer/search/FileItemSearchImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->addEngine(Lcom/android/fileexplorer/search/SearchEngineAbs;)V

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Lcom/android/fileexplorer/search/FileGroupSearchImpl;->create(J)Lcom/android/fileexplorer/search/FileGroupSearchImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->addEngine(Lcom/android/fileexplorer/search/SearchEngineAbs;)V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;->create(J)Lcom/android/fileexplorer/search/MediaStoreSearchImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->addEngine(Lcom/android/fileexplorer/search/SearchEngineAbs;)V

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->create(J)Lcom/android/fileexplorer/search/CloudFileSearchImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->addEngine(Lcom/android/fileexplorer/search/SearchEngineAbs;)V

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

    invoke-direct {p0}, Lcom/android/fileexplorer/search/SearchManager;-><init>()V

    return-void
.end method

.method private addEngine(Lcom/android/fileexplorer/search/SearchEngineAbs;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mEngines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/search/SearchManager;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/search/SearchManager$SearchManagerHolder;->instance:Lcom/android/fileexplorer/search/SearchManager;

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

    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mMerger:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/search/SearchManager$IMerger;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mMerger:Ljava/util/HashMap;

    new-instance v1, Lcom/android/fileexplorer/search/SearchManager$DefaultMergerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/search/SearchManager$DefaultMergerImpl;-><init>(Lcom/android/fileexplorer/search/SearchManager;Lcom/android/fileexplorer/search/SearchManager$1;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchManager;->mMerger:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/search/SearchManager$IMerger;

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

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    const-string v0, "searchengine"

    const-string v1, "start merge - category"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchResult;

    invoke-virtual {v2}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_3b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_3f
    const-string p1, "end merge - category"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v4, "start merge - merge"

    invoke-static {v0, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/search/SearchManager;->getMerger(Ljava/lang/Class;)Lcom/android/fileexplorer/search/SearchManager$IMerger;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/android/fileexplorer/search/SearchManager$IMerger;->mergeList(Ljava/util/List;)Lcom/android/fileexplorer/search/SearchResult;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "end merge - merge"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

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

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "searchengine"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/fileexplorer/search/SearchEngineAbs;->search(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v3

    const-string v5, "end search, engine"

    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

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

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/search/SearchManager;->getInstance()Lcom/android/fileexplorer/search/SearchManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p3, p4}, Lcom/android/fileexplorer/search/SearchManager;->search(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/search/SearchManager;->mEngines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchEngineAbs;

    invoke-virtual {v2, p3, p4}, Lcom/android/fileexplorer/search/SearchEngineAbs;->checkFilters(J)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "start search, engine"

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "searchengine"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/fileexplorer/search/SearchEngineAbs;->searchTag(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v3

    const-string v5, "end search, engine"

    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_b

    const-string v2, "end search, result:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_6d
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->merge(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/search/SearchManager;->mEngines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchEngineAbs;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/fileexplorer/search/SearchEngineAbs;->searchCategory(Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v3

    const-string v4, "end search, engine"

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "searchengine"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_b

    const-string v2, "end search, result:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_4f
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->merge(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/search/SearchManager;->mEngines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/search/SearchEngineAbs;

    instance-of v3, v2, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;

    if-eqz v3, :cond_22

    move-object v0, v2

    check-cast v0, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/search/MediaStoreSearchImpl;->searchFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_22
    instance-of v3, v2, Lcom/android/fileexplorer/search/CloudFileSearchImpl;

    if-eqz v3, :cond_b

    check-cast v2, Lcom/android/fileexplorer/search/CloudFileSearchImpl;

    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/search/CloudFileSearchImpl;->searchFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_30
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/search/SearchManager;->merge(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
