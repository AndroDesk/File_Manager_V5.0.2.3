.class Lcom/xiaomi/onetrack/api/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/al;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/al;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/am;->a:Lcom/xiaomi/onetrack/api/al;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/am;->a:Lcom/xiaomi/onetrack/api/al;

    .line 10
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/al;->a(Lcom/xiaomi/onetrack/api/al;)V

    .line 13
    return-void
.end method
