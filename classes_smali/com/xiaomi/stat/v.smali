.class Lcom/xiaomi/stat/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/v;->b:Lcom/xiaomi/stat/e;

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/stat/v;->a:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/stat/v;->a:Z

    .line 3
    invoke-static {v0}, Lcom/xiaomi/stat/b;->a(Z)V

    .line 6
    return-void
.end method
