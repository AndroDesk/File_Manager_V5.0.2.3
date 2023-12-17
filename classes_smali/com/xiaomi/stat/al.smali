.class public Lcom/xiaomi/stat/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Lcom/xiaomi/stat/e;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/stat/al;->c:Z

    iput-object p1, p0, Lcom/xiaomi/stat/al;->a:Lcom/xiaomi/stat/e;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/stat/al;

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iput-object v0, p0, Lcom/xiaomi/stat/al;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/stat/al;->c:Z

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    iget-boolean v0, p0, Lcom/xiaomi/stat/al;->c:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/stat/al;->a:Lcom/xiaomi/stat/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/xiaomi/stat/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/stat/al;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_12

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_12
    return-void
.end method
