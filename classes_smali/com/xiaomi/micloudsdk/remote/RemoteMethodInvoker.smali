.class public abstract Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;
.super Ljava/lang/Object;
.source "RemoteMethodInvoker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final RETRY_TIMEOUT_SECONDS:J = 0x5L

.field private static final TAG:Ljava/lang/String; = "RemoteMethodInvoker"


# instance fields
.field private final future:Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;

    .line 6
    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->future:Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;

    .line 11
    if-eqz p1, :cond_13

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    .line 19
    return-void

    .line 20
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    const-string v0, "context can\'t be null"

    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method


# virtual methods
.method public abstract bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
.end method

.method public invoke()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/ThreadUtil;->ensureWorkerThread()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0, v0, p0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "RemoteMethodInvoker"

    .line 13
    if-eqz v0, :cond_79

    .line 15
    const/4 v0, 0x3

    .line 16
    :goto_f
    if-lez v0, :cond_73

    .line 18
    :try_start_11
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->future:Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;

    .line 20
    const-wide/16 v4, 0x5

    .line 22
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/os/IBinder;

    .line 30
    invoke-virtual {p0, v3}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 33
    move-result-object v1
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_21} :catch_6c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_21} :catch_55
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_21} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_21} :catch_22

    .line 34
    goto :goto_73

    .line 35
    :catch_22
    move-exception v3

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v5, "invoke service method error - remaining retry count : "

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v5, ", exception : "

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    goto :goto_69

    .line 65
    :catch_40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v4, "invoke service method occurs execution error - remaining retry count : "

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    goto :goto_69

    .line 86
    :catch_55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const-string v4, "invoke service method time out - remaining retry count : "

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 103
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_69
    add-int/lit8 v0, v0, -0x1

    .line 108
    goto :goto_f

    .line 109
    :catch_6c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 116
    :cond_73
    :goto_73
    :try_start_73
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_78
    .catch Ljava/util/NoSuchElementException; {:try_start_73 .. :try_end_78} :catch_78

    .line 121
    :catch_78
    return-object v1

    .line 122
    :cond_79
    const-string v0, "Cannot bind remote service."

    .line 124
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v1
.end method

.method public abstract invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TR;"
        }
    .end annotation
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1
    const-string v0, "RemoteMethodInvoker connects remote service "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "RemoteMethodInvoker"

    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->future:Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;

    .line 25
    invoke-virtual {p1, p2}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
