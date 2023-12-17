.class public Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;
.super Ljava/lang/Object;
.source "MediaStoreVideoThumbLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;->context:Landroid/content/Context;

    .line 6
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
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader;

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;->context:Landroid/content/Context;

    .line 5
    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader;-><init>(Landroid/content/Context;)V

    .line 8
    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
