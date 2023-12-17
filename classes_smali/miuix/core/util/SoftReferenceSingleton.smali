.class public abstract Lmiuix/core/util/SoftReferenceSingleton;
.super Ljava/lang/Object;
.source "SoftReferenceSingleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mInstance:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    .line 7
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_10

    .line 3
    :cond_c
    invoke-virtual {p0, v0}, Lmiuix/core/util/SoftReferenceSingleton;->updateInstance(Ljava/lang/Object;)V

    goto :goto_1b

    .line 4
    :cond_10
    :goto_10
    invoke-virtual {p0}, Lmiuix/core/util/SoftReferenceSingleton;->createInstance()Ljava/lang/Object;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    .line 6
    :goto_1b
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 8
    monitor-enter p0

    .line 9
    :try_start_1
    iget-object v0, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_10

    .line 10
    :cond_c
    invoke-virtual {p0, v0, p1}, Lmiuix/core/util/SoftReferenceSingleton;->updateInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    .line 11
    :cond_10
    :goto_10
    invoke-virtual {p0, p1}, Lmiuix/core/util/SoftReferenceSingleton;->createInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    .line 13
    :goto_1b
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public updateInstance(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public updateInstance(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method
