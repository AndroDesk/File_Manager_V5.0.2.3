.class public Lcom/bumptech/glide/provider/EncoderRegistry;
.super Ljava/lang/Object;
.source "EncoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/provider/EncoderRegistry$Entry;
    }
.end annotation


# instance fields
.field private final encoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/provider/EncoderRegistry$Entry<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry;->encoders:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Encoder<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry;->encoders:Ljava/util/List;

    .line 4
    new-instance v1, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;

    .line 6
    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public declared-synchronized getEncoder(Ljava/lang/Class;)Lcom/bumptech/glide/load/Encoder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/Encoder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry;->encoders:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v0

    .line 8
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1d

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;

    .line 20
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->handles(Ljava/lang/Class;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_7

    .line 26
    iget-object p1, v1, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;->encoder:Lcom/bumptech/glide/load/Encoder;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_20

    .line 28
    monitor-exit p0

    .line 29
    return-object p1

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    monitor-exit p0

    .line 32
    return-object p1

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    throw p1
.end method

.method public declared-synchronized prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Encoder<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/provider/EncoderRegistry;->encoders:Ljava/util/List;

    .line 4
    const/4 v1, 0x0

    .line 5
    new-instance v2, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;

    .line 7
    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/provider/EncoderRegistry$Entry;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method
