.class public final Lq3/c;
.super Ljava/lang/Object;
.source "HandlerDispatcher.kt"


# static fields
.field private static volatile choreographer:Landroid/view/Choreographer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    :try_start_0
    new-instance v0, Lq3/a;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lq3/c;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lq3/a;-><init>(Landroid/os/Handler;)V

    .line 14
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 18
    goto :goto_1b

    .line 19
    :catchall_12
    move-exception v0

    .line 20
    invoke-static {v0}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    :goto_1b
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_22

    .line 34
    const/4 v0, 0x0

    .line 35
    :cond_22
    check-cast v0, Lq3/b;

    .line 37
    return-void
.end method

.method public static final a(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 9
    .param p0  # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-lt v0, v1, :cond_2c

    .line 10
    const-class v0, Landroid/os/Handler;

    .line 12
    const-string v1, "createAsync"

    .line 14
    new-array v5, v4, [Ljava/lang/Class;

    .line 16
    const-class v6, Landroid/os/Looper;

    .line 18
    aput-object v6, v5, v3

    .line 20
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object v0

    .line 24
    new-array v1, v4, [Ljava/lang/Object;

    .line 26
    aput-object p0, v1, v3

    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_24

    .line 34
    check-cast p0, Landroid/os/Handler;

    .line 36
    return-object p0

    .line 37
    :cond_24
    new-instance p0, Ljava/lang/NullPointerException;

    .line 39
    const-string v0, "null cannot be cast to non-null type android.os.Handler"

    .line 41
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0

    .line 45
    :cond_2c
    :try_start_2c
    const-class v0, Landroid/os/Handler;

    .line 47
    const/4 v1, 0x3

    .line 48
    new-array v5, v1, [Ljava/lang/Class;

    .line 50
    const-class v6, Landroid/os/Looper;

    .line 52
    aput-object v6, v5, v3

    .line 54
    const-class v6, Landroid/os/Handler$Callback;

    .line 56
    aput-object v6, v5, v4

    .line 58
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 60
    const/4 v7, 0x2

    .line 61
    aput-object v6, v5, v7

    .line 63
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 66
    move-result-object v0
    :try_end_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2c .. :try_end_42} :catch_53

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    aput-object p0, v1, v3

    .line 71
    aput-object v2, v1, v4

    .line 73
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 75
    aput-object p0, v1, v7

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Landroid/os/Handler;

    .line 83
    return-object p0

    .line 84
    :catch_53
    new-instance v0, Landroid/os/Handler;

    .line 86
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    return-object v0
.end method
