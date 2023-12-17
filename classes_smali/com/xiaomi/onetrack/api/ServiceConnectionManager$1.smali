.class Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/an;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/an;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    .line 1
    const-string p1, "ServiceConnectManager"

    .line 3
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 9
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 11
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_3c

    .line 19
    :try_start_12
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 21
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/an;->e(Lcom/xiaomi/onetrack/api/an;)Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 27
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/an;->d(Lcom/xiaomi/onetrack/api/an;)Landroid/content/ServiceConnection;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_22
    .catchall {:try_start_12 .. :try_end_21} :catchall_3c

    .line 34
    goto :goto_51

    .line 35
    :catch_22
    move-exception v0

    .line 36
    :try_start_23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v2, "unbindService error: "

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_3c

    .line 60
    goto :goto_51

    .line 61
    :catchall_3c
    move-exception v0

    .line 62
    const-string v1, "onBindingDied throwable:"

    .line 64
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_51
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 7
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 9
    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 17
    goto :goto_28

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    const-string v0, "onNullBinding throwable:"

    .line 21
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string v0, "ServiceConnectManager"

    .line 38
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_28
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 1
    const-string p1, "ServiceConnectManager"

    .line 3
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 5
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 15
    invoke-static {p2}, Lcom/miui/analytics/ITrack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ITrack;

    .line 18
    move-result-object p2

    .line 19
    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 22
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 24
    invoke-static {p2}, Lcom/xiaomi/onetrack/api/an;->b(Lcom/xiaomi/onetrack/api/an;)V

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string v0, "onServiceConnected  mConnecting "

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 39
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string v0, " mIOneTrackService "

    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 53
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/an;->c(Lcom/xiaomi/onetrack/api/an;)Lcom/miui/analytics/ITrack;

    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_3b

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    const/4 v1, 0x1

    .line 61
    :goto_3c
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, " pid:"

    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 72
    move-result v0

    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, " tid:"

    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 84
    move-result v0

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 92
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_2 .. :try_end_5e} :catchall_5f

    .line 95
    goto :goto_74

    .line 96
    :catchall_5f
    move-exception p2

    .line 97
    const-string v0, "onServiceConnected throwable:"

    .line 99
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_74
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1
    const-string p1, "ServiceConnectManager"

    .line 3
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 9
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 11
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v2, "onServiceDisconnected:  mConnecting "

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 31
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    const-string v2, " mIOneTrackService "

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    .line 45
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/an;->c(Lcom/xiaomi/onetrack/api/an;)Lcom/miui/analytics/ITrack;

    .line 48
    move-result-object v2

    .line 49
    if-nez v2, :cond_33

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    const/4 v1, 0x1

    .line 53
    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_3f

    .line 63
    goto :goto_54

    .line 64
    :catchall_3f
    move-exception v0

    .line 65
    const-string v1, "onServiceDisconnected throwable:"

    .line 67
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_54
    return-void
.end method
