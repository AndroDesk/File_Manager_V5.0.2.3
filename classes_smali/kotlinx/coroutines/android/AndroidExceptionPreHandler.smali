.class public final Lkotlinx/coroutines/android/AndroidExceptionPreHandler;
.super La3/a;
.source "AndroidExceptionPreHandler.kt"

# interfaces
.implements Lp3/s;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private volatile _preHandler:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lp3/s$a;->a:Lp3/s$a;

    .line 3
    invoke-direct {p0, v0}, La3/a;-><init>(Lkotlin/coroutines/CoroutineContext$b;)V

    .line 6
    iput-object p0, p0, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;->_preHandler:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private final preHandler()Ljava/lang/reflect/Method;
    .registers 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;->_preHandler:Ljava/lang/Object;

    .line 3
    if-eq v0, p0, :cond_7

    .line 5
    check-cast v0, Ljava/lang/reflect/Method;

    .line 7
    return-object v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :try_start_8
    const-class v1, Ljava/lang/Thread;

    .line 11
    const-string v2, "getUncaughtExceptionPreHandler"

    .line 13
    const/4 v3, 0x0

    .line 14
    new-array v4, v3, [Ljava/lang/Class;

    .line 16
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_28

    .line 30
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 33
    move-result v2

    .line 34
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 37
    move-result v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2b

    .line 38
    if-eqz v2, :cond_28

    .line 40
    const/4 v3, 0x1

    .line 41
    :cond_28
    if-eqz v3, :cond_2b

    .line 43
    move-object v0, v1

    .line 44
    :catchall_2b
    :cond_2b
    iput-object v0, p0, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;->_preHandler:Ljava/lang/Object;

    .line 46
    return-object v0
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .registers 5
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x1a

    .line 6
    if-gt v1, p1, :cond_d

    .line 8
    const/16 v1, 0x1c

    .line 10
    if-ge p1, v1, :cond_d

    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move p1, v0

    .line 15
    :goto_e
    if-eqz p1, :cond_30

    .line 17
    invoke-direct {p0}, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;->preHandler()Ljava/lang/reflect/Method;

    .line 20
    move-result-object p1

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez p1, :cond_19

    .line 24
    move-object p1, v1

    .line 25
    goto :goto_1f

    .line 26
    :cond_19
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    :goto_1f
    instance-of v0, p1, Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 34
    if-eqz v0, :cond_26

    .line 36
    move-object v1, p1

    .line 37
    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 39
    :cond_26
    if-nez v1, :cond_29

    .line 41
    goto :goto_30

    .line 42
    :cond_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 49
    :cond_30
    :goto_30
    return-void
.end method
