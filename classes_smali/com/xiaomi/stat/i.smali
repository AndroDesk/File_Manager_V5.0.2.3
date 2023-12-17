.class Lcom/xiaomi/stat/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/stat/i;->a:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/xiaomi/stat/b;->d(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_38

    .line 13
    iget-boolean v0, p0, Lcom/xiaomi/stat/i;->a:Z

    .line 15
    const/4 v1, 0x2

    .line 16
    if-nez v0, :cond_2a

    .line 18
    iget-object v0, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    .line 20
    invoke-static {v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/xiaomi/stat/b;->e(Ljava/lang/String;)I

    .line 27
    move-result v0

    .line 28
    if-eq v0, v1, :cond_2a

    .line 30
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    .line 36
    invoke-static {v2}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Lcom/xiaomi/stat/a/c;->a(Ljava/lang/String;)V

    .line 43
    :cond_2a
    iget-object v0, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    .line 45
    invoke-static {v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    iget-boolean v2, p0, Lcom/xiaomi/stat/i;->a:Z

    .line 51
    if-eqz v2, :cond_35

    .line 53
    const/4 v1, 0x1

    .line 54
    :cond_35
    invoke-static {v0, v1}, Lcom/xiaomi/stat/b;->a(Ljava/lang/String;I)V

    .line 57
    :cond_38
    return-void
.end method
