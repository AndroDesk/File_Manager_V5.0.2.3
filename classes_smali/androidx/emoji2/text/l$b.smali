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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lj0/f;)V
    .registers 5

    sget-object v0, Landroidx/emoji2/text/l;->d:Landroidx/emoji2/text/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/emoji2/text/l$b;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/emoji2/text/l$b;->b:Lj0/f;

    iput-object v0, p0, Landroidx/emoji2/text/l$b;->c:Landroidx/emoji2/text/l$a;

    return-void

    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroidx/emoji2/text/f$h;)V
    .registers 3

    iget-object v0, p0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroidx/emoji2/text/l$b;->h:Landroidx/emoji2/text/f$h;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    invoke-virtual {p0}, Landroidx/emoji2/text/l$b;->c()V

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroidx/emoji2/text/l$b;->h:Landroidx/emoji2/text/f$h;

    iget-object v2, p0, Landroidx/emoji2/text/l$b;->e:Landroid/os/Handler;

    if-eqz v2, :cond_e

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    iput-object v1, p0, Landroidx/emoji2/text/l$b;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/emoji2/text/l$b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_17
    iput-object v1, p0, Landroidx/emoji2/text/l$b;->f:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroidx/emoji2/text/l$b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final c()V
    .registers 11

    iget-object v0, p0, Landroidx/emoji2/text/l$b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroidx/emoji2/text/l$b;->h:Landroidx/emoji2/text/f$h;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Landroidx/emoji2/text/l$b;->f:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_2d

    const-string v1, "emojiCompat"

    new-instance v9, Landroidx/emoji2/text/a;

    invoke-direct {v9, v1}, Landroidx/emoji2/text/a;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0xf

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iput-object v1, p0, Landroidx/emoji2/text/l$b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v1, p0, Landroidx/emoji2/text/l$b;->f:Ljava/util/concurrent/Executor;

    :cond_2d
    iget-object v1, p0, Landroidx/emoji2/text/l$b;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/emoji2/text/m;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/emoji2/text/m;-><init>(Landroidx/emoji2/text/l$b;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public final d()Lj0/m;
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/l$b;->c:Landroidx/emoji2/text/l$a;

    iget-object v1, p0, Landroidx/emoji2/text/l$b;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/emoji2/text/l$b;->b:Lj0/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lj0/e;->a(Landroid/content/Context;Lj0/f;)Lj0/l;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_38

    iget v1, v0, Lj0/l;->a:I

    if-nez v1, :cond_24

    iget-object v0, v0, Lj0/l;->b:[Lj0/m;

    if-eqz v0, :cond_1c

    array-length v1, v0

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fetchFonts failed (empty result)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "fetchFonts failed ("

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lj0/l;->a:I

    const-string v3, ")"

    invoke-static {v2, v0, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "provider not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
