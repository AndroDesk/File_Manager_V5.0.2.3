.class Lcom/xiaomi/stat/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;ZLjava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/l;->c:Lcom/xiaomi/stat/e;

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/stat/l;->a:Z

    .line 5
    iput-object p3, p0, Lcom/xiaomi/stat/l;->b:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/d/m;->a()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_14

    .line 7
    iget-boolean v0, p0, Lcom/xiaomi/stat/l;->a:Z

    .line 9
    invoke-static {v0}, Lcom/xiaomi/stat/b;->c(Z)V

    .line 12
    invoke-static {}, Lcom/xiaomi/stat/b/g;->a()Lcom/xiaomi/stat/b/g;

    .line 15
    move-result-object v0

    .line 16
    iget-boolean v1, p0, Lcom/xiaomi/stat/l;->a:Z

    .line 18
    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/b/g;->a(Z)V

    .line 21
    :cond_14
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1b

    .line 27
    return-void

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/xiaomi/stat/l;->b:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_24

    .line 36
    return-void

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/xiaomi/stat/l;->b:Ljava/lang/String;

    .line 39
    invoke-static {v0}, Lcom/xiaomi/stat/b;->a(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/xiaomi/stat/b/g;->a()Lcom/xiaomi/stat/b/g;

    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/xiaomi/stat/l;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/b/g;->a(Ljava/lang/String;)V

    .line 51
    return-void
.end method
