.class Lcom/xiaomi/stat/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/IBinder;

.field public final synthetic b:Lcom/xiaomi/stat/c/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/c/d;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/c/e;->a:Landroid/os/IBinder;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    const-class v0, Lcom/xiaomi/stat/c/i;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/stat/c/e;->a:Landroid/os/IBinder;

    .line 5
    invoke-static {v1}, Lcom/xiaomi/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/a/a/a/a;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_a
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_2c

    .line 17
    invoke-static {}, Lcom/xiaomi/stat/b;->x()Z

    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_25

    .line 23
    iget-object v4, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    .line 25
    iget-object v5, v4, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    .line 27
    iget-object v6, v4, Lcom/xiaomi/stat/c/d;->b:Ljava/lang/String;

    .line 29
    iget-object v4, v4, Lcom/xiaomi/stat/c/d;->c:Ljava/util/Map;

    .line 31
    invoke-interface {v1, v6, v4}, Lcom/xiaomi/a/a/a/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    aput-object v1, v5, v3

    .line 37
    goto :goto_3a

    .line 38
    :cond_25
    iget-object v1, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    .line 40
    iget-object v1, v1, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    .line 42
    aput-object v2, v1, v3

    .line 44
    goto :goto_3a

    .line 45
    :cond_2c
    iget-object v4, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    .line 47
    iget-object v5, v4, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    .line 49
    iget-object v6, v4, Lcom/xiaomi/stat/c/d;->b:Ljava/lang/String;

    .line 51
    iget-object v4, v4, Lcom/xiaomi/stat/c/d;->c:Ljava/util/Map;

    .line 53
    invoke-interface {v1, v6, v4}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    aput-object v1, v5, v3

    .line 59
    :goto_3a
    const-string v1, "UploadMode"

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v5, " connected, do remote http post "

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v5, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    .line 73
    iget-object v5, v5, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    .line 75
    aget-object v5, v5, v3

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    invoke-static {v1, v4}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    monitor-enter v0
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_57} :catch_65

    .line 88
    :try_start_57
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5d
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    .line 91
    goto :goto_61

    .line 92
    :catchall_5b
    move-exception v1

    .line 93
    goto :goto_63

    .line 94
    :catch_5d
    move-exception v1

    .line 95
    :try_start_5e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    :goto_61
    monitor-exit v0

    .line 99
    goto :goto_82

    .line 100
    :goto_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_5b

    .line 101
    :try_start_64
    throw v1
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_65} :catch_65

    .line 102
    :catch_65
    move-exception v0

    .line 103
    const-string v1, "UploadMode"

    .line 105
    const-string v4, " error while uploading the data by IPC."

    .line 107
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    .line 127
    iget-object v0, v0, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    .line 129
    aput-object v2, v0, v3

    .line 131
    :goto_82
    return-void
.end method
