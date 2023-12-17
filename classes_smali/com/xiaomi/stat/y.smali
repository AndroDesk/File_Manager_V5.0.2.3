.class Lcom/xiaomi/stat/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/xiaomi/stat/MiStatParams;

.field public final synthetic e:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;ZLjava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/y;->e:Lcom/xiaomi/stat/e;

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/stat/y;->a:Z

    .line 5
    iput-object p3, p0, Lcom/xiaomi/stat/y;->b:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/xiaomi/stat/y;->c:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/xiaomi/stat/y;->d:Lcom/xiaomi/stat/MiStatParams;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

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
    iget-object v0, p0, Lcom/xiaomi/stat/y;->e:Lcom/xiaomi/stat/e;

    .line 10
    iget-boolean v1, p0, Lcom/xiaomi/stat/y;->a:Z

    .line 12
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    invoke-static {}, Lcom/xiaomi/stat/b;->A()Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/xiaomi/stat/y;->e:Lcom/xiaomi/stat/e;

    .line 28
    iget-object v1, p0, Lcom/xiaomi/stat/y;->b:Ljava/lang/String;

    .line 30
    iget-object v2, p0, Lcom/xiaomi/stat/y;->c:Ljava/lang/String;

    .line 32
    iget-object v3, p0, Lcom/xiaomi/stat/y;->d:Lcom/xiaomi/stat/MiStatParams;

    .line 34
    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    iget-boolean v5, p0, Lcom/xiaomi/stat/y;->a:Z

    .line 40
    invoke-static {v1, v2, v3, v4, v5}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;Ljava/lang/String;Z)Lcom/xiaomi/stat/a/l;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    .line 47
    return-void
.end method
