.class public Lu3/p;
.super Lp3/a;
.source "Scopes.kt"

# interfaces
.implements Lc3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a<",
        "TT;>;",
        "Lc3/b;"
    }
.end annotation


# virtual methods
.method public final F()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public Q(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlinx/coroutines/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public d(Ljava/lang/Object;)V
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lb3/a;->c(La3/c;)La3/c;

    .line 5
    move-result-object v0

    .line 6
    invoke-static {p1}, Lkotlinx/coroutines/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, p1, v1}, Lu3/b;->a(La3/c;Ljava/lang/Object;Lh3/l;)V

    .line 14
    return-void
.end method

.method public final getCallerFrame()Lc3/b;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    instance-of v1, v0, Lc3/b;

    .line 4
    if-eqz v1, :cond_9

    .line 6
    move-object v1, v0

    .line 7
    check-cast v1, Lc3/b;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method
