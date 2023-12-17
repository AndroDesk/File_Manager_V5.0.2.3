.class Lcom/xiaomi/onetrack/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/f/b;

.field public final synthetic b:Lcom/xiaomi/onetrack/a/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/f/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/b;->b:Lcom/xiaomi/onetrack/a/a;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/a/b;->a:Lcom/xiaomi/onetrack/f/b;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b;->a:Lcom/xiaomi/onetrack/f/b;

    .line 3
    instance-of v1, v0, Lcom/xiaomi/onetrack/a/b/b;

    .line 5
    if-eqz v1, :cond_2a

    .line 7
    check-cast v0, Lcom/xiaomi/onetrack/a/b/b;

    .line 9
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/b/b;->a()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2a

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_2a

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2a

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/xiaomi/onetrack/a/b/a;

    .line 37
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/b;->b:Lcom/xiaomi/onetrack/a/a;

    .line 39
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/a/b/a;)J

    .line 42
    goto :goto_18

    .line 43
    :cond_2a
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    .line 50
    return-void
.end method
