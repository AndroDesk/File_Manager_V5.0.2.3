.class Lcom/xiaomi/onetrack/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/f/b;

.field public final synthetic b:Lcom/xiaomi/onetrack/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/f/b;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/b;->b:Lcom/xiaomi/onetrack/a/a;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/b;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b;->a:Lcom/xiaomi/onetrack/f/b;

    instance-of v1, v0, Lcom/xiaomi/onetrack/a/b/b;

    if-eqz v1, :cond_2a

    check-cast v0, Lcom/xiaomi/onetrack/a/b/b;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/b/b;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/onetrack/a/b/a;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/b;->b:Lcom/xiaomi/onetrack/a/a;

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/a/b/a;)J

    goto :goto_18

    :cond_2a
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    return-void
.end method
