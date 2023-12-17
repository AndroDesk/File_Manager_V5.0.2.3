.class Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;
.super Ljava/lang/Object;
.source "ModelLoaderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ModelLoaderRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelLoaderCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;
    }
.end annotation


# instance fields
.field private final cachedModelLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->cachedModelLoaders:Ljava/util/Map;

    .line 11
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->cachedModelLoaders:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    return-void
.end method

.method public get(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModel;*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->cachedModelLoaders:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;

    .line 9
    if-nez p1, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    iget-object p1, p1, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;->loaders:Ljava/util/List;

    .line 15
    :goto_e
    return-object p1
.end method

.method public put(Ljava/lang/Class;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModel;*>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->cachedModelLoaders:Ljava/util/Map;

    .line 3
    new-instance v1, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;

    .line 5
    invoke-direct {v1, p2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;-><init>(Ljava/util/List;)V

    .line 8
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;

    .line 14
    if-nez p2, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 19
    const-string v0, "Already cached loaders for model: "

    .line 21
    invoke-static {v0, p1}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p2
.end method
