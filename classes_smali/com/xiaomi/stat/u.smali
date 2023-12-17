.class Lcom/xiaomi/stat/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/String;JJ)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/u;->d:Lcom/xiaomi/stat/e;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/u;->a:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/xiaomi/stat/u;->b:J

    .line 7
    iput-wide p5, p0, Lcom/xiaomi/stat/u;->c:J

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

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
    iget-object v0, p0, Lcom/xiaomi/stat/u;->d:Lcom/xiaomi/stat/e;

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
    iget-object v0, p0, Lcom/xiaomi/stat/u;->d:Lcom/xiaomi/stat/e;

    .line 26
    iget-object v1, p0, Lcom/xiaomi/stat/u;->a:Ljava/lang/String;

    .line 28
    iget-wide v2, p0, Lcom/xiaomi/stat/u;->b:J

    .line 30
    iget-wide v4, p0, Lcom/xiaomi/stat/u;->c:J

    .line 32
    invoke-static {v1, v2, v3, v4, v5}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;JJ)Lcom/xiaomi/stat/a/l;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    .line 39
    return-void
.end method
