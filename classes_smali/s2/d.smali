.class public final Ls2/d;
.super Ljava/lang/Object;
.source "SchedulerPoolFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls2/d$a;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:I

.field public static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 6
    sput-object v0, Ls2/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    sput-object v0, Ls2/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "rx2.purge-enabled"

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v2, :cond_20

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 31
    move-result v1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v1, v3

    .line 34
    :goto_21
    if-eqz v1, :cond_34

    .line 36
    const-string v2, "rx2.purge-period-seconds"

    .line 38
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_34

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v0

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v0, v3

    .line 54
    :goto_35
    sput-boolean v1, Ls2/d;->a:Z

    .line 56
    sput v0, Ls2/d;->b:I

    .line 58
    if-nez v1, :cond_3c

    .line 60
    goto :goto_77

    .line 61
    :cond_3c
    :goto_3c
    sget-object v0, Ls2/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 69
    if-eqz v1, :cond_4d

    .line 71
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_4d

    .line 77
    goto :goto_77

    .line 78
    :cond_4d
    new-instance v2, Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 80
    const-string v4, "RxSchedulerPurge"

    .line 82
    invoke-direct {v2, v4}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 88
    move-result-object v5

    .line 89
    :cond_58
    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_60

    .line 95
    move v0, v3

    .line 96
    goto :goto_67

    .line 97
    :cond_60
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    if-eq v2, v1, :cond_58

    .line 103
    const/4 v0, 0x0

    .line 104
    :goto_67
    if-eqz v0, :cond_78

    .line 106
    new-instance v6, Ls2/d$a;

    .line 108
    invoke-direct {v6}, Ls2/d$a;-><init>()V

    .line 111
    sget v0, Ls2/d;->b:I

    .line 113
    int-to-long v9, v0

    .line 114
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 116
    move-wide v7, v9

    .line 117
    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 120
    :goto_77
    return-void

    .line 121
    :cond_78
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 124
    goto :goto_3c
.end method
