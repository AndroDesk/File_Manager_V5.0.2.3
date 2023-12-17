.class Lcom/xiaomi/stat/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/HttpEvent;

.field public final synthetic b:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/HttpEvent;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/m;->b:Lcom/xiaomi/stat/e;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/m;->a:Lcom/xiaomi/stat/HttpEvent;

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
    iget-object v0, p0, Lcom/xiaomi/stat/m;->b:Lcom/xiaomi/stat/e;

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
    iget-object v0, p0, Lcom/xiaomi/stat/m;->b:Lcom/xiaomi/stat/e;

    .line 20
    iget-object v1, p0, Lcom/xiaomi/stat/m;->a:Lcom/xiaomi/stat/HttpEvent;

    .line 22
    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/HttpEvent;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    .line 33
    return-void
.end method
