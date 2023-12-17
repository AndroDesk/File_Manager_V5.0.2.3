.class public Lmiuix/animation/utils/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/utils/ObjectPool$Cache;,
        Lmiuix/animation/utils/ObjectPool$IPoolObject;
    }
.end annotation


# static fields
.field private static final DELAY:J = 0x1388L

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lmiuix/animation/utils/ObjectPool$Cache;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sMainHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lmiuix/animation/Folme;->getLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmiuix/animation/utils/ObjectPool;->createMainHandler(Landroid/os/Looper;)V

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    sput-object v0, Lmiuix/animation/utils/ObjectPool;->sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiuix/animation/utils/ObjectPool;->createObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static varargs acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lmiuix/animation/utils/ObjectPool;->getObjectCache(Ljava/lang/Class;Z)Lmiuix/animation/utils/ObjectPool$Cache;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0, p0, p1}, Lmiuix/animation/utils/ObjectPool$Cache;->acquireObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static createMainHandler(Landroid/os/Looper;)V
    .registers 2

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    sput-object v0, Lmiuix/animation/utils/ObjectPool;->sMainHandler:Landroid/os/Handler;

    .line 11
    return-void
.end method

.method private static varargs createObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_35

    .line 9
    aget-object v3, v0, v2

    .line 11
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 14
    move-result-object v4

    .line 15
    array-length v4, v4

    .line 16
    array-length v5, p1

    .line 17
    if-eq v4, v5, :cond_15

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_6

    .line 22
    :cond_15
    const/4 v0, 0x1

    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 30
    return-object p0

    .line 31
    :catch_1e
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v1, "ObjectPool.createObject failed, clz = "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    const-string v0, "miuix_anim"

    .line 51
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_35
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/animation/utils/ObjectPool;->sMainHandler:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method private static getObjectCache(Ljava/lang/Class;Z)Lmiuix/animation/utils/ObjectPool$Cache;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lmiuix/animation/utils/ObjectPool$Cache;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/animation/utils/ObjectPool;->sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lmiuix/animation/utils/ObjectPool$Cache;

    .line 9
    if-nez v1, :cond_1d

    .line 11
    if-eqz p1, :cond_1d

    .line 13
    new-instance p1, Lmiuix/animation/utils/ObjectPool$Cache;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {p1, v1}, Lmiuix/animation/utils/ObjectPool$Cache;-><init>(Lmiuix/animation/utils/ObjectPool$1;)V

    .line 19
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lmiuix/animation/utils/ObjectPool$Cache;

    .line 25
    if-eqz p0, :cond_1c

    .line 27
    move-object v1, p0

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move-object v1, p1

    .line 30
    :cond_1d
    :goto_1d
    return-object v1
.end method

.method public static release(Ljava/lang/Object;)V
    .registers 3

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p0, Lmiuix/animation/utils/ObjectPool$IPoolObject;

    .line 10
    if-eqz v1, :cond_12

    .line 12
    move-object v1, p0

    .line 13
    check-cast v1, Lmiuix/animation/utils/ObjectPool$IPoolObject;

    .line 15
    invoke-interface {v1}, Lmiuix/animation/utils/ObjectPool$IPoolObject;->clear()V

    .line 18
    goto :goto_27

    .line 19
    :cond_12
    instance-of v1, p0, Ljava/util/Collection;

    .line 21
    if-eqz v1, :cond_1d

    .line 23
    move-object v1, p0

    .line 24
    check-cast v1, Ljava/util/Collection;

    .line 26
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 29
    goto :goto_27

    .line 30
    :cond_1d
    instance-of v1, p0, Ljava/util/Map;

    .line 32
    if-eqz v1, :cond_27

    .line 34
    move-object v1, p0

    .line 35
    check-cast v1, Ljava/util/Map;

    .line 37
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 40
    :cond_27
    :goto_27
    const/4 v1, 0x0

    .line 41
    invoke-static {v0, v1}, Lmiuix/animation/utils/ObjectPool;->getObjectCache(Ljava/lang/Class;Z)Lmiuix/animation/utils/ObjectPool$Cache;

    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_31

    .line 47
    invoke-virtual {v0, p0}, Lmiuix/animation/utils/ObjectPool$Cache;->releaseObject(Ljava/lang/Object;)V

    .line 50
    :cond_31
    return-void
.end method
