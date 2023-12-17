.class public final Ls/a;
.super Landroidx/concurrent/futures/AbstractResolvableFuture;
.source "ResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/concurrent/futures/AbstractResolvableFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Integer;)Z
    .registers 4

    .line 1
    if-nez p1, :cond_4

    .line 3
    sget-object p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->g:Ljava/lang/Object;

    .line 5
    :cond_4
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$a;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$a;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_12

    .line 14
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->b(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return p1
.end method
