.class public Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final modelCache:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/model/ModelCache;

    .line 6
    const-wide/16 v1, 0x1f4

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/ModelCache;-><init>(J)V

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    .line 13
    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader;

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    .line 5
    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 8
    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
