.class public final enum Lkotlinx/coroutines/CoroutineStart;
.super Ljava/lang/Enum;
.source "CoroutineStart.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/CoroutineStart$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/CoroutineStart;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ATOMIC:Lkotlinx/coroutines/CoroutineStart;

.field public static final enum DEFAULT:Lkotlinx/coroutines/CoroutineStart;

.field public static final enum LAZY:Lkotlinx/coroutines/CoroutineStart;

.field public static final enum UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

.field public static final synthetic a:[Lkotlinx/coroutines/CoroutineStart;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lkotlinx/coroutines/CoroutineStart;

    .line 3
    const-string v1, "DEFAULT"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CoroutineStart;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 11
    new-instance v1, Lkotlinx/coroutines/CoroutineStart;

    .line 13
    const-string v3, "LAZY"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lkotlinx/coroutines/CoroutineStart;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    .line 21
    new-instance v3, Lkotlinx/coroutines/CoroutineStart;

    .line 23
    const-string v5, "ATOMIC"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lkotlinx/coroutines/CoroutineStart;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    .line 31
    new-instance v5, Lkotlinx/coroutines/CoroutineStart;

    .line 33
    const-string v7, "UNDISPATCHED"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lkotlinx/coroutines/CoroutineStart;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lkotlinx/coroutines/CoroutineStart;

    .line 44
    aput-object v0, v7, v2

    .line 46
    aput-object v1, v7, v4

    .line 48
    aput-object v3, v7, v6

    .line 50
    aput-object v5, v7, v8

    .line 52
    sput-object v7, Lkotlinx/coroutines/CoroutineStart;->a:[Lkotlinx/coroutines/CoroutineStart;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static synthetic isLazy$annotations()V
    .registers 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/CoroutineStart;
    .registers 2

    const-class v0, Lkotlinx/coroutines/CoroutineStart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineStart;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/CoroutineStart;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->a:[Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/CoroutineStart;

    return-object v0
.end method


# virtual methods
.method public final invoke(Lh3/l;La3/c;)V
    .registers 8
    .param p1  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh3/l<",
            "-",
            "La3/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "La3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/CoroutineStart$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6b

    const-string v3, "completion"

    const/4 v4, 0x2

    if-eq v0, v4, :cond_51

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1e

    const/4 p1, 0x4

    if-ne v0, p1, :cond_18

    goto :goto_7c

    .line 2
    :cond_18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1e
    invoke-static {p2, v3}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_21
    invoke-interface {p2}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_44

    .line 6
    :try_start_29
    invoke-static {v2, p1}, Li3/k;->a(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_3f

    .line 7
    :try_start_30
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_44

    .line 8
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-eq p1, v0, :cond_7c

    .line 9
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, La3/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_7c

    :catchall_3f
    move-exception p1

    .line 10
    :try_start_40
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p1
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception p1

    .line 11
    invoke-static {p1}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, La3/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_7c

    :cond_51
    const-string v0, "<this>"

    .line 12
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v3}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p1, p2}, Lb3/a;->a(Lh3/l;La3/c;)La3/c;

    move-result-object p1

    invoke-static {p1}, Lb3/a;->c(La3/c;)La3/c;

    move-result-object p1

    sget-object p2, Ly2/e;->a:Ly2/e;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, La3/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_7c

    .line 14
    :cond_6b
    :try_start_6b
    invoke-static {p1, p2}, Lb3/a;->a(Lh3/l;La3/c;)La3/c;

    move-result-object p1

    invoke-static {p1}, Lb3/a;->c(La3/c;)La3/c;

    move-result-object p1

    sget-object v0, Ly2/e;->a:Ly2/e;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    invoke-static {p1, v0, v1}, Lu3/b;->a(La3/c;Ljava/lang/Object;Lh3/l;)V
    :try_end_7c
    .catchall {:try_start_6b .. :try_end_7c} :catchall_7d

    :cond_7c
    :goto_7c
    return-void

    :catchall_7d
    move-exception p1

    .line 16
    invoke-static {p1}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, La3/c;->resumeWith(Ljava/lang/Object;)V

    .line 17
    throw p1
.end method

.method public final invoke(Lh3/p;Ljava/lang/Object;La3/c;)V
    .registers 9
    .param p1  # Lh3/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh3/p<",
            "-TR;-",
            "La3/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "La3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 18
    sget-object v0, Lkotlinx/coroutines/CoroutineStart$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6b

    const-string v1, "completion"

    const/4 v3, 0x2

    if-eq v0, v3, :cond_51

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1e

    const/4 p1, 0x4

    if-ne v0, p1, :cond_18

    goto :goto_7c

    .line 19
    :cond_18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 20
    :cond_1e
    invoke-static {p3, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :try_start_21
    invoke-interface {p3}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 22
    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_44

    .line 23
    :try_start_29
    invoke-static {v3, p1}, Li3/k;->a(ILjava/lang/Object;)V

    invoke-interface {p1, p2, p3}, Lh3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_3f

    .line 24
    :try_start_30
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_44

    .line 25
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-eq p1, p2, :cond_7c

    .line 26
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, La3/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_7c

    :catchall_3f
    move-exception p1

    .line 27
    :try_start_40
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p1
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception p1

    .line 28
    invoke-static {p1}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, La3/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_7c

    :cond_51
    const-string v0, "<this>"

    .line 29
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p1, p2, p3}, Lb3/a;->b(Lh3/p;Ljava/lang/Object;La3/c;)La3/c;

    move-result-object p1

    invoke-static {p1}, Lb3/a;->c(La3/c;)La3/c;

    move-result-object p1

    sget-object p2, Ly2/e;->a:Ly2/e;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, La3/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_7c

    .line 31
    :cond_6b
    :try_start_6b
    invoke-static {p1, p2, p3}, Lb3/a;->b(Lh3/p;Ljava/lang/Object;La3/c;)La3/c;

    move-result-object p1

    invoke-static {p1}, Lb3/a;->c(La3/c;)La3/c;

    move-result-object p1

    sget-object p2, Ly2/e;->a:Ly2/e;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lu3/b;->a(La3/c;Ljava/lang/Object;Lh3/l;)V
    :try_end_7c
    .catchall {:try_start_6b .. :try_end_7c} :catchall_7d

    :cond_7c
    :goto_7c
    return-void

    :catchall_7d
    move-exception p1

    .line 32
    invoke-static {p1}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p2}, La3/c;->resumeWith(Ljava/lang/Object;)V

    .line 33
    throw p1
.end method

.method public final isLazy()Z
    .registers 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    .line 3
    if-ne p0, v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method
