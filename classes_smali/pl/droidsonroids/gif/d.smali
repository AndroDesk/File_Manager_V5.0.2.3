.class public final Lpl/droidsonroids/gif/d;
.super Landroid/os/Handler;
.source "InvalidationHandler.java"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lpl/droidsonroids/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object v0, p0, Lpl/droidsonroids/gif/d;->a:Ljava/lang/ref/WeakReference;

    .line 15
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/d;->a:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lpl/droidsonroids/gif/GifDrawable;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget p1, p1, Landroid/os/Message;->what:I

    .line 14
    const/4 v1, -0x1

    .line 15
    if-ne p1, v1, :cond_14

    .line 17
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    .line 20
    goto :goto_2a

    .line 21
    :cond_14
    iget-object p1, v0, Lpl/droidsonroids/gif/GifDrawable;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 23
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2a

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lpl/droidsonroids/gif/a;

    .line 39
    invoke-interface {v0}, Lpl/droidsonroids/gif/a;->a()V

    .line 42
    goto :goto_1a

    .line 43
    :cond_2a
    :goto_2a
    return-void
.end method
