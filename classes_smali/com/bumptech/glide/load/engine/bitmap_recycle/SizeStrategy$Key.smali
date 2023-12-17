.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field private final pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

.field public size:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_e

    .line 6
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 8
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    .line 10
    iget p1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    .line 12
    if-ne v0, p1, :cond_e

    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_e
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    .line 3
    return v0
.end method

.method public init(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    .line 3
    return-void
.end method

.method public offer()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 3
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
