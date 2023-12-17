.class Lcom/xiaomi/onetrack/c/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/c/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/c/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/p;->a:Lcom/xiaomi/onetrack/c/m;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/p;->a:Lcom/xiaomi/onetrack/c/m;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/m;->a(Lcom/xiaomi/onetrack/c/m;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->b()V

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/p;->a:Lcom/xiaomi/onetrack/c/m;

    .line 18
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/m;->a(Lcom/xiaomi/onetrack/c/m;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    return-void
.end method
