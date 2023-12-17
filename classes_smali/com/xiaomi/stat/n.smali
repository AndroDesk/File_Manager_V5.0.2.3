.class Lcom/xiaomi/stat/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/NetAvailableEvent;

.field public final synthetic b:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/NetAvailableEvent;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/n;->b:Lcom/xiaomi/stat/e;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/n;->a:Lcom/xiaomi/stat/NetAvailableEvent;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

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
    iget-object v0, p0, Lcom/xiaomi/stat/n;->b:Lcom/xiaomi/stat/e;

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
    invoke-static {}, Lcom/xiaomi/stat/b;->y()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_18

    .line 24
    return-void

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/xiaomi/stat/n;->b:Lcom/xiaomi/stat/e;

    .line 27
    iget-object v1, p0, Lcom/xiaomi/stat/n;->a:Lcom/xiaomi/stat/NetAvailableEvent;

    .line 29
    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/NetAvailableEvent;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    .line 40
    return-void
.end method
