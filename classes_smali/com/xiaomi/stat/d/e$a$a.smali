.class final Lcom/xiaomi/stat/d/e$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/d/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private b:Z

.field private c:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x958a6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/d/e$a$a;->a:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stat/d/e$a$a;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/stat/d/f;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/stat/d/e$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/xiaomi/stat/d/e$a$a;->b:Z

    if-nez v0, :cond_22

    monitor-enter p0

    const-wide/16 v0, 0x7530

    :try_start_e
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    if-eqz v0, :cond_17

    monitor-exit p0

    goto :goto_22

    :cond_17
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Not connect or connect timeout to google play service"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/stat/d/e$a$a;->b:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    return-void
.end method
