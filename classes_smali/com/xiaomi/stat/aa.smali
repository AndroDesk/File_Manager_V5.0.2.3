.class Lcom/xiaomi/stat/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/xiaomi/stat/MiStatParams;

.field public final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;ZLcom/xiaomi/stat/MiStatParams;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/aa;->c:Lcom/xiaomi/stat/e;

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/stat/aa;->a:Z

    .line 5
    iput-object p3, p0, Lcom/xiaomi/stat/aa;->b:Lcom/xiaomi/stat/MiStatParams;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/stat/aa;->c:Lcom/xiaomi/stat/e;

    .line 10
    iget-boolean v1, p0, Lcom/xiaomi/stat/aa;->a:Z

    .line 12
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/xiaomi/stat/aa;->c:Lcom/xiaomi/stat/e;

    .line 21
    iget-object v1, p0, Lcom/xiaomi/stat/aa;->b:Lcom/xiaomi/stat/MiStatParams;

    .line 23
    iget-boolean v2, p0, Lcom/xiaomi/stat/aa;->a:Z

    .line 25
    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-static {v1, v2, v3}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/MiStatParams;ZLjava/lang/String;)Lcom/xiaomi/stat/a/l;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    .line 36
    return-void
.end method
