.class Lcom/xiaomi/stat/ad;
.super Landroid/os/FileObserver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/ab;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/ab;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/ad;->a:Lcom/xiaomi/stat/ab;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 3

    .line 1
    const/4 p2, 0x2

    .line 2
    if-eq p1, p2, :cond_4

    .line 4
    return-void

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/xiaomi/stat/ad;->a:Lcom/xiaomi/stat/ab;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_7
    iget-object p2, p0, Lcom/xiaomi/stat/ad;->a:Lcom/xiaomi/stat/ab;

    .line 10
    invoke-static {p2}, Lcom/xiaomi/stat/ab;->b(Lcom/xiaomi/stat/ab;)V

    .line 13
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 14
    invoke-static {}, Lcom/xiaomi/stat/b;->n()V

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception p2

    .line 19
    :try_start_12
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    .line 20
    throw p2
.end method
