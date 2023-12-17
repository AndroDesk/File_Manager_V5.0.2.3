.class Lcom/xiaomi/stat/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

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
    iget-object v0, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    .line 10
    invoke-static {v0}, Lcom/xiaomi/stat/e;->q(Lcom/xiaomi/stat/e;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-static {}, Lcom/xiaomi/stat/b;->z()Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    .line 27
    move-result-wide v0

    .line 28
    invoke-static {}, Lcom/xiaomi/stat/b;->r()J

    .line 31
    move-result-wide v2

    .line 32
    iget-object v4, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    .line 34
    invoke-static {v4, v2, v3, v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;JJ)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_33

    .line 40
    invoke-static {v0, v1}, Lcom/xiaomi/stat/b;->a(J)V

    .line 43
    iget-object v0, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    .line 45
    invoke-static {}, Lcom/xiaomi/stat/a/l;->a()Lcom/xiaomi/stat/a/l;

    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    .line 52
    :cond_33
    return-void
.end method
