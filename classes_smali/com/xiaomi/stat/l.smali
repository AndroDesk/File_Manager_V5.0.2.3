.class Lcom/xiaomi/stat/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/e;ZLjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/stat/l;->c:Lcom/xiaomi/stat/e;

    iput-boolean p2, p0, Lcom/xiaomi/stat/l;->a:Z

    iput-object p3, p0, Lcom/xiaomi/stat/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/xiaomi/stat/d/m;->a()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/xiaomi/stat/l;->a:Z

    invoke-static {v0}, Lcom/xiaomi/stat/b;->c(Z)V

    invoke-static {}, Lcom/xiaomi/stat/b/g;->a()Lcom/xiaomi/stat/b/g;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/stat/l;->a:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/b/g;->a(Z)V

    :cond_14
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/xiaomi/stat/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    iget-object v0, p0, Lcom/xiaomi/stat/l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/stat/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/b/g;->a()Lcom/xiaomi/stat/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/stat/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/b/g;->a(Ljava/lang/String;)V

    return-void
.end method
