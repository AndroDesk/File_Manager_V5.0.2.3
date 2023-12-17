.class Lcom/xiaomi/onetrack/api/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/xiaomi/onetrack/api/aj;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/aj;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ak;->b:Lcom/xiaomi/onetrack/api/aj;

    .line 3
    iput p2, p0, Lcom/xiaomi/onetrack/api/ak;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget v0, p0, Lcom/xiaomi/onetrack/api/ak;->a:I

    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_23

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/c/q;->a()Lcom/xiaomi/onetrack/c/q;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/onetrack/c/q;->a(IZ)V

    .line 22
    invoke-static {}, Lcom/xiaomi/onetrack/c/q;->a()Lcom/xiaomi/onetrack/c/q;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v2, v2}, Lcom/xiaomi/onetrack/c/q;->a(IZ)V

    .line 29
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    .line 36
    :cond_23
    return-void
.end method
