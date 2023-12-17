.class public Lkotlin/a;
.super Ljava/lang/Object;
.source "Exceptions.kt"


# direct methods
.method public static final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 3
    .param p0  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "exception"

    .line 8
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    if-eq p0, p1, :cond_11

    .line 13
    sget-object v0, Ld3/b;->a:Ld3/a;

    .line 15
    invoke-virtual {v0, p0, p1}, Ld3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 18
    :cond_11
    return-void
.end method

.method public static final b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;
    .registers 2
    .param p0  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "exception"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lkotlin/Result$Failure;

    .line 8
    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 11
    return-object v0
.end method

.method public static final c(Lh3/a;)Ly2/c;
    .registers 4
    .param p0  # Lh3/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "initializer"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v0, p0, v1, v2, v1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lh3/a;Ljava/lang/Object;ILi3/e;)V

    .line 13
    return-object v0
.end method

.method public static final d(Ljava/lang/Object;)V
    .registers 2
    .param p0  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p0, Lkotlin/Result$Failure;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    check-cast p0, Lkotlin/Result$Failure;

    .line 8
    iget-object p0, p0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    .line 10
    throw p0
.end method
