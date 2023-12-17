.class Lmiuix/animation/internal/ThreadPoolUtil$2;
.super Ljava/lang/Object;
.source "ThreadPoolUtil.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/internal/ThreadPoolUtil;->getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic val$factoryName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/animation/internal/ThreadPoolUtil$2;->val$factoryName:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    iput-object p1, p0, Lmiuix/animation/internal/ThreadPoolUtil$2;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    .line 1
    new-instance v0, Lmiuix/animation/internal/ThreadPoolUtil$2$1;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p0, Lmiuix/animation/internal/ThreadPoolUtil$2;->val$factoryName:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "-"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v2, p0, Lmiuix/animation/internal/ThreadPoolUtil$2;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, p0, p1, v1}, Lmiuix/animation/internal/ThreadPoolUtil$2$1;-><init>(Lmiuix/animation/internal/ThreadPoolUtil$2;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 34
    return-object v0
.end method
