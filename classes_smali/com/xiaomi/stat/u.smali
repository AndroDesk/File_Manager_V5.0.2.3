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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/String;JJ)V
    .registers 7

    iput-object p1, p0, Lcom/xiaomi/stat/u;->d:Lcom/xiaomi/stat/e;

    iput-object p2, p0, Lcom/xiaomi/stat/u;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/stat/u;->b:J

    iput-wide p5, p0, Lcom/xiaomi/stat/u;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/stat/u;->d:Lcom/xiaomi/stat/e;

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
    iget-object v0, p0, Lcom/xiaomi/stat/u;->d:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/u;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/stat/u;->b:J

    iget-wide v4, p0, Lcom/xiaomi/stat/u;->c:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;JJ)Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    return-void
.end method
