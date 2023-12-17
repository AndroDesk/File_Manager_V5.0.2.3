.class final Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
.super Ljava/lang/Object;
.source "PreFillQueue.java"


# instance fields
.field private final bitmapsPerType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapsRemaining:I

.field private keyIndex:I

.field private final keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsPerType:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    .line 17
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 25
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2e

    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Integer;

    .line 37
    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v0

    .line 43
    add-int/2addr v0, v1

    .line 44
    iput v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    .line 46
    goto :goto_18

    .line 47
    :cond_2e
    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    .line 3
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public remove()Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    .line 3
    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyIndex:I

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsPerType:Ljava/util/Map;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v2, v3, :cond_26

    .line 26
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsPerType:Ljava/util/Map;

    .line 28
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    .line 33
    iget v2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyIndex:I

    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38
    goto :goto_34

    .line 39
    :cond_26
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsPerType:Ljava/util/Map;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v1

    .line 45
    sub-int/2addr v1, v3

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :goto_34
    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    .line 55
    sub-int/2addr v1, v3

    .line 56
    iput v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->bitmapsRemaining:I

    .line 58
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_43

    .line 66
    const/4 v1, 0x0

    .line 67
    goto :goto_4d

    .line 68
    :cond_43
    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyIndex:I

    .line 70
    add-int/2addr v1, v3

    .line 71
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyList:Ljava/util/List;

    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 76
    move-result v2

    .line 77
    rem-int/2addr v1, v2

    .line 78
    :goto_4d
    iput v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->keyIndex:I

    .line 80
    return-object v0
.end method
