.class public Lo3/e;
.super Lo3/d;
.source "StringsJVM.kt"


# direct methods
.method public static final h0(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0  # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_45

    .line 14
    new-instance v0, Ll3/c;

    .line 16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 19
    move-result v3

    .line 20
    add-int/lit8 v3, v3, -0x1

    .line 22
    invoke-direct {v0, v1, v3}, Ll3/c;-><init>(II)V

    .line 25
    instance-of v3, v0, Ljava/util/Collection;

    .line 27
    if-eqz v3, :cond_27

    .line 29
    move-object v3, v0

    .line 30
    check-cast v3, Ljava/util/Collection;

    .line 32
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_27

    .line 38
    :cond_25
    move p0, v2

    .line 39
    goto :goto_43

    .line 40
    :cond_27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 44
    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_25

    .line 50
    move-object v3, v0

    .line 51
    check-cast v3, Lz2/h;

    .line 53
    invoke-virtual {v3}, Lz2/h;->nextInt()I

    .line 56
    move-result v3

    .line 57
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 60
    move-result v3

    .line 61
    invoke-static {v3}, La/b;->Q(C)Z

    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_2b

    .line 67
    move p0, v1

    .line 68
    :goto_43
    if-eqz p0, :cond_46

    .line 70
    :cond_45
    move v1, v2

    .line 71
    :cond_46
    return v1
.end method

.method public static final i0(Ljava/lang/String;ZLjava/lang/String;II)Z
    .registers 11
    .param p0  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "other"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    if-nez p1, :cond_12

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 17
    move-result p0

    .line 18
    goto :goto_1c

    .line 19
    :cond_12
    const/4 v2, 0x0

    .line 20
    move-object v0, p0

    .line 21
    move v1, p1

    .line 22
    move-object v3, p2

    .line 23
    move v4, p3

    .line 24
    move v5, p4

    .line 25
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 28
    move-result p0

    .line 29
    :goto_1c
    return p0
.end method
