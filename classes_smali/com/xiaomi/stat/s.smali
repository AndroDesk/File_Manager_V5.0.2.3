.class Lcom/xiaomi/stat/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/r;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/s;->a:Lcom/xiaomi/stat/r;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/c/i;->a(Z)V

    .line 9
    return-void
.end method
