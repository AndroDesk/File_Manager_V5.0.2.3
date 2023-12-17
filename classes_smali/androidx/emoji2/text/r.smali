.class public final Landroidx/emoji2/text/r;
.super Ljava/lang/Object;
.source "UnprecomputeTextOnModificationSpannable.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/r$b;,
        Landroidx/emoji2/text/r$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Landroid/text/Spannable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/emoji2/text/r;->a:Z

    .line 3
    iput-object p1, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/emoji2/text/r;->a:Z

    .line 6
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 3
    iget-boolean v1, p0, Landroidx/emoji2/text/r;->a:Z

    .line 5
    if-nez v1, :cond_24

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    const/16 v2, 0x1c

    .line 11
    if-ge v1, v2, :cond_12

    .line 13
    new-instance v1, Landroidx/emoji2/text/r$a;

    .line 15
    invoke-direct {v1}, Landroidx/emoji2/text/r$a;-><init>()V

    .line 18
    goto :goto_17

    .line 19
    :cond_12
    new-instance v1, Landroidx/emoji2/text/r$b;

    .line 21
    invoke-direct {v1}, Landroidx/emoji2/text/r$b;-><init>()V

    .line 24
    :goto_17
    invoke-virtual {v1, v0}, Landroidx/emoji2/text/r$a;->a(Landroid/text/Spannable;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_24

    .line 30
    new-instance v1, Landroid/text/SpannableString;

    .line 32
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    iput-object v1, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 37
    :cond_24
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Landroidx/emoji2/text/r;->a:Z

    .line 40
    return-void
.end method

.method public final charAt(I)C
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 3
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final chars()Ljava/util/stream/IntStream;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->chars()Ljava/util/stream/IntStream;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final codePoints()Ljava/util/stream/IntStream;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getSpanEnd(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 3
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getSpanFlags(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 3
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getSpanStart(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 3
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final length()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final nextSpanTransition(IILjava/lang/Class;)I
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final removeSpan(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/emoji2/text/r;->a()V

    .line 4
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 6
    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public final setSpan(Ljava/lang/Object;III)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/emoji2/text/r;->a()V

    .line 4
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 9
    return-void
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroid/text/Spannable;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
