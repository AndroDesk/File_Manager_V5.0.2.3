.class Lcom/xiaomi/stat/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/b/b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/b/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/b/c;->a:Lcom/xiaomi/stat/b/b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1c

    .line 7
    iget-object v0, p0, Lcom/xiaomi/stat/b/c;->a:Lcom/xiaomi/stat/b/b;

    .line 9
    iget-object v0, v0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/stat/b/a;->a(ZZ)V

    .line 15
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/b/i;->a(Z)V

    .line 22
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/xiaomi/stat/b/d;->b()Ljava/lang/String;

    .line 29
    :cond_1c
    return-void
.end method
