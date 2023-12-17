.class Lcom/bumptech/glide/load/engine/DataCacheGenerator;
.super Ljava/lang/Object;
.source "DataCacheGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
.implements Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DataFetcherGenerator;",
        "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private cacheFile:Ljava/io/File;

.field private final cacheKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field

.field private final cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

.field private final helper:Lcom/bumptech/glide/load/engine/DecodeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeHelper<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;"
        }
    .end annotation
.end field

.field private modelLoaderIndex:I

.field private modelLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private sourceIdIndex:I

.field private sourceKey:Lcom/bumptech/glide/load/Key;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeHelper<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getCacheKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/Key;",
            ">;",
            "Lcom/bumptech/glide/load/engine/DecodeHelper<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->sourceIdIndex:I

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->cacheKeys:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 6
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    return-void
.end method

.method private hasNextModelLoader()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->modelLoaderIndex:I

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->modelLoaders:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 10
    :cond_9
    return-void
.end method

.method public onDataReady(Ljava/lang/Object;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 7
    iget-object v3, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 9
    sget-object v4, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 11
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 13
    move-object v2, p1

    .line 14
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V

    .line 17
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 7
    iget-object v2, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 9
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 11
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V

    .line 14
    return-void
.end method

.method public startNext()Z
    .registers 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->modelLoaders:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_64

    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->hasNextModelLoader()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_64

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 17
    :cond_10
    :goto_10
    if-nez v1, :cond_63

    .line 19
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->hasNextModelLoader()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_63

    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->modelLoaders:Ljava/util/List;

    .line 27
    iget v3, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->modelLoaderIndex:I

    .line 29
    add-int/lit8 v4, v3, 0x1

    .line 31
    iput v4, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->modelLoaderIndex:I

    .line 33
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 39
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->cacheFile:Ljava/io/File;

    .line 41
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 43
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getWidth()I

    .line 46
    move-result v4

    .line 47
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 49
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getHeight()I

    .line 52
    move-result v5

    .line 53
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 55
    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getOptions()Lcom/bumptech/glide/load/Options;

    .line 58
    move-result-object v6

    .line 59
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 67
    if-eqz v0, :cond_10

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 71
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 73
    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 75
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->hasLoadPath(Ljava/lang/Class;)Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_10

    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 87
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 89
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 91
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getPriority()Lcom/bumptech/glide/Priority;

    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 98
    move v1, v2

    .line 99
    goto :goto_10

    .line 100
    :cond_63
    return v1

    .line 101
    :cond_64
    :goto_64
    iget v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->sourceIdIndex:I

    .line 103
    add-int/2addr v0, v2

    .line 104
    iput v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->sourceIdIndex:I

    .line 106
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->cacheKeys:Ljava/util/List;

    .line 108
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 111
    move-result v2

    .line 112
    if-lt v0, v2, :cond_72

    .line 114
    return v1

    .line 115
    :cond_72
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->cacheKeys:Ljava/util/List;

    .line 117
    iget v2, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->sourceIdIndex:I

    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/bumptech/glide/load/Key;

    .line 125
    new-instance v2, Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 127
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 129
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getSignature()Lcom/bumptech/glide/load/Key;

    .line 132
    move-result-object v3

    .line 133
    invoke-direct {v2, v0, v3}, Lcom/bumptech/glide/load/engine/DataCacheKey;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    .line 136
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 138
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 141
    move-result-object v3

    .line 142
    invoke-interface {v3, v2}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    .line 145
    move-result-object v2

    .line 146
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->cacheFile:Ljava/io/File;

    .line 148
    if-eqz v2, :cond_0

    .line 150
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 152
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 154
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getModelLoaders(Ljava/io/File;)Ljava/util/List;

    .line 157
    move-result-object v0

    .line 158
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->modelLoaders:Ljava/util/List;

    .line 160
    iput v1, p0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->modelLoaderIndex:I

    .line 162
    goto/16 :goto_0
.end method
