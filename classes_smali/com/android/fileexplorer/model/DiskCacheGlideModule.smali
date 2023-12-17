.class public Lcom/android/fileexplorer/model/DiskCacheGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "DiskCacheGlideModule.java"


# annotations
.annotation build Lcom/bumptech/glide/annotation/GlideModule;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .registers 4

    new-instance v0, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/ExternalPreferredCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    const/4 p1, 0x6

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/GlideBuilder;->setLogLevel(I)Lcom/bumptech/glide/GlideBuilder;

    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/bumptech/glide/module/LibraryGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    const-class p2, Ljava/lang/String;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lcom/micloud/midrive/imageloader/glide/HeaderLoaderFactory;

    invoke-direct {v1}, Lcom/micloud/midrive/imageloader/glide/HeaderLoaderFactory;-><init>()V

    invoke-virtual {p3, p2, v0, v1}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    const-class p2, Landroid/net/Uri;

    const-class v0, Landroid/graphics/Bitmap;

    new-instance v1, Lcom/android/fileexplorer/model/PrivateModelLoaderFactory;

    invoke-direct {v1}, Lcom/android/fileexplorer/model/PrivateModelLoaderFactory;-><init>()V

    invoke-virtual {p3, p2, v0, v1}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    invoke-static {p1}, La/b;->P(Landroid/content/Context;)Z

    move-result p2

    const-class v0, Lcom/android/fileexplorer/model/DocRequest;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/android/fileexplorer/model/DocModelLoaderFactory;

    invoke-direct {v2}, Lcom/android/fileexplorer/model/DocModelLoaderFactory;-><init>()V

    invoke-virtual {p3, v0, v1, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    if-eqz p2, :cond_3a

    const-class p2, Lz1/a;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lz1/b$a;

    invoke-direct {v1, p1}, Lz1/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2, v0, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    goto :goto_46

    :cond_3a
    const-class p2, Ly1/a;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Ly1/b$a;

    invoke-direct {v1, p1}, Ly1/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2, v0, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    :goto_46
    return-void
.end method
