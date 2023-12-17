.class public final Lp3/u;
.super Ljava/lang/Object;
.source "DebugStrings.kt"


# static fields
.field public static final a:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lp3/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lp3/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lu3/r;

    .line 3
    const-string v1, "RESUME_TOKEN"

    .line 5
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lp3/u;->a:Lu3/r;

    .line 10
    new-instance v0, Lu3/r;

    .line 12
    const-string v1, "REMOVED_TASK"

    .line 14
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lp3/u;->b:Lu3/r;

    .line 19
    new-instance v0, Lu3/r;

    .line 21
    const-string v1, "CLOSED_EMPTY"

    .line 23
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lp3/u;->c:Lu3/r;

    .line 28
    new-instance v0, Lu3/r;

    .line 30
    const-string v1, "COMPLETING_ALREADY"

    .line 32
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 35
    sput-object v0, Lp3/u;->d:Lu3/r;

    .line 37
    new-instance v0, Lu3/r;

    .line 39
    const-string v1, "COMPLETING_WAITING_CHILDREN"

    .line 41
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 44
    sput-object v0, Lp3/u;->e:Lu3/r;

    .line 46
    new-instance v0, Lu3/r;

    .line 48
    const-string v1, "COMPLETING_RETRY"

    .line 50
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 53
    sput-object v0, Lp3/u;->f:Lu3/r;

    .line 55
    new-instance v0, Lu3/r;

    .line 57
    const-string v1, "TOO_LATE_TO_CANCEL"

    .line 59
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 62
    sput-object v0, Lp3/u;->g:Lu3/r;

    .line 64
    new-instance v0, Lu3/r;

    .line 66
    const-string v1, "SEALED"

    .line 68
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 71
    sput-object v0, Lp3/u;->h:Lu3/r;

    .line 73
    new-instance v0, Lp3/c0;

    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-direct {v0, v1}, Lp3/c0;-><init>(Z)V

    .line 79
    sput-object v0, Lp3/u;->i:Lp3/c0;

    .line 81
    new-instance v0, Lp3/c0;

    .line 83
    const/4 v1, 0x1

    .line 84
    invoke-direct {v0, v1}, Lp3/c0;-><init>(Z)V

    .line 87
    sput-object v0, Lp3/u;->j:Lp3/c0;

    .line 89
    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1
    .param p0  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final b(La3/c;)Ljava/lang/String;
    .registers 4
    .param p0  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Lu3/f;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    goto :goto_57

    .line 10
    :cond_9
    const/16 v0, 0x40

    .line 12
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v1
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_26

    .line 38
    goto :goto_2f

    .line 39
    :catchall_26
    move-exception v1

    .line 40
    invoke-static {v1}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    :goto_2f
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 51
    move-result-object v2

    .line 52
    if-nez v2, :cond_36

    .line 54
    goto :goto_54

    .line 55
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    :goto_54
    move-object p0, v1

    .line 86
    check-cast p0, Ljava/lang/String;

    .line 88
    :goto_57
    return-object p0
.end method

.method public static final c(La3/c;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lp3/z0;
    .registers 5
    .param p0  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p0, Lc3/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    sget-object v0, Lp3/a1;->a:Lp3/a1;

    .line 9
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    if-nez v0, :cond_14

    .line 20
    return-object v1

    .line 21
    :cond_14
    check-cast p0, Lc3/b;

    .line 23
    :cond_16
    instance-of v0, p0, Lp3/x;

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    goto :goto_21

    .line 28
    :cond_1b
    invoke-interface {p0}, Lc3/b;->getCallerFrame()Lc3/b;

    .line 31
    move-result-object p0

    .line 32
    if-nez p0, :cond_23

    .line 34
    :goto_21
    move-object p0, v1

    .line 35
    goto :goto_29

    .line 36
    :cond_23
    instance-of v0, p0, Lp3/z0;

    .line 38
    if-eqz v0, :cond_16

    .line 40
    check-cast p0, Lp3/z0;

    .line 42
    :goto_29
    if-nez p0, :cond_2c

    .line 44
    return-object p0

    .line 45
    :cond_2c
    new-instance p0, Lkotlin/Pair;

    .line 47
    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    throw v1
.end method
