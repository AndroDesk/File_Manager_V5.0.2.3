.class Lcom/xiaomi/stat/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/xiaomi/stat/a/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/a/c;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/a/f;->b:Lcom/xiaomi/stat/a/c;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/a/f;->a:Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/a/f;->b:Lcom/xiaomi/stat/a/c;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/stat/a/f;->a:Ljava/util/ArrayList;

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;Ljava/util/ArrayList;)V

    .line 8
    return-void
.end method
