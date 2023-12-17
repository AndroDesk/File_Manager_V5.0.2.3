.class public abstract Lpl/droidsonroids/gif/g;
.super Ljava/lang/Object;
.source "SafeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lpl/droidsonroids/gif/GifDrawable;


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 6
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 3
    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 5
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_1a

    .line 6
    :try_start_5
    iget-wide v1, v0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_17

    .line 8
    const-wide/16 v3, 0x0

    .line 10
    cmp-long v1, v1, v3

    .line 12
    if-nez v1, :cond_f

    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    :goto_10
    :try_start_10
    monitor-exit v0

    .line 18
    if-nez v1, :cond_16

    .line 20
    invoke-virtual {p0}, Lpl/droidsonroids/gif/g;->a()V

    .line 23
    :cond_16
    return-void

    .line 24
    :catchall_17
    move-exception v1

    .line 25
    monitor-exit v0

    .line 26
    throw v1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1a

    .line 27
    :catchall_1a
    move-exception v0

    .line 28
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_28

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 41
    :cond_28
    throw v0
.end method
