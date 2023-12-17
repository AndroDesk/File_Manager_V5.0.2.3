.class Lmiuix/animation/internal/ThreadPoolUtil$1;
.super Ljava/lang/Object;
.source "ThreadPoolUtil.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/internal/ThreadPoolUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3

    .line 1
    invoke-static {}, Lmiuix/animation/internal/ThreadPoolUtil;->access$000()Ljava/util/concurrent/Executor;

    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    return-void
.end method
