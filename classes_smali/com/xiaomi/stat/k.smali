.class Lcom/xiaomi/stat/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/e;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->q(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-static {}, Lcom/xiaomi/stat/b;->z()Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/stat/b;->r()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    invoke-static {v4, v2, v3, v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;JJ)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {v0, v1}, Lcom/xiaomi/stat/b;->a(J)V

    iget-object v0, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    invoke-static {}, Lcom/xiaomi/stat/a/l;->a()Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    :cond_33
    return-void
.end method
