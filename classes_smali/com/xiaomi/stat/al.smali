.class public Lcom/xiaomi/stat/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Lcom/xiaomi/stat/e;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/stat/al;->c:Z

    .line 7
    iput-object p1, p0, Lcom/xiaomi/stat/al;->a:Lcom/xiaomi/stat/e;

    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/xiaomi/stat/al;

    if-eqz v1, :cond_9

    return-void

    .line 3
    :cond_9
    iput-object v0, p0, Lcom/xiaomi/stat/al;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 4
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 5
    iput-boolean p1, p0, Lcom/xiaomi/stat/al;->c:Z

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/stat/al;->c:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lcom/xiaomi/stat/al;->a:Lcom/xiaomi/stat/e;

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, p2, v1, v2}, Lcom/xiaomi/stat/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/stat/al;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 14
    if-eqz v0, :cond_12

    .line 16
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 19
    :cond_12
    return-void
.end method
