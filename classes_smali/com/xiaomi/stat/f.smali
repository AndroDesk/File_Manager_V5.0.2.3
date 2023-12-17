.class Lcom/xiaomi/stat/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/f;->a:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/xiaomi/stat/f;->b:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/d/e;->a()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    .line 6
    invoke-static {v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_10

    .line 12
    iget-object v0, p0, Lcom/xiaomi/stat/f;->a:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Lcom/xiaomi/stat/b;->h(Ljava/lang/String;)V

    .line 17
    :cond_10
    invoke-static {}, Lcom/xiaomi/stat/b;->d()V

    .line 20
    invoke-static {}, Lcom/xiaomi/stat/b/g;->a()Lcom/xiaomi/stat/b/g;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lcom/xiaomi/stat/b;->f()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/b/g;->a(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    .line 33
    invoke-static {v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    iget-boolean v1, p0, Lcom/xiaomi/stat/f;->b:Z

    .line 39
    invoke-static {v0, v1}, Lcom/xiaomi/stat/b;->a(Ljava/lang/String;Z)V

    .line 42
    invoke-static {}, Lcom/xiaomi/stat/b;->n()V

    .line 45
    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    .line 47
    invoke-static {v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;)Z

    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3d

    .line 53
    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    .line 55
    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/xiaomi/stat/b;->f(Ljava/lang/String;)V

    .line 62
    :cond_3d
    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    .line 64
    invoke-static {v0}, Lcom/xiaomi/stat/e;->d(Lcom/xiaomi/stat/e;)V

    .line 67
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/xiaomi/stat/a/c;->b()V

    .line 74
    invoke-static {}, Lcom/xiaomi/stat/b/e;->a()Ljava/util/concurrent/ExecutorService;

    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Lcom/xiaomi/stat/g;

    .line 80
    invoke-direct {v1, p0}, Lcom/xiaomi/stat/g;-><init>(Lcom/xiaomi/stat/f;)V

    .line 83
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method
