.class Lcom/xiaomi/stat/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/g;->a:Lcom/xiaomi/stat/f;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->c()V

    .line 4
    invoke-static {}, Lcom/xiaomi/stat/b/a;->a()Lcom/xiaomi/stat/b/a;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/b/a;->a(ZZ)V

    .line 13
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v2}, Lcom/xiaomi/stat/b/i;->a(Z)V

    .line 20
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/xiaomi/stat/b/d;->b()Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/xiaomi/stat/c/i;->b()V

    .line 34
    return-void
.end method
