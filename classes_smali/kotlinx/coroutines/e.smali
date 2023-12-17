.class public abstract Lkotlinx/coroutines/e;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "Executors.kt"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/CoroutineDispatcher;->a:Lkotlinx/coroutines/CoroutineDispatcher$Key;

    .line 3
    sget-object v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key$1;->INSTANCE:Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key$1;

    .line 5
    const-string v2, "baseKey"

    .line 7
    invoke-static {v0, v2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const-string v0, "safeCast"

    .line 12
    invoke-static {v1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 4
    return-void
.end method
