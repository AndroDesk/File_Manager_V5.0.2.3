.class Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils$1;
.super Ljava/lang/Object;
.source "ExecutorUtils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils;->getNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$count:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic val$threadNameTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils$1;->val$threadNameTemplate:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils$1;->val$count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils$1$1;

    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils$1$1;-><init>(Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils$1;Ljava/lang/Runnable;)V

    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils$1;->val$threadNameTemplate:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils$1;->val$count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 40
    return-object p1
.end method
