.class Lcom/xiaomi/stat/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/a/l;

.field public final synthetic b:Lcom/xiaomi/stat/a/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/a/d;->b:Lcom/xiaomi/stat/a/c;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/a/d;->a:Lcom/xiaomi/stat/a/l;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/a/d;->b:Lcom/xiaomi/stat/a/c;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/stat/a/d;->a:Lcom/xiaomi/stat/a/l;

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 8
    goto :goto_1f

    .line 9
    :catch_8
    move-exception v0

    .line 10
    const-string v1, "addEvent exception: "

    .line 12
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "EventManager"

    .line 29
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_1f
    return-void
.end method
