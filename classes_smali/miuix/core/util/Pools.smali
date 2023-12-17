.class public final Lmiuix/core/util/Pools;
.super Ljava/lang/Object;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/Pools$SoftReferencePool;,
        Lmiuix/core/util/Pools$SimplePool;,
        Lmiuix/core/util/Pools$BasePool;,
        Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;,
        Lmiuix/core/util/Pools$InstanceHolder;,
        Lmiuix/core/util/Pools$IInstanceHolder;,
        Lmiuix/core/util/Pools$Manager;,
        Lmiuix/core/util/Pools$Pool;
    }
.end annotation


# static fields
.field private static final mInstanceHolderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lmiuix/core/util/Pools$InstanceHolder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lmiuix/core/util/Pools$SoftReferenceInstanceHolder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final mStringBuilderPool:Lmiuix/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$Pool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    .line 15
    new-instance v0, Lmiuix/core/util/Pools$1;

    .line 17
    invoke-direct {v0}, Lmiuix/core/util/Pools$1;-><init>()V

    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSoftReferencePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SoftReferencePool;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$Pool;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public static createSimplePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SimplePool;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiuix/core/util/Pools$Manager<",
            "TT;>;I)",
            "Lmiuix/core/util/Pools$SimplePool<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lmiuix/core/util/Pools$SimplePool;

    .line 3
    invoke-direct {v0, p0, p1}, Lmiuix/core/util/Pools$SimplePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    .line 6
    return-object v0
.end method

.method public static createSoftReferencePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SoftReferencePool;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiuix/core/util/Pools$Manager<",
            "TT;>;I)",
            "Lmiuix/core/util/Pools$SoftReferencePool<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lmiuix/core/util/Pools$SoftReferencePool;

    .line 3
    invoke-direct {v0, p0, p1}, Lmiuix/core/util/Pools$SoftReferencePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    .line 6
    return-object v0
.end method

.method public static getStringBuilderPool()Lmiuix/core/util/Pools$Pool;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiuix/core/util/Pools$Pool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$Pool;

    .line 3
    return-object v0
.end method

.method public static onPoolClose(Lmiuix/core/util/Pools$InstanceHolder;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiuix/core/util/Pools$InstanceHolder<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    neg-int p1, p1

    .line 5
    :try_start_4
    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$InstanceHolder;->resize(I)V

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_9
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    .line 12
    throw p0
.end method

.method public static onPoolCreate(Ljava/lang/Class;I)Lmiuix/core/util/Pools$InstanceHolder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lmiuix/core/util/Pools$InstanceHolder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lmiuix/core/util/Pools$InstanceHolder;

    .line 10
    if-nez v1, :cond_14

    .line 12
    new-instance v1, Lmiuix/core/util/Pools$InstanceHolder;

    .line 14
    invoke-direct {v1, p0, p1}, Lmiuix/core/util/Pools$InstanceHolder;-><init>(Ljava/lang/Class;I)V

    .line 17
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    invoke-virtual {v1, p1}, Lmiuix/core/util/Pools$InstanceHolder;->resize(I)V

    .line 24
    :goto_17
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :catchall_19
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    .line 28
    throw p0
.end method

.method public static onSoftReferencePoolClose(Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiuix/core/util/Pools$SoftReferenceInstanceHolder<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    neg-int p1, p1

    .line 5
    :try_start_4
    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->resize(I)V

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_9
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    .line 12
    throw p0
.end method

.method public static onSoftReferencePoolCreate(Ljava/lang/Class;I)Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lmiuix/core/util/Pools$SoftReferenceInstanceHolder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    .line 10
    if-nez v1, :cond_14

    .line 12
    new-instance v1, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    .line 14
    invoke-direct {v1, p0, p1}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;-><init>(Ljava/lang/Class;I)V

    .line 17
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    invoke-virtual {v1, p1}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->resize(I)V

    .line 24
    :goto_17
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :catchall_19
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    .line 28
    throw p0
.end method
