.class Lcom/xiaomi/stat/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/IBinder;

.field public final synthetic b:Lcom/xiaomi/stat/c/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/c/d;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iput-object p2, p0, Lcom/xiaomi/stat/c/e;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-class v0, Lcom/xiaomi/stat/c/i;

    iget-object v1, p0, Lcom/xiaomi/stat/c/e;->a:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/xiaomi/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/a/a/a/a;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_a
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-static {}, Lcom/xiaomi/stat/b;->x()Z

    move-result v4

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v5, v4, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    iget-object v6, v4, Lcom/xiaomi/stat/c/d;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/xiaomi/stat/c/d;->c:Ljava/util/Map;

    invoke-interface {v1, v6, v4}, Lcom/xiaomi/a/a/a/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    goto :goto_3a

    :cond_25
    iget-object v1, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v1, v1, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    aput-object v2, v1, v3

    goto :goto_3a

    :cond_2c
    iget-object v4, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v5, v4, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    iget-object v6, v4, Lcom/xiaomi/stat/c/d;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/xiaomi/stat/c/d;->c:Ljava/util/Map;

    invoke-interface {v1, v6, v4}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    :goto_3a
    const-string v1, "UploadMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " connected, do remote http post "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v5, v5, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter v0
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_57} :catch_65

    :try_start_57
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5d
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_61

    :catchall_5b
    move-exception v1

    goto :goto_63

    :catch_5d
    move-exception v1

    :try_start_5e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_61
    monitor-exit v0

    goto :goto_82

    :goto_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_5b

    :try_start_64
    throw v1
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_65} :catch_65

    :catch_65
    move-exception v0

    const-string v1, "UploadMode"

    const-string v4, " error while uploading the data by IPC."

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v0, v0, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    aput-object v2, v0, v3

    :goto_82
    return-void
.end method
