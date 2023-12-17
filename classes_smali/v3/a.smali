.class public final Lv3/a;
.super Lkotlinx/coroutines/e;
.source "Dispatcher.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final b:Lv3/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lu3/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lv3/a;

    .line 3
    invoke-direct {v0}, Lv3/a;-><init>()V

    .line 6
    sput-object v0, Lv3/a;->b:Lv3/a;

    .line 8
    sget-object v0, Lv3/l;->b:Lv3/l;

    .line 10
    sget v1, Lu3/s;->a:I

    .line 12
    const/16 v2, 0x40

    .line 14
    if-ge v2, v1, :cond_10

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v1, v2

    .line 18
    :goto_11
    const/16 v2, 0xc

    .line 20
    const-string v3, "kotlinx.coroutines.io.parallelism"

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v3, v1, v4, v4, v2}, Lu3/b;->c(Ljava/lang/String;IIII)I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const/4 v2, 0x1

    .line 31
    if-lt v1, v2, :cond_21

    .line 33
    move v4, v2

    .line 34
    :cond_21
    if-eqz v4, :cond_2b

    .line 36
    new-instance v2, Lu3/g;

    .line 38
    invoke-direct {v2, v0, v1}, Lu3/g;-><init>(Lv3/l;I)V

    .line 41
    sput-object v2, Lv3/a;->c:Lu3/g;

    .line 43
    return-void

    .line 44
    :cond_2b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v0

    .line 48
    const-string v1, "Expected positive parallelism level, but got "

    .line 50
    invoke-static {v0, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/e;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "Cannot be invoked on Dispatchers.IO"

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 3
    invoke-virtual {p0, v0, p1}, Lv3/a;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public final s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .registers 4
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lv3/a;->c:Lu3/g;

    .line 3
    invoke-virtual {v0, p1, p2}, Lu3/g;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
