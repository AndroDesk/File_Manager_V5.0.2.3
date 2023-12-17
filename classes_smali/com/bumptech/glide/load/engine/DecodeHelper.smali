.class final Lcom/bumptech/glide/load/engine/DecodeHelper;
.super Ljava/lang/Object;
.source "DecodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cacheKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field

.field private diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private glideContext:Lcom/bumptech/glide/GlideContext;

.field private height:I

.field private isCacheKeysSet:Z

.field private isLoadDataSet:Z

.field private isScaleOnlyOrNoTransform:Z

.field private isTransformationRequired:Z

.field private final loadData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;>;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/Object;

.field private options:Lcom/bumptech/glide/load/Options;

.field private priority:Lcom/bumptech/glide/Priority;

.field private resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/Key;

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field private transformations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 4
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->signature:Lcom/bumptech/glide/load/Key;

    .line 8
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    .line 12
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->options:Lcom/bumptech/glide/load/Options;

    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->priority:Lcom/bumptech/glide/Priority;

    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    .line 18
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isLoadDataSet:Z

    .line 28
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    .line 30
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 33
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isCacheKeysSet:Z

    .line 35
    return-void
.end method

.method public getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCacheKeys()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isCacheKeysSet:Z

    .line 3
    if-nez v0, :cond_57

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isCacheKeysSet:Z

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_16
    if-ge v3, v1, :cond_57

    .line 25
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 31
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    .line 33
    iget-object v6, v4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 35
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_2f

    .line 41
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    .line 43
    iget-object v6, v4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 45
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_2f
    move v5, v2

    .line 49
    :goto_30
    iget-object v6, v4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    .line 51
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 54
    move-result v6

    .line 55
    if-ge v5, v6, :cond_54

    .line 57
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    .line 59
    iget-object v7, v4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    .line 61
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v7

    .line 65
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_51

    .line 71
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    .line 73
    iget-object v7, v4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    .line 75
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v7

    .line 79
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_51
    add-int/lit8 v5, v5, 0x1

    .line 84
    goto :goto_30

    .line 85
    :cond_54
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_16

    .line 88
    :cond_57
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    .line 90
    return-object v0
.end method

.method public getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 3
    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->height:I

    .line 3
    return v0
.end method

.method public getLoadData()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isLoadDataSet:Z

    .line 3
    if-nez v0, :cond_3b

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isLoadDataSet:Z

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 15
    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    .line 21
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/Registry;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    move-result v2

    .line 30
    :goto_1d
    if-ge v1, v2, :cond_3b

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 38
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    .line 40
    iget v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->width:I

    .line 42
    iget v6, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->height:I

    .line 44
    iget-object v7, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->options:Lcom/bumptech/glide/load/Options;

    .line 46
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_38

    .line 52
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    .line 54
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_38
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_1d

    .line 60
    :cond_3b
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    .line 62
    return-object v0
.end method

.method public getLoadPath(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/bumptech/glide/load/engine/LoadPath<",
            "TData;*TTranscode;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    .line 9
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    .line 11
    invoke-virtual {v0, p1, v1, v2}, Lcom/bumptech/glide/Registry;->getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getModelClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getModelLoaders(Ljava/io/File;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getOptions()Lcom/bumptech/glide/load/Options;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->options:Lcom/bumptech/glide/load/Options;

    .line 3
    return-object v0
.end method

.method public getPriority()Lcom/bumptech/glide/Priority;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->priority:Lcom/bumptech/glide/Priority;

    .line 3
    return-object v0
.end method

.method public getRegisteredResourceClasses()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    .line 15
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/Registry;->getRegisteredResourceClasses(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public getResultEncoder(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->getResultEncoder(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getSignature()Lcom/bumptech/glide/load/Key;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->signature:Lcom/bumptech/glide/load/Key;

    .line 3
    return-object v0
.end method

.method public getSourceEncoder(Ljava/lang/Object;)Lcom/bumptech/glide/load/Encoder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/Encoder<",
            "TX;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->getSourceEncoder(Ljava/lang/Object;)Lcom/bumptech/glide/load/Encoder;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getTranscodeClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public getTransformation(Ljava/lang/Class;)Lcom/bumptech/glide/load/Transformation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/Transformation<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    .line 9
    if-nez v0, :cond_32

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    .line 13
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_32

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Class;

    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_14

    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    .line 51
    :cond_32
    if-nez v0, :cond_62

    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    .line 55
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_5d

    .line 61
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isTransformationRequired:Z

    .line 63
    if-nez v0, :cond_41

    .line 65
    goto :goto_5d

    .line 66
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const-string v2, "Missing transformation for "

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    throw v0

    .line 94
    :cond_5d
    :goto_5d
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->get()Lcom/bumptech/glide/load/resource/UnitTransformation;

    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_62
    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->width:I

    .line 3
    return v0
.end method

.method public hasLoadPath(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadPath(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    return p1
.end method

.method public init(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/Options;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/Options;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->signature:Lcom/bumptech/glide/load/Key;

    .line 7
    iput p4, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->width:I

    .line 9
    iput p5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->height:I

    .line 11
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 13
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    .line 15
    iput-object p14, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 17
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    .line 19
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->priority:Lcom/bumptech/glide/Priority;

    .line 21
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->options:Lcom/bumptech/glide/load/Options;

    .line 23
    iput-object p11, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    .line 25
    iput-boolean p12, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isTransformationRequired:Z

    .line 27
    iput-boolean p13, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isScaleOnlyOrNoTransform:Z

    .line 29
    return-void
.end method

.method public isResourceEncoderAvailable(Lcom/bumptech/glide/load/engine/Resource;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->isResourceEncoderAvailable(Lcom/bumptech/glide/load/engine/Resource;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public isScaleOnlyOrNoTransform()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isScaleOnlyOrNoTransform:Z

    .line 3
    return v0
.end method

.method public isSourceKey(Lcom/bumptech/glide/load/Key;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_a
    if-ge v3, v1, :cond_1f

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 19
    iget-object v4, v4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 21
    invoke-interface {v4, p1}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_a

    .line 32
    :cond_1f
    return v2
.end method
