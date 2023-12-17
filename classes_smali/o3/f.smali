.class public Lo3/f;
.super Lo3/e;
.source "Strings.kt"


# direct methods
.method public static final j0(Ljava/lang/CharSequence;)I
    .registers 2
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
    move-result p0

    .line 10
    add-int/lit8 p0, p0, -0x1

    .line 12
    return p0
.end method

.method public static final k0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .registers 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p5, :cond_14

    .line 5
    new-instance p5, Ll3/c;

    .line 7
    if-gez p2, :cond_9

    .line 9
    move p2, v1

    .line 10
    :cond_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 13
    move-result v1

    .line 14
    if-le p3, v1, :cond_10

    .line 16
    move p3, v1

    .line 17
    :cond_10
    invoke-direct {p5, p2, p3}, Ll3/c;-><init>(II)V

    .line 20
    goto :goto_23

    .line 21
    :cond_14
    invoke-static {p0}, Lo3/f;->j0(Ljava/lang/CharSequence;)I

    .line 24
    move-result p5

    .line 25
    if-le p2, p5, :cond_1b

    .line 27
    move p2, p5

    .line 28
    :cond_1b
    if-gez p3, :cond_1e

    .line 30
    move p3, v1

    .line 31
    :cond_1e
    new-instance p5, Ll3/a;

    .line 33
    invoke-direct {p5, p2, p3, v0}, Ll3/a;-><init>(III)V

    .line 36
    :goto_23
    instance-of p2, p0, Ljava/lang/String;

    .line 38
    if-eqz p2, :cond_4e

    .line 40
    instance-of p2, p1, Ljava/lang/String;

    .line 42
    if-eqz p2, :cond_4e

    .line 44
    iget p2, p5, Ll3/a;->a:I

    .line 46
    iget p3, p5, Ll3/a;->b:I

    .line 48
    iget p5, p5, Ll3/a;->c:I

    .line 50
    if-lez p5, :cond_35

    .line 52
    if-le p2, p3, :cond_39

    .line 54
    :cond_35
    if-gez p5, :cond_6b

    .line 56
    if-gt p3, p2, :cond_6b

    .line 58
    :cond_39
    :goto_39
    move-object v1, p1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 61
    move-object v2, p0

    .line 62
    check-cast v2, Ljava/lang/String;

    .line 64
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 67
    move-result v3

    .line 68
    invoke-static {v1, p4, v2, p2, v3}, Lo3/e;->i0(Ljava/lang/String;ZLjava/lang/String;II)Z

    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4a

    .line 74
    return p2

    .line 75
    :cond_4a
    if-eq p2, p3, :cond_6b

    .line 77
    add-int/2addr p2, p5

    .line 78
    goto :goto_39

    .line 79
    :cond_4e
    iget p2, p5, Ll3/a;->a:I

    .line 81
    iget p3, p5, Ll3/a;->b:I

    .line 83
    iget p5, p5, Ll3/a;->c:I

    .line 85
    if-lez p5, :cond_58

    .line 87
    if-le p2, p3, :cond_5c

    .line 89
    :cond_58
    if-gez p5, :cond_6b

    .line 91
    if-gt p3, p2, :cond_6b

    .line 93
    :cond_5c
    :goto_5c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 96
    move-result v1

    .line 97
    invoke-static {p1, p0, p2, v1, p4}, Lo3/f;->m0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_67

    .line 103
    return p2

    .line 104
    :cond_67
    if-eq p2, p3, :cond_6b

    .line 106
    add-int/2addr p2, p5

    .line 107
    goto :goto_5c

    .line 108
    :cond_6b
    return v0
.end method

.method public static l0(Ljava/lang/CharSequence;Ljava/lang/String;II)I
    .registers 10

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 3
    if-eqz p3, :cond_5

    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_5
    move v2, p2

    .line 7
    const/4 v4, 0x0

    .line 8
    const-string p2, "<this>"

    .line 10
    invoke-static {p0, p2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const-string p2, "string"

    .line 15
    invoke-static {p1, p2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of p2, p0, Ljava/lang/String;

    .line 20
    if-nez p2, :cond_21

    .line 22
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 25
    move-result v3

    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v0, p0

    .line 28
    move-object v1, p1

    .line 29
    invoke-static/range {v0 .. v5}, Lo3/f;->k0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    .line 32
    move-result p0

    .line 33
    goto :goto_27

    .line 34
    :cond_21
    check-cast p0, Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 39
    move-result p0

    .line 40
    :goto_27
    return p0
.end method

.method public static final m0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z
    .registers 9
    .param p0  # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/CharSequence;
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
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    if-ltz p2, :cond_37

    .line 14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 17
    move-result v1

    .line 18
    sub-int/2addr v1, p3

    .line 19
    if-ltz v1, :cond_37

    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 24
    move-result v1

    .line 25
    sub-int/2addr v1, p3

    .line 26
    if-le p2, v1, :cond_1c

    .line 28
    goto :goto_37

    .line 29
    :cond_1c
    move v1, v0

    .line 30
    :goto_1d
    if-ge v1, p3, :cond_35

    .line 32
    add-int v2, v0, v1

    .line 34
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 37
    move-result v2

    .line 38
    add-int v3, p2, v1

    .line 40
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 43
    move-result v3

    .line 44
    invoke-static {v2, v3, p4}, La/b;->y(CCZ)Z

    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_32

    .line 50
    return v0

    .line 51
    :cond_32
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_1d

    .line 54
    :cond_35
    const/4 p0, 0x1

    .line 55
    return p0

    .line 56
    :cond_37
    :goto_37
    return v0
.end method

.method public static n0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "delimiter"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-static {p0, p1, v0, v1}, Lo3/f;->l0(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_f

    .line 15
    goto :goto_21

    .line 16
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    move-result p1

    .line 20
    add-int/2addr p1, v0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    const-string p1, "this as java.lang.String…ing(startIndex, endIndex)"

    .line 31
    invoke-static {p0, p1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :goto_21
    return-object p0
.end method

.method public static o0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "missingDelimiterValue"

    .line 8
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lo3/f;->j0(Ljava/lang/CharSequence;)I

    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x2e

    .line 17
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-ne v0, v1, :cond_18

    .line 24
    goto :goto_27

    .line 25
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    const-string v0, "this as java.lang.String…ing(startIndex, endIndex)"

    .line 37
    invoke-static {p0, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    :goto_27
    return-object p0
.end method
