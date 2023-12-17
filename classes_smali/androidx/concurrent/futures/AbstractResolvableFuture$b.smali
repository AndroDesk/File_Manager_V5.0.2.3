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

    sget-boolean v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    goto :goto_1a

    :cond_a
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$b;

    :goto_1a
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$b;->a:Ljava/lang/Throwable;

    return-void
.end method
