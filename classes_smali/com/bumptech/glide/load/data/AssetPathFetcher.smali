.class public abstract Lcom/bumptech/glide/load/data/AssetPathFetcher;
.super Ljava/lang/Object;
.source "AssetPathFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetPathFetcher"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final assetPath:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetManager:Landroid/content/res/AssetManager;

    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetPath:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public cleanup()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->data:Ljava/lang/Object;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/data/AssetPathFetcher;->close(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_8

    .line 9
    :catch_8
    return-void
.end method

.method public abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
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
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetManager:Landroid/content/res/AssetManager;

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetPath:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/data/AssetPathFetcher;->loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->data:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_e

    .line 11
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 14
    return-void

    .line 15
    :catch_e
    move-exception p1

    .line 16
    const/4 v0, 0x3

    .line 17
    const-string v1, "AssetPathFetcher"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1d

    .line 25
    const-string v0, "Failed to load data from asset manager"

    .line 27
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :cond_1d
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 33
    return-void
.end method

.method public abstract loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
