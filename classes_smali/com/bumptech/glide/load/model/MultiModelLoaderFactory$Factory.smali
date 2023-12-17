.class Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;
.super Ljava/lang/Object;
.source "MultiModelLoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ljava/util/List;Ll0/d;)Lcom/bumptech/glide/load/model/MultiModelLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModel;TData;>;>;",
            "Ll0/d<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Lcom/bumptech/glide/load/model/MultiModelLoader<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/model/MultiModelLoader;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/model/MultiModelLoader;-><init>(Ljava/util/List;Ll0/d;)V

    .line 6
    return-object v0
.end method
