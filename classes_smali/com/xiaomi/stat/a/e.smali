.class Lcom/xiaomi/stat/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/stat/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:[Lcom/xiaomi/stat/a/b;

.field public final synthetic b:Lcom/xiaomi/stat/a/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/a/e;->b:Lcom/xiaomi/stat/a/c;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/a/e;->a:[Lcom/xiaomi/stat/a/b;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/stat/a/k;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/a/e;->b:Lcom/xiaomi/stat/a/c;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/stat/a/e;->a:[Lcom/xiaomi/stat/a/b;

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/stat/a/e;->a()Lcom/xiaomi/stat/a/k;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
