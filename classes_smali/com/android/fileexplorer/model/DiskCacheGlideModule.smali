.class public Lcom/android/fileexplorer/model/DiskCacheGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "DiskCacheGlideModule.java"


# annotations
.annotation build Lcom/bumptech/glide/annotation/GlideModule;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory;

    .line 3
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    .line 9
    const/4 p1, 0x6

    .line 10
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/GlideBuilder;->setLogLevel(I)Lcom/bumptech/glide/GlideBuilder;

    .line 13
    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/bumptech/glide/module/LibraryGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 4
    const-class p2, Ljava/lang/String;

    .line 6
    const-class v0, Ljava/io/InputStream;

    .line 8
    new-instance v1, Lcom/micloud/midrive/imageloader/glide/HeaderLoaderFactory;

    .line 10
    invoke-direct {v1}, Lcom/micloud/midrive/imageloader/glide/HeaderLoaderFactory;-><init>()V

    .line 13
    invoke-virtual {p3, p2, v0, v1}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 16
    const-class p2, Landroid/net/Uri;

    .line 18
    const-class v0, Landroid/graphics/Bitmap;

    .line 20
    new-instance v1, Lcom/android/fileexplorer/model/PrivateModelLoaderFactory;

    .line 22
    invoke-direct {v1}, Lcom/android/fileexplorer/model/PrivateModelLoaderFactory;-><init>()V

    .line 25
    invoke-virtual {p3, p2, v0, v1}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 28
    invoke-static {p1}, La/b;->P(Landroid/content/Context;)Z

    .line 31
    move-result p2

    .line 32
    const-class v0, Lcom/android/fileexplorer/model/DocRequest;

    .line 34
    const-class v1, Ljava/io/InputStream;

    .line 36
    new-instance v2, Lcom/android/fileexplorer/model/DocModelLoaderFactory;

    .line 38
    invoke-direct {v2}, Lcom/android/fileexplorer/model/DocModelLoaderFactory;-><init>()V

    .line 41
    invoke-virtual {p3, v0, v1, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 44
    if-eqz p2, :cond_3a

    .line 46
    const-class p2, Lz1/a;

    .line 48
    const-class v0, Ljava/io/InputStream;

    .line 50
    new-instance v1, Lz1/b$a;

    .line 52
    invoke-direct {v1, p1}, Lz1/b$a;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p3, p2, v0, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 58
    goto :goto_46

    .line 59
    :cond_3a
    const-class p2, Ly1/a;

    .line 61
    const-class v0, Ljava/io/InputStream;

    .line 63
    new-instance v1, Ly1/b$a;

    .line 65
    invoke-direct {v1, p1}, Ly1/b$a;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p3, p2, v0, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 71
    :goto_46
    return-void
.end method
