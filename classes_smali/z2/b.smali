.class public Lz2/b;
.super Lz2/c;
.source "_Arrays.kt"


# direct methods
.method public static final d(Ljava/util/Collection;)I
    .registers 2
    .param p0  # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static e([Ljava/lang/Object;[Ljava/lang/Object;IIII)V
    .registers 8

    .line 1
    and-int/lit8 v0, p5, 0x2

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    move p2, v1

    .line 7
    :cond_6
    and-int/lit8 v0, p5, 0x4

    .line 9
    if-eqz v0, :cond_b

    .line 11
    move p3, v1

    .line 12
    :cond_b
    and-int/lit8 p5, p5, 0x8

    .line 14
    if-eqz p5, :cond_10

    .line 16
    array-length p4, p0

    .line 17
    :cond_10
    const-string p5, "<this>"

    .line 19
    invoke-static {p0, p5}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sub-int/2addr p4, p3

    .line 23
    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    return-void
.end method

.method public static final f([Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .param p0  # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    if-eqz v0, :cond_1e

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_12

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    new-instance v1, Lz2/a;

    .line 12
    invoke-direct {v1, p0}, Lz2/a;-><init>([Ljava/lang/Object;)V

    .line 15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    goto :goto_20

    .line 19
    :cond_12
    aget-object p0, p0, v2

    .line 21
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    const-string p0, "singletonList(element)"

    .line 27
    invoke-static {v0, p0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 33
    :goto_20
    return-object v0
.end method
