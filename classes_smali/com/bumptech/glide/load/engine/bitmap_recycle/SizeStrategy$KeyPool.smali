.class Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "SizeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->create()Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    .registers 2

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V

    return-object v0
.end method

.method public get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->init(I)V

    .line 10
    return-object v0
.end method
