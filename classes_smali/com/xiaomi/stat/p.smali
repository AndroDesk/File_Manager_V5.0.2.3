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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/e;IIJJ)V
    .registers 8

    iput-object p1, p0, Lcom/xiaomi/stat/p;->e:Lcom/xiaomi/stat/e;

    iput p2, p0, Lcom/xiaomi/stat/p;->a:I

    iput p3, p0, Lcom/xiaomi/stat/p;->b:I

    iput-wide p4, p0, Lcom/xiaomi/stat/p;->c:J

    iput-wide p6, p0, Lcom/xiaomi/stat/p;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/stat/p;->e:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->q(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/xiaomi/stat/p;->e:Lcom/xiaomi/stat/e;

    iget v1, p0, Lcom/xiaomi/stat/p;->a:I

    iget v2, p0, Lcom/xiaomi/stat/p;->b:I

    iget-wide v3, p0, Lcom/xiaomi/stat/p;->c:J

    iget-wide v5, p0, Lcom/xiaomi/stat/p;->d:J

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/stat/a/l;->a(IIJJ)Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    return-void
.end method
