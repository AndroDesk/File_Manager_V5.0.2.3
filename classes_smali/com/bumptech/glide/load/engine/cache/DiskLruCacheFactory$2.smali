.class Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$diskCacheFolder:Ljava/lang/String;

.field public final synthetic val$diskCacheName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;->val$diskCacheFolder:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;->val$diskCacheName:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getCacheDirectory()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;->val$diskCacheFolder:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;->val$diskCacheName:Ljava/lang/String;

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-object v0
.end method
