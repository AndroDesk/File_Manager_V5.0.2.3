.class Lcom/xiaomi/onetrack/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/onetrack/b/a$a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/b/a$a;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/d;->b:Lcom/xiaomi/onetrack/b/a$a;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/b/d;->a:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/d;->a:Ljava/lang/String;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/util/List;)V

    .line 16
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/d;->a:Ljava/lang/String;

    .line 22
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method
