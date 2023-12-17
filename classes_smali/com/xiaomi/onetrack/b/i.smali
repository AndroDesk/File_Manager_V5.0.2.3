.class Lcom/xiaomi/onetrack/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/xiaomi/onetrack/b/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/i;->b:Lcom/xiaomi/onetrack/b/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/b/i;->a:Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 3
    if-eqz v0, :cond_18

    .line 5
    const-string v0, "update: "

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/i;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "ConfigDbManager"

    .line 22
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/i;->b:Lcom/xiaomi/onetrack/b/h;

    .line 27
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/i;->a:Ljava/util/ArrayList;

    .line 29
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/b/h;->a(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V

    .line 32
    return-void
.end method
