.class public Lcom/xiaomi/onetrack/util/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static b:I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    add-int/2addr v0, v1

    .line 11
    sput v0, Lcom/xiaomi/onetrack/util/i;->b:I

    .line 13
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    sget v4, Lcom/xiaomi/onetrack/util/i;->b:I

    .line 17
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 21
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 24
    const-wide/16 v5, 0xa

    .line 26
    move-object v2, v0

    .line 27
    move v3, v4

    .line 28
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 31
    sput-object v0, Lcom/xiaomi/onetrack/util/i;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/util/i;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    .line 6
    :catchall_5
    return-void
.end method
