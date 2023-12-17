.class public Lkotlin/text/a;
.super La/b;
.source "Indent.kt"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static final g0(Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p0  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\r\n"

    const-string v3, "\n"

    const-string v4, "\r"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "asList(this)"

    invoke-static {v2, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lo3/a;

    new-instance v4, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;-><init>(Ljava/util/List;Z)V

    invoke-direct {v3, v0, v5, v5, v4}, Lo3/a;-><init>(Ljava/lang/CharSequence;IILh3/p;)V

    new-instance v2, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;

    invoke-direct {v2, v0}, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Ln3/f;

    invoke-direct {v4, v3, v2}, Ln3/f;-><init>(Lo3/a;Lh3/l;)V

    invoke-static {v4}, Ln3/c;->g0(Ln3/b;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lo3/e;->h0(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v7, v8

    if-eqz v7, :cond_3c

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_55
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v8, -0x1

    if-eqz v6, :cond_94

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    move v10, v5

    :goto_74
    if-ge v10, v9, :cond_85

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, La/b;->Q(C)Z

    move-result v11

    xor-int/2addr v11, v7

    if-eqz v11, :cond_82

    goto :goto_86

    :cond_82
    add-int/lit8 v10, v10, 0x1

    goto :goto_74

    :cond_85
    move v10, v8

    :goto_86
    if-ne v10, v8, :cond_8c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    :cond_8c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_94
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_a1

    move-object v4, v6

    goto :goto_bb

    :cond_a1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    :cond_a7
    :goto_a7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_bb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Comparable;

    invoke-interface {v4, v9}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_a7

    move-object v4, v9

    goto :goto_a7

    :cond_bb
    :goto_bb
    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_c4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_c5

    :cond_c4
    move v3, v5

    :goto_c5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    sget-object v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v9, v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v8, v5

    :goto_e0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_142

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v8, 0x1

    if-ltz v8, :cond_13a

    check-cast v11, Ljava/lang/String;

    if-eqz v8, :cond_f4

    if-ne v8, v9, :cond_fc

    :cond_f4
    invoke-static {v11}, Lo3/e;->h0(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_fc

    move-object v11, v6

    goto :goto_121

    :cond_fc
    invoke-static {v11, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v3, :cond_103

    move v8, v7

    goto :goto_104

    :cond_103
    move v8, v5

    :goto_104
    if-eqz v8, :cond_128

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    if-le v3, v8, :cond_10d

    goto :goto_10e

    :cond_10d
    move v8, v3

    :goto_10e
    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "this as java.lang.String).substring(startIndex)"

    invoke-static {v8, v13}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_120

    goto :goto_121

    :cond_120
    move-object v11, v8

    :goto_121
    if-eqz v11, :cond_126

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_126
    move v8, v12

    goto :goto_e0

    :cond_128
    const-string v0, "Requested character count "

    const-string v1, " is less than zero."

    invoke-static {v0, v3, v1}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v15, -0x1

    const/16 v17, 0x0

    const-string v12, "\n"

    const-string v14, ""

    const-string v16, "..."

    move-object v11, v0

    move-object v13, v14

    invoke-static/range {v10 .. v17}, Lz2/f;->g(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lh3/l;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()"

    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
