.class Lcom/xiaomi/stat/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/stat/c$a;->a:Ljava/lang/Runnable;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/c;->a()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/stat/c$a;->a:Ljava/lang/Runnable;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 15
    :cond_e
    invoke-static {}, Lcom/xiaomi/stat/c;->b()V

    .line 18
    return-void
.end method
