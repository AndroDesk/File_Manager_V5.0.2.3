.class public Lo3/f;
.super Lo3/e;
.source "Strings.kt"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static final j0(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0  # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final k0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .registers 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p5, :cond_14

    new-instance p5, Ll3/c;

    if-gez p2, :cond_9

    move p2, v1

    :cond_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p3, v1, :cond_10

    move p3, v1

    :cond_10
    invoke-direct {p5, p2, p3}, Ll3/c;-><init>(II)V

    goto :goto_23

    :cond_14
    invoke-static {p0}, Lo3/f;->j0(Ljava/lang/CharSequence;)I

    move-result p5

    if-le p2, p5, :cond_1b

    move p2, p5

    :cond_1b
    if-gez p3, :cond_1e

    move p3, v1

    :cond_1e
    new-instance p5, Ll3/a;

    invoke-direct {p5, p2, p3, v0}, Ll3/a;-><init>(III)V

    :goto_23
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_4e

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_4e

    iget p2, p5, Ll3/a;->a:I

    iget p3, p5, Ll3/a;->b:I

    iget p5, p5, Ll3/a;->c:I

    if-lez p5, :cond_35

    if-le p2, p3, :cond_39

    :cond_35
    if-gez p5, :cond_6b

    if-gt p3, p2, :cond_6b

    :cond_39
    :goto_39
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v1, p4, v2, p2, v3}, Lo3/e;->i0(Ljava/lang/String;ZLjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_4a

    return p2

    :cond_4a
    if-eq p2, p3, :cond_6b

    add-int/2addr p2, p5

    goto :goto_39

    :cond_4e
    iget p2, p5, Ll3/a;->a:I

    iget p3, p5, Ll3/a;->b:I

    iget p5, p5, Ll3/a;->c:I

    if-lez p5, :cond_58

    if-le p2, p3, :cond_5c

    :cond_58
    if-gez p5, :cond_6b

    if-gt p3, p2, :cond_6b

    :cond_5c
    :goto_5c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p1, p0, p2, v1, p4}, Lo3/f;->m0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    move-result v1

    if-eqz v1, :cond_67

    return p2

    :cond_67
    if-eq p2, p3, :cond_6b

    add-int/2addr p2, p5

    goto :goto_5c

    :cond_6b
    return v0
.end method

.method public static l0(Ljava/lang/CharSequence;Ljava/lang/String;II)I
    .registers 10

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    move v2, p2

    const/4 v4, 0x0

    const-string p2, "<this>"

    invoke-static {p0, p2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "string"

    invoke-static {p1, p2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p0, Ljava/lang/String;

    if-nez p2, :cond_21

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lo3/f;->k0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    goto :goto_27

    :cond_21
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

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

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p2, :cond_37

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-ltz v1, :cond_37

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-le p2, v1, :cond_1c

    goto :goto_37

    :cond_1c
    move v1, v0

    :goto_1d
    if-ge v1, p3, :cond_35

    add-int v2, v0, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p2, v1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p4}, La/b;->y(CCZ)Z

    move-result v2

    if-nez v2, :cond_32

    return v0

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_35
    const/4 p0, 0x1

    return p0

    :cond_37
    :goto_37
    return v0
.end method

.method public static n0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v1}, Lo3/f;->l0(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    goto :goto_21

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_21
    return-object p0
.end method

.method public static o0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo3/f;->j0(Ljava/lang/CharSequence;)I

    move-result v0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    goto :goto_27

    :cond_18
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_27
    return-object p0
.end method
