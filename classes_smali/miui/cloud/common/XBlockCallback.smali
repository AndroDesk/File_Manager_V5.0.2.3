.class public Lmiui/cloud/common/XBlockCallback;
.super Lmiui/cloud/common/XCallback;
.source "XBlockCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XBlockCallback$CallbackRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/cloud/common/XCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

.field private mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

.field private mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lmiui/cloud/common/XCallback;-><init>(Ljava/lang/Class;)V

    .line 4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 9
    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;

    .line 17
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

    .line 25
    return-void
.end method


# virtual methods
.method public handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :goto_5
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    .line 8
    if-eqz v0, :cond_14

    .line 10
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 15
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 20
    goto :goto_5

    .line 21
    :cond_14
    new-instance v0, Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    .line 23
    invoke-direct {v0, p1, p2}, Lmiui/cloud/common/XBlockCallback$CallbackRequest;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 26
    iput-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    .line 28
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

    .line 30
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_20} :catch_23
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    .line 33
    goto :goto_2e

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    goto :goto_35

    .line 36
    :catch_23
    const/4 p1, 0x1

    .line 37
    :try_start_24
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    const/4 p2, 0x0

    .line 40
    const-string v0, "Interrupted while waiting for callback handlers. "

    .line 42
    aput-object v0, p1, p2

    .line 44
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_21

    .line 47
    :goto_2e
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 52
    const/4 p1, 0x0

    .line 53
    return-object p1

    .line 54
    :goto_35
    iget-object p2, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    throw p1
.end method

.method public waitForCallBack(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "Bad callback. "

    .line 3
    :try_start_2
    iget-object v1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    :goto_7
    iget-object v1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    .line 10
    if-nez v1, :cond_16

    .line 12
    iget-object v1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;

    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 17
    iget-object v1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

    .line 19
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_4b

    .line 22
    goto :goto_7

    .line 23
    :cond_16
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    :try_start_18
    iget-object v4, v1, Lmiui/cloud/common/XBlockCallback$CallbackRequest;->method:Ljava/lang/reflect/Method;

    .line 27
    iget-object v1, v1, Lmiui/cloud/common/XBlockCallback$CallbackRequest;->args:[Ljava/lang/Object;

    .line 29
    invoke-virtual {v4, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_1f} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1f} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_1f} :catch_20
    .catchall {:try_start_18 .. :try_end_1f} :catchall_4b

    .line 32
    goto :goto_3d

    .line 33
    :catch_20
    move-exception p1

    .line 34
    const/4 v0, 0x2

    .line 35
    :try_start_22
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    const-string v1, "Exception in callback, but unable to propagate to the original thread. "

    .line 39
    aput-object v1, v0, v2

    .line 41
    aput-object p1, v0, v3

    .line 43
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 46
    goto :goto_3d

    .line 47
    :catch_2e
    new-array p1, v3, [Ljava/lang/Object;

    .line 49
    aput-object v0, p1, v2

    .line 51
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 54
    goto :goto_3d

    .line 55
    :catch_36
    new-array p1, v3, [Ljava/lang/Object;

    .line 57
    aput-object v0, p1, v2

    .line 59
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 62
    :goto_3d
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    .line 65
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;

    .line 67
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_4b

    .line 70
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 72
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 75
    return-void

    .line 76
    :catchall_4b
    move-exception p1

    .line 77
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 82
    throw p1
.end method
