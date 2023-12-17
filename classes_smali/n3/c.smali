.class public final Ln3/c;
.super Ln3/e;


# direct methods
.method public static final g0(Ln3/b;)Ljava/util/List;
    .registers 3
    .param p0  # Ln3/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ln3/b;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_17

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    goto :goto_9

    .line 24
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_30

    .line 30
    const/4 v1, 0x1

    .line 31
    if-eq p0, v1, :cond_21

    .line 33
    goto :goto_32

    .line 34
    :cond_21
    const/4 p0, 0x0

    .line 35
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 42
    move-result-object v0

    .line 43
    const-string p0, "singletonList(element)"

    .line 45
    invoke-static {v0, p0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    goto :goto_32

    .line 49
    :cond_30
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 51
    :goto_32
    return-object v0
.end method
