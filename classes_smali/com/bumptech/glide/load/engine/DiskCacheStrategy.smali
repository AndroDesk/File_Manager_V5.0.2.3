.class public abstract Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.super Ljava/lang/Object;
.source "DiskCacheStrategy.java"


# static fields
.field public static final ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$1;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$1;-><init>()V

    .line 6
    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 8
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    .line 10
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;-><init>()V

    .line 13
    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 15
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$3;

    .line 17
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$3;-><init>()V

    .line 20
    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 22
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$4;

    .line 24
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$4;-><init>()V

    .line 27
    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$5;

    .line 31
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$5;-><init>()V

    .line 34
    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decodeCachedData()Z
.end method

.method public abstract decodeCachedResource()Z
.end method

.method public abstract isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z
.end method

.method public abstract isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
.end method
