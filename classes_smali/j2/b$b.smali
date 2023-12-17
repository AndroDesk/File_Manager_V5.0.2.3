.class public final Lj2/b$b;
.super Ljava/lang/Object;
.source "HandlerScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/Runnable;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lj2/b$b;->a:Landroid/os/Handler;

    .line 6
    iput-object p2, p0, Lj2/b$b;->b:Ljava/lang/Runnable;

    .line 8
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj2/b$b;->c:Z

    .line 4
    iget-object v0, p0, Lj2/b$b;->a:Landroid/os/Handler;

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lj2/b$b;->c:Z

    .line 3
    return v0
.end method

.method public final run()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lj2/b$b;->b:Ljava/lang/Runnable;

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 6
    goto :goto_a

    .line 7
    :catchall_6
    move-exception v0

    .line 8
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 11
    :goto_a
    return-void
.end method
