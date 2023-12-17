.class Lcom/xiaomi/onetrack/api/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ab;->b:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/ab;->a:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ab;->b:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/ab;->a:Z

    .line 9
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/v;->a(Z)V

    .line 12
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ab;->b:Lcom/xiaomi/onetrack/api/h;

    .line 14
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/ab;->a:Z

    .line 24
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Z)V

    .line 27
    return-void
.end method
