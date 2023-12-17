.class abstract Lmiuix/core/util/Pools$BasePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Lmiuix/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BasePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiuix/core/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mFinalizeGuardian:Ljava/lang/Object;

.field private mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$IInstanceHolder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mManager:Lmiuix/core/util/Pools$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$Manager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mSize:I


# direct methods
.method public constructor <init>(Lmiuix/core/util/Pools$Manager;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/Pools$Manager<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/core/util/Pools$BasePool$1;

    .line 6
    invoke-direct {v0, p0}, Lmiuix/core/util/Pools$BasePool$1;-><init>(Lmiuix/core/util/Pools$BasePool;)V

    .line 9
    iput-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mFinalizeGuardian:Ljava/lang/Object;

    .line 11
    if-eqz p1, :cond_2f

    .line 13
    const/4 v1, 0x1

    .line 14
    if-lt p2, v1, :cond_2f

    .line 16
    iput-object p1, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    .line 18
    iput p2, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

    .line 20
    invoke-virtual {p1}, Lmiuix/core/util/Pools$Manager;->createInstance()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_27

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0, p2}, Lmiuix/core/util/Pools$BasePool;->createInstanceHolder(Ljava/lang/Class;I)Lmiuix/core/util/Pools$IInstanceHolder;

    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    .line 36
    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    .line 39
    return-void

    .line 40
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    const-string p2, "manager create instance cannot return null"

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1

    .line 48
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

    .line 54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    const-string p2, "manager cannot be null and size cannot less then 1"

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmiuix/core/util/Pools$BasePool;->doAcquire()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget v1, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

    .line 7
    invoke-virtual {p0, v0, v1}, Lmiuix/core/util/Pools$BasePool;->destroyInstanceHolder(Lmiuix/core/util/Pools$IInstanceHolder;I)V

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    .line 13
    :cond_c
    return-void
.end method

.method public abstract createInstanceHolder(Ljava/lang/Class;I)Lmiuix/core/util/Pools$IInstanceHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lmiuix/core/util/Pools$IInstanceHolder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract destroyInstanceHolder(Lmiuix/core/util/Pools$IInstanceHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/Pools$IInstanceHolder<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method public final doAcquire()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    .line 3
    if-eqz v0, :cond_21

    .line 5
    invoke-interface {v0}, Lmiuix/core/util/Pools$IInstanceHolder;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1b

    .line 11
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    .line 13
    invoke-virtual {v0}, Lmiuix/core/util/Pools$Manager;->createInstance()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_13

    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    const-string v1, "manager create instance cannot return null"

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0

    .line 28
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    .line 30
    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$Manager;->onAcquire(Ljava/lang/Object;)V

    .line 33
    return-object v0

    .line 34
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    const-string v1, "Cannot acquire object after close()"

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method

.method public final doRelease(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/core/util/Pools$Manager;->onRelease(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    .line 15
    invoke-interface {v0, p1}, Lmiuix/core/util/Pools$IInstanceHolder;->put(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_19

    .line 21
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    .line 23
    invoke-virtual {v0, p1}, Lmiuix/core/util/Pools$Manager;->onDestroy(Ljava/lang/Object;)V

    .line 26
    :cond_19
    return-void

    .line 27
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    const-string v0, "Cannot release object after close()"

    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    iget v0, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

    .line 9
    :goto_8
    return v0
.end method

.method public release(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    .line 4
    return-void
.end method
