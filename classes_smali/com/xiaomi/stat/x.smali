.class Lcom/xiaomi/stat/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lcom/xiaomi/stat/MiStatParams;

.field public final synthetic e:Lcom/xiaomi/stat/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/String;JJLcom/xiaomi/stat/MiStatParams;)V
    .registers 8

    iput-object p1, p0, Lcom/xiaomi/stat/x;->e:Lcom/xiaomi/stat/e;

    iput-object p2, p0, Lcom/xiaomi/stat/x;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/stat/x;->b:J

    iput-wide p5, p0, Lcom/xiaomi/stat/x;->c:J

    iput-object p7, p0, Lcom/xiaomi/stat/x;->d:Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/stat/x;->e:Lcom/xiaomi/stat/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/xiaomi/stat/b;->z()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    iget-object v0, p0, Lcom/xiaomi/stat/x;->e:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/x;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/xiaomi/stat/x;->b:J

    iget-wide v2, p0, Lcom/xiaomi/stat/x;->c:J

    sub-long v2, v4, v2

    iget-object v6, p0, Lcom/xiaomi/stat/x;->d:Lcom/xiaomi/stat/MiStatParams;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;JJLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    return-void
.end method
