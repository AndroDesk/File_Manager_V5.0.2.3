.class public Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
.super Ljava/lang/Object;
.source "ThumbFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;,
        Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaStoreThumbFetcher"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private final mediaStoreImageUri:Landroid/net/Uri;

.field private final opener:Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->mediaStoreImageUri:Landroid/net/Uri;

    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->opener:Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;

    .line 8
    return-void
.end method

.method private static build(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;

    .line 11
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getRegistry()Lcom/bumptech/glide/Registry;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v1, v2, p2, v0, p0}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V

    .line 30
    new-instance p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    .line 32
    invoke-direct {p0, p1, v1}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;-><init>(Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;)V

    .line 35
    return-object p0
.end method

.method public static buildImageFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
    .registers 4

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;-><init>(Landroid/content/ContentResolver;)V

    .line 10
    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->build(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static buildVideoFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
    .registers 4

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;-><init>(Landroid/content/ContentResolver;)V

    .line 10
    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->build(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private openThumbInputStream()Ljava/io/InputStream;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->opener:Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->mediaStoreImageUri:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->open(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eqz v0, :cond_14

    .line 12
    iget-object v2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->opener:Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;

    .line 14
    iget-object v3, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->mediaStoreImageUri:Landroid/net/Uri;

    .line 16
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->getOrientation(Landroid/net/Uri;)I

    .line 19
    move-result v2

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v2, v1

    .line 22
    :goto_15
    if-eq v2, v1, :cond_1d

    .line 24
    new-instance v1, Lcom/bumptech/glide/load/data/ExifOrientationStream;

    .line 26
    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/data/ExifOrientationStream;-><init>(Ljava/io/InputStream;I)V

    .line 29
    move-object v0, v1

    .line 30
    :cond_1d
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public cleanup()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->inputStream:Ljava/io/InputStream;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    .line 8
    :catch_7
    :cond_7
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    .line 3
    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    .line 3
    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->openThumbInputStream()Ljava/io/InputStream;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->inputStream:Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_6} :catch_a

    .line 7
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 10
    return-void

    .line 11
    :catch_a
    move-exception p1

    .line 12
    const/4 v0, 0x3

    .line 13
    const-string v1, "MediaStoreThumbFetcher"

    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_19

    .line 21
    const-string v0, "Failed to find thumbnail file"

    .line 23
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :cond_19
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 29
    return-void
.end method
