.class Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;
.super Ljava/lang/Object;
.source "ResourceCacheGenerator.java"

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

.field private final cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

.field private currentKey:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

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

.field private resourceClassIndex:I

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->resourceClassIndex:I

    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 9
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 11
    return-void
.end method

.method private hasNextModelLoader()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->modelLoaderIndex:I

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->modelLoaders:Ljava/util/List;

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
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

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
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 7
    iget-object v3, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 9
    sget-object v4, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 11
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->currentKey:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

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
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->currentKey:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 7
    iget-object v2, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 9
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 11
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V

    .line 14
    return-void
.end method

.method public startNext()Z
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getCacheKeys()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_e

    .line 14
    return v2

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 17
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getRegisteredResourceClasses()Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_50

    .line 27
    const-class v0, Ljava/io/File;

    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 31
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getTranscodeClass()Ljava/lang/Class;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_29

    .line 41
    return v2

    .line 42
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    const-string v1, "Failed to find any load path from "

    .line 46
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 52
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getModelClass()Ljava/lang/Class;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v2, " to "

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 66
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getTranscodeClass()Ljava/lang/Class;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    throw v0

    .line 81
    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->modelLoaders:Ljava/util/List;

    .line 83
    const/4 v4, 0x1

    .line 84
    if-eqz v3, :cond_b3

    .line 86
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->hasNextModelLoader()Z

    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_5c

    .line 92
    goto :goto_b3

    .line 93
    :cond_5c
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 96
    :cond_5f
    :goto_5f
    if-nez v2, :cond_b2

    .line 98
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->hasNextModelLoader()Z

    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_b2

    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->modelLoaders:Ljava/util/List;

    .line 106
    iget v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->modelLoaderIndex:I

    .line 108
    add-int/lit8 v3, v1, 0x1

    .line 110
    iput v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->modelLoaderIndex:I

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 118
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->cacheFile:Ljava/io/File;

    .line 120
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 122
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getWidth()I

    .line 125
    move-result v3

    .line 126
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 128
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getHeight()I

    .line 131
    move-result v5

    .line 132
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 134
    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getOptions()Lcom/bumptech/glide/load/Options;

    .line 137
    move-result-object v6

    .line 138
    invoke-interface {v0, v1, v3, v5, v6}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 141
    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 144
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 146
    if-eqz v0, :cond_5f

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 150
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 152
    iget-object v1, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 154
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->hasLoadPath(Ljava/lang/Class;)Z

    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_5f

    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 166
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 168
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 170
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getPriority()Lcom/bumptech/glide/Priority;

    .line 173
    move-result-object v1

    .line 174
    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 177
    move v2, v4

    .line 178
    goto :goto_5f

    .line 179
    :cond_b2
    return v2

    .line 180
    :cond_b3
    :goto_b3
    iget v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->resourceClassIndex:I

    .line 182
    add-int/2addr v3, v4

    .line 183
    iput v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->resourceClassIndex:I

    .line 185
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 188
    move-result v5

    .line 189
    if-lt v3, v5, :cond_cc

    .line 191
    iget v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->sourceIdIndex:I

    .line 193
    add-int/2addr v3, v4

    .line 194
    iput v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->sourceIdIndex:I

    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 199
    move-result v4

    .line 200
    if-lt v3, v4, :cond_ca

    .line 202
    return v2

    .line 203
    :cond_ca
    iput v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->resourceClassIndex:I

    .line 205
    :cond_cc
    iget v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->sourceIdIndex:I

    .line 207
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v3

    .line 211
    check-cast v3, Lcom/bumptech/glide/load/Key;

    .line 213
    iget v4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->resourceClassIndex:I

    .line 215
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 218
    move-result-object v4

    .line 219
    move-object v11, v4

    .line 220
    check-cast v11, Ljava/lang/Class;

    .line 222
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 224
    invoke-virtual {v4, v11}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getTransformation(Ljava/lang/Class;)Lcom/bumptech/glide/load/Transformation;

    .line 227
    move-result-object v10

    .line 228
    new-instance v13, Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 230
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 232
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 235
    move-result-object v5

    .line 236
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 238
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getSignature()Lcom/bumptech/glide/load/Key;

    .line 241
    move-result-object v7

    .line 242
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 244
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getWidth()I

    .line 247
    move-result v8

    .line 248
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 250
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getHeight()I

    .line 253
    move-result v9

    .line 254
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 256
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getOptions()Lcom/bumptech/glide/load/Options;

    .line 259
    move-result-object v12

    .line 260
    move-object v4, v13

    .line 261
    move-object v6, v3

    .line 262
    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/load/engine/ResourceCacheKey;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/Transformation;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)V

    .line 265
    iput-object v13, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->currentKey:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 267
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 269
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 272
    move-result-object v4

    .line 273
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->currentKey:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 275
    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    .line 278
    move-result-object v4

    .line 279
    iput-object v4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->cacheFile:Ljava/io/File;

    .line 281
    if-eqz v4, :cond_50

    .line 283
    iput-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 285
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 287
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getModelLoaders(Ljava/io/File;)Ljava/util/List;

    .line 290
    move-result-object v3

    .line 291
    iput-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->modelLoaders:Ljava/util/List;

    .line 293
    iput v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->modelLoaderIndex:I

    .line 295
    goto/16 :goto_50
.end method
