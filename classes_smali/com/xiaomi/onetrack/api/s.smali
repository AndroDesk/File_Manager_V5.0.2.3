.class Lcom/xiaomi/onetrack/api/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/k;->b(Ljava/lang/String;)V

    .line 14
    return-void
.end method
