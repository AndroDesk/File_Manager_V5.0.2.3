.class public Lkotlin/collections/a;
.super Lz2/c;
.source "_MapsJvm.kt"


# direct methods
.method public static final d()Ljava/util/Map;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 3
    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>"

    .line 5
    invoke-static {v0, v1}, Li3/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    return-object v0
.end method

.method public static final e(Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 3
    .param p0  # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_38

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1a

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Lz2/c;->b(I)I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 23
    invoke-static {p0, v0}, Lkotlin/collections/a;->f(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    .line 26
    goto :goto_3c

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lkotlin/Pair;

    .line 34
    const-string v0, "pair"

    .line 36
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 50
    move-result-object v0

    .line 51
    const-string p0, "singletonMap(pair.first, pair.second)"

    .line 53
    invoke-static {v0, p0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    goto :goto_3c

    .line 57
    :cond_38
    invoke-static {}, Lkotlin/collections/a;->d()Ljava/util/Map;

    .line 60
    move-result-object v0

    .line 61
    :goto_3c
    return-object v0
.end method

.method public static final f(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V
    .registers 4
    .param p0  # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1c

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lkotlin/Pair;

    .line 17
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    goto :goto_4

    .line 29
    :cond_1c
    return-void
.end method
