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

    new-instance v0, Lu3/r;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp3/u;->a:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp3/u;->b:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp3/u;->c:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp3/u;->d:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp3/u;->e:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp3/u;->f:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp3/u;->g:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp3/u;->h:Lu3/r;

    new-instance v0, Lp3/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp3/c0;-><init>(Z)V

    sput-object v0, Lp3/u;->i:Lp3/c0;

    new-instance v0, Lp3/c0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lp3/c0;-><init>(Z)V

    sput-object v0, Lp3/u;->j:Lp3/c0;

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

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

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

    instance-of v0, p0, Lu3/f;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_57

    :cond_9
    const/16 v0, 0x40

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_26

    goto :goto_2f

    :catchall_26
    move-exception v1

    invoke-static {v1}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2f
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_36

    goto :goto_54

    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_54
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

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

    instance-of v0, p0, Lc3/b;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    sget-object v0, Lp3/a1;->a:Lp3/a1;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_14

    return-object v1

    :cond_14
    check-cast p0, Lc3/b;

    :cond_16
    instance-of v0, p0, Lp3/x;

    if-eqz v0, :cond_1b

    goto :goto_21

    :cond_1b
    invoke-interface {p0}, Lc3/b;->getCallerFrame()Lc3/b;

    move-result-object p0

    if-nez p0, :cond_23

    :goto_21
    move-object p0, v1

    goto :goto_29

    :cond_23
    instance-of v0, p0, Lp3/z0;

    if-eqz v0, :cond_16

    check-cast p0, Lp3/z0;

    :goto_29
    if-nez p0, :cond_2c

    return-object p0

    :cond_2c
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v1
.end method
