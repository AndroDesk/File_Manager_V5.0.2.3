.class Lcom/xiaomi/stat/ad;
.super Landroid/os/FileObserver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/ab;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/stat/ad;->a:Lcom/xiaomi/stat/ab;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/xiaomi/stat/ad;->a:Lcom/xiaomi/stat/ab;

    monitor-enter p1

    :try_start_7
    iget-object p2, p0, Lcom/xiaomi/stat/ad;->a:Lcom/xiaomi/stat/ab;

    invoke-static {p2}, Lcom/xiaomi/stat/ab;->b(Lcom/xiaomi/stat/ab;)V

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/xiaomi/stat/b;->n()V

    return-void

    :catchall_11
    move-exception p2

    :try_start_12
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p2
.end method
