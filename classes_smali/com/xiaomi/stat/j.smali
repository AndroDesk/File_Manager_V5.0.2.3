.class Lcom/xiaomi/stat/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/j;->c:Lcom/xiaomi/stat/e;

    .line 3
    iput p2, p0, Lcom/xiaomi/stat/j;->a:I

    .line 5
    iput p3, p0, Lcom/xiaomi/stat/j;->b:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

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
    iget-object v0, p0, Lcom/xiaomi/stat/j;->c:Lcom/xiaomi/stat/e;

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
    iget v0, p0, Lcom/xiaomi/stat/j;->a:I

    .line 19
    invoke-static {v0}, Lcom/xiaomi/stat/b;->e(I)V

    .line 22
    iget-object v0, p0, Lcom/xiaomi/stat/j;->c:Lcom/xiaomi/stat/e;

    .line 24
    iget v1, p0, Lcom/xiaomi/stat/j;->b:I

    .line 26
    invoke-static {v1}, Lcom/xiaomi/stat/a/l;->a(I)Lcom/xiaomi/stat/a/l;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    .line 33
    return-void
.end method
