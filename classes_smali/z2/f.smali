.class public Lz2/f;
.super Lz2/e;
.source "_Collections.kt"


# direct methods
.method public static final g(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lh3/l;)V
    .registers 10
    .param p0  # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6  # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "separator"

    .line 3
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "prefix"

    .line 8
    invoke-static {p3, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-string v0, "postfix"

    .line 13
    invoke-static {p4, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string v0, "truncated"

    .line 18
    invoke-static {p6, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 24
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 28
    const/4 p3, 0x0

    .line 29
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_61

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    add-int/lit8 p3, p3, 0x1

    .line 41
    const/4 v1, 0x1

    .line 42
    if-le p3, v1, :cond_2e

    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 47
    :cond_2e
    if-ltz p5, :cond_32

    .line 49
    if-gt p3, p5, :cond_61

    .line 51
    :cond_32
    if-eqz p7, :cond_3e

    .line 53
    invoke-interface {p7, v0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 62
    goto :goto_1c

    .line 63
    :cond_3e
    if-nez v0, :cond_41

    .line 65
    goto :goto_43

    .line 66
    :cond_41
    instance-of v1, v0, Ljava/lang/CharSequence;

    .line 68
    :goto_43
    if-eqz v1, :cond_4b

    .line 70
    check-cast v0, Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 75
    goto :goto_1c

    .line 76
    :cond_4b
    instance-of v1, v0, Ljava/lang/Character;

    .line 78
    if-eqz v1, :cond_59

    .line 80
    check-cast v0, Ljava/lang/Character;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 85
    move-result v0

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 89
    goto :goto_1c

    .line 90
    :cond_59
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 97
    goto :goto_1c

    .line 98
    :cond_61
    if-ltz p5, :cond_68

    .line 100
    if-le p3, p5, :cond_68

    .line 102
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 105
    :cond_68
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 108
    return-void
.end method
