.class public Lmiui/cloud/common/XBroadcast;
.super Ljava/lang/Object;
.source "XBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XBroadcast$BroadcastResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static syncSendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lmiui/cloud/common/XBroadcast$BroadcastResult;
    .registers 5

    const-wide/16 v0, -0x1

    .line 1
    :try_start_2
    invoke-static {p0, p1, p2, v0, v1}, Lmiui/cloud/common/XBroadcast;->syncSendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Lmiui/cloud/common/XBroadcast$BroadcastResult;

    move-result-object p0
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    .line 2
    :catch_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Never reach here. "

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static syncSendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Lmiui/cloud/common/XBroadcast$BroadcastResult;
    .registers 16

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lmiui/cloud/common/XBroadcast;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 7
    new-instance v2, Lmiui/cloud/common/XWrapper;

    invoke-direct {v2}, Lmiui/cloud/common/XWrapper;-><init>()V

    .line 8
    new-instance v6, Lmiui/cloud/common/XBroadcast$1;

    invoke-direct {v6, v2, v1}, Lmiui/cloud/common/XBroadcast$1;-><init>(Lmiui/cloud/common/XWrapper;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-gez p0, :cond_3a

    .line 9
    :try_start_36
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_42

    .line 10
    :cond_3a
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p3, p4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_52

    if-eqz p0, :cond_4c

    .line 11
    :goto_42
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 12
    invoke-virtual {v2}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/cloud/common/XBroadcast$BroadcastResult;

    return-object p0

    .line 13
    :cond_4c
    :try_start_4c
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p0

    .line 14
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 15
    throw p0
.end method
