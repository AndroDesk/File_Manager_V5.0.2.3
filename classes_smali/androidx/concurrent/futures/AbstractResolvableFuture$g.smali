.class public final Landroidx/concurrent/futures/AbstractResolvableFuture$g;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Landroidx/concurrent/futures/AbstractResolvableFuture$g;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$g;-><init>(I)V

    .line 7
    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->f:Landroidx/concurrent/futures/AbstractResolvableFuture$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$a;->e(Landroidx/concurrent/futures/AbstractResolvableFuture$g;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
