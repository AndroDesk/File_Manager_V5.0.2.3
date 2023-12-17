.class final Lcom/xiaomi/stat/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->c()V

    .line 4
    invoke-static {}, Lcom/xiaomi/stat/b/a;->a()Lcom/xiaomi/stat/b/a;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/stat/b/a;->a(ZZ)V

    .line 12
    return-void
.end method
