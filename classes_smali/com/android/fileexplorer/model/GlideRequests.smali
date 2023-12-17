.class public Lcom/android/fileexplorer/model/GlideRequests;
.super Lcom/bumptech/glide/RequestManager;
.source "GlideRequests.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public addDefaultRequestListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/android/fileexplorer/model/GlideRequests;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/android/fileexplorer/model/GlideRequests;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->addDefaultRequestListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequests;

    return-object p1
.end method

.method public bridge synthetic addDefaultRequestListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestManager;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->addDefaultRequestListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/android/fileexplorer/model/GlideRequests;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/android/fileexplorer/model/GlideRequests;
    .registers 2

    monitor-enter p0

    .line 2
    :try_start_1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequests;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/android/fileexplorer/model/GlideRequests;

    move-result-object p1

    return-object p1
.end method

.method public as(Ljava/lang/Class;)Lcom/android/fileexplorer/model/GlideRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "TResourceType;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/fileexplorer/model/GlideRequest;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/fileexplorer/model/GlideRequest;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->as(Ljava/lang/Class;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public asBitmap()Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asBitmap()Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideRequests;->asBitmap()Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asDrawable()Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asDrawable()Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideRequests;->asDrawable()Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asFile()Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asFile()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asFile()Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideRequests;->asFile()Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asGif()Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asGif()Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideRequests;->asGif()Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/Object;)Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->download(Ljava/lang/Object;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public downloadOnly()Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic downloadOnly()Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/GlideRequests;->downloadOnly()Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/graphics/Bitmap;)Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequest;

    return-object p1
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequest;

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/io/File;)Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequest;

    return-object p1
.end method

.method public load([B)Lcom/android/fileexplorer/model/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/android/fileexplorer/model/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Landroid/graphics/Bitmap;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Landroid/net/Uri;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Ljava/io/File;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Ljava/lang/Integer;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Ljava/lang/Object;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Ljava/lang/String;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Ljava/net/URL;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load([B)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Landroid/graphics/Bitmap;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Landroid/graphics/drawable/Drawable;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Landroid/net/Uri;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Ljava/io/File;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Ljava/lang/Integer;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Ljava/lang/Object;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Ljava/lang/String;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load(Ljava/net/URL;)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->load([B)Lcom/android/fileexplorer/model/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/android/fileexplorer/model/GlideRequests;
    .registers 2

    monitor-enter p0

    .line 2
    :try_start_1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/GlideRequests;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/GlideRequests;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/android/fileexplorer/model/GlideRequests;

    move-result-object p1

    return-object p1
.end method

.method public setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/android/fileexplorer/model/GlideOptions;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    .line 8
    goto :goto_14

    .line 9
    :cond_8
    new-instance v0, Lcom/android/fileexplorer/model/GlideOptions;

    .line 11
    invoke-direct {v0}, Lcom/android/fileexplorer/model/GlideOptions;-><init>()V

    .line 14
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/GlideOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/android/fileexplorer/model/GlideOptions;

    .line 17
    move-result-object p1

    .line 18
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    .line 21
    :goto_14
    return-void
.end method
