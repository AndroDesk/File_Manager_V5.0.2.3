.class Lcom/xiaomi/stat/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;IIJJ)V
    .registers 8

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/p;->e:Lcom/xiaomi/stat/e;

    .line 3
    iput p2, p0, Lcom/xiaomi/stat/p;->a:I

    .line 5
    iput p3, p0, Lcom/xiaomi/stat/p;->b:I

    .line 7
    iput-wide p4, p0, Lcom/xiaomi/stat/p;->c:J

    .line 9
    iput-wide p6, p0, Lcom/xiaomi/stat/p;->d:J

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

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
    iget-object v0, p0, Lcom/xiaomi/stat/p;->e:Lcom/xiaomi/stat/e;

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
    iget-object v0, p0, Lcom/xiaomi/stat/p;->e:Lcom/xiaomi/stat/e;

    .line 19
    iget v1, p0, Lcom/xiaomi/stat/p;->a:I

    .line 21
    iget v2, p0, Lcom/xiaomi/stat/p;->b:I

    .line 23
    iget-wide v3, p0, Lcom/xiaomi/stat/p;->c:J

    .line 25
    iget-wide v5, p0, Lcom/xiaomi/stat/p;->d:J

    .line 27
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/stat/a/l;->a(IIJJ)Lcom/xiaomi/stat/a/l;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    .line 34
    return-void
.end method
