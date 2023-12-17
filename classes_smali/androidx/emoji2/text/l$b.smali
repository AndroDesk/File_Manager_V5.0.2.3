.class public final Landroidx/emoji2/text/l$b;
.super Ljava/lang/Object;
.source "FontRequestEmojiCompatConfig.java"

# interfaces
.implements Landroidx/emoji2/text/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lj0/f;

.field public final c:Landroidx/emoji2/text/l$a;

.field public final d:Ljava/lang/Object;

.field public e:Landroid/os/Handler;

.field public f:Ljava/util/concurrent/Executor;

.field public g:Ljava/util/concurrent/ThreadPoolExecutor;

.field public h:Landroidx/emoji2/text/f$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj0/f;)V
    .registers 5

    .line 1
    sget-object v0, Landroidx/emoji2/text/l;->d:Landroidx/emoji2/text/l$a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/Object;

    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v1, p0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    .line 13
    if-eqz p1, :cond_19

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Landroidx/emoji2/text/l$b;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Landroidx/emoji2/text/l$b;->b:Lj0/f;

    .line 23
    iput-object v0, p0, Landroidx/emoji2/text/l$b;->c:Landroidx/emoji2/text/l$a;

    .line 25
    return-void

    .line 26
    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    .line 28
    const-string p2, "Context cannot be null"

    .line 30
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1
.end method


# virtual methods
.method public final a(Landroidx/emoji2/text/f$h;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iput-object p1, p0, Landroidx/emoji2/text/l$b;->h:Landroidx/emoji2/text/f$h;

    .line 6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 7
    invoke-virtual {p0}, Landroidx/emoji2/text/l$b;->c()V

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception p1

    .line 12
    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    .line 13
    throw p1
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    iput-object v1, p0, Landroidx/emoji2/text/l$b;->h:Landroidx/emoji2/text/f$h;

    .line 7
    iget-object v2, p0, Landroidx/emoji2/text/l$b;->e:Landroid/os/Handler;

    .line 9
    if-eqz v2, :cond_e

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    :cond_e
    iput-object v1, p0, Landroidx/emoji2/text/l$b;->e:Landroid/os/Handler;

    .line 17
    iget-object v2, p0, Landroidx/emoji2/text/l$b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    if-eqz v2, :cond_17

    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 24
    :cond_17
    iput-object v1, p0, Landroidx/emoji2/text/l$b;->f:Ljava/util/concurrent/Executor;

    .line 26
    iput-object v1, p0, Landroidx/emoji2/text/l$b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    .line 32
    throw v1
.end method

.method public final c()V
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Landroidx/emoji2/text/l$b;->h:Landroidx/emoji2/text/f$h;

    .line 6
    if-nez v1, :cond_9

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v1, p0, Landroidx/emoji2/text/l$b;->f:Ljava/util/concurrent/Executor;

    .line 12
    if-nez v1, :cond_2d

    .line 14
    const-string v1, "emojiCompat"

    .line 16
    new-instance v9, Landroidx/emoji2/text/a;

    .line 18
    invoke-direct {v9, v1}, Landroidx/emoji2/text/a;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 23
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 27
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    const-wide/16 v5, 0xf

    .line 34
    move-object v2, v1

    .line 35
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 42
    iput-object v1, p0, Landroidx/emoji2/text/l$b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 44
    iput-object v1, p0, Landroidx/emoji2/text/l$b;->f:Ljava/util/concurrent/Executor;

    .line 46
    :cond_2d
    iget-object v1, p0, Landroidx/emoji2/text/l$b;->f:Ljava/util/concurrent/Executor;

    .line 48
    new-instance v2, Landroidx/emoji2/text/m;

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {v2, p0, v3}, Landroidx/emoji2/text/m;-><init>(Landroidx/emoji2/text/l$b;I)V

    .line 54
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :catchall_3a
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    .line 61
    throw v1
.end method

.method public final d()Lj0/m;
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/l$b;->c:Landroidx/emoji2/text/l$a;

    .line 3
    iget-object v1, p0, Landroidx/emoji2/text/l$b;->a:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Landroidx/emoji2/text/l$b;->b:Lj0/f;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v1, v2}, Lj0/e;->a(Landroid/content/Context;Lj0/f;)Lj0/l;

    .line 13
    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_38

    .line 14
    iget v1, v0, Lj0/l;->a:I

    .line 16
    if-nez v1, :cond_24

    .line 18
    iget-object v0, v0, Lj0/l;->b:[Lj0/m;

    .line 20
    if-eqz v0, :cond_1c

    .line 22
    array-length v1, v0

    .line 23
    if-eqz v1, :cond_1c

    .line 25
    const/4 v1, 0x0

    .line 26
    aget-object v0, v0, v1

    .line 28
    return-object v0

    .line 29
    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    .line 31
    const-string v1, "fetchFonts failed (empty result)"

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    throw v0

    .line 37
    :cond_24
    new-instance v1, Ljava/lang/RuntimeException;

    .line 39
    const-string v2, "fetchFonts failed ("

    .line 41
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v2

    .line 45
    iget v0, v0, Lj0/l;->a:I

    .line 47
    const-string v3, ")"

    .line 49
    invoke-static {v2, v0, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v1

    .line 57
    :catch_38
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    .line 60
    const-string v2, "provider not found"

    .line 62
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    throw v1
.end method
