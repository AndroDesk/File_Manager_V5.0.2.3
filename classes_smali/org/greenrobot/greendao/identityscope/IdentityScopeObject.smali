.class public Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;
.super Ljava/lang/Object;
.source "IdentityScopeObject.java"

# interfaces
.implements Lorg/greenrobot/greendao/identityscope/IdentityScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/greenrobot/greendao/identityscope/IdentityScope<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Ljava/lang/ref/Reference<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->map:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 16
    iput-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_5
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->map:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 11
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    return-void

    .line 17
    :catchall_10
    move-exception v0

    .line 18
    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    throw v0
.end method

.method public detach(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_5
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    if-ne v0, p2, :cond_17

    .line 12
    if-eqz p2, :cond_17

    .line 14
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->remove(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_19

    .line 17
    const/4 p1, 0x1

    .line 18
    :goto_11
    iget-object p2, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    return p1

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    goto :goto_11

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    iget-object p2, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 32
    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_5
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->map:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/ref/Reference;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1b

    .line 14
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    if-eqz p1, :cond_19

    .line 21
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 34
    throw p1
.end method

.method public getNoLock(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->map:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/ref/Reference;

    .line 9
    if-eqz p1, :cond_f

    .line 11
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public lock()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_5
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->map:Ljava/util/HashMap;

    .line 8
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    .line 16
    iget-object p1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    return-void

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    iget-object p2, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 25
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    throw p1
.end method

.method public putNoLock(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->map:Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public remove(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TK;>;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1f

    goto :goto_9

    .line 8
    :cond_19
    iget-object p1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1f
    move-exception p1

    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    throw p1
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_5
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 3
    iget-object p1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_10
    move-exception p1

    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    throw p1
.end method

.method public reserveRoom(I)V
    .registers 2

    return-void
.end method

.method public unlock()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6
    return-void
.end method
