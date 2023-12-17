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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/core/util/Pools$Manager;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/Pools$Manager<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/core/util/Pools$BasePool$1;

    invoke-direct {v0, p0}, Lmiuix/core/util/Pools$BasePool$1;-><init>(Lmiuix/core/util/Pools$BasePool;)V

    iput-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mFinalizeGuardian:Ljava/lang/Object;

    if-eqz p1, :cond_2f

    const/4 v1, 0x1

    if-lt p2, v1, :cond_2f

    iput-object p1, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    iput p2, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

    invoke-virtual {p1}, Lmiuix/core/util/Pools$Manager;->createInstance()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmiuix/core/util/Pools$BasePool;->createInstanceHolder(Ljava/lang/Class;I)Lmiuix/core/util/Pools$IInstanceHolder;

    move-result-object p2

    iput-object p2, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    return-void

    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "manager create instance cannot return null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "manager cannot be null and size cannot less then 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lmiuix/core/util/Pools$BasePool;->doAcquire()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    if-eqz v0, :cond_c

    iget v1, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

    invoke-virtual {p0, v0, v1}, Lmiuix/core/util/Pools$BasePool;->destroyInstanceHolder(Lmiuix/core/util/Pools$IInstanceHolder;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

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

    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lmiuix/core/util/Pools$IInstanceHolder;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    invoke-virtual {v0}, Lmiuix/core/util/Pools$Manager;->createInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_1b

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "manager create instance cannot return null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_1b
    iget-object v1, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$Manager;->onAcquire(Ljava/lang/Object;)V

    return-object v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire object after close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final doRelease(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    if-eqz v0, :cond_1a

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    invoke-virtual {v0, p1}, Lmiuix/core/util/Pools$Manager;->onRelease(Ljava/lang/Object;)V

    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    invoke-interface {v0, p1}, Lmiuix/core/util/Pools$IInstanceHolder;->put(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    invoke-virtual {v0, p1}, Lmiuix/core/util/Pools$Manager;->onDestroy(Ljava/lang/Object;)V

    :cond_19
    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot release object after close()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

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

    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    return-void
.end method
