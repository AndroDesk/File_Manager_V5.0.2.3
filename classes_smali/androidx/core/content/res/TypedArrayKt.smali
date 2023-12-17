.class public final Landroidx/core/content/res/TypedArrayKt;
.super Ljava/lang/Object;
.source "TypedArray.kt"


# direct methods
.method private static final checkAttribute(Landroid/content/res/TypedArray;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string p1, "Attribute not defined in set."

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
.end method

.method public static final getBooleanOrThrow(Landroid/content/res/TypedArray;I)Z
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final getColorOrThrow(Landroid/content/res/TypedArray;I)I
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final getColorStateListOrThrow(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_f

    .line 15
    return-object p0

    .line 16
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    const-string p1, "Attribute value was not a color or color state list."

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method

.method public static final getDimensionOrThrow(Landroid/content/res/TypedArray;I)F
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final getDimensionPixelOffsetOrThrow(Landroid/content/res/TypedArray;I)I
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final getDimensionPixelSizeOrThrow(Landroid/content/res/TypedArray;I)I
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final getDrawableOrThrow(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Li3/g;->b(Ljava/lang/Object;)V

    .line 16
    return-object p0
.end method

.method public static final getFloatOrThrow(Landroid/content/res/TypedArray;I)F
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final getFontOrThrow(Landroid/content/res/TypedArray;I)Landroid/graphics/Typeface;
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayApi26ImplKt;->getFont(Landroid/content/res/TypedArray;I)Landroid/graphics/Typeface;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final getIntOrThrow(Landroid/content/res/TypedArray;I)I
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final getIntegerOrThrow(Landroid/content/res/TypedArray;I)I
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final getResourceIdOrThrow(Landroid/content/res/TypedArray;I)I
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final getStringOrThrow(Landroid/content/res/TypedArray;I)Ljava/lang/String;
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_f

    .line 15
    return-object p0

    .line 16
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    const-string p1, "Attribute value could not be coerced to String."

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method

.method public static final getTextArrayOrThrow(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    .line 12
    move-result-object p0

    .line 13
    const-string p1, "getTextArray(index)"

    .line 15
    invoke-static {p0, p1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    return-object p0
.end method

.method public static final getTextOrThrow(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/res/TypedArrayKt;->checkAttribute(Landroid/content/res/TypedArray;I)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_f

    .line 15
    return-object p0

    .line 16
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    const-string p1, "Attribute value could not be coerced to CharSequence."

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method

.method public static final use(Landroid/content/res/TypedArray;Lh3/l;)Ljava/lang/Object;
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/res/TypedArray;",
            "Lh3/l<",
            "-",
            "Landroid/content/res/TypedArray;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "block"

    .line 8
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1, p0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    return-object p1
.end method
