.class public abstract Lp3/y;
.super Lv3/g;
.source "DispatchedTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/g;"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lv3/g;-><init>()V

    .line 4
    iput p1, p0, Lp3/y;->c:I

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public abstract d()La3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La3/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lp3/o;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 6
    check-cast p1, Lp3/o;

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move-object p1, v1

    .line 10
    :goto_9
    if-nez p1, :cond_c

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    iget-object v1, p1, Lp3/o;->a:Ljava/lang/Throwable;

    .line 15
    :goto_e
    return-object v1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_5

    .line 3
    if-nez p2, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz p1, :cond_c

    .line 8
    if-eqz p2, :cond_c

    .line 10
    invoke-static {p1, p2}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 13
    :cond_c
    if-nez p1, :cond_f

    .line 15
    move-object p1, p2

    .line 16
    :cond_f
    new-instance p2, Lkotlinx/coroutines/CoroutinesInternalError;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v1, "Fatal exception in coroutines machinery for "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 43
    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {p0}, Lp3/y;->d()La3/c;

    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1, p2}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public abstract i()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final run()V
    .registers 13

    .line 1
    iget-object v0, p0, Lv3/g;->b:Lv3/h;

    .line 3
    :try_start_2
    invoke-virtual {p0}, Lp3/y;->d()La3/c;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lu3/f;

    .line 9
    iget-object v2, v1, Lu3/f;->e:La3/c;

    .line 11
    iget-object v1, v1, Lu3/f;->g:Ljava/lang/Object;

    .line 13
    invoke-interface {v2}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    sget-object v4, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lu3/r;

    .line 23
    const/4 v5, 0x0

    .line 24
    if-eq v1, v4, :cond_1e

    .line 26
    invoke-static {v2, v3, v1}, Lp3/u;->c(La3/c;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lp3/z0;

    .line 29
    move-result-object v4
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_a3

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move-object v4, v5

    .line 32
    :goto_1f
    :try_start_1f
    invoke-interface {v2}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {p0}, Lp3/y;->i()Ljava/lang/Object;

    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {p0, v7}, Lp3/y;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 43
    move-result-object v8

    .line 44
    if-nez v8, :cond_42

    .line 46
    iget v9, p0, Lp3/y;->c:I

    .line 48
    const/4 v10, 0x1

    .line 49
    if-eq v9, v10, :cond_37

    .line 51
    const/4 v11, 0x2

    .line 52
    if-ne v9, v11, :cond_36

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    const/4 v10, 0x0

    .line 56
    :cond_37
    :goto_37
    if-eqz v10, :cond_42

    .line 58
    sget-object v9, Lp3/k0$b;->a:Lp3/k0$b;

    .line 60
    invoke-interface {v6, v9}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Lp3/k0;

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move-object v6, v5

    .line 68
    :goto_43
    if-eqz v6, :cond_60

    .line 70
    invoke-interface {v6}, Lp3/k0;->a()Z

    .line 73
    move-result v9

    .line 74
    if-nez v9, :cond_60

    .line 76
    invoke-interface {v6}, Lp3/k0;->e()Ljava/util/concurrent/CancellationException;

    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {p0, v7, v6}, Lp3/y;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 83
    invoke-static {v6}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 86
    move-result-object v6

    .line 87
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v6

    .line 91
    invoke-interface {v2, v6}, La3/c;->resumeWith(Ljava/lang/Object;)V

    .line 94
    goto :goto_79

    .line 95
    :catchall_5e
    move-exception v2

    .line 96
    goto :goto_9c

    .line 97
    :cond_60
    if-eqz v8, :cond_6e

    .line 99
    invoke-static {v8}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 102
    move-result-object v6

    .line 103
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object v6

    .line 107
    invoke-interface {v2, v6}, La3/c;->resumeWith(Ljava/lang/Object;)V

    .line 110
    goto :goto_79

    .line 111
    :cond_6e
    invoke-virtual {p0, v7}, Lp3/y;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object v6

    .line 115
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    move-result-object v6

    .line 119
    invoke-interface {v2, v6}, La3/c;->resumeWith(Ljava/lang/Object;)V

    .line 122
    :goto_79
    sget-object v2, Ly2/e;->a:Ly2/e;
    :try_end_7b
    .catchall {:try_start_1f .. :try_end_7b} :catchall_5e

    .line 124
    if-nez v4, :cond_9b

    .line 126
    :try_start_7d
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_a3

    .line 129
    :try_start_80
    invoke-interface {v0}, Lv3/h;->a()V

    .line 132
    sget-object v0, Ly2/e;->a:Ly2/e;

    .line 134
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-result-object v0
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_8a

    .line 138
    goto :goto_93

    .line 139
    :catchall_8a
    move-exception v0

    .line 140
    invoke-static {v0}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-result-object v0

    .line 148
    :goto_93
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p0, v5, v0}, Lp3/y;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 155
    goto :goto_be

    .line 156
    :cond_9b
    :try_start_9b
    throw v5

    .line 157
    :goto_9c
    if-eqz v4, :cond_9f

    .line 159
    throw v5

    .line 160
    :cond_9f
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 163
    throw v2
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_a3

    .line 164
    :catchall_a3
    move-exception v1

    .line 165
    :try_start_a4
    invoke-interface {v0}, Lv3/h;->a()V

    .line 168
    sget-object v0, Ly2/e;->a:Ly2/e;

    .line 170
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-result-object v0
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_ae

    .line 174
    goto :goto_b7

    .line 175
    :catchall_ae
    move-exception v0

    .line 176
    invoke-static {v0}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 179
    move-result-object v0

    .line 180
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move-result-object v0

    .line 184
    :goto_b7
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p0, v1, v0}, Lp3/y;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 191
    :goto_be
    return-void
.end method
