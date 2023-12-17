.class public final Landroidx/core/content/ContextKt;
.super Ljava/lang/Object;
.source "Context.kt"


# direct methods
.method public static final getSystemService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 8
    const-string v0, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    .line 10
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p0
.end method

.method public static final withStyledAttributes(Landroid/content/Context;I[ILh3/l;)V
    .registers 5
    .param p0  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[I",
            "Lh3/l<",
            "-",
            "Landroid/content/res/TypedArray;",
            "Ly2/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string p1, "obtainStyledAttributes(resourceId, attrs)"

    invoke-static {p0, p1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static final withStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[IIILh3/l;)V
    .registers 7
    .param p0  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "[III",
            "Lh3/l<",
            "-",
            "Landroid/content/res/TypedArray;",
            "Ly2/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p5, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string p1, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)"

    invoke-static {p0, p1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p5, p0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic withStyledAttributes$default(Landroid/content/Context;Landroid/util/AttributeSet;[IIILh3/l;ILjava/lang/Object;)V
    .registers 9

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 3
    if-eqz p7, :cond_5

    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_5
    and-int/lit8 p7, p6, 0x4

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p7, :cond_b

    .line 11
    move p3, v0

    .line 12
    :cond_b
    and-int/lit8 p6, p6, 0x8

    .line 14
    if-eqz p6, :cond_10

    .line 16
    move p4, v0

    .line 17
    :cond_10
    const-string p6, "<this>"

    .line 19
    invoke-static {p0, p6}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const-string p6, "attrs"

    .line 24
    invoke-static {p2, p6}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-string p6, "block"

    .line 29
    invoke-static {p5, p6}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 35
    move-result-object p0

    .line 36
    const-string p1, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)"

    .line 38
    invoke-static {p0, p1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {p5, p0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
.end method
