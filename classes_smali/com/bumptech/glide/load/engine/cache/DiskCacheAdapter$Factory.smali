.class public final Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter$Factory;
.super Ljava/lang/Object;
.source "DiskCacheAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .registers 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;-><init>()V

    .line 6
    return-object v0
.end method
