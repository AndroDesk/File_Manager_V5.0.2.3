.class Lcom/xiaomi/stat/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/h;->b:Lcom/xiaomi/stat/e;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/h;->a:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
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
    invoke-static {}, Lcom/xiaomi/stat/b;->h()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/xiaomi/stat/h;->a:Ljava/lang/String;

    .line 14
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/xiaomi/stat/h;->a:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Lcom/xiaomi/stat/b;->b(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/xiaomi/stat/h;->b:Lcom/xiaomi/stat/e;

    .line 28
    invoke-static {v0}, Lcom/xiaomi/stat/e;->q(Lcom/xiaomi/stat/e;)Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_22

    .line 34
    return-void

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/xiaomi/stat/h;->b:Lcom/xiaomi/stat/e;

    .line 37
    iget-object v1, p0, Lcom/xiaomi/stat/h;->a:Ljava/lang/String;

    .line 39
    invoke-static {v1}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    .line 46
    return-void
.end method
