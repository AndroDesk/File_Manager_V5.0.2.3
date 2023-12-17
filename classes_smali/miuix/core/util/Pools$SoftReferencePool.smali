.class public Lmiuix/core/util/Pools$SoftReferencePool;
.super Lmiuix/core/util/Pools$BasePool;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoftReferencePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiuix/core/util/Pools$BasePool<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lmiuix/core/util/Pools$Manager;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/Pools$Manager<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/Pools$BasePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic acquire()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/core/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic close()V
    .registers 1

    .line 1
    invoke-super {p0}, Lmiuix/core/util/Pools$BasePool;->close()V

    .line 4
    return-void
.end method

.method public final createInstanceHolder(Ljava/lang/Class;I)Lmiuix/core/util/Pools$IInstanceHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lmiuix/core/util/Pools$IInstanceHolder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lmiuix/core/util/Pools;->onSoftReferencePoolCreate(Ljava/lang/Class;I)Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final destroyInstanceHolder(Lmiuix/core/util/Pools$IInstanceHolder;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/Pools$IInstanceHolder<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    .line 3
    invoke-static {p1, p2}, Lmiuix/core/util/Pools;->onSoftReferencePoolClose(Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;I)V

    .line 6
    return-void
.end method

.method public bridge synthetic getSize()I
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/core/util/Pools$BasePool;->getSize()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/core/util/Pools$BasePool;->release(Ljava/lang/Object;)V

    .line 4
    return-void
.end method
