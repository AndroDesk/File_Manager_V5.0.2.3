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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ls2/e$c;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/e$a;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Ls2/e$a;->b:Ls2/e$c;

    iput-wide p3, p0, Ls2/e$a;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Ls2/e$a;->b:Ls2/e$c;

    iget-boolean v0, v0, Ls2/e$c;->d:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Ls2/e$a;->b:Ls2/e$c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Ls2/e$a;->c:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_32

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_32

    :try_start_22
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_32

    :catch_26
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_32
    :goto_32
    iget-object v0, p0, Ls2/e$a;->b:Ls2/e$c;

    iget-boolean v0, v0, Ls2/e$c;->d:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Ls2/e$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3d
    return-void
.end method
