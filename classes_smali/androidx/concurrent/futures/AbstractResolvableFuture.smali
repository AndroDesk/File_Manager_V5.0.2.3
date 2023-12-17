.class public abstract Landroidx/concurrent/futures/AbstractResolvableFuture;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/concurrent/futures/AbstractResolvableFuture$f;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$d;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$a;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$e;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$b;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$c;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final d:Z

.field public static final e:Ljava/util/logging/Logger;

.field public static final f:Landroidx/concurrent/futures/AbstractResolvableFuture$a;

.field public static final g:Ljava/lang/Object;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

.field public volatile c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    const-class v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 3
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    .line 5
    const-string v2, "false"

    .line 7
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    sput-boolean v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->d:Z

    .line 17
    const-class v1, Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->e:Ljava/util/logging/Logger;

    .line 29
    :try_start_1c
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    .line 31
    const-class v2, Ljava/lang/Thread;

    .line 33
    const-string v3, "a"

    .line 35
    invoke-static {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 38
    move-result-object v3

    .line 39
    const-string v2, "b"

    .line 41
    invoke-static {v0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 44
    move-result-object v4

    .line 45
    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 47
    const-string v5, "c"

    .line 49
    invoke-static {v2, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 52
    move-result-object v5

    .line 53
    const-class v0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 55
    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 57
    const-string v6, "b"

    .line 59
    invoke-static {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 62
    move-result-object v6

    .line 63
    const-class v0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 65
    const-class v2, Ljava/lang/Object;

    .line 67
    const-string v7, "a"

    .line 69
    invoke-static {v0, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 72
    move-result-object v7

    .line 73
    move-object v2, v1

    .line 74
    invoke-direct/range {v2 .. v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$d;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_4e

    .line 77
    const/4 v0, 0x0

    .line 78
    goto :goto_54

    .line 79
    :catchall_4e
    move-exception v0

    .line 80
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$f;

    .line 82
    invoke-direct {v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$f;-><init>()V

    .line 85
    :goto_54
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$a;

    .line 87
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    .line 89
    if-eqz v0, :cond_63

    .line 91
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->e:Ljava/util/logging/Logger;

    .line 93
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 95
    const-string v3, "SafeAtomicHelper is broken!"

    .line 97
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :cond_63
    new-instance v0, Ljava/lang/Object;

    .line 102
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 105
    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->g:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static b(Landroidx/concurrent/futures/AbstractResolvableFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/AbstractResolvableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 3
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$a;

    .line 5
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 7
    invoke-virtual {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$a;->c(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$g;Landroidx/concurrent/futures/AbstractResolvableFuture$g;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    :goto_c
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1b

    .line 16
    iget-object v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->a:Ljava/lang/Thread;

    .line 18
    if-eqz v2, :cond_18

    .line 20
    iput-object v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->a:Ljava/lang/Thread;

    .line 22
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 25
    :cond_18
    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 27
    goto :goto_c

    .line 28
    :cond_1b
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 30
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$a;

    .line 32
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->d:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 34
    invoke-virtual {v2, p0, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$a;->a(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$c;Landroidx/concurrent/futures/AbstractResolvableFuture$c;)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1b

    .line 40
    move-object p0, v1

    .line 41
    :goto_28
    if-eqz v0, :cond_31

    .line 43
    iget-object v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 45
    iput-object p0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 47
    move-object p0, v0

    .line 48
    move-object v0, v2

    .line 49
    goto :goto_28

    .line 50
    :cond_31
    :goto_31
    if-eqz p0, :cond_48

    .line 52
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 54
    iget-object v2, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->a:Ljava/lang/Runnable;

    .line 56
    instance-of v3, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 58
    if-nez v3, :cond_42

    .line 60
    iget-object p0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->b:Ljava/util/concurrent/Executor;

    .line 62
    invoke-static {v2, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 65
    move-object p0, v0

    .line 66
    goto :goto_31

    .line 67
    :cond_42
    check-cast v2, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    throw v1

    .line 73
    :cond_48
    return-void
.end method

.method public static c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 4
    goto :goto_25

    .line 5
    :catch_4
    move-exception v0

    .line 6
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->e:Ljava/util/logging/Logger;

    .line 8
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v4, "RuntimeException while executing runnable "

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, " with executor "

    .line 25
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :goto_25
    return-void
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    instance-of v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 3
    if-nez v0, :cond_18

    .line 5
    instance-of v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    .line 7
    if-nez v0, :cond_e

    .line 9
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->g:Ljava/lang/Object;

    .line 11
    if-ne p0, v0, :cond_d

    .line 13
    const/4 p0, 0x0

    .line 14
    :cond_d
    return-object p0

    .line 15
    :cond_e
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    .line 17
    check-cast p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    .line 19
    iget-object p0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;->a:Ljava/lang/Throwable;

    .line 21
    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    throw v0

    .line 25
    :cond_18
    check-cast p0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 27
    iget-object p0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->a:Ljava/lang/Throwable;

    .line 29
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 31
    const-string v1, "Task was cancelled."

    .line 33
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 39
    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .registers 5

    .line 1
    const-string v0, "]"

    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->get()Ljava/lang/Object;

    .line 7
    move-result-object v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_7} :catch_5c
    .catchall {:try_start_3 .. :try_end_7} :catchall_29

    .line 8
    if-eqz v1, :cond_10

    .line 10
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 17
    :cond_10
    const-string v1, "SUCCESS, result=["

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    if-ne v2, p0, :cond_1a

    .line 24
    const-string v1, "this future"

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    :goto_1e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    goto :goto_5b

    .line 38
    :catch_25
    move-exception v0

    .line 39
    goto :goto_34

    .line 40
    :catch_27
    move-exception v1

    .line 41
    goto :goto_4c

    .line 42
    :catchall_29
    move-exception v2

    .line 43
    if-eqz v1, :cond_33

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 52
    :cond_33
    throw v2
    :try_end_34
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_34} :catch_27
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_34} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_34} :catch_25

    .line 53
    :goto_34
    const-string v1, "UNKNOWN, cause=["

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string v0, " thrown from get()]"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    goto :goto_5b

    .line 71
    :catch_46
    const-string v0, "CANCELLED"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    goto :goto_5b

    .line 77
    :goto_4c
    const-string v2, "FAILURE, cause=["

    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :goto_5b
    return-void

    .line 93
    :catch_5c
    const/4 v1, 0x1

    .line 94
    goto :goto_3
.end method

.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 9
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->d:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 11
    if-eq v0, v1, :cond_22

    .line 13
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 15
    invoke-direct {v1, p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$c;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 18
    :cond_11
    iput-object v0, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 20
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$a;

    .line 22
    invoke-virtual {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$a;->a(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$c;Landroidx/concurrent/futures/AbstractResolvableFuture$c;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1c

    .line 28
    return-void

    .line 29
    :cond_1c
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 31
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->d:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 33
    if-ne v0, v2, :cond_11

    .line 35
    :cond_22
    invoke-static {p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 38
    return-void
.end method

.method public final cancel(Z)Z
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_8

    .line 7
    move v3, v1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v3, v2

    .line 10
    :goto_9
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 12
    or-int/2addr v3, v4

    .line 13
    if-eqz v3, :cond_43

    .line 15
    sget-boolean v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->d:Z

    .line 17
    if-eqz v3, :cond_1f

    .line 19
    new-instance v3, Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 21
    new-instance v4, Ljava/util/concurrent/CancellationException;

    .line 23
    const-string v5, "Future.cancel() was called."

    .line 25
    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-direct {v3, v4, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;-><init>(Ljava/lang/Throwable;Z)V

    .line 31
    goto :goto_26

    .line 32
    :cond_1f
    if-eqz p1, :cond_24

    .line 34
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 39
    :cond_26
    :goto_26
    sget-object p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$a;

    .line 41
    invoke-virtual {p1, p0, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$a;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_3d

    .line 47
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 50
    instance-of p1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 52
    if-nez p1, :cond_36

    .line 54
    goto :goto_44

    .line 55
    :cond_36
    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    const/4 p1, 0x0

    .line 61
    throw p1

    .line 62
    :cond_3d
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 64
    instance-of p1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 66
    if-nez p1, :cond_26

    .line 68
    :cond_43
    move v1, v2

    .line 69
    :goto_44
    return v1
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 5
    if-eqz v1, :cond_20

    .line 7
    const-string v1, "setFuture=["

    .line 9
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v1

    .line 13
    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v0, "null"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, "]"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    .line 35
    if-eqz v0, :cond_40

    .line 37
    const-string v0, "remaining delay=["

    .line 39
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v0

    .line 43
    move-object v1, p0

    .line 44
    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    .line 46
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    .line 51
    move-result-wide v1

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, " ms]"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :cond_40
    const/4 v0, 0x0

    .line 66
    return-object v0
.end method

.method public final f(Landroidx/concurrent/futures/AbstractResolvableFuture$g;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->a:Ljava/lang/Thread;

    .line 4
    :goto_3
    iget-object p1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 6
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 8
    if-ne p1, v1, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    move-object v1, v0

    .line 12
    :goto_b
    if-eqz p1, :cond_29

    .line 14
    iget-object v2, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 16
    iget-object v3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->a:Ljava/lang/Thread;

    .line 18
    if-eqz v3, :cond_15

    .line 20
    move-object v1, p1

    .line 21
    goto :goto_27

    .line 22
    :cond_15
    if-eqz v1, :cond_1e

    .line 24
    iput-object v2, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 26
    iget-object p1, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->a:Ljava/lang/Thread;

    .line 28
    if-nez p1, :cond_27

    .line 30
    goto :goto_3

    .line 31
    :cond_1e
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$a;

    .line 33
    invoke-virtual {v3, p0, p1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$a;->c(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$g;Landroidx/concurrent/futures/AbstractResolvableFuture$g;)Z

    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_27

    .line 39
    goto :goto_3

    .line 40
    :cond_27
    :goto_27
    move-object p1, v2

    .line 41
    goto :goto_b

    .line 42
    :cond_29
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 80
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_61

    .line 81
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v3, v2

    goto :goto_f

    :cond_e
    move v3, v1

    .line 82
    :goto_f
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    .line 83
    invoke-static {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1a
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 85
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    if-eq v0, v3, :cond_5a

    .line 86
    new-instance v3, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    invoke-direct {v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$g;-><init>()V

    .line 87
    :cond_25
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$a;

    invoke-virtual {v4, v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$a;->d(Landroidx/concurrent/futures/AbstractResolvableFuture$g;Landroidx/concurrent/futures/AbstractResolvableFuture$g;)V

    .line 88
    invoke-virtual {v4, p0, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$a;->c(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$g;Landroidx/concurrent/futures/AbstractResolvableFuture$g;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 89
    :cond_30
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 91
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3f

    move v4, v2

    goto :goto_40

    :cond_3f
    move v4, v1

    .line 92
    :goto_40
    instance-of v5, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    .line 93
    invoke-static {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 94
    :cond_4b
    invoke-virtual {p0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->f(Landroidx/concurrent/futures/AbstractResolvableFuture$g;)V

    .line 95
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 96
    :cond_54
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 97
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    if-ne v0, v4, :cond_25

    .line 98
    :cond_5a
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 99
    :cond_61
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_163

    .line 3
    iget-object v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    const/4 v7, 0x1

    if-eqz v6, :cond_17

    move v8, v7

    goto :goto_18

    :cond_17
    const/4 v8, 0x0

    .line 4
    :goto_18
    instance-of v9, v6, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    xor-int/2addr v9, v7

    and-int/2addr v8, v9

    if-eqz v8, :cond_23

    .line 5
    invoke-static {v6}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_23
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-lez v6, :cond_2f

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    add-long/2addr v10, v4

    goto :goto_30

    :cond_2f
    move-wide v10, v8

    :goto_30
    const-wide/16 v12, 0x3e8

    cmp-long v6, v4, v12

    if-ltz v6, :cond_8b

    .line 7
    iget-object v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 8
    sget-object v14, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    if-eq v6, v14, :cond_84

    .line 9
    new-instance v14, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    invoke-direct {v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$g;-><init>()V

    .line 10
    :cond_41
    sget-object v15, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$a;

    invoke-virtual {v15, v14, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$a;->d(Landroidx/concurrent/futures/AbstractResolvableFuture$g;Landroidx/concurrent/futures/AbstractResolvableFuture$g;)V

    .line 11
    invoke-virtual {v15, v0, v6, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$a;->c(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$g;Landroidx/concurrent/futures/AbstractResolvableFuture$g;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 12
    :cond_4c
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 13
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_75

    .line 14
    iget-object v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    if-eqz v4, :cond_5b

    move v5, v7

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    .line 15
    :goto_5c
    instance-of v6, v4, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    xor-int/2addr v6, v7

    and-int/2addr v5, v6

    if-eqz v5, :cond_67

    .line 16
    invoke-static {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 17
    :cond_67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v10, v4

    cmp-long v6, v4, v12

    if-gez v6, :cond_4c

    .line 18
    invoke-virtual {v0, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture;->f(Landroidx/concurrent/futures/AbstractResolvableFuture$g;)V

    goto :goto_8b

    .line 19
    :cond_75
    invoke-virtual {v0, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture;->f(Landroidx/concurrent/futures/AbstractResolvableFuture$g;)V

    .line 20
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 21
    :cond_7e
    iget-object v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 22
    sget-object v15, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    if-ne v6, v15, :cond_41

    .line 23
    :cond_84
    iget-object v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_8b
    :goto_8b
    cmp-long v6, v4, v8

    if-lez v6, :cond_b4

    .line 24
    iget-object v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    if-eqz v4, :cond_95

    move v5, v7

    goto :goto_96

    :cond_95
    const/4 v5, 0x0

    .line 25
    :goto_96
    instance-of v6, v4, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    xor-int/2addr v6, v7

    and-int/2addr v5, v6

    if-eqz v5, :cond_a1

    .line 26
    invoke-static {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 27
    :cond_a1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_ae

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v10, v4

    goto :goto_8b

    .line 29
    :cond_ae
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 30
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->toString()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 32
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Waited "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v14, v4, v12

    cmp-long v11, v14, v8

    if-gez v11, :cond_145

    const-string v11, " (plus "

    .line 33
    invoke-static {v2, v11}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 34
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    .line 35
    invoke-virtual {v3, v14, v15}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    sub-long v4, v4, v16

    cmp-long v3, v14, v8

    if-eqz v3, :cond_106

    cmp-long v8, v4, v12

    if-lez v8, :cond_105

    goto :goto_106

    :cond_105
    const/4 v7, 0x0

    :cond_106
    :goto_106
    if-lez v3, :cond_129

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_125

    const-string v3, ","

    .line 37
    invoke-static {v2, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    :cond_125
    invoke-static {v2, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_129
    if-eqz v7, :cond_13f

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_13f
    const-string v1, "delay)"

    .line 40
    invoke-static {v2, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    :cond_145
    invoke-virtual/range {p0 .. p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_157

    .line 42
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v3, " but future completed as timeout expired"

    .line 43
    invoke-static {v2, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_157
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v3, " for "

    .line 46
    invoke-static {v2, v3, v6}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_163
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public final isCancelled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 5
    return v0
.end method

.method public final isDone()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_7

    .line 6
    move v2, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v2, 0x0

    .line 9
    :goto_8
    instance-of v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$e;

    .line 11
    xor-int/2addr v0, v1

    .line 12
    and-int/2addr v0, v2

    .line 13
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "[status="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 20
    instance-of v1, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 22
    const-string v2, "]"

    .line 24
    if-eqz v1, :cond_1f

    .line 26
    const-string v1, "CANCELLED"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    goto :goto_5d

    .line 32
    :cond_1f
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_29

    .line 38
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->a(Ljava/lang/StringBuilder;)V

    .line 41
    goto :goto_5d

    .line 42
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->e()Ljava/lang/String;

    .line 45
    move-result-object v1
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2d} :catch_2e

    .line 46
    goto :goto_40

    .line 47
    :catch_2e
    move-exception v1

    .line 48
    const-string v3, "Exception thrown from implementation: "

    .line 50
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    :goto_40
    if-eqz v1, :cond_4e

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_4e

    .line 73
    const-string v3, "PENDING, info=["

    .line 75
    invoke-static {v0, v3, v1, v2}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    goto :goto_5d

    .line 79
    :cond_4e
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_58

    .line 85
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->a(Ljava/lang/StringBuilder;)V

    .line 88
    goto :goto_5d

    .line 89
    :cond_58
    const-string v1, "PENDING"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_5d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method
