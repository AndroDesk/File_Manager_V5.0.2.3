.class Lcom/xiaomi/onetrack/api/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Thread;

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/g;->c:Lcom/xiaomi/onetrack/api/f;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/g;->a:Ljava/lang/Thread;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/g;->b:Ljava/lang/Throwable;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/g;->c:Lcom/xiaomi/onetrack/api/f;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/g;->a:Ljava/lang/Thread;

    .line 5
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/g;->b:Ljava/lang/Throwable;

    .line 7
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 10
    return-void
.end method
