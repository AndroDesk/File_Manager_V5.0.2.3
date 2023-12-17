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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/cloud/common/XCallback;-><init>(Ljava/lang/Class;)V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;

    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_5
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_5

    :cond_14
    new-instance v0, Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    invoke-direct {v0, p1, p2}, Lmiui/cloud/common/XBlockCallback$CallbackRequest;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_20} :catch_23
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    goto :goto_2e

    :catchall_21
    move-exception p1

    goto :goto_35

    :catch_23
    const/4 p1, 0x1

    :try_start_24
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "Interrupted while waiting for callback handlers. "

    aput-object v0, p1, p2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_21

    :goto_2e
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :goto_35
    iget-object p2, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public waitForCallBack(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "Bad callback. "

    :try_start_2
    iget-object v1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_7
    iget-object v1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    if-nez v1, :cond_16

    iget-object v1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_4b

    goto :goto_7

    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_18
    iget-object v4, v1, Lmiui/cloud/common/XBlockCallback$CallbackRequest;->method:Ljava/lang/reflect/Method;

    iget-object v1, v1, Lmiui/cloud/common/XBlockCallback$CallbackRequest;->args:[Ljava/lang/Object;

    invoke-virtual {v4, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_1f} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1f} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_1f} :catch_20
    .catchall {:try_start_18 .. :try_end_1f} :catchall_4b

    goto :goto_3d

    :catch_20
    move-exception p1

    const/4 v0, 0x2

    :try_start_22
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Exception in callback, but unable to propagate to the original thread. "

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_3d

    :catch_2e
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_3d

    :catch_36
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :goto_3d
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_4b

    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_4b
    move-exception p1

    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
