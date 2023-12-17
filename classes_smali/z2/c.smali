.class public Lz2/c;
.super Ljava/lang/Object;
.source "Collections.kt"


# direct methods
.method public static final a()Lkotlin/collections/EmptyList;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 3
    return-object v0
.end method

.method public static final b(I)I
    .registers 2

    if-gez p0, :cond_3

    goto :goto_19

    :cond_3
    const/4 v0, 0x3

    if-ge p0, v0, :cond_9

    add-int/lit8 p0, p0, 0x1

    goto :goto_19

    :cond_9
    const/high16 v0, 0x40000000  # 2.0f

    if-ge p0, v0, :cond_16

    int-to-float p0, p0

    const/high16 v0, 0x3f400000  # 0.75f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000  # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_19

    :cond_16
    const p0, 0x7fffffff

    :goto_19
    return p0
.end method

.method public static final c(Ljava/util/LinkedHashMap;)Ljava/util/Map;
    .registers 2
    .param p0  # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 26
    move-result-object p0

    .line 27
    const-string v0, "with(entries.iterator().…ingletonMap(key, value) }"

    .line 29
    invoke-static {p0, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    return-object p0
.end method
