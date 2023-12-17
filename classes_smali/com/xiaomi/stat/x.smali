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
.method public constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/String;JJLcom/xiaomi/stat/MiStatParams;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/x;->e:Lcom/xiaomi/stat/e;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/x;->a:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/xiaomi/stat/x;->b:J

    .line 7
    iput-wide p5, p0, Lcom/xiaomi/stat/x;->c:J

    .line 9
    iput-object p7, p0, Lcom/xiaomi/stat/x;->d:Lcom/xiaomi/stat/MiStatParams;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

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
    iget-object v0, p0, Lcom/xiaomi/stat/x;->e:Lcom/xiaomi/stat/e;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-static {}, Lcom/xiaomi/stat/b;->z()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_18

    .line 24
    return-void

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/xiaomi/stat/x;->e:Lcom/xiaomi/stat/e;

    .line 27
    iget-object v1, p0, Lcom/xiaomi/stat/x;->a:Ljava/lang/String;

    .line 29
    iget-wide v4, p0, Lcom/xiaomi/stat/x;->b:J

    .line 31
    iget-wide v2, p0, Lcom/xiaomi/stat/x;->c:J

    .line 33
    sub-long v2, v4, v2

    .line 35
    iget-object v6, p0, Lcom/xiaomi/stat/x;->d:Lcom/xiaomi/stat/MiStatParams;

    .line 37
    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    .line 40
    move-result-object v7

    .line 41
    invoke-static/range {v1 .. v7}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;JJLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    .line 48
    return-void
.end method
