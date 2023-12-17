.class public Lcom/micloud/midrive/imageloader/glide/HeaderLoaderFactory;
.super Ljava/lang/Object;
.source "HeaderLoaderFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Ljava/lang/String;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 3
    const-class v1, Ljava/io/InputStream;

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lcom/micloud/midrive/imageloader/glide/HeaderLoader;

    .line 11
    invoke-direct {v0, p1}, Lcom/micloud/midrive/imageloader/glide/HeaderLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 14
    return-object v0
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
