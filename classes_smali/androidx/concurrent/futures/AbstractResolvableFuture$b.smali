.class public final Landroidx/concurrent/futures/AbstractResolvableFuture$b;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

.field public static final c:Landroidx/concurrent/futures/AbstractResolvableFuture$b;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    sget-boolean v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->d:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 6
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 8
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 10
    goto :goto_1a

    .line 11
    :cond_a
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;-><init>(Ljava/lang/Throwable;Z)V

    .line 17
    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 19
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v0, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;-><init>(Ljava/lang/Throwable;Z)V

    .line 25
    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    .line 27
    :goto_1a
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->a:Ljava/lang/Throwable;

    .line 6
    return-void
.end method
