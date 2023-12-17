.class public final Ls2/e$a;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ls2/e$c;

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ls2/e$c;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ls2/e$a;->a:Ljava/lang/Runnable;

    .line 6
    iput-object p2, p0, Ls2/e$a;->b:Ls2/e$c;

    .line 8
    iput-wide p3, p0, Ls2/e$a;->c:J

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Ls2/e$a;->b:Ls2/e$c;

    .line 3
    iget-boolean v0, v0, Ls2/e$c;->d:Z

    .line 5
    if-nez v0, :cond_3d

    .line 7
    iget-object v0, p0, Ls2/e$a;->b:Ls2/e$c;

    .line 9
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    move-result-wide v2

    .line 18
    invoke-virtual {v1, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 21
    move-result-wide v0

    .line 22
    iget-wide v2, p0, Ls2/e$a;->c:J

    .line 24
    cmp-long v4, v2, v0

    .line 26
    if-lez v4, :cond_32

    .line 28
    sub-long/2addr v2, v0

    .line 29
    const-wide/16 v0, 0x0

    .line 31
    cmp-long v0, v2, v0

    .line 33
    if-lez v0, :cond_32

    .line 35
    :try_start_22
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    .line 38
    goto :goto_32

    .line 39
    :catch_26
    move-exception v0

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 47
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 50
    return-void

    .line 51
    :cond_32
    :goto_32
    iget-object v0, p0, Ls2/e$a;->b:Ls2/e$c;

    .line 53
    iget-boolean v0, v0, Ls2/e$c;->d:Z

    .line 55
    if-nez v0, :cond_3d

    .line 57
    iget-object v0, p0, Ls2/e$a;->a:Ljava/lang/Runnable;

    .line 59
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 62
    :cond_3d
    return-void
.end method
