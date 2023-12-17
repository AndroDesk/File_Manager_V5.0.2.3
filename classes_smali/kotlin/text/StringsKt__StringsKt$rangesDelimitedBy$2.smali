.class final Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Strings.kt"

# interfaces
.implements Lh3/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh3/p<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic $delimitersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $ignoreCase:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$delimitersList:Ljava/util/List;

    iput-boolean p2, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$ignoreCase:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->invoke(Ljava/lang/CharSequence;I)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/CharSequence;I)Lkotlin/Pair;
    .registers 13
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$delimitersList:Ljava/util/List;

    iget-boolean v1, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$ignoreCase:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_46

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_46

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3e

    if-ne v1, v5, :cond_36

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x4

    .line 7
    invoke-static {p1, v0, p2, v1}, Lo3/f;->l0(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result p1

    if-gez p1, :cond_2b

    goto/16 :goto_cf

    .line 8
    :cond_2b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 9
    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d0

    .line 10
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List has more than one element."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3e
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "List is empty."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_46
    new-instance v4, Ll3/c;

    if-gez p2, :cond_4b

    move p2, v2

    :cond_4b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v4, p2, v2}, Ll3/c;-><init>(II)V

    .line 13
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_94

    .line 14
    iget v2, v4, Ll3/a;->b:I

    .line 15
    iget v4, v4, Ll3/a;->c:I

    if-lez v4, :cond_5e

    if-le p2, v2, :cond_62

    :cond_5e
    if-gez v4, :cond_cf

    if-gt v2, p2, :cond_cf

    .line 16
    :cond_62
    :goto_62
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_66
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 17
    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v1, v8, p2, v9}, Lo3/e;->i0(Ljava/lang/String;ZLjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_66

    goto :goto_82

    :cond_81
    move-object v6, v3

    :goto_82
    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_90

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 19
    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p1, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d0

    :cond_90
    if-eq p2, v2, :cond_cf

    add-int/2addr p2, v4

    goto :goto_62

    .line 20
    :cond_94
    iget v2, v4, Ll3/a;->b:I

    .line 21
    iget v4, v4, Ll3/a;->c:I

    if-lez v4, :cond_9c

    if-le p2, v2, :cond_a0

    :cond_9c
    if-gez v4, :cond_cf

    if-gt v2, p2, :cond_cf

    .line 22
    :cond_a0
    :goto_a0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 23
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, p1, p2, v8, v1}, Lo3/f;->m0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    move-result v7

    if-eqz v7, :cond_a4

    goto :goto_bd

    :cond_bc
    move-object v6, v3

    :goto_bd
    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_cb

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 25
    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p1, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d0

    :cond_cb
    if-eq p2, v2, :cond_cf

    add-int/2addr p2, v4

    goto :goto_a0

    :cond_cf
    :goto_cf
    move-object p2, v3

    :goto_d0
    if-eqz p2, :cond_e9

    .line 26
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 27
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e9
    return-object v3
.end method
